document.addEventListener("DOMContentLoaded", function () {
    const carCollection = document.getElementById('carCollection');
    const pagination = document.getElementById('pagination');
    const prevButton = document.getElementById('prevButton');
    const nextButton = document.getElementById('nextButton');
    const Select = document.getElementById('select');
    const Select_hangxe = document.getElementById('select-hangxe');
    const carsPerPage = 6 * 8; // 10 xe hàng ngang * 20 xe hàng dọc
    let totalCars = 0; // Tổng số lượng xe
    let currentPage = 1;
    let cars = []; // Mảng chứa thông tin của các xe
    let carShortBy = [];
    getCars();
    selectLoc();
    loadAddressData();
    Select.addEventListener('change', function () {
        // Lấy giá trị của option đã chọn
        const selectedValue = Select.value;
        switch (selectedValue) {
            case 'Giá từ thấp đến cao ':
                carShortBy = [...cars];
                carShortBy.sort((car1, car2) => car1.price - car2.price);
                displayCars(1, carShortBy); // Hiển thị các xe trên trang
                createPaginationButtons(carShortBy); // Tạo nút phân trang
                break;
            case 'Giá từ cao đến thấp ':
                carShortBy = [...cars];
                carShortBy.sort((car1, car2) => car2.price - car1.price);
                displayCars(1, carShortBy); // Hiển thị các xe trên trang
                createPaginationButtons(carShortBy); // Tạo nút phân trang
                break;
            default:
                console.log('Giá trị không hợp lệ');
        }

        // In ra giá trị đã chọn

    });
    SelectHangxe();
    Select_hangxe.addEventListener('change', function () {
        // Lấy giá trị của option đã chọn
        const selectedValue = Select_hangxe.value;
        switch (selectedValue) {
            case 'Toyota':
                carShortBy = cars.filter(car => car.automaker === 'Toyota');
                displayCars(1, carShortBy); // Hiển thị các xe trên trang
                createPaginationButtons(carShortBy); // Tạo nút phân trang
                break;
            case 'Honda':
                carShortBy = cars.filter(car => car.automaker === 'Honda');
                displayCars(1, carShortBy); // Hiển thị các xe trên trang
                createPaginationButtons(carShortBy); // Tạo nút phân trang
                break;
            case 'Ford':
                carShortBy = cars.filter(car => car.automaker === 'Ford');
                displayCars(1, carShortBy); // Hiển thị các xe trên trang
                createPaginationButtons(carShortBy); // Tạo nút phân trang
                break;
            case 'Chevrolet':
                carShortBy = cars.filter(car => car.automaker === 'Chevrolet');
                displayCars(1, carShortBy); // Hiển thị các xe trên trang
                createPaginationButtons(carShortBy); // Tạo nút phân trang
                break;
            case 'Volkswagen':
                carShortBy = cars.filter(car => car.automaker === 'Volkswagen');
                displayCars(1, carShortBy); // Hiển thị các xe trên trang
                createPaginationButtons(carShortBy); // Tạo nút phân trang
                break;
            case 'BMW':
                carShortBy = cars.filter(car => car.automaker === 'BMW');
                displayCars(1, carShortBy); // Hiển thị các xe trên trang
                createPaginationButtons(carShortBy); // Tạo nút phân trang
                break;
            case 'Mercedes-Benz':
                carShortBy = cars.filter(car => car.automaker === 'Mercedes-Benz');
                displayCars(1, carShortBy); // Hiển thị các xe trên trang
                createPaginationButtons(carShortBy); // Tạo nút phân trang
                break;
            case 'Audi':
                carShortBy = cars.filter(car => car.automaker === 'Audi');
                displayCars(1, carShortBy); // Hiển thị các xe trên trang
                createPaginationButtons(carShortBy); // Tạo nút phân trang
                break;
            case 'Nissan':
                carShortBy = cars.filter(car => car.automaker === 'Nissan');
                displayCars(1, carShortBy); // Hiển thị các xe trên trang
                createPaginationButtons(carShortBy); // Tạo nút phân trang
                break;
            case 'Hyundai':
                carShortBy = cars.filter(car => car.automaker === 'Hyundai');
                displayCars(1, carShortBy); // Hiển thị các xe trên trang
                createPaginationButtons(carShortBy); // Tạo nút phân trang
                break;
            default:
                console.log('Giá trị không hợp lệ');
                break;
        }
    });
    function getRandomNumber() {
        // Sinh số ngẫu nhiên từ 1 đến 7
        return Math.floor(Math.random() * 7) + 1;
    }
    // Function để hiển thị các xe trên trang
    function displayCars(page, data) {
        carCollection.innerHTML = '';
        const startIndex = (page - 1) * carsPerPage;
        const endIndex = Math.min(startIndex + carsPerPage, totalCars);
        for (let i = startIndex; i < endIndex; i++) {
            a = getRandomNumber();
            const car = data[i];
            const carElement = document.createElement('div');
            carElement.classList.add('car');
            carElement.innerHTML = `
                
                <h3>${car.carname}</h3>
                <p class = "p-price">Giá: ${formatCurrencyToString(car.price) + " VNĐ"}</p>
                <p class = "p-year">Năm: ${car.sxyear}</p>
                <p class = "p-time">Thời gian: ${getTimeDifference(car.created_at)}</p>
                <img src="${car['image' + a]}" alt="${car.carname}" class="image-size"></img>
                <!-- Thêm các hình ảnh khác tại đây -->
                 <p class = "p-diachi">  ${car.diachi}</p>
                <p class = "p-hang">Hãng: ${car.automaker}</p>
                
            `;
            carElement.addEventListener('click', (event) => {
                // Xử lý khi carElement được click
                // event.preventDefault();
                // alert(`${car.id_car}`);
                window.open(`/showCarInfo?id_car=${car.id_car}`, '_blank');
                // Thêm code xử lý khác nếu cần
            });
            carCollection.appendChild(carElement);
        }
    }

    function formatCurrencyToString(amount) {
        // Chia cho 1 tỷ để lấy phần tỷ
        const billion = Math.floor(amount / 1000000000);
        // Chia cho 1 triệu để lấy phần triệu
        const million = Math.floor((amount % 1000000000) / 1000000);

        // Xây dựng chuỗi kết quả
        let result = "";
        if (billion > 0) {
            result += billion + " tỷ ";
        }
        if (million > 0) {
            result += million + " triệu ";
        }
        return result.trim(); // Loại bỏ khoảng trắng ở đầu và cuối chuỗi
    }

    // Sử dụng hàm formatCurrency với số tiền 2,222,222,222


    // Function để tạo nút phân trang
    function createPaginationButtons(data) {
        pagination.innerHTML = ''; // Xóa nút phân trang cũ trước khi tạo mới
        const totalPages = Math.ceil(totalCars / carsPerPage);
        for (let i = 1; i <= totalPages; i++) {
            const button = document.createElement('button');
            button.textContent = i;
            button.addEventListener('click', () => {
                currentPage = i;
                displayCars(currentPage, data);

                // Xóa lớp active-page khỏi tất cả các nút
                const allButtons = document.querySelectorAll('.pagination button');
                allButtons.forEach(btn => btn.classList.remove('active-page'));

                // Thêm lớp active-page vào nút trang hiện tại
                button.classList.add('active-page');
            });
            pagination.appendChild(button);
        }
    }

    // Function để thêm sản phẩm vào giỏ hàng
    // Sự kiện cho nút "Previous"
    prevButton.addEventListener('click', () => {
        if (currentPage > 1) {
            currentPage--;
            displayCars(currentPage);
        }
    });

    // Sự kiện cho nút "Next"
    nextButton.addEventListener('click', () => {
        const totalPages = Math.ceil(totalCars / carsPerPage);
        if (currentPage < totalPages) {
            currentPage++;
            displayCars(currentPage);
        }
    });

    // Sự kiện cho container chứa tất cả các sản phẩm
    // carCollection.addEventListener('click', function (event) {
    //     if (event.target.classList.contains('add-to-cart-btn')) {
    //         const productName = event.target.parentNode.querySelector('h3').textContent;
    //         addToCart(productName);
    //     } else {
    //         const productName = event.target.parentNode.querySelector('h3').textContent;
    //         viewCar(productName);

    //     }
    // });

    function getCars() {
        fetch('/getCars', {
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
                if (data.length > 0) {
                    totalCars = data.length;
                    cars = data.map(item => item.arrCars); // Lấy thông tin của các xe từ dữ liệu trả về
                    displayCars(currentPage, cars); // Hiển thị các xe trên trang
                    createPaginationButtons(cars); // Tạo nút phân trang
                }
            })
            .catch(error => {
                console.error('There was a problem with your fetch operation:', error);
            });
    }

    function populateProvinceOptions(data) {
        // var province_id = null;
        var provinceSelect = document.getElementById('select-diachi');
        provinceSelect.innerHTML = '<option value="">Chọn tỉnh/thành phố</option>';
        const provincesMap = {};

        data.forEach(items => {
            provinceSelect.innerHTML += `<option value="${items.province.id}">${items.province.name}</option>`;
            provincesMap[items.province.id] = items.province.name;
        });
        provinceSelect.addEventListener('change', function () {
            var province_id = provinceSelect.value;
            if (provincesMap[province_id]) {
                const targetProvince = provincesMap[province_id].trim();
                // carShortBy = cars.filter(car => car.diachi === provincesMap[province_id]);
                const regex = new RegExp(`\\b${targetProvince}\\b`, 'i');
                const filteredCars = cars.filter(car => regex.test(car.diachi));
                displayCars(1, filteredCars); // Hiển thị các xe trên trang
                createPaginationButtons(filteredCars); // Tạo nút phân trang
            } else {
                clearDistrictOptions();
            }
        });
    }
    function clearDistrictOptions() {
        var districtSelect = document.getElementById('select-diachi');
        districtSelect.innerHTML = '<option value="">Chọn quận/huyện</option>';
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
    function filterCarsByProvince(province_id) {
        const targetProvince = provincesMap[province_id].trim(); // Loại bỏ khoảng trắng không cần thiết

        // Sử dụng biểu thức chính quy để tìm kiếm sự khớp chính xác
        const regex = new RegExp(`\\b${targetProvince}\\b`, 'i'); // '\\b' đảm bảo sự phù hợp chính xác từng từ

        const filteredCars = cars.filter(car => regex.test(car.diachi));
        return filteredCars;
    }
});
function formatCurrency(amount) {
    // Chuyển đổi số thành chuỗi với hai chữ số thập phân
    let parts = parseFloat(amount).toFixed(2).toString().split('.');

    // Định dạng phần nguyên với dấu chấm phân cách ngàn
    parts[0] = parts[0].replace(/\B(?=(\d{3})+(?!\d))/g, ".");

    // Kiểm tra nếu phần thập phân là "00" thì loại bỏ
    if (parts[1] === "00") {
        return parts[0];
    }

    // Nếu không phải "00" thì ghép lại phần nguyên và phần thập phân
    return parts.join('.');
}

function selectLoc() {
    const Select = document.getElementById('select');


    const selectOptions = [
        'Giá từ thấp đến cao ',
        'Giá từ cao đến thấp ',
    ];


    selectOptions.forEach(option => {
        const newOption = document.createElement('option');
        newOption.value = option;
        newOption.text = option;
        Select.appendChild(newOption);
    });
}
function SelectHangxe() {
    const SelectHangxe = document.getElementById('select-hangxe');
    var selectHangXeOptions = ['Toyota', 'Honda', 'Ford', 'Chevrolet', 'Volkswagen', 'BMW', 'Mercedes-Benz', 'Audi', 'Nissan', 'Hyundai'];


    selectHangXeOptions.forEach(option => {
        const newOption = document.createElement('option');
        newOption.value = option;
        newOption.text = option;
        SelectHangxe.appendChild(newOption);
    });
}
function getTimeDifference(timestamp) {
    const commentTime = new Date(timestamp);
    const currentTime = new Date();
    const timeDiff = currentTime - commentTime;

    const minutes = Math.floor(timeDiff / 1000 / 60);
    if (minutes < 60) {
        return `${minutes} phút trước`;
    }

    const hours = Math.floor(minutes / 60);
    if (hours < 24) {
        return `${hours} giờ trước`;
    }

    const days = Math.floor(hours / 24);
    if (days < 7) {
        return `${days} ngày trước`;
    }

    const weeks = Math.floor(days / 7);
    if (weeks < 4) {
        return `${weeks} tuần trước`;
    }

    const months = Math.floor(days / 30);
    if (months < 12) {
        return `${months} tháng trước`;
    }

    const years = Math.floor(months / 12);
    return `${years} năm trước`;
}
