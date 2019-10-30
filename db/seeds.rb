# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

AdminUser.destroy_all
Order.destroy_all
User.destroy_all
Product.destroy_all
AdminUser.create!(email: 'seba.rada@gmail.com', password: '123456', password_confirmation: '123456')
9.times do |i|
    articles = ["Carteras", "Fundas", "Estatuas", "Separador", "Cajas", "Copas", "Telefono", "Porta Velas", "Almohada"]
    Product.create(
        name: "#{articles[i]}",
        photo: "#{i+1}.jpeg",
        unit_price: 250
        )   
end

# articles = ["Carteras", "Fundas", "Estatuas", "Separador", "Cajas", "Copas", "Telefono", "Porta Velas", "Almohada"]

# Product.create(
#     name: "#{articles[i]}",
#     photo: "https://g24proyectoecommerce.s3.amazonaws.com/1.jpeg?response-content-disposition=inline&X-Amz-Security-Token=IQoJb3JpZ2luX2VjELX%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEaCXNhLWVhc3QtMSJHMEUCIQCq7eh82TxRCCfOPYcVzLaENuG7yy08Sn%2FsiqvnGCjf4gIgGuXzyqOFG3Iq9VMY1wuSSWwHqOqz7DFZOmUxuNL7sF8qigIIvv%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FARAAGgw5MTEzMDE1MjkyMzIiDEMSaEjuEWntj4uB6yreAfRQzAvtZlhECmPNWAvF31iaFQoN0MWDuuAwzPHgfZosPqAgWybo6Y1qS3eqwo%2BRXU9ABuuREPvIaeW1Yl3MTF30GyTbItbNGgUY5CazOyz8i2sacpa9EIZdOZd9MD2%2FU0AEfu8aV8dmOFocEL2wqJiaPXNGLVWCd9zvkzaJse5I2TUpZO%2BbPCd9DYj%2BhIL9bGoFGjKBjQUnhym3PY2WB%2Bvtgv39jWT6btD%2FjMEPYt35QkeSUVL2PD%2Foy7xAYkrH5jNqDEVrt3jfLq5EWqkanmihMf685vFrF5VGCR6CVDCfjubtBTqOA4Xs1YKm21RKwNqQf62gL16zf58sBxfaWHjiTSgjE%2BSjDmHnPy%2BteI0RFb9v%2FYJDKJ6arYlSi4WfMTUBxH%2FqsLaNrzK2hAFeUnDfOuf%2F4l4IWdZfA2mV4eNN%2BG%2BXwPK4cRW9jdc2nOK4HHaR7uYFV0sd6JVCpUZfDpQO6lgomoZ74VV0lRoZ8Yx5s2D%2BY%2BGpgbMCG8OQn%2FWuOppXEEXstpc%2BkXw8Cp9o398yMLcXjpsFVMUO13Tad2VwehuptL2UQ6Uae2hq%2FIZKzUN0AQ4TZeLMVSROfk%2BMGiHw1v4zLt5bsttIQ0w73uQXh4GARr8wDmci8N9skdwsnYXoCinRDs2n8beS%2F7DDNBMyyyVG1jBcsuVZDm1AlQ84nDtDqLSH0yFEG%2BX6nuLi5L3P%2F7WnTl5C7avz%2BiGNWHg0SOJ9OxCT%2BBC%2BHpuAm1VjP8k0OqXGMuBWs%2F37n%2BX8dIHAQPcrPKrXntmJhmf%2Ba1SO8mIlcSOeknwAsaitE4TNSATxR145NDE9NvIwEOQI4LlqiPwk&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Date=20191030T144607Z&X-Amz-SignedHeaders=host&X-Amz-Expires=300&X-Amz-Credential=ASIA5ILONZ2IEWZ7RYPG%2F20191030%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Signature=20d57df9e130b7a5db87fda96792993891a247fec4d852508e3bd7345e9a197c",
#     unit_price: 250
# )

# Product.create(
#     name: "#{articles[i]}",
#     photo: "https://g24proyectoecommerce.s3.amazonaws.com/2.jpeg?response-content-disposition=inline&X-Amz-Security-Token=IQoJb3JpZ2luX2VjELX%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEaCXNhLWVhc3QtMSJHMEUCIQCq7eh82TxRCCfOPYcVzLaENuG7yy08Sn%2FsiqvnGCjf4gIgGuXzyqOFG3Iq9VMY1wuSSWwHqOqz7DFZOmUxuNL7sF8qigIIvv%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FARAAGgw5MTEzMDE1MjkyMzIiDEMSaEjuEWntj4uB6yreAfRQzAvtZlhECmPNWAvF31iaFQoN0MWDuuAwzPHgfZosPqAgWybo6Y1qS3eqwo%2BRXU9ABuuREPvIaeW1Yl3MTF30GyTbItbNGgUY5CazOyz8i2sacpa9EIZdOZd9MD2%2FU0AEfu8aV8dmOFocEL2wqJiaPXNGLVWCd9zvkzaJse5I2TUpZO%2BbPCd9DYj%2BhIL9bGoFGjKBjQUnhym3PY2WB%2Bvtgv39jWT6btD%2FjMEPYt35QkeSUVL2PD%2Foy7xAYkrH5jNqDEVrt3jfLq5EWqkanmihMf685vFrF5VGCR6CVDCfjubtBTqOA4Xs1YKm21RKwNqQf62gL16zf58sBxfaWHjiTSgjE%2BSjDmHnPy%2BteI0RFb9v%2FYJDKJ6arYlSi4WfMTUBxH%2FqsLaNrzK2hAFeUnDfOuf%2F4l4IWdZfA2mV4eNN%2BG%2BXwPK4cRW9jdc2nOK4HHaR7uYFV0sd6JVCpUZfDpQO6lgomoZ74VV0lRoZ8Yx5s2D%2BY%2BGpgbMCG8OQn%2FWuOppXEEXstpc%2BkXw8Cp9o398yMLcXjpsFVMUO13Tad2VwehuptL2UQ6Uae2hq%2FIZKzUN0AQ4TZeLMVSROfk%2BMGiHw1v4zLt5bsttIQ0w73uQXh4GARr8wDmci8N9skdwsnYXoCinRDs2n8beS%2F7DDNBMyyyVG1jBcsuVZDm1AlQ84nDtDqLSH0yFEG%2BX6nuLi5L3P%2F7WnTl5C7avz%2BiGNWHg0SOJ9OxCT%2BBC%2BHpuAm1VjP8k0OqXGMuBWs%2F37n%2BX8dIHAQPcrPKrXntmJhmf%2Ba1SO8mIlcSOeknwAsaitE4TNSATxR145NDE9NvIwEOQI4LlqiPwk&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Date=20191030T144846Z&X-Amz-SignedHeaders=host&X-Amz-Expires=300&X-Amz-Credential=ASIA5ILONZ2IEWZ7RYPG%2F20191030%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Signature=c74305a88c69326dc5daa350982569f59d4a5c01d4fb8efb8498605a7c881a75",
#     unit_price: 250
# )

# Product.create(
#     name: "#{articles[i]}",
#     photo: "https://g24proyectoecommerce.s3.amazonaws.com/3.jpeg?response-content-disposition=inline&X-Amz-Security-Token=IQoJb3JpZ2luX2VjELX%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEaCXNhLWVhc3QtMSJHMEUCIQCq7eh82TxRCCfOPYcVzLaENuG7yy08Sn%2FsiqvnGCjf4gIgGuXzyqOFG3Iq9VMY1wuSSWwHqOqz7DFZOmUxuNL7sF8qigIIvv%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FARAAGgw5MTEzMDE1MjkyMzIiDEMSaEjuEWntj4uB6yreAfRQzAvtZlhECmPNWAvF31iaFQoN0MWDuuAwzPHgfZosPqAgWybo6Y1qS3eqwo%2BRXU9ABuuREPvIaeW1Yl3MTF30GyTbItbNGgUY5CazOyz8i2sacpa9EIZdOZd9MD2%2FU0AEfu8aV8dmOFocEL2wqJiaPXNGLVWCd9zvkzaJse5I2TUpZO%2BbPCd9DYj%2BhIL9bGoFGjKBjQUnhym3PY2WB%2Bvtgv39jWT6btD%2FjMEPYt35QkeSUVL2PD%2Foy7xAYkrH5jNqDEVrt3jfLq5EWqkanmihMf685vFrF5VGCR6CVDCfjubtBTqOA4Xs1YKm21RKwNqQf62gL16zf58sBxfaWHjiTSgjE%2BSjDmHnPy%2BteI0RFb9v%2FYJDKJ6arYlSi4WfMTUBxH%2FqsLaNrzK2hAFeUnDfOuf%2F4l4IWdZfA2mV4eNN%2BG%2BXwPK4cRW9jdc2nOK4HHaR7uYFV0sd6JVCpUZfDpQO6lgomoZ74VV0lRoZ8Yx5s2D%2BY%2BGpgbMCG8OQn%2FWuOppXEEXstpc%2BkXw8Cp9o398yMLcXjpsFVMUO13Tad2VwehuptL2UQ6Uae2hq%2FIZKzUN0AQ4TZeLMVSROfk%2BMGiHw1v4zLt5bsttIQ0w73uQXh4GARr8wDmci8N9skdwsnYXoCinRDs2n8beS%2F7DDNBMyyyVG1jBcsuVZDm1AlQ84nDtDqLSH0yFEG%2BX6nuLi5L3P%2F7WnTl5C7avz%2BiGNWHg0SOJ9OxCT%2BBC%2BHpuAm1VjP8k0OqXGMuBWs%2F37n%2BX8dIHAQPcrPKrXntmJhmf%2Ba1SO8mIlcSOeknwAsaitE4TNSATxR145NDE9NvIwEOQI4LlqiPwk&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Date=20191030T144948Z&X-Amz-SignedHeaders=host&X-Amz-Expires=300&X-Amz-Credential=ASIA5ILONZ2IEWZ7RYPG%2F20191030%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Signature=f71539eb7ba549ce38909490364ffd42624223b5201aa53db19cf32cf7a6a845",
#     unit_price: 250
# )