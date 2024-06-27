document.addEventListener('DOMContentLoaded', function() {
    const showArticleButton = document.getElementById('showArticleButton');
    const articleContainer = document.getElementById('articleContainer');
  
    showArticleButton.addEventListener('click', function() {
      articleContainer.classList.remove('hidden');
      // Thay đổi nội dung bài báo về ca sĩ
      const articleContent = document.getElementById('articleContent');
      articleContent.textContent = "Nội dung bài báo về ca sĩ có thể dài đến 100 từ...";
    });
  });
  