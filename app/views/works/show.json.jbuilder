json.id  @work.id
json.name  @work.name
json.category  @work.categories[0].name
json.date @work.created_at.strftime("%Y/%m/%d %H:%M")
json.image @work.images[1]
