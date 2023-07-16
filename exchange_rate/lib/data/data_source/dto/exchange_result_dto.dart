import 'dart:convert';

class ExchangeResultDto {
  final String result;
  final String documentation;
  final String terms_of_use;
  final int time_last_update_unix;
  final String time_last_update_utc;
  final int time_next_update_unix;
  final String time_next_update_utc;
  final String base_code;
  final Conversion_rates conversion_rates;
  ExchangeResultDto({
    required this.result,
    required this.documentation,
    required this.terms_of_use,
    required this.time_last_update_unix,
    required this.time_last_update_utc,
    required this.time_next_update_unix,
    required this.time_next_update_utc,
    required this.base_code,
    required this.conversion_rates,
  });

  ExchangeResultDto copyWith({
    String? result,
    String? documentation,
    String? terms_of_use,
    int? time_last_update_unix,
    String? time_last_update_utc,
    int? time_next_update_unix,
    String? time_next_update_utc,
    String? base_code,
    Conversion_rates? conversion_rates,
  }) {
    return ExchangeResultDto(
      result: result ?? this.result,
      documentation: documentation ?? this.documentation,
      terms_of_use: terms_of_use ?? this.terms_of_use,
      time_last_update_unix:
          time_last_update_unix ?? this.time_last_update_unix,
      time_last_update_utc: time_last_update_utc ?? this.time_last_update_utc,
      time_next_update_unix:
          time_next_update_unix ?? this.time_next_update_unix,
      time_next_update_utc: time_next_update_utc ?? this.time_next_update_utc,
      base_code: base_code ?? this.base_code,
      conversion_rates: conversion_rates ?? this.conversion_rates,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'result': result,
      'documentation': documentation,
      'terms_of_use': terms_of_use,
      'time_last_update_unix': time_last_update_unix,
      'time_last_update_utc': time_last_update_utc,
      'time_next_update_unix': time_next_update_unix,
      'time_next_update_utc': time_next_update_utc,
      'base_code': base_code,
      'conversion_rates': conversion_rates.toMap(),
    };
  }

  factory ExchangeResultDto.fromMap(Map<String, dynamic> map) {
    return ExchangeResultDto(
      result: map['result'] as String,
      documentation: map['documentation'] as String,
      terms_of_use: map['terms_of_use'] as String,
      time_last_update_unix: map['time_last_update_unix'].toInt() as int,
      time_last_update_utc: map['time_last_update_utc'] as String,
      time_next_update_unix: map['time_next_update_unix'].toInt() as int,
      time_next_update_utc: map['time_next_update_utc'] as String,
      base_code: map['base_code'] as String,
      conversion_rates: Conversion_rates.fromMap(
          map['conversion_rates'] as Map<String, dynamic>),
    );
  }

  String toJson() => json.encode(toMap());

  factory ExchangeResultDto.fromJson(String source) =>
      ExchangeResultDto.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'ExchantResultDto(result: $result, documentation: $documentation, terms_of_use: $terms_of_use, time_last_update_unix: $time_last_update_unix, time_last_update_utc: $time_last_update_utc, time_next_update_unix: $time_next_update_unix, time_next_update_utc: $time_next_update_utc, base_code: $base_code, conversion_rates: $conversion_rates)';
  }

  @override
  bool operator ==(covariant ExchangeResultDto other) {
    if (identical(this, other)) return true;

    return other.result == result &&
        other.documentation == documentation &&
        other.terms_of_use == terms_of_use &&
        other.time_last_update_unix == time_last_update_unix &&
        other.time_last_update_utc == time_last_update_utc &&
        other.time_next_update_unix == time_next_update_unix &&
        other.time_next_update_utc == time_next_update_utc &&
        other.base_code == base_code &&
        other.conversion_rates == conversion_rates;
  }

  @override
  int get hashCode {
    return result.hashCode ^
        documentation.hashCode ^
        terms_of_use.hashCode ^
        time_last_update_unix.hashCode ^
        time_last_update_utc.hashCode ^
        time_next_update_unix.hashCode ^
        time_next_update_utc.hashCode ^
        base_code.hashCode ^
        conversion_rates.hashCode;
  }
}

class Conversion_rates {
  final int KRW;
  final double AED;
  final double AFN;
  final double ALL;
  final double AMD;
  final double ANG;
  final double AOA;
  final double ARS;
  final double AUD;
  final double AWG;
  final double AZN;
  final double BAM;
  final double BBD;
  final double BDT;
  final double BGN;
  final double BHD;
  final double BIF;
  final double BMD;
  final double BND;
  final double BOB;
  final double BRL;
  final double BSD;
  final double BTN;
  final double BWP;
  final double BYN;
  final double BZD;
  final double CAD;
  final double CDF;
  final double CHF;
  final double CLP;
  final double CNY;
  final double COP;
  final double CRC;
  final double CUP;
  final double CVE;
  final double CZK;
  final double DJF;
  final double DKK;
  final double DOP;
  final double DZD;
  final double EGP;
  final double ERN;
  final double ETB;
  final double EUR;
  final double FJD;
  final double FKP;
  final double FOK;
  final double GBP;
  final double GEL;
  final double GGP;
  final double GHS;
  final double GIP;
  final double GMD;
  final double GNF;
  final double GTQ;
  final double GYD;
  final double HKD;
  final double HNL;
  final double HRK;
  final double HTG;
  final double HUF;
  final double IDR;
  final double ILS;
  final double IMP;
  final double INR;
  final double IQD;
  final double IRR;
  final double ISK;
  final double JEP;
  final double JMD;
  final double JOD;
  final double JPY;
  final double KES;
  final double KGS;
  final double KHR;
  final double KID;
  final double KMF;
  final double KWD;
  final double KYD;
  final double KZT;
  final double LAK;
  final double LBP;
  final double LKR;
  final double LRD;
  final double LSL;
  final double LYD;
  final double MAD;
  final double MDL;
  final double MGA;
  final double MKD;
  final double MMK;
  final double MNT;
  final double MOP;
  final double MRU;
  final double MUR;
  final double MVR;
  final double MWK;
  final double MXN;
  final double MYR;
  final double MZN;
  final double NAD;
  final double NGN;
  final double NIO;
  final double NOK;
  final double NPR;
  final double NZD;
  final double OMR;
  final double PAB;
  final double PEN;
  final double PGK;
  final double PHP;
  final double PKR;
  final double PLN;
  final double PYG;
  final double QAR;
  final double RON;
  final double RSD;
  final double RUB;
  final double RWF;
  final double SAR;
  final double SBD;
  final double SCR;
  final double SDG;
  final double SEK;
  final double SGD;
  final double SHP;
  final double SLE;
  final double SLL;
  final double SOS;
  final double SRD;
  final double SSP;
  final double STN;
  final double SYP;
  final double SZL;
  final double THB;
  final double TJS;
  final double TMT;
  final double TND;
  final double TOP;
  final double TRY;
  final double TTD;
  final double TVD;
  final double TWD;
  final double TZS;
  final double UAH;
  final double UGX;
  final double USD;
  final double UYU;
  final double UZS;
  final double VES;
  final double VND;
  final double VUV;
  final double WST;
  final double XAF;
  final double XCD;
  final double XDR;
  final double XOF;
  final double XPF;
  final double YER;
  final double ZAR;
  final double ZMW;
  final double ZWL;
  Conversion_rates({
    required this.KRW,
    required this.AED,
    required this.AFN,
    required this.ALL,
    required this.AMD,
    required this.ANG,
    required this.AOA,
    required this.ARS,
    required this.AUD,
    required this.AWG,
    required this.AZN,
    required this.BAM,
    required this.BBD,
    required this.BDT,
    required this.BGN,
    required this.BHD,
    required this.BIF,
    required this.BMD,
    required this.BND,
    required this.BOB,
    required this.BRL,
    required this.BSD,
    required this.BTN,
    required this.BWP,
    required this.BYN,
    required this.BZD,
    required this.CAD,
    required this.CDF,
    required this.CHF,
    required this.CLP,
    required this.CNY,
    required this.COP,
    required this.CRC,
    required this.CUP,
    required this.CVE,
    required this.CZK,
    required this.DJF,
    required this.DKK,
    required this.DOP,
    required this.DZD,
    required this.EGP,
    required this.ERN,
    required this.ETB,
    required this.EUR,
    required this.FJD,
    required this.FKP,
    required this.FOK,
    required this.GBP,
    required this.GEL,
    required this.GGP,
    required this.GHS,
    required this.GIP,
    required this.GMD,
    required this.GNF,
    required this.GTQ,
    required this.GYD,
    required this.HKD,
    required this.HNL,
    required this.HRK,
    required this.HTG,
    required this.HUF,
    required this.IDR,
    required this.ILS,
    required this.IMP,
    required this.INR,
    required this.IQD,
    required this.IRR,
    required this.ISK,
    required this.JEP,
    required this.JMD,
    required this.JOD,
    required this.JPY,
    required this.KES,
    required this.KGS,
    required this.KHR,
    required this.KID,
    required this.KMF,
    required this.KWD,
    required this.KYD,
    required this.KZT,
    required this.LAK,
    required this.LBP,
    required this.LKR,
    required this.LRD,
    required this.LSL,
    required this.LYD,
    required this.MAD,
    required this.MDL,
    required this.MGA,
    required this.MKD,
    required this.MMK,
    required this.MNT,
    required this.MOP,
    required this.MRU,
    required this.MUR,
    required this.MVR,
    required this.MWK,
    required this.MXN,
    required this.MYR,
    required this.MZN,
    required this.NAD,
    required this.NGN,
    required this.NIO,
    required this.NOK,
    required this.NPR,
    required this.NZD,
    required this.OMR,
    required this.PAB,
    required this.PEN,
    required this.PGK,
    required this.PHP,
    required this.PKR,
    required this.PLN,
    required this.PYG,
    required this.QAR,
    required this.RON,
    required this.RSD,
    required this.RUB,
    required this.RWF,
    required this.SAR,
    required this.SBD,
    required this.SCR,
    required this.SDG,
    required this.SEK,
    required this.SGD,
    required this.SHP,
    required this.SLE,
    required this.SLL,
    required this.SOS,
    required this.SRD,
    required this.SSP,
    required this.STN,
    required this.SYP,
    required this.SZL,
    required this.THB,
    required this.TJS,
    required this.TMT,
    required this.TND,
    required this.TOP,
    required this.TRY,
    required this.TTD,
    required this.TVD,
    required this.TWD,
    required this.TZS,
    required this.UAH,
    required this.UGX,
    required this.USD,
    required this.UYU,
    required this.UZS,
    required this.VES,
    required this.VND,
    required this.VUV,
    required this.WST,
    required this.XAF,
    required this.XCD,
    required this.XDR,
    required this.XOF,
    required this.XPF,
    required this.YER,
    required this.ZAR,
    required this.ZMW,
    required this.ZWL,
  });

  Conversion_rates copyWith({
    int? KRW,
    double? AED,
    double? AFN,
    double? ALL,
    double? AMD,
    double? ANG,
    double? AOA,
    double? ARS,
    double? AUD,
    double? AWG,
    double? AZN,
    double? BAM,
    double? BBD,
    double? BDT,
    double? BGN,
    double? BHD,
    double? BIF,
    double? BMD,
    double? BND,
    double? BOB,
    double? BRL,
    double? BSD,
    double? BTN,
    double? BWP,
    double? BYN,
    double? BZD,
    double? CAD,
    double? CDF,
    double? CHF,
    double? CLP,
    double? CNY,
    double? COP,
    double? CRC,
    double? CUP,
    double? CVE,
    double? CZK,
    double? DJF,
    double? DKK,
    double? DOP,
    double? DZD,
    double? EGP,
    double? ERN,
    double? ETB,
    double? EUR,
    double? FJD,
    double? FKP,
    double? FOK,
    double? GBP,
    double? GEL,
    double? GGP,
    double? GHS,
    double? GIP,
    double? GMD,
    double? GNF,
    double? GTQ,
    double? GYD,
    double? HKD,
    double? HNL,
    double? HRK,
    double? HTG,
    double? HUF,
    double? IDR,
    double? ILS,
    double? IMP,
    double? INR,
    double? IQD,
    double? IRR,
    double? ISK,
    double? JEP,
    double? JMD,
    double? JOD,
    double? JPY,
    double? KES,
    double? KGS,
    double? KHR,
    double? KID,
    double? KMF,
    double? KWD,
    double? KYD,
    double? KZT,
    double? LAK,
    double? LBP,
    double? LKR,
    double? LRD,
    double? LSL,
    double? LYD,
    double? MAD,
    double? MDL,
    double? MGA,
    double? MKD,
    double? MMK,
    double? MNT,
    double? MOP,
    double? MRU,
    double? MUR,
    double? MVR,
    double? MWK,
    double? MXN,
    double? MYR,
    double? MZN,
    double? NAD,
    double? NGN,
    double? NIO,
    double? NOK,
    double? NPR,
    double? NZD,
    double? OMR,
    double? PAB,
    double? PEN,
    double? PGK,
    double? PHP,
    double? PKR,
    double? PLN,
    double? PYG,
    double? QAR,
    double? RON,
    double? RSD,
    double? RUB,
    double? RWF,
    double? SAR,
    double? SBD,
    double? SCR,
    double? SDG,
    double? SEK,
    double? SGD,
    double? SHP,
    double? SLE,
    double? SLL,
    double? SOS,
    double? SRD,
    double? SSP,
    double? STN,
    double? SYP,
    double? SZL,
    double? THB,
    double? TJS,
    double? TMT,
    double? TND,
    double? TOP,
    double? TRY,
    double? TTD,
    double? TVD,
    double? TWD,
    double? TZS,
    double? UAH,
    double? UGX,
    double? USD,
    double? UYU,
    double? UZS,
    double? VES,
    double? VND,
    double? VUV,
    double? WST,
    double? XAF,
    double? XCD,
    double? XDR,
    double? XOF,
    double? XPF,
    double? YER,
    double? ZAR,
    double? ZMW,
    double? ZWL,
  }) {
    return Conversion_rates(
      KRW: KRW ?? this.KRW,
      AED: AED ?? this.AED,
      AFN: AFN ?? this.AFN,
      ALL: ALL ?? this.ALL,
      AMD: AMD ?? this.AMD,
      ANG: ANG ?? this.ANG,
      AOA: AOA ?? this.AOA,
      ARS: ARS ?? this.ARS,
      AUD: AUD ?? this.AUD,
      AWG: AWG ?? this.AWG,
      AZN: AZN ?? this.AZN,
      BAM: BAM ?? this.BAM,
      BBD: BBD ?? this.BBD,
      BDT: BDT ?? this.BDT,
      BGN: BGN ?? this.BGN,
      BHD: BHD ?? this.BHD,
      BIF: BIF ?? this.BIF,
      BMD: BMD ?? this.BMD,
      BND: BND ?? this.BND,
      BOB: BOB ?? this.BOB,
      BRL: BRL ?? this.BRL,
      BSD: BSD ?? this.BSD,
      BTN: BTN ?? this.BTN,
      BWP: BWP ?? this.BWP,
      BYN: BYN ?? this.BYN,
      BZD: BZD ?? this.BZD,
      CAD: CAD ?? this.CAD,
      CDF: CDF ?? this.CDF,
      CHF: CHF ?? this.CHF,
      CLP: CLP ?? this.CLP,
      CNY: CNY ?? this.CNY,
      COP: COP ?? this.COP,
      CRC: CRC ?? this.CRC,
      CUP: CUP ?? this.CUP,
      CVE: CVE ?? this.CVE,
      CZK: CZK ?? this.CZK,
      DJF: DJF ?? this.DJF,
      DKK: DKK ?? this.DKK,
      DOP: DOP ?? this.DOP,
      DZD: DZD ?? this.DZD,
      EGP: EGP ?? this.EGP,
      ERN: ERN ?? this.ERN,
      ETB: ETB ?? this.ETB,
      EUR: EUR ?? this.EUR,
      FJD: FJD ?? this.FJD,
      FKP: FKP ?? this.FKP,
      FOK: FOK ?? this.FOK,
      GBP: GBP ?? this.GBP,
      GEL: GEL ?? this.GEL,
      GGP: GGP ?? this.GGP,
      GHS: GHS ?? this.GHS,
      GIP: GIP ?? this.GIP,
      GMD: GMD ?? this.GMD,
      GNF: GNF ?? this.GNF,
      GTQ: GTQ ?? this.GTQ,
      GYD: GYD ?? this.GYD,
      HKD: HKD ?? this.HKD,
      HNL: HNL ?? this.HNL,
      HRK: HRK ?? this.HRK,
      HTG: HTG ?? this.HTG,
      HUF: HUF ?? this.HUF,
      IDR: IDR ?? this.IDR,
      ILS: ILS ?? this.ILS,
      IMP: IMP ?? this.IMP,
      INR: INR ?? this.INR,
      IQD: IQD ?? this.IQD,
      IRR: IRR ?? this.IRR,
      ISK: ISK ?? this.ISK,
      JEP: JEP ?? this.JEP,
      JMD: JMD ?? this.JMD,
      JOD: JOD ?? this.JOD,
      JPY: JPY ?? this.JPY,
      KES: KES ?? this.KES,
      KGS: KGS ?? this.KGS,
      KHR: KHR ?? this.KHR,
      KID: KID ?? this.KID,
      KMF: KMF ?? this.KMF,
      KWD: KWD ?? this.KWD,
      KYD: KYD ?? this.KYD,
      KZT: KZT ?? this.KZT,
      LAK: LAK ?? this.LAK,
      LBP: LBP ?? this.LBP,
      LKR: LKR ?? this.LKR,
      LRD: LRD ?? this.LRD,
      LSL: LSL ?? this.LSL,
      LYD: LYD ?? this.LYD,
      MAD: MAD ?? this.MAD,
      MDL: MDL ?? this.MDL,
      MGA: MGA ?? this.MGA,
      MKD: MKD ?? this.MKD,
      MMK: MMK ?? this.MMK,
      MNT: MNT ?? this.MNT,
      MOP: MOP ?? this.MOP,
      MRU: MRU ?? this.MRU,
      MUR: MUR ?? this.MUR,
      MVR: MVR ?? this.MVR,
      MWK: MWK ?? this.MWK,
      MXN: MXN ?? this.MXN,
      MYR: MYR ?? this.MYR,
      MZN: MZN ?? this.MZN,
      NAD: NAD ?? this.NAD,
      NGN: NGN ?? this.NGN,
      NIO: NIO ?? this.NIO,
      NOK: NOK ?? this.NOK,
      NPR: NPR ?? this.NPR,
      NZD: NZD ?? this.NZD,
      OMR: OMR ?? this.OMR,
      PAB: PAB ?? this.PAB,
      PEN: PEN ?? this.PEN,
      PGK: PGK ?? this.PGK,
      PHP: PHP ?? this.PHP,
      PKR: PKR ?? this.PKR,
      PLN: PLN ?? this.PLN,
      PYG: PYG ?? this.PYG,
      QAR: QAR ?? this.QAR,
      RON: RON ?? this.RON,
      RSD: RSD ?? this.RSD,
      RUB: RUB ?? this.RUB,
      RWF: RWF ?? this.RWF,
      SAR: SAR ?? this.SAR,
      SBD: SBD ?? this.SBD,
      SCR: SCR ?? this.SCR,
      SDG: SDG ?? this.SDG,
      SEK: SEK ?? this.SEK,
      SGD: SGD ?? this.SGD,
      SHP: SHP ?? this.SHP,
      SLE: SLE ?? this.SLE,
      SLL: SLL ?? this.SLL,
      SOS: SOS ?? this.SOS,
      SRD: SRD ?? this.SRD,
      SSP: SSP ?? this.SSP,
      STN: STN ?? this.STN,
      SYP: SYP ?? this.SYP,
      SZL: SZL ?? this.SZL,
      THB: THB ?? this.THB,
      TJS: TJS ?? this.TJS,
      TMT: TMT ?? this.TMT,
      TND: TND ?? this.TND,
      TOP: TOP ?? this.TOP,
      TRY: TRY ?? this.TRY,
      TTD: TTD ?? this.TTD,
      TVD: TVD ?? this.TVD,
      TWD: TWD ?? this.TWD,
      TZS: TZS ?? this.TZS,
      UAH: UAH ?? this.UAH,
      UGX: UGX ?? this.UGX,
      USD: USD ?? this.USD,
      UYU: UYU ?? this.UYU,
      UZS: UZS ?? this.UZS,
      VES: VES ?? this.VES,
      VND: VND ?? this.VND,
      VUV: VUV ?? this.VUV,
      WST: WST ?? this.WST,
      XAF: XAF ?? this.XAF,
      XCD: XCD ?? this.XCD,
      XDR: XDR ?? this.XDR,
      XOF: XOF ?? this.XOF,
      XPF: XPF ?? this.XPF,
      YER: YER ?? this.YER,
      ZAR: ZAR ?? this.ZAR,
      ZMW: ZMW ?? this.ZMW,
      ZWL: ZWL ?? this.ZWL,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'KRW': KRW,
      'AED': AED,
      'AFN': AFN,
      'ALL': ALL,
      'AMD': AMD,
      'ANG': ANG,
      'AOA': AOA,
      'ARS': ARS,
      'AUD': AUD,
      'AWG': AWG,
      'AZN': AZN,
      'BAM': BAM,
      'BBD': BBD,
      'BDT': BDT,
      'BGN': BGN,
      'BHD': BHD,
      'BIF': BIF,
      'BMD': BMD,
      'BND': BND,
      'BOB': BOB,
      'BRL': BRL,
      'BSD': BSD,
      'BTN': BTN,
      'BWP': BWP,
      'BYN': BYN,
      'BZD': BZD,
      'CAD': CAD,
      'CDF': CDF,
      'CHF': CHF,
      'CLP': CLP,
      'CNY': CNY,
      'COP': COP,
      'CRC': CRC,
      'CUP': CUP,
      'CVE': CVE,
      'CZK': CZK,
      'DJF': DJF,
      'DKK': DKK,
      'DOP': DOP,
      'DZD': DZD,
      'EGP': EGP,
      'ERN': ERN,
      'ETB': ETB,
      'EUR': EUR,
      'FJD': FJD,
      'FKP': FKP,
      'FOK': FOK,
      'GBP': GBP,
      'GEL': GEL,
      'GGP': GGP,
      'GHS': GHS,
      'GIP': GIP,
      'GMD': GMD,
      'GNF': GNF,
      'GTQ': GTQ,
      'GYD': GYD,
      'HKD': HKD,
      'HNL': HNL,
      'HRK': HRK,
      'HTG': HTG,
      'HUF': HUF,
      'IDR': IDR,
      'ILS': ILS,
      'IMP': IMP,
      'INR': INR,
      'IQD': IQD,
      'IRR': IRR,
      'ISK': ISK,
      'JEP': JEP,
      'JMD': JMD,
      'JOD': JOD,
      'JPY': JPY,
      'KES': KES,
      'KGS': KGS,
      'KHR': KHR,
      'KID': KID,
      'KMF': KMF,
      'KWD': KWD,
      'KYD': KYD,
      'KZT': KZT,
      'LAK': LAK,
      'LBP': LBP,
      'LKR': LKR,
      'LRD': LRD,
      'LSL': LSL,
      'LYD': LYD,
      'MAD': MAD,
      'MDL': MDL,
      'MGA': MGA,
      'MKD': MKD,
      'MMK': MMK,
      'MNT': MNT,
      'MOP': MOP,
      'MRU': MRU,
      'MUR': MUR,
      'MVR': MVR,
      'MWK': MWK,
      'MXN': MXN,
      'MYR': MYR,
      'MZN': MZN,
      'NAD': NAD,
      'NGN': NGN,
      'NIO': NIO,
      'NOK': NOK,
      'NPR': NPR,
      'NZD': NZD,
      'OMR': OMR,
      'PAB': PAB,
      'PEN': PEN,
      'PGK': PGK,
      'PHP': PHP,
      'PKR': PKR,
      'PLN': PLN,
      'PYG': PYG,
      'QAR': QAR,
      'RON': RON,
      'RSD': RSD,
      'RUB': RUB,
      'RWF': RWF,
      'SAR': SAR,
      'SBD': SBD,
      'SCR': SCR,
      'SDG': SDG,
      'SEK': SEK,
      'SGD': SGD,
      'SHP': SHP,
      'SLE': SLE,
      'SLL': SLL,
      'SOS': SOS,
      'SRD': SRD,
      'SSP': SSP,
      'STN': STN,
      'SYP': SYP,
      'SZL': SZL,
      'THB': THB,
      'TJS': TJS,
      'TMT': TMT,
      'TND': TND,
      'TOP': TOP,
      'TRY': TRY,
      'TTD': TTD,
      'TVD': TVD,
      'TWD': TWD,
      'TZS': TZS,
      'UAH': UAH,
      'UGX': UGX,
      'USD': USD,
      'UYU': UYU,
      'UZS': UZS,
      'VES': VES,
      'VND': VND,
      'VUV': VUV,
      'WST': WST,
      'XAF': XAF,
      'XCD': XCD,
      'XDR': XDR,
      'XOF': XOF,
      'XPF': XPF,
      'YER': YER,
      'ZAR': ZAR,
      'ZMW': ZMW,
      'ZWL': ZWL,
    };
  }

  factory Conversion_rates.fromMap(Map<String, dynamic> map) {
    return Conversion_rates(
      KRW: map['KRW'].toInt() as int,
      AED: map['AED'].toDouble() as double,
      AFN: map['AFN'].toDouble() as double,
      ALL: map['ALL'].toDouble() as double,
      AMD: map['AMD'].toDouble() as double,
      ANG: map['ANG'].toDouble() as double,
      AOA: map['AOA'].toDouble() as double,
      ARS: map['ARS'].toDouble() as double,
      AUD: map['AUD'].toDouble() as double,
      AWG: map['AWG'].toDouble() as double,
      AZN: map['AZN'].toDouble() as double,
      BAM: map['BAM'].toDouble() as double,
      BBD: map['BBD'].toDouble() as double,
      BDT: map['BDT'].toDouble() as double,
      BGN: map['BGN'].toDouble() as double,
      BHD: map['BHD'].toDouble() as double,
      BIF: map['BIF'].toDouble() as double,
      BMD: map['BMD'].toDouble() as double,
      BND: map['BND'].toDouble() as double,
      BOB: map['BOB'].toDouble() as double,
      BRL: map['BRL'].toDouble() as double,
      BSD: map['BSD'].toDouble() as double,
      BTN: map['BTN'].toDouble() as double,
      BWP: map['BWP'].toDouble() as double,
      BYN: map['BYN'].toDouble() as double,
      BZD: map['BZD'].toDouble() as double,
      CAD: map['CAD'].toDouble() as double,
      CDF: map['CDF'].toDouble() as double,
      CHF: map['CHF'].toDouble() as double,
      CLP: map['CLP'].toDouble() as double,
      CNY: map['CNY'].toDouble() as double,
      COP: map['COP'].toDouble() as double,
      CRC: map['CRC'].toDouble() as double,
      CUP: map['CUP'].toDouble() as double,
      CVE: map['CVE'].toDouble() as double,
      CZK: map['CZK'].toDouble() as double,
      DJF: map['DJF'].toDouble() as double,
      DKK: map['DKK'].toDouble() as double,
      DOP: map['DOP'].toDouble() as double,
      DZD: map['DZD'].toDouble() as double,
      EGP: map['EGP'].toDouble() as double,
      ERN: map['ERN'].toDouble() as double,
      ETB: map['ETB'].toDouble() as double,
      EUR: map['EUR'].toDouble() as double,
      FJD: map['FJD'].toDouble() as double,
      FKP: map['FKP'].toDouble() as double,
      FOK: map['FOK'].toDouble() as double,
      GBP: map['GBP'].toDouble() as double,
      GEL: map['GEL'].toDouble() as double,
      GGP: map['GGP'].toDouble() as double,
      GHS: map['GHS'].toDouble() as double,
      GIP: map['GIP'].toDouble() as double,
      GMD: map['GMD'].toDouble() as double,
      GNF: map['GNF'].toDouble() as double,
      GTQ: map['GTQ'].toDouble() as double,
      GYD: map['GYD'].toDouble() as double,
      HKD: map['HKD'].toDouble() as double,
      HNL: map['HNL'].toDouble() as double,
      HRK: map['HRK'].toDouble() as double,
      HTG: map['HTG'].toDouble() as double,
      HUF: map['HUF'].toDouble() as double,
      IDR: map['IDR'].toDouble() as double,
      ILS: map['ILS'].toDouble() as double,
      IMP: map['IMP'].toDouble() as double,
      INR: map['INR'].toDouble() as double,
      IQD: map['IQD'].toDouble() as double,
      IRR: map['IRR'].toDouble() as double,
      ISK: map['ISK'].toDouble() as double,
      JEP: map['JEP'].toDouble() as double,
      JMD: map['JMD'].toDouble() as double,
      JOD: map['JOD'].toDouble() as double,
      JPY: map['JPY'].toDouble() as double,
      KES: map['KES'].toDouble() as double,
      KGS: map['KGS'].toDouble() as double,
      KHR: map['KHR'].toDouble() as double,
      KID: map['KID'].toDouble() as double,
      KMF: map['KMF'].toDouble() as double,
      KWD: map['KWD'].toDouble() as double,
      KYD: map['KYD'].toDouble() as double,
      KZT: map['KZT'].toDouble() as double,
      LAK: map['LAK'].toDouble() as double,
      LBP: map['LBP'].toDouble() as double,
      LKR: map['LKR'].toDouble() as double,
      LRD: map['LRD'].toDouble() as double,
      LSL: map['LSL'].toDouble() as double,
      LYD: map['LYD'].toDouble() as double,
      MAD: map['MAD'].toDouble() as double,
      MDL: map['MDL'].toDouble() as double,
      MGA: map['MGA'].toDouble() as double,
      MKD: map['MKD'].toDouble() as double,
      MMK: map['MMK'].toDouble() as double,
      MNT: map['MNT'].toDouble() as double,
      MOP: map['MOP'].toDouble() as double,
      MRU: map['MRU'].toDouble() as double,
      MUR: map['MUR'].toDouble() as double,
      MVR: map['MVR'].toDouble() as double,
      MWK: map['MWK'].toDouble() as double,
      MXN: map['MXN'].toDouble() as double,
      MYR: map['MYR'].toDouble() as double,
      MZN: map['MZN'].toDouble() as double,
      NAD: map['NAD'].toDouble() as double,
      NGN: map['NGN'].toDouble() as double,
      NIO: map['NIO'].toDouble() as double,
      NOK: map['NOK'].toDouble() as double,
      NPR: map['NPR'].toDouble() as double,
      NZD: map['NZD'].toDouble() as double,
      OMR: map['OMR'].toDouble() as double,
      PAB: map['PAB'].toDouble() as double,
      PEN: map['PEN'].toDouble() as double,
      PGK: map['PGK'].toDouble() as double,
      PHP: map['PHP'].toDouble() as double,
      PKR: map['PKR'].toDouble() as double,
      PLN: map['PLN'].toDouble() as double,
      PYG: map['PYG'].toDouble() as double,
      QAR: map['QAR'].toDouble() as double,
      RON: map['RON'].toDouble() as double,
      RSD: map['RSD'].toDouble() as double,
      RUB: map['RUB'].toDouble() as double,
      RWF: map['RWF'].toDouble() as double,
      SAR: map['SAR'].toDouble() as double,
      SBD: map['SBD'].toDouble() as double,
      SCR: map['SCR'].toDouble() as double,
      SDG: map['SDG'].toDouble() as double,
      SEK: map['SEK'].toDouble() as double,
      SGD: map['SGD'].toDouble() as double,
      SHP: map['SHP'].toDouble() as double,
      SLE: map['SLE'].toDouble() as double,
      SLL: map['SLL'].toDouble() as double,
      SOS: map['SOS'].toDouble() as double,
      SRD: map['SRD'].toDouble() as double,
      SSP: map['SSP'].toDouble() as double,
      STN: map['STN'].toDouble() as double,
      SYP: map['SYP'].toDouble() as double,
      SZL: map['SZL'].toDouble() as double,
      THB: map['THB'].toDouble() as double,
      TJS: map['TJS'].toDouble() as double,
      TMT: map['TMT'].toDouble() as double,
      TND: map['TND'].toDouble() as double,
      TOP: map['TOP'].toDouble() as double,
      TRY: map['TRY'].toDouble() as double,
      TTD: map['TTD'].toDouble() as double,
      TVD: map['TVD'].toDouble() as double,
      TWD: map['TWD'].toDouble() as double,
      TZS: map['TZS'].toDouble() as double,
      UAH: map['UAH'].toDouble() as double,
      UGX: map['UGX'].toDouble() as double,
      USD: map['USD'].toDouble() as double,
      UYU: map['UYU'].toDouble() as double,
      UZS: map['UZS'].toDouble() as double,
      VES: map['VES'].toDouble() as double,
      VND: map['VND'].toDouble() as double,
      VUV: map['VUV'].toDouble() as double,
      WST: map['WST'].toDouble() as double,
      XAF: map['XAF'].toDouble() as double,
      XCD: map['XCD'].toDouble() as double,
      XDR: map['XDR'].toDouble() as double,
      XOF: map['XOF'].toDouble() as double,
      XPF: map['XPF'].toDouble() as double,
      YER: map['YER'].toDouble() as double,
      ZAR: map['ZAR'].toDouble() as double,
      ZMW: map['ZMW'].toDouble() as double,
      ZWL: map['ZWL'].toDouble() as double,
    );
  }

  String toJson() => json.encode(toMap());

  factory Conversion_rates.fromJson(String source) =>
      Conversion_rates.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Conversion_rates(KRW: $KRW, AED: $AED, AFN: $AFN, ALL: $ALL, AMD: $AMD, ANG: $ANG, AOA: $AOA, ARS: $ARS, AUD: $AUD, AWG: $AWG, AZN: $AZN, BAM: $BAM, BBD: $BBD, BDT: $BDT, BGN: $BGN, BHD: $BHD, BIF: $BIF, BMD: $BMD, BND: $BND, BOB: $BOB, BRL: $BRL, BSD: $BSD, BTN: $BTN, BWP: $BWP, BYN: $BYN, BZD: $BZD, CAD: $CAD, CDF: $CDF, CHF: $CHF, CLP: $CLP, CNY: $CNY, COP: $COP, CRC: $CRC, CUP: $CUP, CVE: $CVE, CZK: $CZK, DJF: $DJF, DKK: $DKK, DOP: $DOP, DZD: $DZD, EGP: $EGP, ERN: $ERN, ETB: $ETB, EUR: $EUR, FJD: $FJD, FKP: $FKP, FOK: $FOK, GBP: $GBP, GEL: $GEL, GGP: $GGP, GHS: $GHS, GIP: $GIP, GMD: $GMD, GNF: $GNF, GTQ: $GTQ, GYD: $GYD, HKD: $HKD, HNL: $HNL, HRK: $HRK, HTG: $HTG, HUF: $HUF, IDR: $IDR, ILS: $ILS, IMP: $IMP, INR: $INR, IQD: $IQD, IRR: $IRR, ISK: $ISK, JEP: $JEP, JMD: $JMD, JOD: $JOD, JPY: $JPY, KES: $KES, KGS: $KGS, KHR: $KHR, KID: $KID, KMF: $KMF, KWD: $KWD, KYD: $KYD, KZT: $KZT, LAK: $LAK, LBP: $LBP, LKR: $LKR, LRD: $LRD, LSL: $LSL, LYD: $LYD, MAD: $MAD, MDL: $MDL, MGA: $MGA, MKD: $MKD, MMK: $MMK, MNT: $MNT, MOP: $MOP, MRU: $MRU, MUR: $MUR, MVR: $MVR, MWK: $MWK, MXN: $MXN, MYR: $MYR, MZN: $MZN, NAD: $NAD, NGN: $NGN, NIO: $NIO, NOK: $NOK, NPR: $NPR, NZD: $NZD, OMR: $OMR, PAB: $PAB, PEN: $PEN, PGK: $PGK, PHP: $PHP, PKR: $PKR, PLN: $PLN, PYG: $PYG, QAR: $QAR, RON: $RON, RSD: $RSD, RUB: $RUB, RWF: $RWF, SAR: $SAR, SBD: $SBD, SCR: $SCR, SDG: $SDG, SEK: $SEK, SGD: $SGD, SHP: $SHP, SLE: $SLE, SLL: $SLL, SOS: $SOS, SRD: $SRD, SSP: $SSP, STN: $STN, SYP: $SYP, SZL: $SZL, THB: $THB, TJS: $TJS, TMT: $TMT, TND: $TND, TOP: $TOP, TRY: $TRY, TTD: $TTD, TVD: $TVD, TWD: $TWD, TZS: $TZS, UAH: $UAH, UGX: $UGX, USD: $USD, UYU: $UYU, UZS: $UZS, VES: $VES, VND: $VND, VUV: $VUV, WST: $WST, XAF: $XAF, XCD: $XCD, XDR: $XDR, XOF: $XOF, XPF: $XPF, YER: $YER, ZAR: $ZAR, ZMW: $ZMW, ZWL: $ZWL)';
  }

  @override
  bool operator ==(covariant Conversion_rates other) {
    if (identical(this, other)) return true;

    return other.KRW == KRW &&
        other.AED == AED &&
        other.AFN == AFN &&
        other.ALL == ALL &&
        other.AMD == AMD &&
        other.ANG == ANG &&
        other.AOA == AOA &&
        other.ARS == ARS &&
        other.AUD == AUD &&
        other.AWG == AWG &&
        other.AZN == AZN &&
        other.BAM == BAM &&
        other.BBD == BBD &&
        other.BDT == BDT &&
        other.BGN == BGN &&
        other.BHD == BHD &&
        other.BIF == BIF &&
        other.BMD == BMD &&
        other.BND == BND &&
        other.BOB == BOB &&
        other.BRL == BRL &&
        other.BSD == BSD &&
        other.BTN == BTN &&
        other.BWP == BWP &&
        other.BYN == BYN &&
        other.BZD == BZD &&
        other.CAD == CAD &&
        other.CDF == CDF &&
        other.CHF == CHF &&
        other.CLP == CLP &&
        other.CNY == CNY &&
        other.COP == COP &&
        other.CRC == CRC &&
        other.CUP == CUP &&
        other.CVE == CVE &&
        other.CZK == CZK &&
        other.DJF == DJF &&
        other.DKK == DKK &&
        other.DOP == DOP &&
        other.DZD == DZD &&
        other.EGP == EGP &&
        other.ERN == ERN &&
        other.ETB == ETB &&
        other.EUR == EUR &&
        other.FJD == FJD &&
        other.FKP == FKP &&
        other.FOK == FOK &&
        other.GBP == GBP &&
        other.GEL == GEL &&
        other.GGP == GGP &&
        other.GHS == GHS &&
        other.GIP == GIP &&
        other.GMD == GMD &&
        other.GNF == GNF &&
        other.GTQ == GTQ &&
        other.GYD == GYD &&
        other.HKD == HKD &&
        other.HNL == HNL &&
        other.HRK == HRK &&
        other.HTG == HTG &&
        other.HUF == HUF &&
        other.IDR == IDR &&
        other.ILS == ILS &&
        other.IMP == IMP &&
        other.INR == INR &&
        other.IQD == IQD &&
        other.IRR == IRR &&
        other.ISK == ISK &&
        other.JEP == JEP &&
        other.JMD == JMD &&
        other.JOD == JOD &&
        other.JPY == JPY &&
        other.KES == KES &&
        other.KGS == KGS &&
        other.KHR == KHR &&
        other.KID == KID &&
        other.KMF == KMF &&
        other.KWD == KWD &&
        other.KYD == KYD &&
        other.KZT == KZT &&
        other.LAK == LAK &&
        other.LBP == LBP &&
        other.LKR == LKR &&
        other.LRD == LRD &&
        other.LSL == LSL &&
        other.LYD == LYD &&
        other.MAD == MAD &&
        other.MDL == MDL &&
        other.MGA == MGA &&
        other.MKD == MKD &&
        other.MMK == MMK &&
        other.MNT == MNT &&
        other.MOP == MOP &&
        other.MRU == MRU &&
        other.MUR == MUR &&
        other.MVR == MVR &&
        other.MWK == MWK &&
        other.MXN == MXN &&
        other.MYR == MYR &&
        other.MZN == MZN &&
        other.NAD == NAD &&
        other.NGN == NGN &&
        other.NIO == NIO &&
        other.NOK == NOK &&
        other.NPR == NPR &&
        other.NZD == NZD &&
        other.OMR == OMR &&
        other.PAB == PAB &&
        other.PEN == PEN &&
        other.PGK == PGK &&
        other.PHP == PHP &&
        other.PKR == PKR &&
        other.PLN == PLN &&
        other.PYG == PYG &&
        other.QAR == QAR &&
        other.RON == RON &&
        other.RSD == RSD &&
        other.RUB == RUB &&
        other.RWF == RWF &&
        other.SAR == SAR &&
        other.SBD == SBD &&
        other.SCR == SCR &&
        other.SDG == SDG &&
        other.SEK == SEK &&
        other.SGD == SGD &&
        other.SHP == SHP &&
        other.SLE == SLE &&
        other.SLL == SLL &&
        other.SOS == SOS &&
        other.SRD == SRD &&
        other.SSP == SSP &&
        other.STN == STN &&
        other.SYP == SYP &&
        other.SZL == SZL &&
        other.THB == THB &&
        other.TJS == TJS &&
        other.TMT == TMT &&
        other.TND == TND &&
        other.TOP == TOP &&
        other.TRY == TRY &&
        other.TTD == TTD &&
        other.TVD == TVD &&
        other.TWD == TWD &&
        other.TZS == TZS &&
        other.UAH == UAH &&
        other.UGX == UGX &&
        other.USD == USD &&
        other.UYU == UYU &&
        other.UZS == UZS &&
        other.VES == VES &&
        other.VND == VND &&
        other.VUV == VUV &&
        other.WST == WST &&
        other.XAF == XAF &&
        other.XCD == XCD &&
        other.XDR == XDR &&
        other.XOF == XOF &&
        other.XPF == XPF &&
        other.YER == YER &&
        other.ZAR == ZAR &&
        other.ZMW == ZMW &&
        other.ZWL == ZWL;
  }

  @override
  int get hashCode {
    return KRW.hashCode ^
        AED.hashCode ^
        AFN.hashCode ^
        ALL.hashCode ^
        AMD.hashCode ^
        ANG.hashCode ^
        AOA.hashCode ^
        ARS.hashCode ^
        AUD.hashCode ^
        AWG.hashCode ^
        AZN.hashCode ^
        BAM.hashCode ^
        BBD.hashCode ^
        BDT.hashCode ^
        BGN.hashCode ^
        BHD.hashCode ^
        BIF.hashCode ^
        BMD.hashCode ^
        BND.hashCode ^
        BOB.hashCode ^
        BRL.hashCode ^
        BSD.hashCode ^
        BTN.hashCode ^
        BWP.hashCode ^
        BYN.hashCode ^
        BZD.hashCode ^
        CAD.hashCode ^
        CDF.hashCode ^
        CHF.hashCode ^
        CLP.hashCode ^
        CNY.hashCode ^
        COP.hashCode ^
        CRC.hashCode ^
        CUP.hashCode ^
        CVE.hashCode ^
        CZK.hashCode ^
        DJF.hashCode ^
        DKK.hashCode ^
        DOP.hashCode ^
        DZD.hashCode ^
        EGP.hashCode ^
        ERN.hashCode ^
        ETB.hashCode ^
        EUR.hashCode ^
        FJD.hashCode ^
        FKP.hashCode ^
        FOK.hashCode ^
        GBP.hashCode ^
        GEL.hashCode ^
        GGP.hashCode ^
        GHS.hashCode ^
        GIP.hashCode ^
        GMD.hashCode ^
        GNF.hashCode ^
        GTQ.hashCode ^
        GYD.hashCode ^
        HKD.hashCode ^
        HNL.hashCode ^
        HRK.hashCode ^
        HTG.hashCode ^
        HUF.hashCode ^
        IDR.hashCode ^
        ILS.hashCode ^
        IMP.hashCode ^
        INR.hashCode ^
        IQD.hashCode ^
        IRR.hashCode ^
        ISK.hashCode ^
        JEP.hashCode ^
        JMD.hashCode ^
        JOD.hashCode ^
        JPY.hashCode ^
        KES.hashCode ^
        KGS.hashCode ^
        KHR.hashCode ^
        KID.hashCode ^
        KMF.hashCode ^
        KWD.hashCode ^
        KYD.hashCode ^
        KZT.hashCode ^
        LAK.hashCode ^
        LBP.hashCode ^
        LKR.hashCode ^
        LRD.hashCode ^
        LSL.hashCode ^
        LYD.hashCode ^
        MAD.hashCode ^
        MDL.hashCode ^
        MGA.hashCode ^
        MKD.hashCode ^
        MMK.hashCode ^
        MNT.hashCode ^
        MOP.hashCode ^
        MRU.hashCode ^
        MUR.hashCode ^
        MVR.hashCode ^
        MWK.hashCode ^
        MXN.hashCode ^
        MYR.hashCode ^
        MZN.hashCode ^
        NAD.hashCode ^
        NGN.hashCode ^
        NIO.hashCode ^
        NOK.hashCode ^
        NPR.hashCode ^
        NZD.hashCode ^
        OMR.hashCode ^
        PAB.hashCode ^
        PEN.hashCode ^
        PGK.hashCode ^
        PHP.hashCode ^
        PKR.hashCode ^
        PLN.hashCode ^
        PYG.hashCode ^
        QAR.hashCode ^
        RON.hashCode ^
        RSD.hashCode ^
        RUB.hashCode ^
        RWF.hashCode ^
        SAR.hashCode ^
        SBD.hashCode ^
        SCR.hashCode ^
        SDG.hashCode ^
        SEK.hashCode ^
        SGD.hashCode ^
        SHP.hashCode ^
        SLE.hashCode ^
        SLL.hashCode ^
        SOS.hashCode ^
        SRD.hashCode ^
        SSP.hashCode ^
        STN.hashCode ^
        SYP.hashCode ^
        SZL.hashCode ^
        THB.hashCode ^
        TJS.hashCode ^
        TMT.hashCode ^
        TND.hashCode ^
        TOP.hashCode ^
        TRY.hashCode ^
        TTD.hashCode ^
        TVD.hashCode ^
        TWD.hashCode ^
        TZS.hashCode ^
        UAH.hashCode ^
        UGX.hashCode ^
        USD.hashCode ^
        UYU.hashCode ^
        UZS.hashCode ^
        VES.hashCode ^
        VND.hashCode ^
        VUV.hashCode ^
        WST.hashCode ^
        XAF.hashCode ^
        XCD.hashCode ^
        XDR.hashCode ^
        XOF.hashCode ^
        XPF.hashCode ^
        YER.hashCode ^
        ZAR.hashCode ^
        ZMW.hashCode ^
        ZWL.hashCode;
  }
}
