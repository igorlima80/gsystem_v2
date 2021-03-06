MenuItem.delete_all
MenuItem.create name: 'Cidades', icon: 'map', link: 'cities_path', position: 1, target: '_self', permission: 'manage', permission_check: 'City', menu_item_id: nil, published: true
MenuItem.create name: 'Estados', icon: 'map-o', link: 'states_path', position: 2, target: '_self', permission: 'manage', permission_check: 'State', menu_item_id: nil, published: true
MenuItem.create name: 'Usuários', icon: 'users', link: 'users_path', position: 3, target: '_self', permission: 'manage', permission_check: 'User', menu_item_id: nil, published: true
MenuItem.create name: 'Colaboradores', icon: 'user', link: 'users_path', position: 4, target: '_self', permission: 'manage', permission_check: 'User', menu_item_id: nil, published: true
MenuItem.create name: 'Entregadores', icon: 'car', link: 'deliverers_path', position: 5, target: '_self', permission: 'manage', permission_check: 'Deliverer', menu_item_id: nil, published: true
MenuItem.create name: 'Produtos', icon: 'cart-arrow-down', link: 'products_path', position: 6, target: '_self', permission: 'manage', permission_check: 'Product', menu_item_id: nil, published: true
MenuItem.create name: 'Fornecedores (Pessoa Jurídica)', icon: 'industry', link: 'supplier_legals_path', position: 7, target: '_self', permission: 'manage', permission_check: 'SupplierLegal', menu_item_id: nil, published: true
MenuItem.create name: 'Fornecedores (Pessoa Física)', icon: 'black-tie', link: 'supplier_physicals_path', position: 8, target: '_self', permission: 'manage', permission_check: 'SupplierPhysical', menu_item_id: nil, published: true
MenuItem.create name: 'Clientes (Pessoa Jurídica)', icon: 'institution', link: 'legal_customers_path', position: 9, target: '_self', permission: 'manage', permission_check: 'LegalCustomer', menu_item_id: nil, published: true
MenuItem.create name: 'Clientes (Pessoa Física)', icon: 'male', link: 'physical_customers_path', position: 10, target: '_self', permission: 'manage', permission_check: 'PhysicalCustomer', menu_item_id: nil, published: true

