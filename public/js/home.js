document.addEventListener("DOMContentLoaded", function () {
    const carCollection = document.getElementById('carCollection');
    const pagination = document.getElementById('pagination');
    const prevButton = document.getElementById('prevButton');
    const nextButton = document.getElementById('nextButton');
    const Select = document.getElementById('select');
    const Select_hangxe = document.getElementById('select-hangxe');
    const filterDiv = document.getElementById('filter');
    const btnSearch = document.getElementById('btnSearch');
    const inputtext = document.getElementById('inputtext');
    const scrollingText = document.getElementById('scrollingText');
    const thongbao = document.getElementById('thongbao');
    let isScrolling = true;
    const carsPerPage = 6 * 8; // 10 xe hàng ngang * 20 xe hàng dọc
    let totalCars = 0; // Tổng số lượng xe
    let currentPage = 1;
    let cars = []; // Mảng chứa thông tin của các xe
    let carShortBy = [];
    let filter = {
        price: null,
        hang: null,
        city: null,
        search: null
    };
    getCars();
    selectLoc();
    loadAddressData();
    // setInterval(() => {
    //     scrollingText.style.visibility = (scrollingText.style.visibility === 'hidden' ? '' : 'hidden');
    // }, 500);

    // Scrolling effect
    let startPosition = thongbao.offsetWidth;
    function scrollText(text) {
        if (isScrolling) {
            startPosition--;
            if (startPosition < -scrollingText.offsetWidth) {
                startPosition = thongbao.offsetWidth; // Dừng cuộn khi văn bản đã chạy hết qua bên trái
            }
            scrollingText.textContent = text;
            scrollingText.style.transform = `translateX(${startPosition}px)`;
            requestAnimationFrame(() => scrollText(text));
        } else {
            scrollingText.style.visibility = 'hidden'; // Ẩn văn bản khi dừng cuộn
        }
    }
    scrollText("xin chao ``````````````````");
    Select.addEventListener('change', function () {
        // Lấy giá trị của option đã chọn
        const selectedValue = Select.value;
        switch (selectedValue) {
            case 'Giá từ thấp đến cao ':
                filterByPrice("Giá từ thấp đến cao");
                appendLabel("Giá từ thấp đến cao");
                break;
            case 'Giá từ cao đến thấp ':
                filterByPrice("Giá từ cao đến thấp");
                appendLabel("Giá từ cao đến thấp");
                break;
            default:
                console.log('Giá trị không hợp lệ');
        }
    });
    SelectHangxe();
    Select_hangxe.addEventListener('change', function () {
        // Lấy giá trị của option đã chọn
        const selectedValue = Select_hangxe.value;
        filterByHang(selectedValue);
        appendLabel(selectedValue);
    });
    document.getElementById('inputtext').addEventListener('keypress', async (event) => {
        if (event.key === 'Enter') {
            event.preventDefault(); // Ngăn chặn hành động mặc định của phím Enter
            if (inputtext.value.trim()) {
                filterSearch(inputtext.value.trim());
            } else {
                alert("Khong duoc de trong");
            }
        }
    });
    btnSearch.addEventListener('click', function () {
        // Lấy giá trị của option đã chọn
        // const selectedValue = Select_hangxe.value;
        if (inputtext.value.trim()) {
            filterSearch(inputtext.value.trim());
        } else {
            alert("Khong duoc de trong");
        }
    });

    document.getElementById('select-diachi').addEventListener('change', function () {
        const selectedValue = this.options[this.selectedIndex].text;
        filterByCity(selectedValue);
        appendLabel(selectedValue);
    });

    function filterByPrice(param) {
        filter['price'] = param;
        updateFilter();
    }

    function filterByHang(param) {
        filter['hang'] = param;
        updateFilter();
    }

    function filterByCity(param) {
        filter['city'] = param;
        updateFilter();
    }
    function filterSearch(param) {
        filter['search'] = param;
        updateFilter();
    }
    function updateFilter() {
        carShortBy = [...cars];

        // Lọc theo giá
        if (filter.price) {
            if (filter.price === "Giá từ thấp đến cao") {
                carShortBy.sort((car1, car2) => car1.price - car2.price);
            } else if (filter.price === "Giá từ cao đến thấp") {
                carShortBy.sort((car1, car2) => car2.price - car1.price);
            }
        }

        // Lọc theo hãng
        if (filter.hang) {
            carShortBy = carShortBy.filter(car => car.automaker === filter.hang);
        }
        // Lọc theo thành phố
        if (filter.city) {
            const targetProvince = filter.city.trim();
            const regex = new RegExp(`\\b${targetProvince}\\b`, 'i');
            carShortBy = carShortBy.filter(car => regex.test(car.diachi));
        }
        if (filter.search) {
            carShortBy = carShortBy.filter(item => {
                // Duyệt qua tất cả các trường của đối tượng arrCars
                for (const key in item) {
                    // Kiểm tra nếu giá trị của trường là một chuỗi và chứa từ khóa tìm kiếm
                    if (typeof item[key] === 'string' && item[key].toLowerCase().includes(filter.search.toLowerCase())) {
                        return true; // Trả về true nếu có bất kỳ trường nào thỏa mãn điều kiện
                    }
                }
                return false; // Trả về false nếu không có trường nào thỏa mãn điều kiện
            });
        }

        // Sau khi áp dụng bộ lọc, trả về mảng carShortBy mới              
        // console.log(carShortBy);
        displayCars(1, carShortBy); // Hiển thị các xe trên trang
        createPaginationButtons(carShortBy); // Tạo nút phân trang
    }

    function createLabel(text) {
        const labelContainer = document.createElement('div');
        labelContainer.classList.add('label-container');

        const label = document.createElement('label');
        label.textContent = text;

        const closeButton = document.createElement('span');
        closeButton.textContent = 'x';
        closeButton.classList.add('close-btn');
        closeButton.onclick = () => {
            // Xóa tiêu chí khỏi filter
            if (text.includes('Giá từ')) {
                filter.price = null;
                filter.search = null
            } else if (filter.hang === text) {
                filter.search = null
                filter.hang = null;
            } else if (filter.city === text) {
                filter.search = null
                filter.city = null;
            }
            labelContainer.remove();
            updateFilter();
        };

        labelContainer.appendChild(label);
        labelContainer.appendChild(closeButton);

        return labelContainer;
    }

    function appendLabel(text) {
        const existingLabels = Array.from(document.querySelectorAll('.label-container label'));
        const isExisting = existingLabels.some(label => label.textContent === text);
        if (!isExisting) {
            filterDiv.appendChild(createLabel(text));
        }
    }
    function getRandomNumber() {
        // Sinh số ngẫu nhiên từ 1 đến 7
        return Math.floor(Math.random() * 7) + 1;
    }
    function displayCars(page, data) {
        carCollection.innerHTML = '';
        inputtext.value = '';
        const startIndex = (page - 1) * carsPerPage;
        const endIndex = Math.min(startIndex + carsPerPage, totalCars);
        // console.log("Data received:", data); // Debug: Kiểm tra dữ liệu truyền vào hàm
        for (let i = startIndex; i < endIndex; i++) {
            a = getRandomNumber();
            const car = data[i];
            // console.log("Current car:", car); // Debug: Kiểm tra dữ liệu của từng xe
            if (car) {
                const carElement = document.createElement('div');
                carElement.classList.add('car');
                carElement.innerHTML = `
                    <h3>${car.carname}</h3>
                    <p class="p-price">Giá: ${formatCurrencyToString(car.price) + " VNĐ"}</p>
                    <p class="p-year">Năm: ${car.sxyear}</p>
                    <p class="p-time">Thời gian: ${getTimeDifference(car.created_at)}</p>
                    <img src="${car['image' + a]}" alt="${car.carname}" class="image-size"></img>
                    <p class="p-diachi">${car.diachi}</p>
                    <p class="p-hang">Hãng: ${car.automaker}</p>
                `;
                carElement.addEventListener('click', (event) => {
                    window.open(`/showCarInfo?id_car=${car.id_car}`, '_blank');
                });
                carCollection.appendChild(carElement);
            } else {
                // console.warn("Undefined car data at index", i); // Debug: Thông báo nếu xe không tồn tại
            }
        }
    }

    function formatCurrencyToString(amount) {
        const billion = Math.floor(amount / 1000000000);
        const million = Math.floor((amount % 1000000000) / 1000000);

        let result = "";
        if (billion > 0) {
            result += billion + " tỷ ";
        }
        if (million > 0) {
            result += million + " triệu ";
        }
        return result.trim();
    }

    function createPaginationButtons(data) {
        pagination.innerHTML = '';
        const totalPages = Math.ceil(totalCars / carsPerPage);
        for (let i = 1; i <= totalPages; i++) {
            const button = document.createElement('button');
            button.textContent = i;
            button.addEventListener('click', () => {
                currentPage = i;
                displayCars(currentPage, data);

                const allButtons = document.querySelectorAll('.pagination button');
                allButtons.forEach(btn => btn.classList.remove('active-page'));

                button.classList.add('active-page');
            });
            pagination.appendChild(button);
        }
    }

    prevButton.addEventListener('click', () => {
        if (currentPage > 1) {
            currentPage--;
            displayCars(currentPage);
        }
    });

    nextButton.addEventListener('click', () => {
        const totalPages = Math.ceil(totalCars / carsPerPage);
        if (currentPage < totalPages) {
            currentPage++;
            displayCars(currentPage);
        }
    });

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
                    cars = data.map(item => item.arrCars);
                    displayCars(currentPage, cars);
                    createPaginationButtons(cars);
                }
            })
            .catch(error => {
                console.error('There was a problem with your fetch operation:', error);
            });
    }

    function populateProvinceOptions(data) {
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
                appendLabel(provincesMap[province_id].trim());
                const targetProvince = provincesMap[province_id].trim();
                const regex = new RegExp(`\\b${targetProvince}\\b`, 'i');
                const filteredCars = cars.filter(car => regex.test(car.diachi));
                displayCars(1, filteredCars);
                createPaginationButtons(filteredCars);
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
                populateProvinceOptions(data);
            })
            .catch(error => {
                console.error('Error loading address data:', error);
            });
    }

    function filterCarsByProvince(province_id) {
        const targetProvince = provincesMap[province_id].trim();
        const regex = new RegExp(`\\b${targetProvince}\\b`, 'i');
        const filteredCars = cars.filter(car => regex.test(car.diachi));
        return filteredCars;
    }
});

function formatCurrency(amount) {
    let parts = parseFloat(amount).toFixed(2).toString().split('.');
    parts[0] = parts[0].replace(/\B(?=(\d{3})+(?!\d))/g, ".");

    if (parts[1] === "00") {
        return parts[0];
    }

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
