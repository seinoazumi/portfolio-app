$(document).on('turbolinks:load', function(){
  var $workImg = $('.works__img'),
      $modal = $('#modal');

  function buildHtml(data){
    var workCategories = data.categories,
        workLang = data.language ? data.language : (''),
        workSoftwear = data.softwear,
        workContainer = `<main class="work row">
    <figure class="work__l col-sm-6 overflow-scroll">
    <img class="work__img w-100 img-fluid" src="${data.image}">
    </figure>
    <div class="work__info col-sm-6">
    <h3 class="work__info__title">${data.name}</h3>
    <p class="work__info__category">
    カテゴリー：
    ${workCategories}
    </p>
    <p class="work__info__longuage">
    使用言語：
    <span>${workLang}</span>
    </p>
    <p class="work__info__softwear">
    使用ソフト等：
    <span>${workSoftwear}</span>
    </p>
    <p class="work__info__time">
    制作時間：
    <span>${data.time}</span>
    時間
    </p>
    <p class="work__info__description">${data.description}</p>
    <p class="work__info__url">
    作品／関連URL：
    <span>${data.url}</span>
    </p>
    <p class="work__info__date">
    制作時期：
    <span>${data.date}</span>
    </p>
    </div>
    <div class="pagenation col mt-3 text-center">
    <a href="/works">作品一覧へ</a>
    </div>
    <a href="/admin/works/${data.id}/edit">この作品を編集する</a>
    </main>`;
    return workContainer;
  };

  $workImg.on('click', function buildModal(e){
    $workId = $(this).data('id'); 
    e.preventDefault(); //画面の遷移を止める
    $.ajax({
      type: 'GET',
      url: '/works/' + $workId, // アクションを投げるURL
      data: { id: $workId },
      dataType: 'json'  //json形式指定
      })
      .done(function (data) {
        var showWork = buildHtml(data);
        $modal.append(showWork);
      })
      .fail(function (){
        console.log("失敗しました");
      });
  });

});
