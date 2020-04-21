
path <- as.list(paste0("images/people/",list.files("images/people/")))

path <- "images/Coronavirus-working-group.webp"

webp_to_jpg <- function(path) {
  image_read(path) %>% 
    image_convert("jpg") %>% 
    image_write(path = gsub("webp","jpg",path), format = "jpg")
}

lapply(path, webp_to_jpg)
