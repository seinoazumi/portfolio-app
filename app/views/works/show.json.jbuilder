json.id  @work.id
json.name  @work.name
json.categories  @work.categories
json.language @work.language
json.softwear @work.softwear
json.date @work.date.strftime("%Y年 %m月")
json.image @work.images[1]
