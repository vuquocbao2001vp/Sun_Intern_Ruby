# De 1 - Cau 1

params = {"supplier"=>{"name"=>"Test lay params", "tax_number"=>"0110254854", "address"=>"Tokyo", "supplier_type"=>"personal", 	"bank_accounts"=>{"0"=>{"account"=>"847445", "branch_name"=>"VCB"}, "1"=>{"account"=>"985784", "branch_name"=>"ACB", "_destroy"=>"false"}}}}

# Lấy ra branch_name của bank_account có key = 1
branch_name_selected = params["supplier"]["bank_accounts"]["1"]["branch_name"]
puts branch_name_selected

# Thêm type = “personal" cho supplier
params.store("type", "personal")
puts params