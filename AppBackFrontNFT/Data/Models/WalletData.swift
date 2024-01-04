import Foundation

// MARK: - WalletData
struct WalletData: Codable {
    let quotationEthereun: QuotationEthereun
    let latestTransactionsCell: LatestTransactionsCell

    enum CodingKeys: String, CodingKey {
        case quotationEthereun = "quotation_ethereun"
        case latestTransactionsCell = "latest_transactions_cell"
    }
}

// MARK: - LatestTransactionsCell
struct LatestTransactionsCell: Codable {
    let latestTransactionsTitle: String = "Últimas Ofertas"
    var listOfTransactions: [ListOfTransaction] = []

    enum CodingKeys: String, CodingKey {
        case latestTransactionsTitle = "latest_transactions_title"
        case listOfTransactions = "list_of_transactions"
    }
}

// MARK: - ListOfTransaction
struct ListOfTransaction: Codable {
    var type: String  = ""
    var idTransaction: String = ""
    var image: String = ""
    var priceEth: Double = 0
    var valueDollar: Double = 0
    var dateAndHour: String = ""

    enum CodingKeys: String, CodingKey {
        case type
        case idTransaction = "id_transaction"
        case image
        case priceEth = "price_eth"
        case valueDollar = "value_dollar"
        case dateAndHour = "date_and_hour"
    }
}

// MARK: - QuotationEthereun
struct QuotationEthereun: Codable {
    var ethValue: Double
    var valueInDollars: Double
    var coinEthImage: String

    enum CodingKeys: String, CodingKey {
        case ethValue = "eth_value"
        case valueInDollars = "value_in_dollars"
        case coinEthImage = "coin_eth_image"
    }
}
