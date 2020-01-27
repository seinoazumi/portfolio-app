json.id  @work.id
json.name  @work.name
json.categories  @work.categories
json.language @work.language
json.softwear @work.softwear
json.date @work.date.strftime("%Y年 %m月")
json.time @work.time
json.description @work.description
json.url @work.url
json.image @work.images[1].url
