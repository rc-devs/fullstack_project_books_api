# frozen_string_literal: true

class BookBlueprint < Blueprinter::Base
  identifier :id

  view :normal do
    fields :author, :title, :read, :created_at, :updated_at
  end
end
