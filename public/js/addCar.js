const imageCount = document.getElementById('image-count');
const imageInput = document.getElementById('image');
const imageContainer = document.getElementById('imagePreview');
const carForm = document.getElementById('carForm');
const namsanxuatSelect = document.getElementById('namsanxuat');
const currentYear = new Date().getFullYear();
const hopsoSelect = document.getElementById('hopso');
const dongcoSelect = document.getElementById('dongco');
const sokm = document.getElementById('sokm');
const mausacSelect = document.getElementById('mausac');
const diachi = document.getElementById('diachi');
var province = '';
var district = '';
// Xác định phạm vi năm bạn muốn cung cấp
const startYear = currentYear - 50; // Ví dụ: từ năm 50 năm trước đến năm nay
let selectedImages = [];
var addressData = {};
document.addEventListener("DOMContentLoaded", function () {
    document.getElementById('automaker').addEventListener('change', updateAutomakerOptions);
    loadAddressData();
    // document.getElementById('optionprovince').addEventListener('change', handleProvinceChange);
    document.getElementById('price').addEventListener('input', () => formatPrice(document.getElementById('price')));
});
// Lấy năm hiện tại
// Tạo danh sách các năm và thêm chúng vào select element
for (let year = currentYear; year >= startYear; year--) {
    const option = document.createElement('option');
    option.value = year;
    option.text = year;
    namsanxuatSelect.appendChild(option);
}
// Lấy thẻ select box có id là "hopso"


// Mảng chứa các loại hộp số
const hopsoOptions = [
    'Hộp số sàn ',
    'Hộp số tự động ',
    'Hộp số kép ',
    'Hộp số vô cấp ',
    'Hộp số bán tự động ',
    'Hộp số cộng hưởng '
];

// Điền các loại hộp số vào select box
hopsoOptions.forEach(option => {
    const newOption = document.createElement('option');
    newOption.value = option;
    newOption.text = option;
    hopsoSelect.appendChild(newOption);
});
function formatPrice(input) {
    let value = input.value;

    // Remove all non-digit characters
    value = value.replace(/\D/g, '');

    // Reformat value with commas as thousand separators
    input.value = value.replace(/\B(?=(\d{3})+(?!\d))/g, ",");

    // Update the formatted price display
    const formattedValue = value.replace(/\B(?=(\d{3})+(?!\d))/g, ",");
    // document.getElementById('formattedPrice').textContent = formattedValue ? `${formattedValue} đồngxxx` : '';

    // Update the price in words
    document.getElementById('priceInWords').textContent = value ? convertNumberToWords(value) + `  đồng` : '';
}
function loadAddressData() {
    fetch('/address', {
        method: 'GET',
        headers: {
            'Content-Type': 'application/x-www-form-urlencoded'
        }
    })
        .then(response => {
            if (!response.ok) {
                throw new Error('Network response was not ok');
            }
            return response.json();
        })
        .then(data => {
            // addressData = data; // Lưu dữ liệu vào biến toàn cục addressData
            populateProvinceOptions(data); // Sau khi nhận dữ liệu, điền vào dropdown
        })
        .catch(error => {
            console.error('Error loading address data:', error);
        });
}
function populateProvinceOptions(data) {
    // var province_id = null;
    var provinceSelect = document.getElementById('optionprovince');
    provinceSelect.innerHTML = '<option value="">Chọn tỉnh/thành phố</option>';
    const provincesMap = {};

    data.forEach(items => {
        provinceSelect.innerHTML += `<option value="${items.province.id}">${items.province.name}</option>`;
        provincesMap[items.province.id] = items.province.name;
    });
    provinceSelect.addEventListener('click', function () {
        var province_id = provinceSelect.value;
        province = provincesMap[province_id];
        if (province_id) {
            fetchDistrictsByProvinceId(province_id);
        } else {
            // Clear district options if no province is selected
            clearDistrictOptions();
        }
    });
}
function fetchDistrictsByProvinceId(provinceId) {
    const url = `/address/provinceId`; // Đảm bảo endpoint /address/provinceId tồn tại

    fetch(url, {
        method: 'POST',
        headers: {
            'Content-Type': 'application/x-www-form-urlencoded'
        },
        body: new URLSearchParams({
            provinceId: provinceId
        })
    })
        .then(response => {
            if (!response.ok) {
                throw new Error('Network response was not ok');
            }
            return response.json();
        })
        .then(data => {
            updateDistrictOptions(data);
        })
        .catch(error => {
            console.error('Error fetching districts:', error);
        });
}


function updateDistrictOptions(districts) {
    const districtsMap = {};
    var districtSelect = document.getElementById('optionaddress');
    districtSelect.innerHTML = '<option value="">Chọn quận/huyện</option>';

    districts.forEach(district => {
        districtSelect.innerHTML += `<option value="${district.id}">${district.name}</option>`;
        districtsMap[district.id] = district.name;
    });
    districtSelect.addEventListener('click', function () {
        var district_id = districtSelect.value;
        district = districtsMap[district_id];
    });
}

function clearDistrictOptions() {
    var districtSelect = document.getElementById('optionaddress');
    districtSelect.innerHTML = '<option value="">Chọn quận/huyện</option>';
}

function convertNumberToWords(number) {
    const units = ["", "một", "hai", "ba", "bốn", "năm", "sáu", "bảy", "tám", "chín"];
    const teens = ["mười", "mười một", "mười hai", "mười ba", "mười bốn", "mười lăm", "mười sáu", "mười bảy", "mười tám", "mười chín"];
    const tens = ["", "", "hai mươi", "ba mươi", "bốn mươi", "năm mươi", "sáu mươi", "bảy mươi", "tám mươi", "chín mươi"];
    const scales = ["", "nghìn", "triệu", "tỷ"];

    number = parseInt(number);
    if (number === 0) return "không";

    let words = [];
    let scaleIndex = 0;

    while (number > 0) {
        let chunk = number % 1000;
        if (chunk) {
            let chunkWords = [];
            let hundreds = Math.floor(chunk / 100);
            if (hundreds) {
                chunkWords.push(units[hundreds]);
                chunkWords.push("trăm");
            }

            let remainder = chunk % 100;
            if (remainder) {
                if (remainder < 20) {
                    chunkWords.push(teens[remainder - 10] || units[remainder]);
                } else {
                    let tensUnit = Math.floor(remainder / 10);
                    chunkWords.push(tens[tensUnit]);
                    let unit = remainder % 10;
                    if (unit) chunkWords.push(units[unit]);
                }
            }

            words = chunkWords.concat(scales[scaleIndex], words);
        }

        number = Math.floor(number / 1000);
        scaleIndex++;
    }

    return words.join(" ");
}
function updateAutomakerOptions() {
    const carname = document.getElementById('carname');
    const automakerSelect = document.getElementById('automaker').value;

    // Clear current options
    carname.innerHTML = '<option value="">Chọn Tên Xe</option>';

    // Define automaker options based on carname selection
    let options = [];
    if (automakerSelect === 'Honda') {
        options = ['Honda CR-V', 'Honda City', 'Honda Jazz', 'Honda Civic', 'Honda Accord', 'Honda HR-V', 'Honda Fit', 'Honda Pilot', 'Honda Odyssey', 'Honda Ridgeline', 'Khác'];
    } else if (automakerSelect === 'Toyota') {
        options = ['Toyota Corolla', 'Toyota Camry', 'Toyota RAV4', 'Toyota Highlander', 'Toyota Tacoma', 'Toyota Prius', 'Toyota Sienna', 'Toyota Tundra', 'Toyota 4Runner', 'Toyota Avalon', 'Khác'];
    } else if (automakerSelect === 'Ford') {
        options = ['Ford F-150', 'Ford Mustang', 'Ford Explorer', 'Ford Escape', 'Ford Ranger', 'Ford Fusion', 'Ford Edge', 'Ford Expedition', 'Ford Focus', 'Ford Bronco', 'Khác'];
    }


    // Add new options to automaker select element
    options.forEach(option => {
        const newOption = document.createElement('option');
        newOption.value = option;
        newOption.text = option;
        carname.appendChild(newOption);
    });
}

imageInput.addEventListener('change', function (event) {
    const files = event.target.files;
    selectedImages = selectedImages.concat(Array.from(files));
    renderImages();
});

carForm.addEventListener('reset', function () {
    // Xóa toàn bộ nội dung trong imageContainer
    imageContainer.innerHTML = '';

    // Cập nhật nội dung của imageCount
    imageCount.textContent = '0 images selected';
    selectedImages = [];
});

function renderImages() {
    imageContainer.innerHTML = '';
    selectedImages.forEach((file, index) => {
        const imageWrapper = document.createElement('div');
        imageWrapper.classList.add('selected-image');

        const image = document.createElement('img');
        image.src = URL.createObjectURL(file);
        image.alt = 'Selected Image';

        const deleteBtn = document.createElement('button');
        deleteBtn.classList.add('delete-btn');
        deleteBtn.innerText = 'x';
        deleteBtn.addEventListener('click', function () {
            selectedImages.splice(index, 1);
            renderImages();
        });

        imageWrapper.appendChild(image);
        imageWrapper.appendChild(deleteBtn);
        imageContainer.appendChild(imageWrapper);
    });

    imageCount.textContent = `${selectedImages.length} images selected`;
}

function submitForm() {
    // Lấy giá trị từ các input
    const carnameInput = document.getElementById('carname').value.trim();
    const automakerInput = document.getElementById('automaker').value.trim();
    const priceInput = document.getElementById('price').value.trim();
    const descriptionInput = document.getElementById('description').value.trim();
    const namsanxuatSelect = document.getElementById('namsanxuat').value.trim();
    const hopsoSelect = document.getElementById('hopso').value.trim();
    const dongcoSelect = document.getElementById('dongco').value.trim();
    const sokmInput = document.getElementById('sokm').value.trim();
    const mausacSelect = document.getElementById('mausac').value.trim();
    // const diachiProvince = document.getElementById('optionprovince').value.trim();
    // const diachiDicSttric = document.getElementById('optionaddress').value.trim();

    // Kiểm tra điều kiện trước khi gửi POST
    if (!carnameInput || !automakerInput || !priceInput || !descriptionInput || selectedImages.length !== 7) {
        showAlert('Vui lòng điền đầy đủ thông tin và chọn đúng 7 hình ảnh.');
        return;
    }

    // Xử lý dữ liệu giá cả
    const priceWithoutComma = priceInput.replace(/,/g, '');
    const formattedPrice = parseFloat(priceWithoutComma).toFixed(2);

    // Tạo FormData
    const formData = new FormData();
    formData.append('carname', carnameInput);
    formData.append('automaker', automakerInput);
    formData.append('price', formattedPrice);
    formData.append('sxyear', namsanxuatSelect);
    formData.append('sokm', sokmInput);
    formData.append('hopso', hopsoSelect);
    formData.append('dongco', dongcoSelect);
    formData.append('mauxe', mausacSelect);
    formData.append('diachi', `${district + "--" + province}`);
    formData.append('description', descriptionInput);
    selectedImages.forEach(file => {
        formData.append('images', file);
    });

    // Gửi yêu cầu POST
    fetch('/addCars', {
        method: 'POST',
        body: formData,
        credentials: 'include'
    })
        .then(response => {
            if (!response.ok) {
                throw new Error('Network response was not ok');
            }
            return response.json();
        })
        .then(data => {
            if (data === true) {
                showAlert('Xe của bạn đã được đăng thành công.');
                // Reset form nếu cần
            } else {
                throw new Error('Unexpected response from server');
            }
        })
        .catch(error => {
            console.error('There was a problem with your fetch operation:', error);
            // Xử lý lỗi
        });
}

function resetForm() {
    // Reset các trường input và textarea
    document.getElementById('carname').value = '';
    document.getElementById('automaker').value = '';
    document.getElementById('price').value = '';
    document.getElementById('description').value = '';
    document.getElementById('priceInWords').value = '';
    // Xóa hình ảnh được chọn và cập nhật imageCount
    selectedImages = [];
    imageContainer.innerHTML = '';
    imageCount.textContent = '0 images selected';
}
function showAlert(message) {
    const alertDiv = document.createElement('div');
    alertDiv.classList.add('alert');
    alertDiv.textContent = message;
    document.body.appendChild(alertDiv);
    setTimeout(function () {
        document.body.removeChild(alertDiv);
    }, 2000);
}
