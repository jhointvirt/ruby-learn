require '../week_organizer/services/file_service'
require '../week_organizer/helpers'
require '../week_organizer/models/record'

day = input_day
title = input_title
description = input_description
record = Record.new(title, description)

record_to_file(day, record)