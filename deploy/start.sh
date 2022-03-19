function composer_install {
  # Check if COMPOSER_AUTH environment variable exists
  if [ -z ${COMPOSER_AUTH+x} ]; then echo "Please set COMPOSER_AUTH environment variable" && exit 1; fi

  # Composer install
  echo "${blue}${bold}Installing composer packages ${normal}"
  composer install $COMPOSER_NO_DEV --ansi --no-interaction --prefer-dist -v
}

composer_install
