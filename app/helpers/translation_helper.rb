# frozen_string_literal: true

module TranslationHelper
  ##
  # Public: Translate a model name.
  #
  # model: Model class.
  # count: Count.
  #
  # Examples:
  #
  #   <%= tm(Post) %>
  #   # => 'Artigo'
  #
  #   <%= tm(Post, 2) %>
  #   # => 'Artigos'
  #
  # Returns translated model.
  def translate_model_name(model, count = 1)
    model.model_name.human(count:)
  end
  alias tm translate_model_name

  ##
  # Public: Translate a model name pluralized.
  #
  # model: Model class.
  #
  # Examples:
  #
  #   <%= tmp(Post) %>
  #   # => 'Artigos'
  #
  # Returns translated model pluralized.
  def translate_model_name_pluralized(model)
    translate_model_name(model, 2)
  end
  alias tmp translate_model_name_pluralized

  ##
  # Public: Translate a model submit button.
  #
  # model: Model class.
  #
  # Examples:
  #
  #   <%= tmb(Post, :create) %>
  #   => <button name="button" type="submit" class="btn btn-primary">
  #   =>   <i class="bi bi-save2"> </i>Criar Artigo
  #   => </button>
  #
  #   <%= tmb(Post, :update) %>
  #   => <button name="button" type="submit" class="btn btn-primary">
  #   =>   <i class="bi bi-save2"> </i>Atualizar Artigo
  #   => </button>
  #
  # Returns translated model pluralized.
  def translate_model_button(model, kind)
    t("helpers.submit.#{kind}", model: tm(model))
  end
  alias tmb translate_model_button

  ##
  # Public: Translate a model attribute.
  #
  # model: Model class.
  # attribute: Attribute name.
  # count: Count.
  #
  # Examples
  #
  #   <%= ta(Post, :title) %>
  #   # => 'Titulo'
  #
  #   <%= ta(Post, :title, 2) %>
  #   # => 'Titulos'
  #
  # Returns translated model's attribute.
  def translate_model_attribute(model, attribute, count = 1)
    model.human_attribute_name(attribute, count:)
  end
  alias ta translate_model_attribute
end
