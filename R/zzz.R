.onLoad <- function(libname, pkgname) {
  op <- options()
  op.icon <- list(
    icon.path = rappdirs::user_data_dir("rpkg_icon")
  )
  toset <- !(names(op.icon) %in% names(op))
  if (any(toset)) options(op.icon[toset])

  # Update icon details
  update_icon()

  invisible()
}

.onAttach <- function(...) {
  crayon::num_colors(TRUE)
  icon_attach()
}
