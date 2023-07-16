extension ExchangeMapper on Exchange {
  ExchangeEntity toEntity() {
    return ExchangeEntity(
      id: id,
      name: name,
      description: description,
      imageUrl: imageUrl,
      websiteUrl: websiteUrl,
      trustScore: trustScore,
      trustScoreRank: trustScoreRank,
      yearEstablished: yearEstablished,
      country: country,
      hasTradingIncentive: hasTradingIncentive,
      tradeVolume24hBtc: tradeVolume24hBtc,
      tradeVolume24hBtcNormalized: tradeVolume24hBtcNormalized,
    );
  }
}
