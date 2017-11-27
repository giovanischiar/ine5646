ProductType = GraphQL::ObjectType.define do
  name 'Product'
  description 'Amazing products'

  field :id, !types.ID
  field :name, !types.String, property: :name
  field :code, !types.String, property: :code
  field :description, !types.String, property: :desc
end

QueryType = GraphQL::ObjectType.define do
  name "Query"
  # Add root-level fields here.
  # They will be entry points for queries on your schema.

  # TODO: remove me
  field :testField, types.String do
    description "An example field added by the generator"
    resolve ->(obj, args, ctx) {
      "Hello World!"
    }
  end

  field :all_products do
    type types[ProductType]
    description 'All products'
    resolve -> (obj, args, ctx) { Product.all }
  end

  field :product do
    type ProductType
    description 'A particular product'
    argument :id, !types.ID
    resolve -> (obj, args, ctx) { Product.find(args[:id]) }
  end
end

Schema = GraphQL::Schema.define do
	query QueryType
end
