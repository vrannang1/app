defmodule App.Articles.ArticleTag do
  use Ecto.Schema
  import Ecto.Changeset

  alias App.Articles.Article
  alias App.Articles.Tag

  @primary_key false
  schema "articles_tags" do
    belongs_to :article, Article
    belongs_to :tag, Tag
  end

  def changeset(article_tag, attrs) do
    article_tag
    |> cast(attrs, [:tag_id, :article_id])
    |> validate_required([:tag_id, :article_id])
  end
end
