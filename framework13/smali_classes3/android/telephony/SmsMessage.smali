.class public Landroid/telephony/SmsMessage;
.super Ljava/lang/Object;
.source "SmsMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/SmsMessage$MessageTpPid;,
        Landroid/telephony/SmsMessage$NoEmsSupportConfig;,
        Landroid/telephony/SmsMessage$SubmitPdu;,
        Landroid/telephony/SmsMessage$Format;,
        Landroid/telephony/SmsMessage$EncodingSize;,
        Landroid/telephony/SmsMessage$MessageClass;
    }
.end annotation


# static fields
.field public static final whitelist ENCODING_16BIT:I = 0x3

.field public static final whitelist ENCODING_7BIT:I = 0x1

.field public static final whitelist ENCODING_8BIT:I = 0x2

.field public static final blacklist ENCODING_EUC_KR:I = 0x4

.field public static final whitelist ENCODING_KSC5601:I = 0x4

.field public static final whitelist ENCODING_UNKNOWN:I = 0x0

.field public static final whitelist FORMAT_3GPP:Ljava/lang/String; = "3gpp"

.field public static final whitelist FORMAT_3GPP2:Ljava/lang/String; = "3gpp2"

.field private static final greylist-max-o LOG_TAG:Ljava/lang/String; = "SmsMessage"

.field public static final blacklist MAX_DATA_LEN_WITH_SEGMENT_SEPERATOR:I = 0x9a

.field public static final whitelist MAX_USER_DATA_BYTES:I = 0x8c

.field public static final whitelist MAX_USER_DATA_BYTES_WITH_HEADER:I = 0x86

.field private static final blacklist MAX_USER_DATA_BYTES_WITH_HEADER_SINGLE_LOCKING_SHIFT:I = 0x80

.field private static final blacklist MAX_USER_DATA_BYTES_WITH_HEADER_SINGLE_SHIFT:I = 0x83

.field public static final blacklist MAX_USER_DATA_BYTES_WITH_SEGMENT_SEPERATOR:I = 0x80

.field public static final whitelist MAX_USER_DATA_SEPTETS:I = 0xa0

.field public static final whitelist MAX_USER_DATA_SEPTETS_WITH_HEADER:I = 0x99

.field private static final blacklist MAX_USER_DATA_SEPTETS_WITH_HEADER_NATIONAL_LANGUAGE:I = 0x95

.field private static final blacklist MAX_USER_DATA_SEPTETS_WITH_HEADER_NATIONAL_LOCKING_SHIFT_LANGUAGE:I = 0x93

.field private static final blacklist PHONE_TYPE_CDMA:I = 0x2

.field private static final blacklist PHONE_TYPE_GSM:I = 0x1

.field public static final blacklist VALIDITY_PERIOD_FORMAT_ABSOLUTE_FORMAT:I = 0x3

.field public static final blacklist VALIDITY_PERIOD_FORMAT_ENHANCED_FORMAT:I = 0x1

.field public static final blacklist VALIDITY_PERIOD_FORMAT_NOT_PRESENT:I = 0x0

.field public static final blacklist VALIDITY_PERIOD_FORMAT_RELATIVE_FORMAT:I = 0x2

.field private static greylist-max-o mIsNoEmsSupportConfigListLoaded:Z

.field private static greylist-max-o mNoEmsSupportConfigList:[Landroid/telephony/SmsMessage$NoEmsSupportConfig;


# instance fields
.field private greylist-max-r mSubId:I

.field public greylist mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 1163
    const/4 v0, 0x0

    sput-object v0, Landroid/telephony/SmsMessage;->mNoEmsSupportConfigList:[Landroid/telephony/SmsMessage$NoEmsSupportConfig;

    .line 1164
    const/4 v0, 0x0

    sput-boolean v0, Landroid/telephony/SmsMessage;->mIsNoEmsSupportConfigListLoaded:Z

    return-void
.end method

.method public constructor greylist-max-o <init>(Lcom/android/internal/telephony/SmsMessageBase;)V
    .locals 1
    .param p1, "smb"    # Lcom/android/internal/telephony/SmsMessageBase;

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/SmsMessage;->mSubId:I

    .line 196
    iput-object p1, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    .line 197
    return-void
.end method

.method public static whitelist calculateLength(Ljava/lang/CharSequence;Z)[I
    .locals 1
    .param p0, "msgBody"    # Ljava/lang/CharSequence;
    .param p1, "use7bitOnly"    # Z

    .line 368
    invoke-static {}, Landroid/telephony/SmsManager;->getDefaultSmsSubscriptionId()I

    move-result v0

    invoke-static {p0, p1, v0}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZI)[I

    move-result-object v0

    return-object v0
.end method

.method public static blacklist calculateLength(Ljava/lang/CharSequence;ZI)[I
    .locals 5
    .param p0, "msgBody"    # Ljava/lang/CharSequence;
    .param p1, "use7bitOnly"    # Z
    .param p2, "subId"    # I

    .line 391
    invoke-static {p2}, Landroid/telephony/SmsMessage;->useCdmaFormatForMoSms(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 392
    invoke-static {p0, p1, v1}, Lcom/android/internal/telephony/cdma/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZZ)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v0

    goto :goto_0

    .line 394
    :cond_0
    invoke-static {p0, p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v0

    :goto_0
    nop

    .line 396
    .local v0, "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    const/4 v2, 0x6

    new-array v2, v2, [I

    .line 397
    .local v2, "ret":[I
    const/4 v3, 0x0

    iget v4, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    aput v4, v2, v3

    .line 398
    iget v3, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitCount:I

    aput v3, v2, v1

    .line 399
    const/4 v1, 0x2

    iget v3, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    aput v3, v2, v1

    .line 400
    const/4 v1, 0x3

    iget v3, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    aput v3, v2, v1

    .line 401
    const/4 v1, 0x4

    iget v3, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageTable:I

    aput v3, v2, v1

    .line 402
    const/4 v1, 0x5

    iget v3, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageShiftTable:I

    aput v3, v2, v1

    .line 403
    return-object v2
.end method

.method public static blacklist calculateLength(Ljava/lang/CharSequence;ZIII)[I
    .locals 5
    .param p0, "msgBody"    # Ljava/lang/CharSequence;
    .param p1, "use7bitOnly"    # Z
    .param p2, "encodingType"    # I
    .param p3, "maxEmailLen"    # I
    .param p4, "phoneType"    # I

    .line 1217
    const/4 v0, 0x2

    if-ne p4, v0, :cond_0

    .line 1218
    invoke-static {p0, p1, p3}, Lcom/android/internal/telephony/cdma/SmsMessage;->calculateLengthWithEmail(Ljava/lang/CharSequence;ZI)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v1

    goto :goto_0

    .line 1219
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLengthWithEmail(Ljava/lang/CharSequence;ZII)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v1

    :goto_0
    nop

    .line 1220
    .local v1, "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    const/4 v2, 0x6

    new-array v2, v2, [I

    .line 1221
    .local v2, "ret":[I
    const/4 v3, 0x0

    iget v4, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    aput v4, v2, v3

    .line 1222
    const/4 v3, 0x1

    iget v4, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitCount:I

    aput v4, v2, v3

    .line 1223
    iget v3, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    aput v3, v2, v0

    .line 1224
    const/4 v0, 0x3

    iget v3, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    aput v3, v2, v0

    .line 1225
    const/4 v0, 0x4

    iget v3, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageTable:I

    aput v3, v2, v0

    .line 1226
    const/4 v0, 0x5

    iget v3, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageShiftTable:I

    aput v3, v2, v0

    .line 1227
    return-object v2
.end method

.method public static whitelist calculateLength(Ljava/lang/String;Z)[I
    .locals 1
    .param p0, "messageBody"    # Ljava/lang/String;
    .param p1, "use7bitOnly"    # Z

    .line 534
    invoke-static {p0, p1}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)[I

    move-result-object v0

    return-object v0
.end method

.method public static blacklist calculateLength(Ljava/lang/String;ZI)[I
    .locals 1
    .param p0, "messageBody"    # Ljava/lang/String;
    .param p1, "use7bitOnly"    # Z
    .param p2, "subId"    # I

    .line 552
    invoke-static {p0, p1, p2}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZI)[I

    move-result-object v0

    return-object v0
.end method

.method public static blacklist calculateLengthForEms(Ljava/lang/CharSequence;ZZ)[I
    .locals 4
    .param p0, "msgBody"    # Ljava/lang/CharSequence;
    .param p1, "use7bitOnly"    # Z
    .param p2, "isEms"    # Z

    .line 1560
    invoke-static {}, Landroid/telephony/SmsMessage;->useCdmaFormatForMoSms()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1561
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/cdma/SmsMessage;->calculateLengthForEms(Ljava/lang/CharSequence;ZZ)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v0

    goto :goto_0

    .line 1562
    :cond_0
    invoke-static {p0, p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v0

    :goto_0
    nop

    .line 1563
    .local v0, "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    const/4 v1, 0x4

    new-array v1, v1, [I

    .line 1564
    .local v1, "ret":[I
    const/4 v2, 0x0

    iget v3, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    aput v3, v1, v2

    .line 1565
    const/4 v2, 0x1

    iget v3, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitCount:I

    aput v3, v1, v2

    .line 1566
    const/4 v2, 0x2

    iget v3, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    aput v3, v1, v2

    .line 1567
    const/4 v2, 0x3

    iget v3, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    aput v3, v1, v2

    .line 1568
    return-object v1
.end method

.method public static blacklist calculateLengthWithEncodingType(Ljava/lang/CharSequence;ZI)[I
    .locals 5
    .param p0, "msgBody"    # Ljava/lang/CharSequence;
    .param p1, "use7bitOnly"    # Z
    .param p2, "encodingType"    # I

    .line 1249
    invoke-static {}, Landroid/telephony/SmsMessage;->useCdmaFormatForMoSms()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1250
    invoke-static {p0, p1, v1}, Lcom/android/internal/telephony/cdma/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZZ)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v0

    goto :goto_0

    .line 1251
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLengthWithEncodingType(Ljava/lang/CharSequence;ZI)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v0

    :goto_0
    nop

    .line 1252
    .local v0, "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    const/4 v2, 0x4

    new-array v2, v2, [I

    .line 1253
    .local v2, "ret":[I
    const/4 v3, 0x0

    iget v4, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    aput v4, v2, v3

    .line 1254
    iget v3, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitCount:I

    aput v3, v2, v1

    .line 1255
    const/4 v1, 0x2

    iget v3, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    aput v3, v2, v1

    .line 1256
    const/4 v1, 0x3

    iget v3, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    aput v3, v2, v1

    .line 1257
    return-object v2
.end method

.method public static greylist-max-o createFromEfRecord(I[B)Landroid/telephony/SmsMessage;
    .locals 1
    .param p0, "index"    # I
    .param p1, "data"    # [B

    .line 254
    invoke-static {}, Landroid/telephony/SmsManager;->getDefaultSmsSubscriptionId()I

    move-result v0

    invoke-static {p0, p1, v0}, Landroid/telephony/SmsMessage;->createFromEfRecord(I[BI)Landroid/telephony/SmsMessage;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o createFromEfRecord(I[BI)Landroid/telephony/SmsMessage;
    .locals 4
    .param p0, "index"    # I
    .param p1, "data"    # [B
    .param p2, "subId"    # I

    .line 270
    const/4 v0, 0x0

    invoke-static {v0, p2}, Landroid/telephony/SmsManager;->getSmsManagerForContextAndSubscriptionId(Landroid/content/Context;I)Landroid/telephony/SmsManager;

    move-result-object v1

    const-string/jumbo v2, "sms_3gpp2_lgt_network"

    invoke-virtual {v1, v2}, Landroid/telephony/SmsManager;->getSmsSetting(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 271
    invoke-static {p0, p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->createFromEfRecord(I[B)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object v1

    .local v1, "wrappedMessage":Lcom/android/internal/telephony/SmsMessageBase;
    goto :goto_0

    .line 275
    .end local v1    # "wrappedMessage":Lcom/android/internal/telephony/SmsMessageBase;
    :cond_0
    invoke-static {p2}, Landroid/telephony/SmsMessage;->isCdmaVoice(I)Z

    move-result v1

    const-string v2, "SmsMessage"

    if-eqz v1, :cond_1

    .line 276
    invoke-static {p0, p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->createFromEfRecord(I[B)Lcom/android/internal/telephony/cdma/SmsMessage;

    move-result-object v1

    .line 279
    .restart local v1    # "wrappedMessage":Lcom/android/internal/telephony/SmsMessageBase;
    if-nez v1, :cond_2

    .line 280
    const-string v3, "createfromeEFrecord is failed >> retry to use gsm-decode "

    invoke-static {v2, v3}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    invoke-static {p0, p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->createFromEfRecord(I[B)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object v1

    goto :goto_0

    .line 286
    .end local v1    # "wrappedMessage":Lcom/android/internal/telephony/SmsMessageBase;
    :cond_1
    invoke-static {p0, p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->createFromEfRecord(I[B)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object v1

    .line 289
    .restart local v1    # "wrappedMessage":Lcom/android/internal/telephony/SmsMessageBase;
    if-nez v1, :cond_2

    .line 290
    const-string v3, "createfromeEFrecord is failed >> retry to use cdma-decode "

    invoke-static {v2, v3}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    invoke-static {p0, p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->createFromEfRecord(I[B)Lcom/android/internal/telephony/cdma/SmsMessage;

    move-result-object v1

    .line 297
    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    new-instance v0, Landroid/telephony/SmsMessage;

    invoke-direct {v0, v1}, Landroid/telephony/SmsMessage;-><init>(Lcom/android/internal/telephony/SmsMessageBase;)V

    :cond_3
    return-object v0
.end method

.method public static blacklist createFromEfRecord(I[BLjava/lang/String;)Landroid/telephony/SmsMessage;
    .locals 3
    .param p0, "index"    # I
    .param p1, "data"    # [B
    .param p2, "format"    # Ljava/lang/String;

    .line 1483
    const-string v0, "3gpp2"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "SmsMessage"

    if-eqz v0, :cond_0

    .line 1484
    invoke-static {p0, p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->createFromEfRecord(I[B)Lcom/android/internal/telephony/cdma/SmsMessage;

    move-result-object v0

    .line 1486
    .local v0, "wrappedMessage":Lcom/android/internal/telephony/SmsMessageBase;
    if-nez v0, :cond_1

    .line 1487
    const-string v2, "createfromeEFrecord is failed >> retry to use gsm-decode "

    invoke-static {v1, v2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1488
    invoke-static {p0, p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->createFromEfRecord(I[B)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object v0

    goto :goto_0

    .line 1492
    .end local v0    # "wrappedMessage":Lcom/android/internal/telephony/SmsMessageBase;
    :cond_0
    invoke-static {p0, p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->createFromEfRecord(I[B)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object v0

    .line 1494
    .restart local v0    # "wrappedMessage":Lcom/android/internal/telephony/SmsMessageBase;
    if-nez v0, :cond_1

    .line 1495
    const-string v2, "createfromeEFrecord is failed >> retry to use cdma-decode "

    invoke-static {v1, v2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1496
    invoke-static {p0, p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->createFromEfRecord(I[B)Lcom/android/internal/telephony/cdma/SmsMessage;

    move-result-object v0

    .line 1501
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 1502
    new-instance v1, Landroid/telephony/SmsMessage;

    invoke-direct {v1, v0}, Landroid/telephony/SmsMessage;-><init>(Lcom/android/internal/telephony/SmsMessageBase;)V

    return-object v1

    .line 1504
    :cond_2
    const-string v2, "createFromEfRecord(): wrappedMessage is null"

    invoke-static {v1, v2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1505
    const/4 v1, 0x0

    return-object v1
.end method

.method public static whitelist createFromNativeSmsSubmitPdu([BZ)Landroid/telephony/SmsMessage;
    .locals 2
    .param p0, "data"    # [B
    .param p1, "isCdma"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 316
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 317
    invoke-static {v0, p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->createFromEfRecord(I[B)Lcom/android/internal/telephony/cdma/SmsMessage;

    move-result-object v0

    .local v0, "wrappedMessage":Lcom/android/internal/telephony/SmsMessageBase;
    goto :goto_0

    .line 321
    .end local v0    # "wrappedMessage":Lcom/android/internal/telephony/SmsMessageBase;
    :cond_0
    invoke-static {v0, p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->createFromEfRecord(I[B)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object v0

    .line 325
    .restart local v0    # "wrappedMessage":Lcom/android/internal/telephony/SmsMessageBase;
    :goto_0
    if-eqz v0, :cond_1

    new-instance v1, Landroid/telephony/SmsMessage;

    invoke-direct {v1, v0}, Landroid/telephony/SmsMessage;-><init>(Lcom/android/internal/telephony/SmsMessageBase;)V

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return-object v1
.end method

.method public static whitelist createFromPdu([B)Landroid/telephony/SmsMessage;
    .locals 1
    .param p0, "pdu"    # [B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 214
    invoke-static {}, Landroid/telephony/SmsManager;->getDefaultSmsSubscriptionId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    invoke-static {v0, p0}, Landroid/telephony/SmsMessage;->semCreateFromPdu(I[B)Landroid/telephony/SmsMessage;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;
    .locals 2
    .param p0, "pdu"    # [B
    .param p1, "format"    # Ljava/lang/String;

    .line 233
    invoke-static {}, Landroid/telephony/SmsManager;->getDefaultSmsSubscriptionId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v0, p0, p1, v1}, Landroid/telephony/SmsMessage;->semCreateFromPdu(I[BLjava/lang/String;Z)Landroid/telephony/SmsMessage;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist createFromPdu([BLjava/lang/String;Z)Landroid/telephony/SmsMessage;
    .locals 1
    .param p0, "pdu"    # [B
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "fallbackToOtherFormat"    # Z

    .line 240
    invoke-static {}, Landroid/telephony/SmsManager;->getDefaultSmsSubscriptionId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    invoke-static {v0, p0, p1, p2}, Landroid/telephony/SmsMessage;->semCreateFromPdu(I[BLjava/lang/String;Z)Landroid/telephony/SmsMessage;

    move-result-object v0

    return-object v0
.end method

.method public static greylist fragmentText(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 417
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/telephony/SmsMessage;->fragmentText(Ljava/lang/String;Landroid/telephony/SmsManager;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist fragmentText(Ljava/lang/String;I)Ljava/util/ArrayList;
    .locals 12
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 431
    invoke-static {p1}, Landroid/telephony/SmsMessage;->useCdmaFormatForMoSms(I)Z

    move-result v0

    .line 434
    .local v0, "isCdma":Z
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 435
    invoke-static {p0, v1, v2}, Lcom/android/internal/telephony/cdma/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZZ)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v3

    goto :goto_0

    .line 437
    :cond_0
    invoke-static {p0, v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v3

    :goto_0
    nop

    .line 445
    .local v3, "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    iget v4, v3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    if-ne v4, v2, :cond_6

    .line 447
    iget v4, v3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageTable:I

    if-eqz v4, :cond_1

    iget v4, v3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageShiftTable:I

    if-eqz v4, :cond_1

    .line 448
    const/4 v4, 0x7

    .local v4, "udhLength":I
    goto :goto_2

    .line 449
    .end local v4    # "udhLength":I
    :cond_1
    iget v4, v3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageTable:I

    if-nez v4, :cond_3

    iget v4, v3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageShiftTable:I

    if-eqz v4, :cond_2

    goto :goto_1

    .line 452
    :cond_2
    const/4 v4, 0x0

    .restart local v4    # "udhLength":I
    goto :goto_2

    .line 450
    .end local v4    # "udhLength":I
    :cond_3
    :goto_1
    const/4 v4, 0x4

    .line 455
    .restart local v4    # "udhLength":I
    :goto_2
    iget v5, v3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    if-le v5, v2, :cond_4

    .line 456
    add-int/lit8 v4, v4, 0x6

    .line 459
    :cond_4
    if-eqz v4, :cond_5

    .line 460
    add-int/lit8 v4, v4, 0x1

    .line 463
    :cond_5
    rsub-int v4, v4, 0xa0

    .line 464
    .local v4, "limit":I
    goto :goto_3

    .line 465
    .end local v4    # "limit":I
    :cond_6
    iget v4, v3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    if-le v4, v2, :cond_7

    .line 466
    const/16 v4, 0x86

    .line 473
    .restart local v4    # "limit":I
    invoke-static {}, Landroid/telephony/SmsMessage;->hasEmsSupport()Z

    move-result v5

    if-nez v5, :cond_8

    iget v5, v3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    const/16 v6, 0xa

    if-ge v5, v6, :cond_8

    .line 474
    add-int/lit8 v4, v4, -0x2

    goto :goto_3

    .line 477
    .end local v4    # "limit":I
    :cond_7
    const/16 v4, 0x8c

    .line 481
    .restart local v4    # "limit":I
    :cond_8
    :goto_3
    const/4 v5, 0x0

    .line 482
    .local v5, "newMsgBody":Ljava/lang/String;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    .line 483
    .local v6, "r":Landroid/content/res/Resources;
    const v7, 0x11101c1

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 487
    if-eqz v0, :cond_9

    iget v7, v3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    if-ne v7, v2, :cond_9

    move v1, v2

    :cond_9
    invoke-static {p0, v1}, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->translate(Ljava/lang/CharSequence;Z)Ljava/lang/String;

    move-result-object v5

    .line 489
    :cond_a
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 490
    move-object v5, p0

    .line 493
    :cond_b
    const/4 v1, 0x0

    .line 494
    .local v1, "pos":I
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    .line 495
    .local v7, "textLen":I
    new-instance v8, Ljava/util/ArrayList;

    iget v9, v3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 496
    .local v8, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_4
    if-ge v1, v7, :cond_10

    .line 497
    const/4 v9, 0x0

    .line 498
    .local v9, "nextPos":I
    iget v10, v3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    if-ne v10, v2, :cond_d

    .line 499
    if-eqz v0, :cond_c

    iget v10, v3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    if-ne v10, v2, :cond_c

    .line 501
    sub-int v10, v7, v1

    invoke-static {v4, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    add-int/2addr v10, v1

    .end local v9    # "nextPos":I
    .local v10, "nextPos":I
    goto :goto_5

    .line 504
    .end local v10    # "nextPos":I
    .restart local v9    # "nextPos":I
    :cond_c
    iget v10, v3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageTable:I

    iget v11, v3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageShiftTable:I

    invoke-static {v5, v1, v4, v10, v11}, Lcom/android/internal/telephony/GsmAlphabet;->findGsmSeptetLimitIndex(Ljava/lang/String;IIII)I

    move-result v10

    .end local v9    # "nextPos":I
    .restart local v10    # "nextPos":I
    goto :goto_5

    .line 508
    .end local v10    # "nextPos":I
    .restart local v9    # "nextPos":I
    :cond_d
    invoke-static {v1, v4, v5}, Lcom/android/internal/telephony/SmsMessageBase;->findNextUnicodePosition(IILjava/lang/CharSequence;)I

    move-result v10

    .line 510
    .end local v9    # "nextPos":I
    .restart local v10    # "nextPos":I
    :goto_5
    if-le v10, v1, :cond_f

    if-le v10, v7, :cond_e

    goto :goto_6

    .line 515
    :cond_e
    invoke-virtual {v5, v1, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 516
    move v1, v10

    .line 517
    .end local v10    # "nextPos":I
    goto :goto_4

    .line 511
    .restart local v10    # "nextPos":I
    :cond_f
    :goto_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "fragmentText failed ("

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, " >= "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v11, " or "

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, ")"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v9, "SmsMessage"

    invoke-static {v9, v2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    .end local v10    # "nextPos":I
    :cond_10
    return-object v8
.end method

.method public static blacklist fragmentText(Ljava/lang/String;ILandroid/telephony/SmsManager;)Ljava/util/ArrayList;
    .locals 16
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "encodingType"    # I
    .param p2, "smsManager"    # Landroid/telephony/SmsManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Landroid/telephony/SmsManager;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1691
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-static/range {p2 .. p2}, Landroid/telephony/SmsMessage;->useCdmaFormatForMoSms(Landroid/telephony/SmsManager;)Z

    move-result v2

    .line 1692
    .local v2, "isCdma":Z
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    .line 1693
    invoke-static {v0, v3, v4}, Lcom/android/internal/telephony/cdma/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZZ)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v3

    .local v3, "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    goto :goto_0

    .line 1695
    .end local v3    # "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :cond_0
    if-ne v1, v4, :cond_1

    .line 1696
    invoke-static {v0, v3, v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLengthWithEncodingType(Ljava/lang/CharSequence;ZI)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v3

    .restart local v3    # "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    goto :goto_0

    .line 1698
    .end local v3    # "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :cond_1
    invoke-static {v0, v3}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v3

    .line 1704
    .restart local v3    # "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :goto_0
    iget v5, v3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    if-le v5, v4, :cond_8

    .line 1705
    invoke-static {}, Lcom/android/internal/telephony/GsmAlphabet;->getEnabledSingleShiftTables()[I

    move-result-object v5

    array-length v5, v5

    if-lt v5, v4, :cond_3

    invoke-static {}, Lcom/android/internal/telephony/GsmAlphabet;->getEnabledLockingShiftTables()[I

    move-result-object v5

    array-length v5, v5

    if-lt v5, v4, :cond_3

    .line 1706
    iget v5, v3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    if-ne v5, v4, :cond_2

    const/16 v5, 0x93

    goto :goto_1

    :cond_2
    const/16 v5, 0x80

    .local v5, "limit":I
    :goto_1
    goto :goto_5

    .line 1707
    .end local v5    # "limit":I
    :cond_3
    invoke-static {}, Lcom/android/internal/telephony/GsmAlphabet;->getEnabledSingleShiftTables()[I

    move-result-object v5

    array-length v5, v5

    if-ge v5, v4, :cond_6

    invoke-static {}, Lcom/android/internal/telephony/GsmAlphabet;->getEnabledLockingShiftTables()[I

    move-result-object v5

    array-length v5, v5

    if-lt v5, v4, :cond_4

    goto :goto_3

    .line 1710
    :cond_4
    iget v5, v3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    if-ne v5, v4, :cond_5

    const/16 v5, 0x99

    goto :goto_2

    :cond_5
    const/16 v5, 0x86

    .restart local v5    # "limit":I
    :goto_2
    goto :goto_5

    .line 1708
    .end local v5    # "limit":I
    :cond_6
    :goto_3
    iget v5, v3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    if-ne v5, v4, :cond_7

    const/16 v5, 0x95

    goto :goto_4

    :cond_7
    const/16 v5, 0x83

    .restart local v5    # "limit":I
    :goto_4
    goto :goto_5

    .line 1713
    .end local v5    # "limit":I
    :cond_8
    iget v5, v3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    if-ne v5, v4, :cond_9

    .line 1714
    const/16 v5, 0xa0

    goto :goto_5

    :cond_9
    const/16 v5, 0x8c

    .line 1717
    .restart local v5    # "limit":I
    :goto_5
    const/4 v6, 0x0

    .line 1718
    .local v6, "newMsgBody":Ljava/lang/String;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v7

    .line 1719
    .local v7, "r":Landroid/content/res/Resources;
    const v8, 0x11101c1

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 1720
    invoke-static {v0, v2}, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->translate(Ljava/lang/CharSequence;Z)Ljava/lang/String;

    move-result-object v6

    .line 1722
    :cond_a
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 1723
    move-object/from16 v6, p0

    .line 1725
    :cond_b
    const/4 v8, 0x0

    .line 1726
    .local v8, "pos":I
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    .line 1727
    .local v9, "textLen":I
    new-instance v10, Ljava/util/ArrayList;

    iget v11, v3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 1728
    .local v10, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_6
    if-ge v8, v9, :cond_12

    .line 1729
    const/4 v11, 0x0

    .line 1730
    .local v11, "nextPos":I
    iget v12, v3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    const-string v13, ")"

    const-string v14, " or "

    const-string v15, "SmsMessage"

    const-string v0, " >= "

    if-ne v12, v4, :cond_d

    .line 1731
    invoke-static/range {p2 .. p2}, Landroid/telephony/SmsMessage;->useCdmaFormatForMoSms(Landroid/telephony/SmsManager;)Z

    move-result v12

    if-eqz v12, :cond_c

    iget v12, v3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    if-ne v12, v4, :cond_c

    .line 1733
    sub-int v12, v9, v8

    invoke-static {v5, v12}, Ljava/lang/Math;->min(II)I

    move-result v12

    add-int/2addr v12, v8

    .end local v11    # "nextPos":I
    .local v12, "nextPos":I
    goto :goto_7

    .line 1736
    .end local v12    # "nextPos":I
    .restart local v11    # "nextPos":I
    :cond_c
    iget v12, v3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageTable:I

    iget v4, v3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageShiftTable:I

    invoke-static {v6, v8, v5, v12, v4}, Lcom/android/internal/telephony/GsmAlphabet;->findGsmSeptetLimitIndex(Ljava/lang/String;IIII)I

    move-result v12

    .end local v11    # "nextPos":I
    .restart local v12    # "nextPos":I
    goto :goto_7

    .line 1741
    .end local v12    # "nextPos":I
    .restart local v11    # "nextPos":I
    :cond_d
    invoke-static {v8, v5, v6}, Lcom/android/internal/telephony/SmsMessageBase;->findNextUnicodePosition(IILjava/lang/CharSequence;)I

    move-result v12

    .line 1742
    .end local v11    # "nextPos":I
    .restart local v12    # "nextPos":I
    if-le v12, v8, :cond_e

    if-le v12, v9, :cond_f

    .line 1743
    :cond_e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "findNextUnicodePosition() isn`t working.("

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v15, v4}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1745
    div-int/lit8 v4, v5, 0x2

    sub-int v11, v9, v8

    invoke-static {v4, v11}, Ljava/lang/Math;->min(II)I

    move-result v4

    add-int v12, v8, v4

    .line 1749
    :cond_f
    :goto_7
    if-le v12, v8, :cond_11

    if-le v12, v9, :cond_10

    goto :goto_8

    .line 1754
    :cond_10
    invoke-virtual {v6, v8, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1755
    move v8, v12

    .line 1756
    .end local v12    # "nextPos":I
    const/4 v4, 0x1

    move-object/from16 v0, p0

    goto :goto_6

    .line 1750
    .restart local v12    # "nextPos":I
    :cond_11
    :goto_8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "fragmentText failed ("

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1757
    .end local v12    # "nextPos":I
    :cond_12
    return-object v10
.end method

.method public static blacklist fragmentText(Ljava/lang/String;Landroid/telephony/SmsManager;)Ljava/util/ArrayList;
    .locals 16
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "smsManager"    # Landroid/telephony/SmsManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/telephony/SmsManager;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1584
    move-object/from16 v0, p0

    invoke-static/range {p1 .. p1}, Landroid/telephony/SmsMessage;->useCdmaFormatForMoSms(Landroid/telephony/SmsManager;)Z

    move-result v1

    .line 1587
    .local v1, "isCdma":Z
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 1588
    invoke-static {v0, v2, v3}, Lcom/android/internal/telephony/cdma/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZZ)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v2

    goto :goto_0

    .line 1590
    :cond_0
    invoke-static {v0, v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v2

    :goto_0
    nop

    .line 1598
    .local v2, "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    iget v4, v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    if-ne v4, v3, :cond_6

    .line 1600
    iget v4, v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageTable:I

    if-eqz v4, :cond_1

    iget v4, v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageShiftTable:I

    if-eqz v4, :cond_1

    .line 1601
    const/4 v4, 0x7

    .local v4, "udhLength":I
    goto :goto_2

    .line 1602
    .end local v4    # "udhLength":I
    :cond_1
    iget v4, v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageTable:I

    if-nez v4, :cond_3

    iget v4, v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageShiftTable:I

    if-eqz v4, :cond_2

    goto :goto_1

    .line 1605
    :cond_2
    const/4 v4, 0x0

    .restart local v4    # "udhLength":I
    goto :goto_2

    .line 1603
    .end local v4    # "udhLength":I
    :cond_3
    :goto_1
    const/4 v4, 0x4

    .line 1608
    .restart local v4    # "udhLength":I
    :goto_2
    iget v5, v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    if-le v5, v3, :cond_4

    .line 1609
    add-int/lit8 v4, v4, 0x6

    .line 1612
    :cond_4
    if-eqz v4, :cond_5

    .line 1613
    add-int/lit8 v4, v4, 0x1

    .line 1616
    :cond_5
    rsub-int v4, v4, 0xa0

    .line 1617
    .local v4, "limit":I
    goto :goto_3

    .line 1618
    .end local v4    # "limit":I
    :cond_6
    iget v4, v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    if-le v4, v3, :cond_7

    .line 1619
    const/16 v4, 0x86

    .line 1626
    .restart local v4    # "limit":I
    invoke-static {}, Landroid/telephony/SmsMessage;->hasEmsSupport()Z

    move-result v5

    if-nez v5, :cond_8

    iget v5, v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    const/16 v6, 0xa

    if-ge v5, v6, :cond_8

    .line 1627
    add-int/lit8 v4, v4, -0x2

    goto :goto_3

    .line 1630
    .end local v4    # "limit":I
    :cond_7
    const/16 v4, 0x8c

    .line 1634
    .restart local v4    # "limit":I
    :cond_8
    :goto_3
    const/4 v5, 0x0

    .line 1635
    .local v5, "newMsgBody":Ljava/lang/String;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    .line 1636
    .local v6, "r":Landroid/content/res/Resources;
    const v7, 0x11101c1

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 1637
    invoke-static {v0, v1}, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->translate(Ljava/lang/CharSequence;Z)Ljava/lang/String;

    move-result-object v5

    .line 1639
    :cond_9
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 1640
    move-object/from16 v5, p0

    .line 1643
    :cond_a
    const/4 v7, 0x0

    .line 1644
    .local v7, "pos":I
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    .line 1645
    .local v8, "textLen":I
    new-instance v9, Ljava/util/ArrayList;

    iget v10, v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 1646
    .local v9, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_4
    if-ge v7, v8, :cond_11

    .line 1647
    const/4 v10, 0x0

    .line 1648
    .local v10, "nextPos":I
    iget v11, v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    const-string v12, ")"

    const-string v13, " or "

    const-string v14, "SmsMessage"

    const-string v15, " >= "

    if-ne v11, v3, :cond_c

    .line 1649
    if-eqz v1, :cond_b

    iget v11, v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    if-ne v11, v3, :cond_b

    .line 1651
    sub-int v11, v8, v7

    invoke-static {v4, v11}, Ljava/lang/Math;->min(II)I

    move-result v11

    add-int/2addr v11, v7

    .end local v10    # "nextPos":I
    .local v11, "nextPos":I
    goto :goto_5

    .line 1654
    .end local v11    # "nextPos":I
    .restart local v10    # "nextPos":I
    :cond_b
    iget v11, v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageTable:I

    iget v3, v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageShiftTable:I

    invoke-static {v5, v7, v4, v11, v3}, Lcom/android/internal/telephony/GsmAlphabet;->findGsmSeptetLimitIndex(Ljava/lang/String;IIII)I

    move-result v11

    .end local v10    # "nextPos":I
    .restart local v11    # "nextPos":I
    goto :goto_5

    .line 1658
    .end local v11    # "nextPos":I
    .restart local v10    # "nextPos":I
    :cond_c
    invoke-static {v7, v4, v5}, Lcom/android/internal/telephony/SmsMessageBase;->findNextUnicodePosition(IILjava/lang/CharSequence;)I

    move-result v11

    .line 1660
    .end local v10    # "nextPos":I
    .restart local v11    # "nextPos":I
    if-le v11, v7, :cond_d

    if-le v11, v8, :cond_e

    .line 1661
    :cond_d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "findNextUnicodePosition() isn\'t working.("

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v3}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1663
    div-int/lit8 v3, v4, 0x2

    sub-int v10, v8, v7

    invoke-static {v3, v10}, Ljava/lang/Math;->min(II)I

    move-result v3

    add-int v11, v7, v3

    .line 1667
    :cond_e
    :goto_5
    if-le v11, v7, :cond_10

    if-le v11, v8, :cond_f

    goto :goto_6

    .line 1672
    :cond_f
    invoke-virtual {v5, v7, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1673
    move v7, v11

    .line 1674
    .end local v11    # "nextPos":I
    const/4 v3, 0x1

    goto :goto_4

    .line 1668
    .restart local v11    # "nextPos":I
    :cond_10
    :goto_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "fragmentText failed ("

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v3}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1675
    .end local v11    # "nextPos":I
    :cond_11
    return-object v9
.end method

.method public static blacklist getCDMASmsReassembly()Z
    .locals 1

    .line 1908
    const/4 v0, 0x0

    return v0
.end method

.method public static whitelist getSmsPdu(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Landroid/telephony/SmsMessage$SubmitPdu;
    .locals 5
    .param p0, "subId"    # I
    .param p1, "status"    # I
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "address"    # Ljava/lang/String;
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "date"    # J
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 676
    invoke-static {p0}, Landroid/telephony/SmsMessage;->isCdmaVoice(I)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_2

    .line 677
    if-eq p1, v3, :cond_1

    if-ne p1, v2, :cond_0

    goto :goto_0

    .line 682
    :cond_0
    invoke-static {p2, p3, p4, v1, v4}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v0

    .local v0, "spb":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    goto :goto_2

    .line 679
    .end local v0    # "spb":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    :cond_1
    :goto_0
    invoke-static {p3, p4, p5, p6}, Lcom/android/internal/telephony/cdma/SmsMessage;->getDeliverPdu(Ljava/lang/String;Ljava/lang/String;J)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v0

    .restart local v0    # "spb":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    goto :goto_2

    .line 686
    .end local v0    # "spb":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    :cond_2
    if-eq p1, v3, :cond_4

    if-ne p1, v2, :cond_3

    goto :goto_1

    .line 691
    :cond_3
    invoke-static {p2, p3, p4, v1, v4}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[B)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    .restart local v0    # "spb":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    goto :goto_2

    .line 688
    .end local v0    # "spb":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    :cond_4
    :goto_1
    invoke-static {p2, p3, p4, p5, p6}, Lcom/android/internal/telephony/gsm/SmsMessage;->getDeliverPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    .line 696
    .restart local v0    # "spb":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    :goto_2
    if-eqz v0, :cond_5

    new-instance v4, Landroid/telephony/SmsMessage$SubmitPdu;

    invoke-direct {v4, v0}, Landroid/telephony/SmsMessage$SubmitPdu;-><init>(Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)V

    :cond_5
    return-object v4
.end method

.method private static blacklist getSubId(I)I
    .locals 2
    .param p0, "phoneId"    # I

    .line 1337
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 1338
    .local v0, "subIds":[I
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 1339
    const/4 v1, 0x0

    aget v1, v0, v1

    return v1

    .line 1341
    :cond_0
    const/4 v1, -0x1

    return v1
.end method

.method public static blacklist getSubmitPdu(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BLjava/lang/String;I)Landroid/telephony/SmsMessage$SubmitPdu;
    .locals 10
    .param p0, "subId"    # I
    .param p1, "scAddress"    # Ljava/lang/String;
    .param p2, "destinationAddress"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "statusReportRequested"    # Z
    .param p5, "header"    # [B
    .param p6, "callbackNumber"    # Ljava/lang/String;
    .param p7, "priority"    # I

    .line 1525
    const/4 v0, 0x0

    .line 1527
    .local v0, "spb":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    invoke-static {}, Landroid/telephony/SmsMessage;->useCdmaFormatForMoSms()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1528
    nop

    .line 1530
    invoke-static {p5}, Lcom/android/internal/telephony/SmsHeader;->fromByteArray([B)Lcom/android/internal/telephony/SmsHeader;

    move-result-object v7

    .line 1528
    move v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move-object/from16 v8, p6

    move/from16 v9, p7

    invoke-static/range {v2 .. v9}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;Ljava/lang/String;I)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v0

    goto :goto_0

    .line 1532
    :cond_0
    invoke-static {p1, p2, p3, p4, p5}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[B)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    .line 1536
    :goto_0
    new-instance v1, Landroid/telephony/SmsMessage$SubmitPdu;

    invoke-direct {v1, v0}, Landroid/telephony/SmsMessage$SubmitPdu;-><init>(Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)V

    return-object v1
.end method

.method public static whitelist getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/telephony/SmsMessage$SubmitPdu;
    .locals 1
    .param p0, "scAddress"    # Ljava/lang/String;
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "statusReportRequested"    # Z

    .line 587
    nop

    .line 592
    invoke-static {}, Landroid/telephony/SmsManager;->getDefaultSmsSubscriptionId()I

    move-result v0

    .line 587
    invoke-static {p0, p1, p2, p3, v0}, Landroid/telephony/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Landroid/telephony/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Landroid/telephony/SmsMessage$SubmitPdu;
    .locals 2
    .param p0, "scAddress"    # Ljava/lang/String;
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "statusReportRequested"    # Z
    .param p4, "subId"    # I

    .line 611
    invoke-static {p4}, Landroid/telephony/SmsMessage;->useCdmaFormatForMoSms(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 612
    invoke-static {p0, p1, p2, p3, v1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v0

    .local v0, "spb":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    goto :goto_0

    .line 615
    .end local v0    # "spb":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    .line 619
    .restart local v0    # "spb":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    :goto_0
    if-eqz v0, :cond_1

    new-instance v1, Landroid/telephony/SmsMessage$SubmitPdu;

    invoke-direct {v1, v0}, Landroid/telephony/SmsMessage$SubmitPdu;-><init>(Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)V

    :cond_1
    return-object v1
.end method

.method public static whitelist getSubmitPdu(Ljava/lang/String;Ljava/lang/String;S[BZ)Landroid/telephony/SmsMessage$SubmitPdu;
    .locals 2
    .param p0, "scAddress"    # Ljava/lang/String;
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "destinationPort"    # S
    .param p3, "data"    # [B
    .param p4, "statusReportRequested"    # Z

    .line 639
    invoke-static {}, Landroid/telephony/SmsMessage;->useCdmaFormatForMoSms()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 640
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v0

    .local v0, "spb":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    goto :goto_0

    .line 643
    .end local v0    # "spb":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    .line 647
    .restart local v0    # "spb":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    :goto_0
    if-eqz v0, :cond_1

    new-instance v1, Landroid/telephony/SmsMessage$SubmitPdu;

    invoke-direct {v1, v0}, Landroid/telephony/SmsMessage$SubmitPdu;-><init>(Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)V

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return-object v1
.end method

.method public static whitelist getSubmitPduEncodedMessage(ZLjava/lang/String;Ljava/lang/String;IIIIII)[B
    .locals 17
    .param p0, "isTypeGsm"    # Z
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "encoding"    # I
    .param p4, "languageTable"    # I
    .param p5, "languageShiftTable"    # I
    .param p6, "refNumber"    # I
    .param p7, "seqNumber"    # I
    .param p8, "msgCount"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 731
    move/from16 v8, p3

    new-instance v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    invoke-direct {v0}, Lcom/android/internal/telephony/SmsHeader$ConcatRef;-><init>()V

    move-object v9, v0

    .line 732
    .local v9, "concatRef":Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    move/from16 v10, p6

    iput v10, v9, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    .line 733
    move/from16 v11, p7

    iput v11, v9, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    .line 734
    move/from16 v12, p8

    iput v12, v9, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    .line 741
    const/4 v0, 0x1

    iput-boolean v0, v9, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    .line 742
    new-instance v1, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v1}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    move-object v13, v1

    .line 743
    .local v13, "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    iput-object v9, v13, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    .line 750
    if-ne v8, v0, :cond_0

    .line 751
    move/from16 v14, p4

    iput v14, v13, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    .line 752
    move/from16 v15, p5

    iput v15, v13, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    goto :goto_0

    .line 750
    :cond_0
    move/from16 v14, p4

    move/from16 v15, p5

    .line 755
    :goto_0
    const/4 v7, 0x0

    if-eqz p0, :cond_1

    .line 756
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 758
    invoke-static {v13}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v4

    .line 756
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v16, v9

    move v9, v7

    .end local v9    # "concatRef":Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    .local v16, "concatRef":Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    move/from16 v7, p5

    invoke-static/range {v0 .. v7}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedMessage:[B

    move-object v3, v0

    move-object/from16 v0, p1

    .local v0, "data":[B
    goto :goto_2

    .line 761
    .end local v0    # "data":[B
    .end local v16    # "concatRef":Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    .restart local v9    # "concatRef":Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    :cond_1
    move-object/from16 v16, v9

    move v9, v7

    .end local v9    # "concatRef":Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    .restart local v16    # "concatRef":Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    new-instance v1, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct {v1}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    .line 762
    .local v1, "uData":Lcom/android/internal/telephony/cdma/sms/UserData;
    move-object/from16 v2, p2

    iput-object v2, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 763
    iput-object v13, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 764
    if-ne v8, v0, :cond_2

    .line 765
    const/16 v3, 0x9

    iput v3, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    goto :goto_1

    .line 767
    :cond_2
    const/4 v3, 0x4

    iput v3, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    .line 769
    :goto_1
    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    .line 770
    move-object/from16 v0, p1

    invoke-static {v0, v1, v9}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Lcom/android/internal/telephony/cdma/sms/UserData;Z)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v3

    iget-object v3, v3, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;->encodedMessage:[B

    .line 773
    .end local v1    # "uData":Lcom/android/internal/telephony/cdma/sms/UserData;
    .local v3, "data":[B
    :goto_2
    if-nez v3, :cond_3

    .line 774
    new-array v1, v9, [B

    return-object v1

    .line 776
    :cond_3
    return-object v3
.end method

.method public static whitelist getTPLayerLengthForPDU(Ljava/lang/String;)I
    .locals 1
    .param p0, "pdu"    # Ljava/lang/String;

    .line 336
    invoke-static {}, Landroid/telephony/SmsMessage;->isCdmaVoice()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 337
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->getTPLayerLengthForPDU(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 339
    :cond_0
    invoke-static {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->getTPLayerLengthForPDU(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static greylist-max-o hasEmsSupport()Z
    .locals 11

    .line 1090
    invoke-static {}, Landroid/telephony/SmsMessage;->isNoEmsSupportConfigListExisted()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1091
    return v1

    .line 1096
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1098
    .local v2, "identity":J
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    .line 1099
    .local v0, "simOperator":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getGroupIdLevel1()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1101
    .local v4, "gid":Ljava/lang/String;
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1102
    nop

    .line 1104
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1105
    sget-object v5, Landroid/telephony/SmsMessage;->mNoEmsSupportConfigList:[Landroid/telephony/SmsMessage$NoEmsSupportConfig;

    array-length v6, v5

    const/4 v7, 0x0

    move v8, v7

    :goto_0
    if-ge v8, v6, :cond_3

    aget-object v9, v5, v8

    .line 1106
    .local v9, "currentConfig":Landroid/telephony/SmsMessage$NoEmsSupportConfig;
    if-eqz v9, :cond_2

    iget-object v10, v9, Landroid/telephony/SmsMessage$NoEmsSupportConfig;->mOperatorNumber:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    iget-object v10, v9, Landroid/telephony/SmsMessage$NoEmsSupportConfig;->mGid1:Ljava/lang/String;

    .line 1107
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    iget-object v10, v9, Landroid/telephony/SmsMessage$NoEmsSupportConfig;->mGid1:Ljava/lang/String;

    .line 1108
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    iget-object v10, v9, Landroid/telephony/SmsMessage$NoEmsSupportConfig;->mGid1:Ljava/lang/String;

    invoke-virtual {v10, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1109
    :cond_1
    return v7

    .line 1105
    .end local v9    # "currentConfig":Landroid/telephony/SmsMessage$NoEmsSupportConfig;
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1113
    :cond_3
    return v1

    .line 1101
    .end local v0    # "simOperator":Ljava/lang/String;
    .end local v4    # "gid":Ljava/lang/String;
    :catchall_0
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1102
    throw v0
.end method

.method private static greylist-max-o isCdmaVoice()Z
    .locals 1

    .line 1067
    invoke-static {}, Landroid/telephony/SmsManager;->getDefaultSmsSubscriptionId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SmsMessage;->isCdmaVoice(I)Z

    move-result v0

    return v0
.end method

.method private static greylist-max-o isCdmaVoice(I)Z
    .locals 3
    .param p0, "subId"    # I

    .line 1077
    const/4 v0, 0x0

    invoke-static {v0, p0}, Landroid/telephony/SmsManager;->getSmsManagerForContextAndSubscriptionId(Landroid/content/Context;I)Landroid/telephony/SmsManager;

    move-result-object v0

    const-string/jumbo v1, "sms_3gpp2_lgt_network"

    invoke-virtual {v0, v1}, Landroid/telephony/SmsManager;->getSmsSetting(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1078
    return v1

    .line 1081
    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType(I)I

    move-result v0

    .line 1082
    .local v0, "activePhone":I
    const/4 v2, 0x2

    if-ne v2, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private static greylist-max-o isNoEmsSupportConfigListExisted()Z
    .locals 8

    .line 1167
    sget-boolean v0, Landroid/telephony/SmsMessage;->mIsNoEmsSupportConfigListLoaded:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 1168
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 1169
    .local v0, "r":Landroid/content/res/Resources;
    if-eqz v0, :cond_1

    .line 1170
    const v2, 0x107019c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 1172
    .local v2, "listArray":[Ljava/lang/String;
    if-eqz v2, :cond_0

    array-length v3, v2

    if-lez v3, :cond_0

    .line 1173
    array-length v3, v2

    new-array v3, v3, [Landroid/telephony/SmsMessage$NoEmsSupportConfig;

    sput-object v3, Landroid/telephony/SmsMessage;->mNoEmsSupportConfigList:[Landroid/telephony/SmsMessage$NoEmsSupportConfig;

    .line 1174
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_0

    .line 1175
    sget-object v4, Landroid/telephony/SmsMessage;->mNoEmsSupportConfigList:[Landroid/telephony/SmsMessage$NoEmsSupportConfig;

    new-instance v5, Landroid/telephony/SmsMessage$NoEmsSupportConfig;

    aget-object v6, v2, v3

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/telephony/SmsMessage$NoEmsSupportConfig;-><init>([Ljava/lang/String;)V

    aput-object v5, v4, v3

    .line 1174
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1178
    .end local v3    # "i":I
    :cond_0
    sput-boolean v1, Landroid/telephony/SmsMessage;->mIsNoEmsSupportConfigListLoaded:Z

    .line 1182
    .end local v0    # "r":Landroid/content/res/Resources;
    .end local v2    # "listArray":[Ljava/lang/String;
    :cond_1
    sget-boolean v0, Landroid/telephony/SmsMessage;->mIsNoEmsSupportConfigListLoaded:Z

    if-eqz v0, :cond_2

    sget-object v0, Landroid/telephony/SmsMessage;->mNoEmsSupportConfigList:[Landroid/telephony/SmsMessage$NoEmsSupportConfig;

    if-eqz v0, :cond_2

    array-length v0, v0

    if-eqz v0, :cond_2

    .line 1184
    return v1

    .line 1187
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist semCreateFromPdu(I[B)Landroid/telephony/SmsMessage;
    .locals 11
    .param p0, "phoneId"    # I
    .param p1, "pdu"    # [B

    .line 1351
    const/4 v0, 0x0

    .line 1353
    .local v0, "message":Landroid/telephony/SmsMessage;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "semCreateFromPdu() : phoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SmsMessage"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1354
    invoke-static {p0}, Landroid/telephony/SmsMessage;->getSubId(I)I

    move-result v1

    .line 1357
    .local v1, "subId":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v3

    .line 1358
    .local v3, "activePhone":I
    const/4 v4, 0x0

    invoke-static {v4, v1}, Landroid/telephony/SmsManager;->getSmsManagerForContextAndSubscriptionId(Landroid/content/Context;I)Landroid/telephony/SmsManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/SmsManager;->getMnoName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "KDDI"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v7, 0x2

    const-string v8, "3gpp2"

    const-string v9, "3gpp"

    if-eqz v5, :cond_1

    .line 1359
    invoke-static {}, Landroid/telephony/SmsMessage;->useCdmaFormatForMoSms()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1360
    move-object v5, v8

    goto :goto_0

    :cond_0
    move-object v5, v9

    .local v5, "format":Ljava/lang/String;
    :goto_0
    goto :goto_1

    .line 1362
    .end local v5    # "format":Ljava/lang/String;
    :cond_1
    if-ne v7, v3, :cond_2

    .line 1363
    move-object v5, v8

    goto :goto_1

    :cond_2
    move-object v5, v9

    .line 1365
    .restart local v5    # "format":Ljava/lang/String;
    :goto_1
    invoke-static {p0, p1, v5}, Landroid/telephony/SmsMessage;->semCreateFromPdu(I[BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v0

    .line 1367
    if-eqz v0, :cond_3

    iget-object v10, v0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    if-nez v10, :cond_7

    .line 1368
    :cond_3
    const-string/jumbo v10, "semCreateFromPdu(): decoding is failed because of wrong format"

    invoke-static {v2, v10}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1370
    invoke-static {v4, v1}, Landroid/telephony/SmsManager;->getSmsManagerForContextAndSubscriptionId(Landroid/content/Context;I)Landroid/telephony/SmsManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/SmsManager;->getMnoName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1371
    invoke-static {}, Landroid/telephony/SmsMessage;->useCdmaFormatForMoSms()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1372
    move-object v8, v9

    goto :goto_2

    :cond_4
    nop

    :goto_2
    move-object v2, v8

    move-object v5, v2

    .end local v5    # "format":Ljava/lang/String;
    .local v2, "format":Ljava/lang/String;
    goto :goto_4

    .line 1374
    .end local v2    # "format":Ljava/lang/String;
    .restart local v5    # "format":Ljava/lang/String;
    :cond_5
    if-ne v7, v3, :cond_6

    .line 1375
    move-object v8, v9

    goto :goto_3

    :cond_6
    nop

    :goto_3
    move-object v2, v8

    move-object v5, v2

    .line 1377
    :goto_4
    invoke-static {p0, p1, v5}, Landroid/telephony/SmsMessage;->semCreateFromPdu(I[BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v0

    .line 1379
    :cond_7
    return-object v0
.end method

.method public static blacklist semCreateFromPdu(I[BI)Landroid/telephony/SmsMessage;
    .locals 3
    .param p0, "phoneId"    # I
    .param p1, "pdu"    # [B
    .param p2, "encoding"    # I

    .line 1454
    const/4 v0, 0x2

    if-ne v0, p2, :cond_0

    .line 1455
    invoke-static {p0, p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->semCreateFromPdu(I[B)Lcom/android/internal/telephony/cdma/SmsMessage;

    move-result-object v0

    .local v0, "wrappedMessage":Lcom/android/internal/telephony/SmsMessageBase;
    goto :goto_0

    .line 1457
    .end local v0    # "wrappedMessage":Lcom/android/internal/telephony/SmsMessageBase;
    :cond_0
    invoke-static {p0, p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->semCreateFromPdu(I[B)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object v0

    .line 1460
    .restart local v0    # "wrappedMessage":Lcom/android/internal/telephony/SmsMessageBase;
    :goto_0
    if-eqz v0, :cond_1

    .line 1461
    new-instance v1, Landroid/telephony/SmsMessage;

    invoke-direct {v1, v0}, Landroid/telephony/SmsMessage;-><init>(Lcom/android/internal/telephony/SmsMessageBase;)V

    return-object v1

    .line 1463
    :cond_1
    const-string v1, "SmsMessage"

    const-string v2, "createFromPdu(): wrappedMessage is null"

    invoke-static {v1, v2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1464
    const/4 v1, 0x0

    return-object v1
.end method

.method public static whitelist semCreateFromPdu(I[BLjava/lang/String;)Landroid/telephony/SmsMessage;
    .locals 3
    .param p0, "phoneId"    # I
    .param p1, "pdu"    # [B
    .param p2, "format"    # Ljava/lang/String;

    .line 1399
    const-string v0, "SmsMessage"

    const v1, 0x7fffffff

    if-eq p0, v1, :cond_1

    if-ltz p0, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    if-lt p0, v1, :cond_1

    .line 1400
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid phoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1401
    const/4 v0, 0x0

    return-object v0

    .line 1403
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "semCreateFromPdu phoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1404
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Landroid/telephony/SmsMessage;->semCreateFromPdu(I[BLjava/lang/String;Z)Landroid/telephony/SmsMessage;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist semCreateFromPdu(I[BLjava/lang/String;Z)Landroid/telephony/SmsMessage;
    .locals 5
    .param p0, "phoneId"    # I
    .param p1, "pdu"    # [B
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "fallbackToOtherFormat"    # Z

    .line 1409
    const/4 v0, 0x0

    const-string v1, "SmsMessage"

    if-eqz p1, :cond_7

    if-nez p2, :cond_0

    goto :goto_2

    .line 1414
    :cond_0
    const-string v2, "3gpp2"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "3gpp"

    if-eqz v3, :cond_1

    move-object v3, v4

    goto :goto_0

    .line 1415
    :cond_1
    move-object v3, v2

    :goto_0
    nop

    .line 1416
    .local v3, "otherFormat":Ljava/lang/String;
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1417
    invoke-static {p0, p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->semCreateFromPdu(I[B)Lcom/android/internal/telephony/cdma/SmsMessage;

    move-result-object v2

    .line 1418
    .local v2, "wrappedMessage":Lcom/android/internal/telephony/SmsMessageBase;
    if-nez v2, :cond_3

    .line 1419
    const-string/jumbo v4, "semCreateFromPdu is failed >> retry to use gsm-decode "

    invoke-static {v1, v4}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1420
    invoke-static {p0, p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->semCreateFromPdu(I[B)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object v2

    goto :goto_1

    .line 1422
    .end local v2    # "wrappedMessage":Lcom/android/internal/telephony/SmsMessageBase;
    :cond_2
    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1423
    invoke-static {p0, p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->semCreateFromPdu(I[B)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object v2

    .line 1424
    .restart local v2    # "wrappedMessage":Lcom/android/internal/telephony/SmsMessageBase;
    if-nez v2, :cond_3

    .line 1425
    const-string/jumbo v4, "semCreateFromPdu is failed >> retry to use CDMA-decode "

    invoke-static {v1, v4}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1426
    invoke-static {p0, p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->semCreateFromPdu(I[B)Lcom/android/internal/telephony/cdma/SmsMessage;

    move-result-object v2

    .line 1433
    :cond_3
    :goto_1
    if-eqz v2, :cond_4

    .line 1434
    new-instance v0, Landroid/telephony/SmsMessage;

    invoke-direct {v0, v2}, Landroid/telephony/SmsMessage;-><init>(Lcom/android/internal/telephony/SmsMessageBase;)V

    return-object v0

    .line 1436
    :cond_4
    if-eqz p3, :cond_5

    .line 1437
    const/4 v0, 0x0

    invoke-static {p0, p1, v3, v0}, Landroid/telephony/SmsMessage;->semCreateFromPdu(I[BLjava/lang/String;Z)Landroid/telephony/SmsMessage;

    move-result-object v0

    return-object v0

    .line 1439
    :cond_5
    const-string/jumbo v4, "semCreateFromPdu(): wrappedMessage is null"

    invoke-static {v1, v4}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1440
    return-object v0

    .line 1429
    .end local v2    # "wrappedMessage":Lcom/android/internal/telephony/SmsMessageBase;
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "semCreateFromPdu(): unsupported message format "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1430
    return-object v0

    .line 1410
    .end local v3    # "otherFormat":Ljava/lang/String;
    :cond_7
    :goto_2
    const-string/jumbo v2, "semCreateFromPdu(): pdu or format are null"

    invoke-static {v1, v2}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1411
    return-object v0
.end method

.method public static greylist-max-o shouldAppendPageNumberAsPrefix()Z
    .locals 10

    .line 1121
    invoke-static {}, Landroid/telephony/SmsMessage;->isNoEmsSupportConfigListExisted()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1122
    return v1

    .line 1127
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1129
    .local v2, "identity":J
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    .line 1130
    .local v0, "simOperator":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getGroupIdLevel1()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1132
    .local v4, "gid":Ljava/lang/String;
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1133
    nop

    .line 1135
    sget-object v5, Landroid/telephony/SmsMessage;->mNoEmsSupportConfigList:[Landroid/telephony/SmsMessage$NoEmsSupportConfig;

    array-length v6, v5

    move v7, v1

    :goto_0
    if-ge v7, v6, :cond_3

    aget-object v8, v5, v7

    .line 1136
    .local v8, "currentConfig":Landroid/telephony/SmsMessage$NoEmsSupportConfig;
    if-eqz v8, :cond_2

    iget-object v9, v8, Landroid/telephony/SmsMessage$NoEmsSupportConfig;->mOperatorNumber:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    iget-object v9, v8, Landroid/telephony/SmsMessage$NoEmsSupportConfig;->mGid1:Ljava/lang/String;

    .line 1137
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    iget-object v9, v8, Landroid/telephony/SmsMessage$NoEmsSupportConfig;->mGid1:Ljava/lang/String;

    .line 1138
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    iget-object v9, v8, Landroid/telephony/SmsMessage$NoEmsSupportConfig;->mGid1:Ljava/lang/String;

    invoke-virtual {v9, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1139
    :cond_1
    iget-boolean v1, v8, Landroid/telephony/SmsMessage$NoEmsSupportConfig;->mIsPrefix:Z

    return v1

    .line 1135
    .end local v8    # "currentConfig":Landroid/telephony/SmsMessage$NoEmsSupportConfig;
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1142
    :cond_3
    return v1

    .line 1132
    .end local v0    # "simOperator":Ljava/lang/String;
    .end local v4    # "gid":Ljava/lang/String;
    :catchall_0
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1133
    throw v0
.end method

.method private static greylist useCdmaFormatForMoSms()Z
    .locals 1

    .line 1038
    invoke-static {}, Landroid/telephony/SmsManager;->getDefaultSmsSubscriptionId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SmsMessage;->useCdmaFormatForMoSms(I)Z

    move-result v0

    return v0
.end method

.method private static greylist-max-r useCdmaFormatForMoSms(I)Z
    .locals 3
    .param p0, "subId"    # I

    .line 1052
    invoke-static {p0}, Landroid/telephony/SmsManager;->getSmsManagerForSubscriptionId(I)Landroid/telephony/SmsManager;

    move-result-object v0

    .line 1053
    .local v0, "smsManager":Landroid/telephony/SmsManager;
    invoke-virtual {v0}, Landroid/telephony/SmsManager;->isImsSmsSupported()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1055
    invoke-static {p0}, Landroid/telephony/SmsMessage;->isCdmaVoice(I)Z

    move-result v1

    return v1

    .line 1058
    :cond_0
    invoke-virtual {v0}, Landroid/telephony/SmsManager;->getImsSmsFormat()Ljava/lang/String;

    move-result-object v1

    const-string v2, "3gpp2"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private static blacklist useCdmaFormatForMoSms(Landroid/telephony/SmsManager;)Z
    .locals 2
    .param p0, "smsManager"    # Landroid/telephony/SmsManager;

    .line 1543
    if-nez p0, :cond_0

    .line 1544
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object p0

    .line 1547
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->isImsSmsSupported()Z

    move-result v0

    const-string v1, "3gpp2"

    if-nez v0, :cond_1

    .line 1548
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getCurrentFormat()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 1552
    :cond_1
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getImsSmsFormat()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public blacklist getBearerData()[B
    .locals 1

    .line 1889
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getBearerData()[B

    move-result-object v0

    return-object v0
.end method

.method public blacklist getCallbackNumber()Ljava/lang/String;
    .locals 1

    .line 1820
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getCallbackNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getDestPortAddr()I
    .locals 1

    .line 1848
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getDestPortAddr()I

    move-result v0

    return v0
.end method

.method public blacklist getDisplayDestinationAddress()Ljava/lang/String;
    .locals 1

    .line 1898
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getRecipientAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getDisplayMessageBody()Ljava/lang/String;
    .locals 1

    .line 839
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getDisplayOriginatingAddress()Ljava/lang/String;
    .locals 1

    .line 809
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getEmailBody()Ljava/lang/String;
    .locals 1

    .line 872
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getEmailBody()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getEmailFrom()Ljava/lang/String;
    .locals 1

    .line 880
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getEmailFrom()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getIndexOnIcc()I
    .locals 1

    .line 994
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getIndexOnIcc()I

    move-result v0

    return v0
.end method

.method public whitelist getIndexOnSim()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 985
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getIndexOnIcc()I

    move-result v0

    return v0
.end method

.method public whitelist getMessageBody()Ljava/lang/String;
    .locals 1

    .line 817
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageBody()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getMessageClass()Landroid/telephony/SmsMessage$MessageClass;
    .locals 2

    .line 824
    sget-object v0, Landroid/telephony/SmsMessage$1;->$SwitchMap$com$android$internal$telephony$SmsConstants$MessageClass:[I

    iget-object v1, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageClass()Lcom/android/internal/telephony/SmsConstants$MessageClass;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/SmsConstants$MessageClass;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 829
    sget-object v0, Landroid/telephony/SmsMessage$MessageClass;->UNKNOWN:Landroid/telephony/SmsMessage$MessageClass;

    return-object v0

    .line 828
    :pswitch_0
    sget-object v0, Landroid/telephony/SmsMessage$MessageClass;->CLASS_3:Landroid/telephony/SmsMessage$MessageClass;

    return-object v0

    .line 827
    :pswitch_1
    sget-object v0, Landroid/telephony/SmsMessage$MessageClass;->CLASS_2:Landroid/telephony/SmsMessage$MessageClass;

    return-object v0

    .line 826
    :pswitch_2
    sget-object v0, Landroid/telephony/SmsMessage$MessageClass;->CLASS_1:Landroid/telephony/SmsMessage$MessageClass;

    return-object v0

    .line 825
    :pswitch_3
    sget-object v0, Landroid/telephony/SmsMessage$MessageClass;->CLASS_0:Landroid/telephony/SmsMessage$MessageClass;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist getMessageIdentifier()I
    .locals 1

    .line 1766
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageIdentifier()I

    move-result v0

    return v0
.end method

.method public blacklist getMessagePriority()I
    .locals 1

    .line 1811
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getMessagePriority()I

    move-result v0

    return v0
.end method

.method public blacklist getMessageType()I
    .locals 1

    .line 1880
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageType()I

    move-result v0

    return v0
.end method

.method public whitelist getOriginatingAddress()Ljava/lang/String;
    .locals 1

    .line 800
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getPdu()[B
    .locals 1

    .line 946
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getPdu()[B

    move-result-object v0

    return-object v0
.end method

.method public whitelist getProtocolIdentifier()I
    .locals 1

    .line 887
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getProtocolIdentifier()I

    move-result v0

    return v0
.end method

.method public whitelist getPseudoSubject()Ljava/lang/String;
    .locals 1

    .line 847
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getPseudoSubject()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getReadConfirmId()I
    .locals 1

    .line 1857
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getReadConfirmId()I

    move-result v0

    return v0
.end method

.method public blacklist getRecipientAddress()Ljava/lang/String;
    .locals 1

    .line 1197
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getRecipientAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSafeMessageIndication()Z
    .locals 1

    .line 1867
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getSafeMessageIndication()Z

    move-result v0

    return v0
.end method

.method public whitelist getServiceCenterAddress()Ljava/lang/String;
    .locals 1

    .line 784
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getServiceCenterAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSharedAppId()Ljava/lang/String;
    .locals 1

    .line 1775
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getSharedAppId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSharedCmd()Ljava/lang/String;
    .locals 1

    .line 1784
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getSharedCmd()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSharedPayLoad()Ljava/lang/String;
    .locals 1

    .line 1802
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getSharedPayLoad()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getStatus()I
    .locals 1

    .line 1010
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getStatus()I

    move-result v0

    return v0
.end method

.method public whitelist getStatusOnIcc()I
    .locals 1

    .line 975
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getStatusOnIcc()I

    move-result v0

    return v0
.end method

.method public whitelist getStatusOnSim()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 961
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getStatusOnIcc()I

    move-result v0

    return v0
.end method

.method public greylist getSubId()I
    .locals 1

    .line 166
    iget v0, p0, Landroid/telephony/SmsMessage;->mSubId:I

    return v0
.end method

.method public blacklist getTeleserviceId()I
    .locals 1

    .line 1793
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getTeleserviceId()I

    move-result v0

    return v0
.end method

.method public whitelist getTimestampMillis()J
    .locals 2

    .line 854
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getTimestampMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getUserData()[B
    .locals 1

    .line 937
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getUserData()[B

    move-result-object v0

    return-object v0
.end method

.method public blacklist getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;
    .locals 1

    .line 1838
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getlinkUrl()Ljava/lang/String;
    .locals 1

    .line 1828
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getlinkUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist isCphsMwiMessage()Z
    .locals 1

    .line 905
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->isCphsMwiMessage()Z

    move-result v0

    return v0
.end method

.method public whitelist isEmail()Z
    .locals 1

    .line 864
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->isEmail()Z

    move-result v0

    return v0
.end method

.method public whitelist isMWIClearMessage()Z
    .locals 1

    .line 913
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->isMWIClearMessage()Z

    move-result v0

    return v0
.end method

.method public whitelist isMWISetMessage()Z
    .locals 1

    .line 921
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->isMWISetMessage()Z

    move-result v0

    return v0
.end method

.method public whitelist isMwiDontStore()Z
    .locals 1

    .line 929
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->isMwiDontStore()Z

    move-result v0

    return v0
.end method

.method public whitelist isReplace()Z
    .locals 1

    .line 895
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->isReplace()Z

    move-result v0

    return v0
.end method

.method public whitelist isReplyPathPresent()Z
    .locals 1

    .line 1025
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->isReplyPathPresent()Z

    move-result v0

    return v0
.end method

.method public whitelist isStatusReportMessage()Z
    .locals 1

    .line 1017
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->isStatusReportMessage()Z

    move-result v0

    return v0
.end method

.method public greylist setSubId(I)V
    .locals 0
    .param p1, "subId"    # I

    .line 157
    iput p1, p0, Landroid/telephony/SmsMessage;->mSubId:I

    .line 158
    return-void
.end method
