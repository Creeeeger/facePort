.class public Lcom/android/internal/telephony/gsm/SmsMessage;
.super Lcom/android/internal/telephony/SmsMessageBase;
.source "SmsMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;,
        Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;
    }
.end annotation


# static fields
.field private static final blacklist INVALID_VALIDITY_PERIOD:I = -0x1

.field static final blacklist LOG_TAG:Ljava/lang/String; = "SmsMessage"

.field private static final blacklist SALES_CODE:Ljava/lang/String;

.field private static final blacklist VALIDITY_PERIOD_FORMAT_ABSOLUTE:I = 0x3

.field private static final blacklist VALIDITY_PERIOD_FORMAT_ENHANCED:I = 0x1

.field private static final blacklist VALIDITY_PERIOD_FORMAT_NONE:I = 0x0

.field private static final blacklist VALIDITY_PERIOD_FORMAT_RELATIVE:I = 0x2

.field private static final blacklist VALIDITY_PERIOD_MAX:I = 0x9b0a0

.field private static final blacklist VALIDITY_PERIOD_MIN:I = 0x5

.field private static final blacklist VDBG:Z

.field private static blacklist mIgnoreSpecialChar:Z

.field private static blacklist mUnsupportedDatacodingScheme:Z


# instance fields
.field private blacklist mDataCodingScheme:I

.field private blacklist mIsStatusReportMessage:Z

.field private blacklist mProtocolIdentifier:I

.field private blacklist mReplyPathPresent:Z

.field private blacklist mStatus:I

.field private blacklist mVoiceMailCount:I

.field private blacklist messageClass:Lcom/android/internal/telephony/SmsConstants$MessageClass;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetmUnsupportedDatacodingScheme()Z
    .locals 1

    sget-boolean v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mUnsupportedDatacodingScheme:Z

    return v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 2

    const-string/jumbo v0, "ro.csc.sales_code"

    const-string v1, "NONE"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/gsm/SmsMessage;->SALES_CODE:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mUnsupportedDatacodingScheme:Z

    sput-boolean v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mIgnoreSpecialChar:Z

    return-void
.end method

.method public constructor greylist <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/telephony/SmsMessageBase;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mReplyPathPresent:Z

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mIsStatusReportMessage:Z

    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mVoiceMailCount:I

    return-void
.end method

.method public static greylist calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .locals 5

    const/4 v0, 0x0

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1110238

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-static {p0, v3}, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->translate(Ljava/lang/CharSequence;Z)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v0, p0

    :cond_1
    const/4 v2, 0x0

    if-eqz v0, :cond_2

    sget-boolean v4, Lcom/android/internal/telephony/gsm/SmsMessage;->mIgnoreSpecialChar:Z

    invoke-static {v0, p1, v4}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptets(Ljava/lang/CharSequence;ZZ)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v2

    sput-boolean v3, Lcom/android/internal/telephony/gsm/SmsMessage;->mIgnoreSpecialChar:Z

    if-nez v2, :cond_2

    invoke-static {v0}, Lcom/android/internal/telephony/SmsMessageBase;->calcUnicodeEncodingDetails(Ljava/lang/CharSequence;)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v3

    return-object v3

    :cond_2
    return-object v2
.end method

.method public static blacklist calculateLengthForCdma(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mIgnoreSpecialChar:Z

    invoke-static {p0, p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist calculateLengthWithEmail(Ljava/lang/CharSequence;ZI)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .locals 8

    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptetsWithEmail(Ljava/lang/CharSequence;ZI)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v0

    if-nez v0, :cond_6

    new-instance v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    invoke-direct {v1}, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;-><init>()V

    move-object v0, v1

    mul-int/lit8 p2, p2, 0x2

    const/4 v1, 0x1

    if-lez p2, :cond_0

    rsub-int v2, p2, 0x8c

    sub-int/2addr v2, v1

    goto :goto_0

    :cond_0
    const/16 v2, 0x8c

    :goto_0
    nop

    if-lez p2, :cond_1

    rsub-int v3, p2, 0x86

    sub-int/2addr v3, v1

    goto :goto_1

    :cond_1
    const/16 v3, 0x86

    :goto_1
    nop

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    iput v5, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitCount:I

    const/4 v5, -0x1

    const/16 v6, 0x3e8

    if-le v4, v2, :cond_4

    add-int/lit8 v7, v2, -0x2

    if-le p2, v7, :cond_2

    iput v6, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    iput v5, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_2

    :cond_2
    rem-int v5, v4, v3

    if-eqz v5, :cond_3

    div-int v5, v4, v3

    add-int/2addr v5, v1

    iput v5, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    rem-int v1, v4, v3

    sub-int v1, v3, v1

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_2

    :cond_3
    div-int v1, v4, v3

    iput v1, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_2

    :cond_4
    add-int/lit8 v7, v3, -0x2

    if-lt p2, v7, :cond_5

    iput v6, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    iput v5, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_2

    :cond_5
    iput v1, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    sub-int v1, v2, v4

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    :goto_2
    const/4 v1, 0x3

    iput v1, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    :cond_6
    return-object v0
.end method

.method public static blacklist calculateLengthWithEmail(Ljava/lang/CharSequence;ZII)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .locals 8

    new-instance v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    invoke-direct {v0}, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;-><init>()V

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    invoke-static {p0, v1, p3}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptetsWithEmail(Ljava/lang/CharSequence;ZI)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {p0, p1, p3}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptetsWithEmail(Ljava/lang/CharSequence;ZI)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_8

    new-instance v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    invoke-direct {v2}, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;-><init>()V

    move-object v0, v2

    mul-int/lit8 p3, p3, 0x2

    if-lez p3, :cond_2

    rsub-int v2, p3, 0x8c

    sub-int/2addr v2, v1

    goto :goto_1

    :cond_2
    const/16 v2, 0x8c

    :goto_1
    nop

    if-lez p3, :cond_3

    rsub-int v3, p3, 0x86

    sub-int/2addr v3, v1

    goto :goto_2

    :cond_3
    const/16 v3, 0x86

    :goto_2
    nop

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    iput v5, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitCount:I

    const/4 v5, -0x1

    const/16 v6, 0x3e8

    if-le v4, v2, :cond_6

    add-int/lit8 v7, v2, -0x2

    if-le p3, v7, :cond_4

    iput v6, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    iput v5, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_3

    :cond_4
    rem-int v5, v4, v3

    if-eqz v5, :cond_5

    div-int v5, v4, v3

    add-int/2addr v5, v1

    iput v5, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    rem-int v1, v4, v3

    sub-int v1, v3, v1

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_3

    :cond_5
    div-int v1, v4, v3

    iput v1, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_3

    :cond_6
    add-int/lit8 v7, v3, -0x2

    if-lt p3, v7, :cond_7

    iput v6, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    iput v5, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_3

    :cond_7
    iput v1, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    sub-int v1, v2, v4

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    :goto_3
    const/4 v1, 0x3

    iput v1, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    :cond_8
    return-object v0
.end method

.method public static blacklist calculateLengthWithEncodingType(Ljava/lang/CharSequence;ZI)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .locals 2

    new-instance v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    invoke-direct {v0}, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;-><init>()V

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptets(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {p0, p1}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptets(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_2

    invoke-static {p0}, Lcom/android/internal/telephony/SmsMessageBase;->calcUnicodeEncodingDetails(Ljava/lang/CharSequence;)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v1

    return-object v1

    :cond_2
    return-object v0
.end method

.method public static greylist-max-q createFromEfRecord(I[B)Lcom/android/internal/telephony/gsm/SmsMessage;
    .locals 7

    const-string v0, "SmsMessage"

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Lcom/android/internal/telephony/gsm/SmsMessage;

    invoke-direct {v2}, Lcom/android/internal/telephony/gsm/SmsMessage;-><init>()V

    iput p0, v2, Lcom/android/internal/telephony/gsm/SmsMessage;->mIndexOnIcc:I

    const/4 v3, 0x0

    aget-byte v4, p1, v3

    const/4 v5, 0x1

    and-int/2addr v4, v5

    if-nez v4, :cond_0

    const-string v3, "SMS parsing failed: Trying to parse a free record"

    invoke-static {v0, v3}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    aget-byte v4, p1, v3

    and-int/lit8 v4, v4, 0x7

    iput v4, v2, Lcom/android/internal/telephony/gsm/SmsMessage;->mStatusOnIcc:I

    array-length v4, p1

    sub-int/2addr v4, v5

    new-array v6, v4, [B

    invoke-static {p1, v5, v6, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-direct {v2, v6}, Lcom/android/internal/telephony/gsm/SmsMessage;->parsePdu([B)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v2

    const-string v3, "SMS PDU parsing failed: "

    invoke-static {v0, v3, v2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method

.method public static greylist createFromPdu([B)Lcom/android/internal/telephony/gsm/SmsMessage;
    .locals 2

    invoke-static {}, Landroid/telephony/SmsManager;->getDefaultSmsSubscriptionId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    invoke-static {v0, p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->semCreateFromPdu(I[B)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist decToBcd(I)I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    div-int/lit8 v0, p0, 0xa

    rem-int/lit8 v1, p0, 0xa

    mul-int/lit8 v3, v1, 0xa

    add-int/2addr v3, v0

    return v3
.end method

.method private static greylist encodeUCS2(Ljava/lang/String;[B)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    const-string/jumbo v0, "utf-16be"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    array-length v3, p1

    array-length v4, v0

    add-int/2addr v3, v4

    add-int/2addr v3, v2

    new-array v3, v3, [B

    array-length v4, p1

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    array-length v4, p1

    invoke-static {p1, v1, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v4, p1

    add-int/2addr v4, v2

    array-length v5, v0

    invoke-static {v0, v1, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    move-object v3, v0

    :goto_0
    array-length v4, v3

    const/16 v5, 0xff

    if-gt v4, v5, :cond_1

    array-length v4, v3

    add-int/2addr v4, v2

    new-array v4, v4, [B

    array-length v6, v3

    and-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v4, v1

    array-length v5, v3

    invoke-static {v3, v1, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v4

    :cond_1
    new-instance v1, Lcom/android/internal/telephony/EncodeException;

    const-string v4, "Payload cannot exceed 255 bytes"

    invoke-direct {v1, v4, v2}, Lcom/android/internal/telephony/EncodeException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method public static blacklist getDeliverPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 27

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x0

    if-eqz v1, :cond_12

    if-nez v2, :cond_0

    move-object v1, v3

    goto/16 :goto_c

    :cond_0
    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v5

    iget v6, v5, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    iget v7, v5, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageTable:I

    iget v8, v5, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageShiftTable:I

    const/4 v0, 0x0

    const/4 v9, 0x1

    if-ne v6, v9, :cond_2

    if-nez v7, :cond_1

    if-eqz v8, :cond_2

    :cond_1
    new-instance v10, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v10}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    iput v7, v10, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    iput v8, v10, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    invoke-static {v10}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v0

    move-object v10, v0

    goto :goto_0

    :cond_2
    move-object v10, v0

    :goto_0
    new-instance v0, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;-><init>()V

    move-object v11, v0

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v12, 0xb4

    invoke-direct {v0, v12}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    move-object v12, v0

    if-nez p0, :cond_3

    iput-object v3, v11, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedScAddress:[B

    goto :goto_1

    :cond_3
    nop

    invoke-static/range {p0 .. p0}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCDWithLength(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, v11, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedScAddress:[B

    :goto_1
    invoke-virtual {v12, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v0, 0x1

    const/4 v13, 0x0

    :goto_2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v14

    const-string v15, "SmsMessage"

    if-ge v13, v14, :cond_5

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Address is "

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v14

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v15, v4}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v4

    if-nez v4, :cond_4

    const/4 v0, 0x0

    move v4, v0

    goto :goto_3

    :cond_4
    add-int/lit8 v13, v13, 0x1

    const/4 v4, 0x0

    goto :goto_2

    :cond_5
    move v4, v0

    :goto_3
    const-string v13, "Implausible UnsupportedEncodingException "

    const/4 v14, 0x2

    if-eqz v4, :cond_8

    const-string v0, "Address is Numeric."

    invoke-static {v15, v0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p1 .. p1}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_6

    return-object v3

    :cond_6
    array-length v3, v0

    sub-int/2addr v3, v9

    mul-int/2addr v3, v14

    array-length v14, v0

    sub-int/2addr v14, v9

    aget-byte v14, v0, v14

    const/16 v9, 0xf0

    and-int/2addr v14, v9

    if-ne v14, v9, :cond_7

    const/4 v9, 0x1

    goto :goto_4

    :cond_7
    const/4 v9, 0x0

    :goto_4
    sub-int/2addr v3, v9

    invoke-virtual {v12, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    array-length v3, v0

    const/4 v9, 0x0

    invoke-virtual {v12, v0, v9, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    move-object v3, v0

    const/4 v9, 0x1

    goto :goto_5

    :cond_8
    const-string v0, "Address is Alphabetic."

    invoke-static {v15, v0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPacked(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_4

    nop

    array-length v3, v0

    const/4 v9, 0x1

    sub-int/2addr v3, v9

    const/4 v14, 0x2

    mul-int/2addr v3, v14

    invoke-virtual {v12, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v3, 0xd0

    invoke-virtual {v12, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    array-length v3, v0

    sub-int/2addr v3, v9

    invoke-virtual {v12, v0, v9, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    move-object v3, v0

    :goto_5
    const/4 v14, 0x0

    invoke-virtual {v12, v14}, Ljava/io/ByteArrayOutputStream;->write(I)V

    if-ne v6, v9, :cond_9

    :try_start_1
    invoke-static {v2, v10, v7, v8}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[BII)[B

    move-result-object v0
    :try_end_1
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6

    :cond_9
    :try_start_2
    invoke-static {v2, v10}, Lcom/android/internal/telephony/gsm/SmsMessage;->encodeUCS2(Ljava/lang/String;[B)[B

    move-result-object v0
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_2 .. :try_end_2} :catch_0

    nop

    :goto_6
    goto :goto_8

    :catch_0
    move-exception v0

    goto :goto_7

    :catch_1
    move-exception v0

    move-object v9, v0

    move-object v0, v9

    :try_start_3
    invoke-static {v15, v13, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_3 .. :try_end_3} :catch_0

    const/4 v9, 0x0

    return-object v9

    :goto_7
    move-object v9, v0

    invoke-virtual {v9}, Lcom/android/internal/telephony/EncodeException;->getError()I

    move-result v0

    const-string v14, "Exceed size limitation EncodeException"

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    invoke-static {v15, v14, v9}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return-object v1

    :cond_a
    :try_start_4
    invoke-static {v2, v10}, Lcom/android/internal/telephony/gsm/SmsMessage;->encodeUCS2(Ljava/lang/String;[B)[B

    move-result-object v0
    :try_end_4
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_2

    const/4 v6, 0x3

    nop

    :goto_8
    const-string v1, "Message too long ("

    const/4 v13, 0x1

    if-ne v6, v13, :cond_c

    const/4 v13, 0x0

    aget-byte v14, v0, v13

    and-int/lit16 v14, v14, 0xff

    const/16 v9, 0xa0

    if-le v14, v9, :cond_b

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-byte v9, v0, v13

    and-int/lit16 v9, v9, 0xff

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v9, " septets)"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1

    :cond_b
    invoke-virtual {v12, v13}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_9

    :cond_c
    const/4 v13, 0x0

    aget-byte v9, v0, v13

    and-int/lit16 v9, v9, 0xff

    const/16 v14, 0x8c

    if-le v9, v14, :cond_d

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-byte v9, v0, v13

    and-int/lit16 v9, v9, 0xff

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v9, " bytes)"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1

    :cond_d
    const/16 v1, 0x8

    invoke-virtual {v12, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :goto_9
    const/4 v1, 0x7

    new-array v1, v1, [B

    invoke-static/range {p3 .. p4}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v9

    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/time/Instant;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v9

    invoke-virtual {v9}, Ljava/time/ZonedDateTime;->toLocalDateTime()Ljava/time/LocalDateTime;

    move-result-object v13

    invoke-virtual {v9}, Ljava/time/ZonedDateTime;->getOffset()Ljava/time/ZoneOffset;

    move-result-object v14

    invoke-virtual {v14}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v14

    div-int/lit8 v14, v14, 0x3c

    div-int/lit8 v14, v14, 0xf

    if-gez v14, :cond_e

    const/4 v15, 0x1

    goto :goto_a

    :cond_e
    const/4 v15, 0x0

    :goto_a
    if-eqz v15, :cond_f

    neg-int v14, v14

    :cond_f
    invoke-virtual {v13}, Ljava/time/LocalDateTime;->getYear()I

    move-result v2

    invoke-virtual {v13}, Ljava/time/LocalDateTime;->getMonthValue()I

    move-result v17

    invoke-virtual {v13}, Ljava/time/LocalDateTime;->getDayOfMonth()I

    move-result v20

    invoke-virtual {v13}, Ljava/time/LocalDateTime;->getHour()I

    move-result v21

    invoke-virtual {v13}, Ljava/time/LocalDateTime;->getMinute()I

    move-result v22

    invoke-virtual {v13}, Ljava/time/LocalDateTime;->getSecond()I

    move-result v23

    move-object/from16 v24, v3

    const/16 v3, 0x7d0

    if-le v2, v3, :cond_10

    add-int/lit16 v3, v2, -0x7d0

    goto :goto_b

    :cond_10
    add-int/lit16 v3, v2, -0x76c

    :goto_b
    move v2, v3

    rem-int/lit8 v3, v2, 0xa

    and-int/lit8 v3, v3, 0xf

    const/16 v25, 0x4

    shl-int/lit8 v3, v3, 0x4

    div-int/lit8 v26, v2, 0xa

    and-int/lit8 v26, v26, 0xf

    or-int v3, v3, v26

    int-to-byte v3, v3

    const/16 v16, 0x0

    aput-byte v3, v1, v16

    rem-int/lit8 v3, v17, 0xa

    and-int/lit8 v3, v3, 0xf

    shl-int/lit8 v3, v3, 0x4

    div-int/lit8 v26, v17, 0xa

    and-int/lit8 v26, v26, 0xf

    or-int v3, v3, v26

    int-to-byte v3, v3

    const/16 v19, 0x1

    aput-byte v3, v1, v19

    rem-int/lit8 v3, v20, 0xa

    and-int/lit8 v3, v3, 0xf

    shl-int/lit8 v3, v3, 0x4

    div-int/lit8 v19, v20, 0xa

    and-int/lit8 v19, v19, 0xf

    or-int v3, v3, v19

    int-to-byte v3, v3

    const/16 v18, 0x2

    aput-byte v3, v1, v18

    rem-int/lit8 v3, v21, 0xa

    and-int/lit8 v3, v3, 0xf

    shl-int/lit8 v3, v3, 0x4

    div-int/lit8 v18, v21, 0xa

    and-int/lit8 v18, v18, 0xf

    or-int v3, v3, v18

    int-to-byte v3, v3

    const/16 v18, 0x3

    aput-byte v3, v1, v18

    rem-int/lit8 v3, v22, 0xa

    and-int/lit8 v3, v3, 0xf

    shl-int/lit8 v3, v3, 0x4

    div-int/lit8 v18, v22, 0xa

    and-int/lit8 v18, v18, 0xf

    or-int v3, v3, v18

    int-to-byte v3, v3

    aput-byte v3, v1, v25

    rem-int/lit8 v3, v23, 0xa

    and-int/lit8 v3, v3, 0xf

    shl-int/lit8 v3, v3, 0x4

    div-int/lit8 v18, v23, 0xa

    and-int/lit8 v18, v18, 0xf

    or-int v3, v3, v18

    int-to-byte v3, v3

    const/16 v18, 0x5

    aput-byte v3, v1, v18

    rem-int/lit8 v3, v14, 0xa

    and-int/lit8 v3, v3, 0xf

    shl-int/lit8 v3, v3, 0x4

    div-int/lit8 v18, v14, 0xa

    and-int/lit8 v18, v18, 0xf

    or-int v3, v3, v18

    int-to-byte v3, v3

    const/16 v18, 0x6

    aput-byte v3, v1, v18

    if-eqz v15, :cond_11

    aget-byte v3, v1, v18

    const/16 v19, 0x8

    or-int/lit8 v3, v3, 0x8

    int-to-byte v3, v3

    aput-byte v3, v1, v18

    :cond_11
    array-length v3, v1

    move/from16 v18, v2

    const/4 v2, 0x0

    invoke-virtual {v12, v1, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    array-length v3, v0

    invoke-virtual {v12, v0, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    iput-object v2, v11, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedMessage:[B

    return-object v11

    :catch_2
    move-exception v0

    move-object/from16 v24, v3

    move-object v1, v0

    move-object v0, v1

    invoke-static {v15, v13, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return-object v1

    :catch_3
    move-exception v0

    move-object/from16 v24, v3

    const/4 v1, 0x0

    move-object v2, v0

    move-object v0, v2

    invoke-static {v15, v14, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1

    :catch_4
    move-exception v0

    const/4 v1, 0x0

    move-object v2, v0

    move-object v0, v2

    invoke-static {v15, v13, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1

    :cond_12
    move-object v1, v3

    :goto_c
    return-object v1
.end method

.method public static blacklist getRelativeValidityPeriod(I)I
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x5

    if-lt p0, v1, :cond_3

    const/16 v1, 0x2d0

    if-gt p0, v1, :cond_0

    div-int/lit8 v1, p0, 0x5

    add-int/lit8 v0, v1, -0x1

    goto :goto_0

    :cond_0
    const/16 v1, 0x5a0

    if-gt p0, v1, :cond_1

    add-int/lit16 v1, p0, -0x2d0

    div-int/lit8 v1, v1, 0x1e

    add-int/lit16 v0, v1, 0x8f

    goto :goto_0

    :cond_1
    const v1, 0xa8c0

    if-gt p0, v1, :cond_2

    div-int/lit16 v1, p0, 0x5a0

    add-int/lit16 v0, v1, 0xa6

    goto :goto_0

    :cond_2
    const v1, 0x9b0a0

    if-gt p0, v1, :cond_3

    div-int/lit16 v1, p0, 0x2760

    add-int/lit16 v0, v1, 0xc0

    :cond_3
    :goto_0
    return v0
.end method

.method public static blacklist getSubmitPdu(ILjava/lang/String;Ljava/lang/String;II[BZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 8

    new-instance v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    invoke-direct {v0}, Lcom/android/internal/telephony/SmsHeader$PortAddrs;-><init>()V

    iput p3, v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    iput p4, v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->origPort:I

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->areEightBits:Z

    new-instance v2, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v2}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    iput-object v0, v2, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    invoke-static {v2}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v3

    array-length v4, p5

    array-length v5, v3

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x1

    const/16 v5, 0x8c

    if-le v4, v5, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SMS data message may only contain "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v4, v3

    sub-int/2addr v5, v4

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " bytes"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "SmsMessage"

    invoke-static {v4, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1

    :cond_0
    new-instance v4, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    invoke-direct {v4}, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;-><init>()V

    const/16 v5, 0x41

    invoke-static {p1, p2, v5, p6, v4}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BZLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;)Ljava/io/ByteArrayOutputStream;

    move-result-object v5

    if-nez v5, :cond_1

    return-object v4

    :cond_1
    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    array-length v6, p5

    array-length v7, v3

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    array-length v6, v3

    invoke-virtual {v5, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    array-length v6, v3

    invoke-virtual {v5, v3, v1, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    array-length v6, p5

    invoke-virtual {v5, p5, v1, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    iput-object v1, v4, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedMessage:[B

    return-object v4
.end method

.method public static blacklist getSubmitPdu(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZIIIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 15

    move/from16 v12, p9

    move/from16 v13, p10

    if-gtz v12, :cond_1

    if-lez v13, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    move v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    invoke-static/range {v0 .. v11}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BZIIIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    new-instance v0, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v0}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    move-object v14, v0

    iput v12, v14, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    iput v13, v14, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    invoke-static {v14}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v5

    move v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    invoke-static/range {v0 .. v11}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BZIIIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getSubmitPdu(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BZIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 12

    const/4 v10, 0x0

    const/4 v11, 0x0

    move v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-static/range {v0 .. v11}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BZIIIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getSubmitPdu(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BZIIIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 17

    move/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p9

    const-string/jumbo v0, "getSubmitPdu with Options"

    const-string v7, "SmsMessage"

    invoke-static {v7, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x0

    if-eqz v3, :cond_e

    if-nez v2, :cond_0

    move-object/from16 v14, p1

    move/from16 v15, p4

    move/from16 v11, p10

    move-object v1, v8

    goto/16 :goto_b

    :cond_0
    const-string v0, "** getSubmitPdu_Options **"

    invoke-static {v7, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "mno = "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v8, v1}, Landroid/telephony/SmsManager;->getSmsManagerForContextAndSubscriptionId(Landroid/content/Context;I)Landroid/telephony/SmsManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/SmsManager;->getMnoName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "subId = "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "replyPath = "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "encodingType = "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "**********************"

    invoke-static {v7, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;-><init>()V

    move-object v9, v0

    if-eqz v4, :cond_1

    const/16 v0, 0x40

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v11, 0x1

    or-int/2addr v0, v11

    int-to-byte v0, v0

    const-string/jumbo v12, "mtiByte = "

    if-eqz v5, :cond_2

    or-int/lit16 v13, v0, 0x80

    int-to-byte v0, v13

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v7, v13}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->useValidityPeriod(I)Z

    move-result v13

    if-nez v13, :cond_3

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "SMS not used TP-VPF  mtiByte = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v7, v12}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v12, v0

    goto :goto_1

    :cond_3
    or-int/lit8 v13, v0, 0x10

    int-to-byte v0, v13

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v7, v12}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v12, v0

    :goto_1
    const/4 v13, 0x0

    const/4 v0, 0x0

    move-object/from16 v14, p1

    move/from16 v15, p4

    invoke-static {v14, v2, v12, v15, v9}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BZLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;)Ljava/io/ByteArrayOutputStream;

    move-result-object v8

    if-nez v8, :cond_4

    return-object v9

    :cond_4
    const-string v10, "expirty = "

    const-string v2, "CPW"

    if-eq v6, v11, :cond_8

    move/from16 v11, p10

    move/from16 v5, p11

    :try_start_0
    invoke-static {v3, v4, v11, v5}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[BII)[B

    move-result-object v0

    const/4 v5, 0x0

    aget-byte v6, v0, v5

    and-int/lit16 v6, v6, 0xff

    const/16 v5, 0xa0

    if-le v6, v5, :cond_5

    const/4 v2, 0x0

    return-object v2

    :cond_5
    const/4 v5, 0x0

    invoke-virtual {v8, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->useValidityPeriod(I)Z

    move-result v5

    if-eqz v5, :cond_7

    sget-object v5, Lcom/android/internal/telephony/gsm/SmsMessage;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v5, :cond_6

    const/16 v5, 0xa7

    goto :goto_2

    :cond_6
    move/from16 v5, p7

    :goto_2
    :try_start_1
    invoke-virtual {v8, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_4

    :cond_7
    move/from16 v5, p7

    :goto_3
    :try_start_2
    array-length v6, v0
    :try_end_2
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_2 .. :try_end_2} :catch_1

    move/from16 p7, v5

    const/4 v5, 0x0

    :try_start_3
    invoke-virtual {v8, v0, v5, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    move/from16 v5, p7

    goto/16 :goto_9

    :catch_1
    move-exception v0

    move/from16 p7, v5

    goto :goto_4

    :catch_2
    move-exception v0

    move/from16 v5, p7

    goto :goto_4

    :cond_8
    move/from16 v11, p10

    new-instance v0, Lcom/android/internal/telephony/EncodeException;

    const-string v5, "Input Method is Unicode"

    invoke-direct {v0, v5}, Lcom/android/internal/telephony/EncodeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_3 .. :try_end_3} :catch_2

    :goto_4
    move-object v6, v0

    move/from16 p7, v5

    const/4 v5, 0x0

    :try_start_4
    invoke-static {v5, v1}, Landroid/telephony/SmsManager;->getSmsManagerForContextAndSubscriptionId(Landroid/content/Context;I)Landroid/telephony/SmsManager;

    move-result-object v0

    const-string/jumbo v5, "sms_nsri_security_solution"

    invoke-virtual {v0, v5}, Landroid/telephony/SmsManager;->getSmsSetting(Ljava/lang/String;)Z

    move-result v0
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_4

    const-string/jumbo v5, "utf-16be"

    if-eqz v0, :cond_9

    const/4 v1, 0x0

    :try_start_5
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0xf1

    if-ne v0, v1, :cond_9

    const/4 v1, 0x1

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0xa0

    if-ne v0, v1, :cond_9

    const-string v0, "[NSRI_SMS_SEND] encoding 8859_1"

    invoke-static {v7, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "8859_1"

    invoke-virtual {v3, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_5

    :catch_3
    move-exception v0

    move-object/from16 v16, v6

    goto/16 :goto_a

    :cond_9
    :try_start_6
    invoke-virtual {v3, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    :goto_5
    invoke-virtual {v3, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1
    :try_end_6
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_6 .. :try_end_6} :catch_4

    move-object v0, v1

    nop

    if-eqz v4, :cond_a

    array-length v1, v4

    array-length v5, v0

    add-int/2addr v1, v5

    const/4 v5, 0x1

    add-int/2addr v1, v5

    new-array v1, v1, [B

    array-length v5, v4

    int-to-byte v5, v5

    const/4 v3, 0x0

    aput-byte v5, v1, v3

    array-length v5, v4

    move-object/from16 v16, v6

    const/4 v6, 0x1

    invoke-static {v4, v3, v1, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v5, v4

    add-int/2addr v5, v6

    array-length v6, v0

    invoke-static {v0, v3, v1, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_6

    :cond_a
    move-object/from16 v16, v6

    move-object v1, v0

    :goto_6
    array-length v3, v1

    const/16 v5, 0x8c

    if-le v3, v5, :cond_b

    const/4 v2, 0x0

    return-object v2

    :cond_b
    const/16 v3, 0x8

    invoke-virtual {v8, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->useValidityPeriod(I)Z

    move-result v3

    if-eqz v3, :cond_d

    sget-object v3, Lcom/android/internal/telephony/gsm/SmsMessage;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    const/16 v5, 0xa7

    goto :goto_7

    :cond_c
    move/from16 v5, p7

    :goto_7
    invoke-virtual {v8, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_d
    move/from16 v5, p7

    :goto_8
    array-length v2, v1

    invoke-virtual {v8, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    array-length v2, v1

    const/4 v3, 0x0

    invoke-virtual {v8, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :goto_9
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, v9, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedMessage:[B

    return-object v9

    :catch_4
    move-exception v0

    move-object/from16 v16, v6

    :goto_a
    const-string v1, "Implausible UnsupportedEncodingException "

    invoke-static {v7, v1, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return-object v1

    :cond_e
    move-object/from16 v14, p1

    move/from16 v15, p4

    move/from16 v11, p10

    move-object v1, v8

    :goto_b
    return-object v1
.end method

.method public static blacklist getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZI)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZI)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 13

    move-object/from16 v0, p3

    new-instance v1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    invoke-direct {v1}, Lcom/android/internal/telephony/SmsHeader$PortAddrs;-><init>()V

    move v2, p2

    iput v2, v1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    const/4 v3, 0x0

    iput v3, v1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->origPort:I

    iput-boolean v3, v1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->areEightBits:Z

    new-instance v4, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v4}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    iput-object v1, v4, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    invoke-static {v4}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v5

    array-length v6, v0

    array-length v7, v5

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x1

    const/16 v7, 0x8c

    if-le v6, v7, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SMS data message may only contain "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v6, v5

    sub-int/2addr v7, v6

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " bytes"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, "SmsMessage"

    invoke-static {v6, v3}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    return-object v3

    :cond_0
    new-instance v6, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    invoke-direct {v6}, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;-><init>()V

    const/16 v9, 0x41

    move-object v7, p0

    move-object v8, p1

    move/from16 v10, p4

    move-object v11, v6

    move/from16 v12, p5

    invoke-static/range {v7 .. v12}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BZLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;I)Ljava/io/ByteArrayOutputStream;

    move-result-object v7

    if-nez v7, :cond_1

    return-object v6

    :cond_1
    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    array-length v8, v0

    array-length v9, v5

    add-int/2addr v8, v9

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v7, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    array-length v8, v5

    invoke-virtual {v7, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    array-length v8, v5

    invoke-virtual {v7, v5, v3, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    array-length v8, v0

    invoke-virtual {v7, v0, v3, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    iput-object v3, v6, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedMessage:[B

    return-object v6
.end method

.method public static greylist getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[B)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-r getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 10

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v8, p4

    invoke-static/range {v0 .. v9}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIIIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method public static greylist getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[B)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 8

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v7}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-r getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 10

    const/4 v8, -0x1

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-static/range {v0 .. v9}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIIIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-r getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 10

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-static/range {v0 .. v9}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIIIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIIIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 18

    move-object/from16 v1, p2

    const/4 v2, 0x0

    if-eqz v1, :cond_11

    if-nez p1, :cond_0

    goto/16 :goto_7

    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubId()I

    move-result v0

    invoke-static {v2, v0}, Landroid/telephony/SmsManager;->getSmsManagerForContextAndSubscriptionId(Landroid/content/Context;I)Landroid/telephony/SmsManager;

    move-result-object v0

    const-string/jumbo v3, "sms_segmented_sms"

    invoke-virtual {v0, v3}, Landroid/telephony/SmsManager;->getSmsSetting(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    move-object/from16 v0, p4

    :goto_0
    const/4 v9, 0x1

    const-string v10, "SmsMessage"

    const/4 v11, 0x0

    if-nez p5, :cond_7

    invoke-static {v1, v11}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v3

    iget v4, v3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    iget v5, v3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageTable:I

    iget v6, v3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageShiftTable:I

    if-ne v4, v9, :cond_6

    if-nez v5, :cond_2

    if-eqz v6, :cond_6

    :cond_2
    if-eqz v0, :cond_5

    invoke-static {v0}, Lcom/android/internal/telephony/SmsHeader;->fromByteArray([B)Lcom/android/internal/telephony/SmsHeader;

    move-result-object v7

    iget v8, v7, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    if-ne v8, v5, :cond_3

    iget v8, v7, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    if-eq v8, v6, :cond_4

    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Updating language table in SMS header: "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v12, v7, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v12, " -> "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v13, ", "

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v13, v7, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput v5, v7, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    iput v6, v7, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    invoke-static {v7}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v0

    :cond_4
    move-object v15, v0

    move v12, v4

    move v13, v5

    move v14, v6

    goto :goto_1

    :cond_5
    new-instance v7, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v7}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    iput v5, v7, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    iput v6, v7, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    invoke-static {v7}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v0

    move-object v15, v0

    move v12, v4

    move v13, v5

    move v14, v6

    goto :goto_1

    :cond_6
    move-object v15, v0

    move v12, v4

    move v13, v5

    move v14, v6

    goto :goto_1

    :cond_7
    move/from16 v12, p5

    move/from16 v13, p6

    move/from16 v14, p7

    move-object v15, v0

    :goto_1
    new-instance v0, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;-><init>()V

    move-object v8, v0

    invoke-static/range {p8 .. p8}, Lcom/android/internal/telephony/gsm/SmsMessage;->getRelativeValidityPeriod(I)I

    move-result v7

    const/4 v0, 0x1

    if-eqz v15, :cond_8

    or-int/lit8 v3, v0, 0x40

    int-to-byte v0, v3

    :cond_8
    const/4 v6, -0x1

    if-eq v7, v6, :cond_9

    or-int/lit8 v3, v0, 0x10

    int-to-byte v0, v3

    move/from16 v16, v0

    goto :goto_2

    :cond_9
    move/from16 v16, v0

    :goto_2
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v5, v16

    move/from16 v6, p3

    move/from16 v17, v7

    move-object v7, v8

    move-object v11, v8

    move/from16 v8, p9

    invoke-static/range {v3 .. v8}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BZLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;I)Ljava/io/ByteArrayOutputStream;

    move-result-object v3

    if-nez v3, :cond_a

    return-object v11

    :cond_a
    const-string v4, "Implausible UnsupportedEncodingException "

    if-ne v12, v9, :cond_b

    :try_start_0
    invoke-static {v1, v15, v13, v14}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[BII)[B

    move-result-object v0
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :cond_b
    :try_start_1
    invoke-static {v1, v15}, Lcom/android/internal/telephony/gsm/SmsMessage;->encodeUCS2(Ljava/lang/String;[B)[B

    move-result-object v0
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_1 .. :try_end_1} :catch_0

    nop

    :goto_3
    goto :goto_5

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v5, v0

    move-object v0, v5

    :try_start_2
    invoke-static {v10, v4, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v2

    :goto_4
    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/internal/telephony/EncodeException;->getError()I

    move-result v0

    const-string v6, "Exceed size limitation EncodeException"

    if-ne v0, v9, :cond_c

    invoke-static {v10, v6, v5}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v2

    :cond_c
    :try_start_3
    invoke-static {v1, v15}, Lcom/android/internal/telephony/gsm/SmsMessage;->encodeUCS2(Ljava/lang/String;[B)[B

    move-result-object v0
    :try_end_3
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_2

    const/4 v12, 0x3

    nop

    :goto_5
    const-string v4, "Message too long ("

    if-ne v12, v9, :cond_e

    const/4 v5, 0x0

    aget-byte v6, v0, v5

    and-int/lit16 v6, v6, 0xff

    const/16 v7, 0xa0

    if-le v6, v7, :cond_d

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-byte v5, v0, v5

    and-int/lit16 v5, v5, 0xff

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " septets)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v4}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_d
    invoke-virtual {v3, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_6

    :cond_e
    const/4 v5, 0x0

    aget-byte v6, v0, v5

    and-int/lit16 v6, v6, 0xff

    const/16 v7, 0x8c

    if-le v6, v7, :cond_f

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-byte v5, v0, v5

    and-int/lit16 v5, v5, 0xff

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bytes)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v4}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_f
    const/16 v2, 0x8

    invoke-virtual {v3, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :goto_6
    move/from16 v7, v17

    const/4 v2, -0x1

    if-eq v7, v2, :cond_10

    invoke-virtual {v3, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :cond_10
    array-length v2, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    iput-object v2, v11, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedMessage:[B

    return-object v11

    :catch_2
    move-exception v0

    move/from16 v7, v17

    move-object v6, v0

    move-object v0, v6

    invoke-static {v10, v4, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v2

    :catch_3
    move-exception v0

    move/from16 v7, v17

    move-object v4, v0

    move-object v0, v4

    invoke-static {v10, v6, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v2

    :cond_11
    :goto_7
    return-object v2
.end method

.method public static blacklist getSubmitPduForAutoLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPduForAutoLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BI)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getSubmitPduForAutoLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BI)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 10

    const/4 v0, 0x0

    if-eqz p2, :cond_7

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    new-instance v1, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    invoke-direct {v1}, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;-><init>()V

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-static {p5}, Lcom/android/internal/telephony/gsm/SmsMessage;->getRelativeValidityPeriod(I)I

    move-result v4

    move v3, v4

    if-ltz v4, :cond_1

    const/4 v2, 0x2

    :cond_1
    shl-int/lit8 v4, v2, 0x3

    or-int/lit8 v4, v4, 0x1

    const/4 v5, 0x0

    if-eqz p4, :cond_2

    const/16 v6, 0x40

    goto :goto_0

    :cond_2
    move v6, v5

    :goto_0
    or-int/2addr v4, v6

    int-to-byte v4, v4

    invoke-static {p0, p1, v4, p3, v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BZLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;)Ljava/io/ByteArrayOutputStream;

    move-result-object v6

    if-nez v6, :cond_3

    return-object v1

    :cond_3
    invoke-static {p2}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitPackedForAutoLogin(Ljava/lang/String;)[B

    move-result-object v7

    if-nez v7, :cond_4

    return-object v0

    :cond_4
    aget-byte v8, v7, v5

    and-int/lit16 v8, v8, 0xff

    const/16 v9, 0x8c

    if-le v8, v9, :cond_5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Message too long ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-byte v5, v7, v5

    and-int/lit16 v5, v5, 0xff

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " bytes)"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v8, "SmsMessage"

    invoke-static {v8, v5}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_5
    const/4 v0, 0x4

    invoke-virtual {v6, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v0, 0x2

    if-ne v2, v0, :cond_6

    invoke-virtual {v6, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :cond_6
    array-length v0, v7

    invoke-virtual {v6, v7, v5, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedMessage:[B

    return-object v1

    :cond_7
    :goto_1
    return-object v0
.end method

.method public static blacklist getSubmitPduForKTOTA(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 10

    new-instance v0, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;-><init>()V

    const/4 v1, 0x1

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    const/16 v3, 0xb4

    invoke-direct {v2, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    const/4 v3, 0x0

    if-nez p0, :cond_0

    iput-object v3, v0, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedScAddress:[B

    goto :goto_0

    :cond_0
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCDWithLength(Ljava/lang/String;)[B

    move-result-object v4

    iput-object v4, v0, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedScAddress:[B

    :goto_0
    invoke-virtual {v2, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v5

    if-nez v5, :cond_1

    invoke-virtual {v2, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_2

    :cond_1
    array-length v6, v5

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    mul-int/lit8 v6, v6, 0x2

    array-length v8, v5

    sub-int/2addr v8, v7

    aget-byte v8, v5, v8

    const/16 v9, 0xf0

    and-int/2addr v8, v9

    if-ne v8, v9, :cond_2

    goto :goto_1

    :cond_2
    move v7, v4

    :goto_1
    sub-int/2addr v6, v7

    invoke-virtual {v2, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    array-length v6, v5

    invoke-virtual {v2, v5, v4, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    const/16 v6, 0x7f

    invoke-virtual {v2, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :goto_2
    :try_start_0
    invoke-static {p2}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPacked(Ljava/lang/String;)[B

    move-result-object v6
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    aget-byte v7, v6, v4

    and-int/lit16 v7, v7, 0xff

    const/16 v8, 0xa0

    if-le v7, v8, :cond_3

    return-object v3

    :cond_3
    invoke-virtual {v2, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    array-length v3, v6

    invoke-virtual {v2, v6, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedMessage:[B

    return-object v0

    :catch_0
    move-exception v4

    const-string v6, "SmsMessage"

    const-string v7, "Implausible UnsupportedEncodingException "

    invoke-static {v6, v7, v4}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v3
.end method

.method private static greylist getSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BZLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;)Ljava/io/ByteArrayOutputStream;
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BZLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;I)Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist getSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BZLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;I)Ljava/io/ByteArrayOutputStream;
    .locals 7

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0xb4

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    const/4 v1, 0x0

    if-nez p0, :cond_0

    iput-object v1, p4, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedScAddress:[B

    goto :goto_0

    :cond_0
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCDWithLength(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p4, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedScAddress:[B

    :goto_0
    if-eqz p3, :cond_1

    or-int/lit8 v2, p2, 0x20

    int-to-byte p2, v2

    :cond_1
    invoke-virtual {v0, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {v0, p5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-static {}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubId()I

    move-result v2

    invoke-static {v1, v2}, Landroid/telephony/SmsManager;->getSmsManagerForContextAndSubscriptionId(Landroid/content/Context;I)Landroid/telephony/SmsManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/SmsManager;->getMnoName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DOCOMO"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->docomoNetworkPortionToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v2

    goto :goto_1

    :cond_2
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v2

    :goto_1
    if-nez v2, :cond_3

    const-string v3, "SmsMessage"

    const-string v4, "daBytes is null"

    invoke-static {v3, v4}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_3
    array-length v1, v2

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    mul-int/lit8 v1, v1, 0x2

    array-length v4, v2

    sub-int/2addr v4, v3

    aget-byte v4, v2, v4

    const/16 v5, 0xf0

    and-int/2addr v4, v5

    const/4 v6, 0x0

    if-ne v4, v5, :cond_4

    goto :goto_2

    :cond_4
    move v3, v6

    :goto_2
    sub-int/2addr v1, v3

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    array-length v1, v2

    invoke-virtual {v0, v2, v6, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    return-object v0
.end method

.method public static blacklist getTPLayerLengthForPDU(Ljava/lang/String;)I
    .locals 3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    div-int/2addr v0, v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    sub-int v2, v0, v1

    add-int/lit8 v2, v2, -0x1

    return v2
.end method

.method private blacklist parsePdu([B)V
    .locals 4

    iput-object p1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mPdu:[B

    new-instance v0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;-><init>([B)V

    invoke-static {}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->setSubIdforParser(I)V

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getSCAddress()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mScAddress:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mScAddress:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v1

    and-int/lit8 v2, v1, 0x3

    iput v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMti:I

    iget v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMti:I

    packed-switch v2, :pswitch_data_0

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Unsupported message type"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_0
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseSmsStatusReport(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseSmsSubmit(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseSmsDeliver(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V

    nop

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private blacklist parseSmsDeliver(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V
    .locals 6

    and-int/lit16 v0, p2, 0x80

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x80

    if-ne v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mReplyPathPresent:Z

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getAddress()Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubId()I

    move-result v3

    invoke-static {v0, v3}, Landroid/telephony/SmsManager;->getSmsManagerForContextAndSubscriptionId(Landroid/content/Context;I)Landroid/telephony/SmsManager;

    move-result-object v0

    const-string/jumbo v3, "sms_special_address_handling_for"

    invoke-virtual {v0, v3}, Landroid/telephony/SmsManager;->getSmsSetting(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    iget-object v0, v0, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    const-string v3, "+00852"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    iget-object v0, v0, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    const-string v4, "+"

    iput-object v4, v3, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    iget-object v5, v4, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mProtocolIdentifier:I

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getSCTimestampMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mScTimeMillis:J

    and-int/lit8 v0, p2, 0x40

    const/16 v3, 0x40

    if-ne v0, v3, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    move v0, v1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseUserData(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;Z)V

    return-void
.end method

.method private blacklist parseSmsStatusReport(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V
    .locals 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mIsStatusReportMessage:Z

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMessageRef:I

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getAddress()Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mRecipientAddress:Lcom/android/internal/telephony/SmsAddress;

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getSCTimestampMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mScTimeMillis:J

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getSCTimestampMillis()J

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mStatus:I

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->moreDataPresent()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v1

    move v2, v1

    :goto_0
    and-int/lit16 v3, v2, 0x80

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v2

    goto :goto_0

    :cond_0
    and-int/lit8 v3, v1, 0x78

    if-nez v3, :cond_4

    and-int/lit8 v3, v1, 0x1

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mProtocolIdentifier:I

    :cond_1
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    :cond_2
    and-int/lit8 v3, v1, 0x4

    if-eqz v3, :cond_4

    and-int/lit8 v3, p2, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseUserData(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;Z)V

    :cond_4
    return-void
.end method

.method private blacklist parseSmsSubmit(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V
    .locals 6

    and-int/lit16 v0, p2, 0x80

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x80

    if-ne v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mReplyPathPresent:Z

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMessageRef:I

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getAddress()Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mRecipientAddress:Lcom/android/internal/telephony/SmsAddress;

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mRecipientAddress:Lcom/android/internal/telephony/SmsAddress;

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mProtocolIdentifier:I

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    const/4 v0, 0x0

    shr-int/lit8 v3, p2, 0x3

    and-int/lit8 v3, v3, 0x3

    if-nez v3, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x7

    :goto_1
    add-int/lit8 v4, v0, -0x1

    if-lez v0, :cond_3

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move v0, v4

    goto :goto_1

    :cond_3
    and-int/lit8 v0, p2, 0x40

    const/16 v5, 0x40

    if-ne v0, v5, :cond_4

    goto :goto_2

    :cond_4
    move v1, v2

    :goto_2
    move v0, v1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseUserData(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;Z)V

    return-void
.end method

.method private blacklist parseUserData(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;Z)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    iget v7, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/lit16 v7, v7, 0xff

    const/16 v8, 0x84

    const-string v9, " Dont store = "

    const-string/jumbo v10, "sms_support_gsm_8bit_sms"

    const/16 v15, 0x80

    const/4 v14, 0x2

    const-string v12, "SmsMessage"

    const/4 v11, 0x1

    const/4 v13, 0x0

    if-ne v7, v8, :cond_0

    const/4 v5, 0x4

    move v7, v5

    move v5, v4

    move v4, v0

    goto/16 :goto_b

    :cond_0
    iget v7, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/2addr v7, v15

    if-nez v7, :cond_7

    iget v7, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/lit8 v7, v7, 0x20

    if-eqz v7, :cond_1

    move v7, v11

    goto :goto_0

    :cond_1
    move v7, v13

    :goto_0
    move v4, v7

    iget v7, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/lit8 v7, v7, 0x10

    if-eqz v7, :cond_2

    move v7, v11

    goto :goto_1

    :cond_2
    move v7, v13

    :goto_1
    move v0, v7

    if-eqz v4, :cond_3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "4 - Unsupported SMS data coding scheme (compression) "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/lit16 v8, v8, 0xff

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v12, v7}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v11, Lcom/android/internal/telephony/gsm/SmsMessage;->mUnsupportedDatacodingScheme:Z

    move v7, v5

    move v5, v4

    move v4, v0

    goto/16 :goto_b

    :cond_3
    iget v7, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    shr-int/2addr v7, v14

    const/4 v8, 0x3

    and-int/2addr v7, v8

    const-string/jumbo v8, "sms_support_ksc5601"

    packed-switch v7, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    const/4 v5, 0x3

    sput-boolean v13, Lcom/android/internal/telephony/gsm/SmsMessage;->mUnsupportedDatacodingScheme:Z

    goto :goto_3

    :pswitch_1
    invoke-static {}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubId()I

    move-result v7

    const/4 v11, 0x0

    invoke-static {v11, v7}, Landroid/telephony/SmsManager;->getSmsManagerForContextAndSubscriptionId(Landroid/content/Context;I)Landroid/telephony/SmsManager;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/telephony/SmsManager;->getSmsSetting(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    invoke-static {}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubId()I

    move-result v7

    invoke-static {v11, v7}, Landroid/telephony/SmsManager;->getSmsManagerForContextAndSubscriptionId(Landroid/content/Context;I)Landroid/telephony/SmsManager;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/telephony/SmsManager;->getSmsSetting(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    const v7, 0x1110237

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v11

    if-eqz v11, :cond_5

    :cond_4
    const/4 v5, 0x2

    goto :goto_3

    :cond_5
    :pswitch_2
    invoke-static {}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubId()I

    move-result v7

    const/4 v11, 0x0

    invoke-static {v11, v7}, Landroid/telephony/SmsManager;->getSmsManagerForContextAndSubscriptionId(Landroid/content/Context;I)Landroid/telephony/SmsManager;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/telephony/SmsManager;->getSmsSetting(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    const/4 v5, 0x4

    goto :goto_2

    :cond_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "1 - Unsupported SMS data coding scheme "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/lit16 v8, v8, 0xff

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v12, v7}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const v7, 0x10e0187

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    :goto_2
    sput-boolean v13, Lcom/android/internal/telephony/gsm/SmsMessage;->mUnsupportedDatacodingScheme:Z

    goto :goto_3

    :pswitch_3
    const/4 v5, 0x1

    sput-boolean v13, Lcom/android/internal/telephony/gsm/SmsMessage;->mUnsupportedDatacodingScheme:Z

    nop

    :goto_3
    move v7, v5

    move v5, v4

    move v4, v0

    goto/16 :goto_b

    :cond_7
    iget v7, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    const/16 v8, 0xf0

    and-int/2addr v7, v8

    if-ne v7, v8, :cond_9

    const/4 v0, 0x1

    const/4 v4, 0x0

    sput-boolean v13, Lcom/android/internal/telephony/gsm/SmsMessage;->mUnsupportedDatacodingScheme:Z

    iget v7, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/lit8 v7, v7, 0x4

    if-nez v7, :cond_8

    const/4 v5, 0x1

    move v7, v5

    move v5, v4

    move v4, v0

    goto/16 :goto_b

    :cond_8
    const/4 v5, 0x2

    move v7, v5

    move v5, v4

    move v4, v0

    goto/16 :goto_b

    :cond_9
    iget v7, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    const/16 v8, 0xf0

    and-int/2addr v7, v8

    const/16 v11, 0xc0

    if-eq v7, v11, :cond_d

    iget v7, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/2addr v7, v8

    const/16 v13, 0xd0

    if-eq v7, v13, :cond_d

    iget v7, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/2addr v7, v8

    const/16 v8, 0xe0

    if-ne v7, v8, :cond_a

    goto :goto_5

    :cond_a
    iget v7, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/2addr v7, v11

    if-ne v7, v15, :cond_c

    iget v7, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    shr-int/2addr v7, v14

    const/4 v8, 0x3

    and-int/2addr v7, v8

    const/4 v8, 0x1

    if-ne v7, v8, :cond_b

    const/4 v5, 0x4

    const/4 v7, 0x0

    sput-boolean v7, Lcom/android/internal/telephony/gsm/SmsMessage;->mUnsupportedDatacodingScheme:Z

    move v7, v5

    move v5, v4

    move v4, v0

    goto/16 :goto_b

    :cond_b
    sput-boolean v8, Lcom/android/internal/telephony/gsm/SmsMessage;->mUnsupportedDatacodingScheme:Z

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "5 - Unsupported SMS data coding scheme "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/lit16 v8, v8, 0xff

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v12, v7}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_c
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "3 - Unsupported SMS data coding scheme "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/lit16 v8, v8, 0xff

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v12, v7}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x1

    sput-boolean v7, Lcom/android/internal/telephony/gsm/SmsMessage;->mUnsupportedDatacodingScheme:Z

    :goto_4
    move v7, v5

    move v5, v4

    move v4, v0

    goto/16 :goto_b

    :cond_d
    :goto_5
    const/4 v7, 0x0

    sput-boolean v7, Lcom/android/internal/telephony/gsm/SmsMessage;->mUnsupportedDatacodingScheme:Z

    iget v7, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    const/16 v8, 0xf0

    and-int/2addr v7, v8

    const/16 v8, 0xe0

    if-ne v7, v8, :cond_e

    const/4 v5, 0x3

    goto :goto_6

    :cond_e
    const/4 v5, 0x1

    :goto_6
    const/4 v4, 0x0

    iget v7, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    const/16 v8, 0x8

    and-int/2addr v7, v8

    if-ne v7, v8, :cond_f

    const/4 v7, 0x1

    goto :goto_7

    :cond_f
    const/4 v7, 0x0

    :goto_7
    iget v8, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    const/4 v13, 0x3

    and-int/2addr v8, v13

    if-nez v8, :cond_12

    const/4 v8, 0x1

    iput-boolean v8, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mIsMwi:Z

    iput-boolean v7, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mMwiSense:Z

    iget v8, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    const/16 v13, 0xf0

    and-int/2addr v8, v13

    if-ne v8, v11, :cond_10

    const/4 v8, 0x1

    goto :goto_8

    :cond_10
    const/4 v8, 0x0

    :goto_8
    iput-boolean v8, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mMwiDontStore:Z

    const/4 v8, 0x1

    if-ne v7, v8, :cond_11

    const/4 v8, -0x1

    iput v8, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mVoiceMailCount:I

    goto :goto_9

    :cond_11
    const/4 v8, 0x0

    iput v8, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mVoiceMailCount:I

    :goto_9
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "MWI in DCS for Vmail. DCS = "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v11, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/lit16 v11, v11, 0xff

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v11, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mMwiDontStore:Z

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, " vmail count = "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v11, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mVoiceMailCount:I

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v12, v8}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :cond_12
    const/4 v8, 0x0

    iput-boolean v8, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mIsMwi:Z

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "MWI in DCS for fax/email/other: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v11, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/lit16 v11, v11, 0xff

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v12, v8}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_a
    move v7, v5

    move v5, v4

    move v4, v0

    :goto_b
    const/4 v8, 0x1

    if-ne v7, v8, :cond_13

    const/4 v0, 0x1

    goto :goto_c

    :cond_13
    const/4 v0, 0x0

    :goto_c
    invoke-virtual {v2, v3, v0}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->constructUserData(ZZ)I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserData()[B

    move-result-object v0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mUserData:[B

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

    iput v7, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mReceivedEncodingType:I

    if-eqz v3, :cond_1c

    iget-object v0, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

    iget-object v0, v0, Lcom/android/internal/telephony/SmsHeader;->specialSmsMsgList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

    iget-object v0, v0, Lcom/android/internal/telephony/SmsHeader;->specialSmsMsgList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;

    iget v13, v11, Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;->msgIndType:I

    and-int/lit16 v13, v13, 0xff

    if-eqz v13, :cond_15

    if-ne v13, v15, :cond_14

    goto :goto_e

    :cond_14
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "TP_UDH fax/email/extended msg/multisubscriber profile. Msg Ind = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_12

    :cond_15
    :goto_e
    const/4 v14, 0x1

    iput-boolean v14, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mIsMwi:Z

    const/16 v14, 0x80

    if-ne v13, v14, :cond_16

    const/4 v15, 0x0

    iput-boolean v15, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mMwiDontStore:Z

    const/16 v14, 0xe0

    goto :goto_10

    :cond_16
    iget-boolean v15, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mMwiDontStore:Z

    if-nez v15, :cond_19

    iget v15, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    const/16 v14, 0xf0

    and-int/2addr v15, v14

    const/16 v14, 0xd0

    if-eq v15, v14, :cond_17

    iget v15, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    const/16 v14, 0xf0

    and-int/2addr v15, v14

    const/16 v14, 0xe0

    if-ne v15, v14, :cond_18

    goto :goto_f

    :cond_17
    const/16 v14, 0xe0

    :goto_f
    iget v15, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    const/16 v16, 0x3

    and-int/lit8 v15, v15, 0x3

    if-eqz v15, :cond_1a

    :cond_18
    const/4 v15, 0x1

    iput-boolean v15, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mMwiDontStore:Z

    goto :goto_10

    :cond_19
    const/16 v14, 0xe0

    :cond_1a
    :goto_10
    iget v15, v11, Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;->msgCount:I

    and-int/lit16 v15, v15, 0xff

    iput v15, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mVoiceMailCount:I

    iget v15, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mVoiceMailCount:I

    if-lez v15, :cond_1b

    const/4 v15, 0x1

    iput-boolean v15, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mMwiSense:Z

    goto :goto_11

    :cond_1b
    const/4 v15, 0x0

    iput-boolean v15, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mMwiSense:Z

    :goto_11
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "MWI in TP-UDH for Vmail. Msg Ind = "

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-boolean v15, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mMwiDontStore:Z

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " Vmail count = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mVoiceMailCount:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_12
    const/4 v14, 0x2

    const/16 v15, 0x80

    goto/16 :goto_d

    :cond_1c
    invoke-static {}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubId()I

    move-result v0

    const/4 v9, 0x0

    invoke-static {v9, v0}, Landroid/telephony/SmsManager;->getSmsManagerForContextAndSubscriptionId(Landroid/content/Context;I)Landroid/telephony/SmsManager;

    move-result-object v0

    const-string/jumbo v9, "sms_support_reply_address"

    invoke-virtual {v0, v9}, Landroid/telephony/SmsManager;->getSmsSetting(Ljava/lang/String;)Z

    move-result v0

    const-string v9, "LGU"

    if-eqz v0, :cond_24

    const/4 v0, 0x0

    iget-object v11, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

    if-eqz v11, :cond_20

    iget-object v11, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

    iget-object v11, v11, Lcom/android/internal/telephony/SmsHeader;->miscEltList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_13
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1f

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/telephony/SmsHeader$MiscElt;

    iget v14, v13, Lcom/android/internal/telephony/SmsHeader$MiscElt;->id:I

    const/16 v15, 0x22

    if-ne v14, v15, :cond_1e

    iget v14, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mMti:I

    if-nez v14, :cond_1e

    const/4 v14, 0x1

    iget-object v0, v13, Lcom/android/internal/telephony/SmsHeader$MiscElt;->data:[B

    array-length v0, v0

    const/4 v15, 0x2

    if-le v0, v15, :cond_1d

    :try_start_0
    new-instance v0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    iget-object v15, v13, Lcom/android/internal/telephony/SmsHeader$MiscElt;->data:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move/from16 v16, v5

    :try_start_1
    iget-object v5, v13, Lcom/android/internal/telephony/SmsHeader$MiscElt;->data:[B

    array-length v5, v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v17, v11

    const/4 v11, 0x0

    :try_start_2
    invoke-direct {v0, v15, v11, v5}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;-><init>([BII)V

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->replyAddress:Lcom/android/internal/telephony/SmsAddress;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_15

    :catch_0
    move-exception v0

    goto :goto_14

    :catch_1
    move-exception v0

    move-object/from16 v17, v11

    goto :goto_14

    :catch_2
    move-exception v0

    move/from16 v16, v5

    move-object/from16 v17, v11

    :goto_14
    const-string v5, "GsmSmsAddress FAIL!"

    invoke-static {v12, v5}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_15
    goto :goto_16

    :cond_1d
    move/from16 v16, v5

    move-object/from16 v17, v11

    const/4 v5, 0x0

    iput-object v5, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->replyAddress:Lcom/android/internal/telephony/SmsAddress;

    const-string v0, "SMS replyAddress: null"

    invoke-static {v12, v0}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_16
    move v0, v14

    goto :goto_17

    :cond_1e
    move/from16 v16, v5

    move-object/from16 v17, v11

    :goto_17
    move/from16 v5, v16

    move-object/from16 v11, v17

    goto :goto_13

    :cond_1f
    move/from16 v16, v5

    goto :goto_18

    :cond_20
    move/from16 v16, v5

    :goto_18
    if-nez v0, :cond_21

    iget-object v5, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    iput-object v5, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->replyAddress:Lcom/android/internal/telephony/SmsAddress;

    const-string/jumbo v5, "hasReplayAddress = false, SMS replayAddress = mOriginatingAddress"

    invoke-static {v12, v5}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    invoke-static {}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubId()I

    move-result v5

    const/4 v11, 0x0

    invoke-static {v11, v5}, Landroid/telephony/SmsManager;->getSmsManagerForContextAndSubscriptionId(Landroid/content/Context;I)Landroid/telephony/SmsManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/SmsManager;->getMnoName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    const-string v13, "SKT"

    invoke-virtual {v5, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_22

    invoke-static {}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubId()I

    move-result v5

    invoke-static {v11, v5}, Landroid/telephony/SmsManager;->getSmsManagerForContextAndSubscriptionId(Landroid/content/Context;I)Landroid/telephony/SmsManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/SmsManager;->getMnoName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_25

    :cond_22
    iget-object v5, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->replyAddress:Lcom/android/internal/telephony/SmsAddress;

    if-eqz v5, :cond_25

    iget-object v5, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->replyAddress:Lcom/android/internal/telephony/SmsAddress;

    iget-object v5, v5, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v11, 0x3

    if-le v5, v11, :cond_25

    iget-object v5, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->replyAddress:Lcom/android/internal/telephony/SmsAddress;

    iget v5, v5, Lcom/android/internal/telephony/SmsAddress;->ton:I

    const-string v13, "0"

    const/4 v14, 0x1

    if-ne v5, v14, :cond_23

    iget-object v5, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->replyAddress:Lcom/android/internal/telephony/SmsAddress;

    iget-object v5, v5, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    const/4 v14, 0x0

    invoke-virtual {v5, v14, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v11, "+82"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_23

    iget-object v5, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->replyAddress:Lcom/android/internal/telephony/SmsAddress;

    iget-object v11, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->replyAddress:Lcom/android/internal/telephony/SmsAddress;

    iget-object v11, v11, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    const-string v14, "\\+82"

    invoke-virtual {v11, v14, v13}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v5, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    :cond_23
    iget-object v5, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->replyAddress:Lcom/android/internal/telephony/SmsAddress;

    iget v5, v5, Lcom/android/internal/telephony/SmsAddress;->ton:I

    const/4 v11, 0x1

    if-ne v5, v11, :cond_25

    iget-object v5, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->replyAddress:Lcom/android/internal/telephony/SmsAddress;

    iget-object v5, v5, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    const/4 v11, 0x2

    const/4 v14, 0x0

    invoke-virtual {v5, v14, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v11, "82"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_25

    iget-object v5, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->replyAddress:Lcom/android/internal/telephony/SmsAddress;

    iget-object v14, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->replyAddress:Lcom/android/internal/telephony/SmsAddress;

    iget-object v14, v14, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    invoke-virtual {v14, v11, v13}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v5, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    goto :goto_19

    :cond_24
    move/from16 v16, v5

    :cond_25
    :goto_19
    packed-switch v7, :pswitch_data_1

    const/4 v5, 0x0

    goto/16 :goto_1d

    :pswitch_4
    invoke-virtual {v2, v8}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserDataKSC5601(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mMessageBody:Ljava/lang/String;

    const/4 v5, 0x0

    goto/16 :goto_1d

    :pswitch_5
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserData()[B

    move-result-object v0

    array-length v5, v0

    if-lez v5, :cond_27

    add-int/lit8 v10, v5, -0x2

    aget-byte v10, v0, v10

    and-int/lit16 v10, v10, 0xff

    const/16 v11, 0x8

    shl-int/2addr v10, v11

    int-to-char v10, v10

    add-int/lit8 v11, v5, -0x1

    aget-byte v11, v0, v11

    and-int/lit16 v11, v11, 0xff

    int-to-char v11, v11

    or-int/2addr v11, v10

    int-to-char v10, v11

    const v11, 0xd83d

    if-eq v10, v11, :cond_26

    const v11, 0xd83c

    if-eq v10, v11, :cond_26

    const v11, 0xd83e

    if-ne v10, v11, :cond_27

    :cond_26
    const-string/jumbo v11, "found emoji"

    invoke-static {v12, v11}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x2

    new-array v11, v11, [B

    iput-object v11, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mlastByte:[B

    iget-object v11, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mlastByte:[B

    add-int/lit8 v12, v5, -0x2

    aget-byte v12, v0, v12

    const/4 v13, 0x0

    aput-byte v12, v11, v13

    iget-object v11, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mlastByte:[B

    add-int/lit8 v12, v5, -0x1

    aget-byte v12, v0, v12

    const/4 v13, 0x1

    aput-byte v12, v11, v13

    iput-boolean v13, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mIsfourBytesUnicode:Z

    :cond_27
    invoke-virtual {v2, v8}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserDataUCS2(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mMessageBody:Ljava/lang/String;

    const/4 v5, 0x0

    goto :goto_1d

    :pswitch_6
    const v5, 0x1110237

    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_29

    invoke-static {}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubId()I

    move-result v0

    const/4 v5, 0x0

    invoke-static {v5, v0}, Landroid/telephony/SmsManager;->getSmsManagerForContextAndSubscriptionId(Landroid/content/Context;I)Landroid/telephony/SmsManager;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/telephony/SmsManager;->getSmsSetting(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    goto :goto_1a

    :cond_28
    iput-object v5, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mMessageBody:Ljava/lang/String;

    const/4 v5, 0x0

    goto :goto_1d

    :cond_29
    :goto_1a
    invoke-virtual {v2, v8}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserDataGSM8bit(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mMessageBody:Ljava/lang/String;

    const/4 v5, 0x0

    goto :goto_1d

    :pswitch_7
    iget-object v0, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

    if-eqz v0, :cond_2c

    nop

    if-eqz v3, :cond_2a

    iget-object v0, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

    iget v0, v0, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    goto :goto_1b

    :cond_2a
    const/4 v0, 0x0

    :goto_1b
    if-eqz v3, :cond_2b

    iget-object v5, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

    iget v13, v5, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    goto :goto_1c

    :cond_2b
    const/4 v13, 0x0

    :goto_1c
    invoke-virtual {v2, v8, v0, v13}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserDataGSM7Bit(III)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mMessageBody:Ljava/lang/String;

    const/4 v5, 0x0

    goto :goto_1d

    :cond_2c
    const/4 v5, 0x0

    invoke-virtual {v2, v8, v5, v5}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserDataGSM7Bit(III)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mMessageBody:Ljava/lang/String;

    const/4 v5, 0x0

    goto :goto_1d

    :pswitch_8
    const/4 v5, 0x0

    iput-object v5, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mMessageBody:Ljava/lang/String;

    nop

    :goto_1d
    invoke-static {}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubId()I

    move-result v0

    invoke-static {v5, v0}, Landroid/telephony/SmsManager;->getSmsManagerForContextAndSubscriptionId(Landroid/content/Context;I)Landroid/telephony/SmsManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SmsManager;->getMnoName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-object v0, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

    if-eqz v0, :cond_2d

    iget-object v0, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

    iget-object v0, v0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    if-eqz v0, :cond_2d

    iget-object v0, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

    iget-object v0, v0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v0, v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    const v5, 0xc00a

    if-ne v0, v5, :cond_2d

    iget-object v0, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

    iget-object v0, v0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v0, v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseSpecificTid(I)V

    :cond_2d
    iget-object v0, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mMessageBody:Ljava/lang/String;

    if-eqz v0, :cond_2f

    invoke-static {}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubId()I

    move-result v0

    const/4 v5, 0x0

    invoke-static {v5, v0}, Landroid/telephony/SmsManager;->getSmsManagerForContextAndSubscriptionId(Landroid/content/Context;I)Landroid/telephony/SmsManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SmsManager;->getMnoName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v5, "DOCOMO"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2e

    iget-object v0, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mMessageBody:Ljava/lang/String;

    const-string v5, "\r\n"

    const-string v9, "\n"

    invoke-virtual {v0, v5, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const/16 v5, 0xd

    const/16 v9, 0xa

    invoke-virtual {v0, v5, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mMessageBody:Ljava/lang/String;

    :cond_2e
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseMessageBody()V

    :cond_2f
    if-nez v4, :cond_30

    sget-object v0, Lcom/android/internal/telephony/SmsConstants$MessageClass;->UNKNOWN:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    goto :goto_1e

    :cond_30
    iget v0, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    const/4 v5, 0x3

    and-int/2addr v0, v5

    packed-switch v0, :pswitch_data_2

    goto :goto_1e

    :pswitch_9
    sget-object v0, Lcom/android/internal/telephony/SmsConstants$MessageClass;->CLASS_3:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    goto :goto_1e

    :pswitch_a
    sget-object v0, Lcom/android/internal/telephony/SmsConstants$MessageClass;->CLASS_2:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    goto :goto_1e

    :pswitch_b
    sget-object v0, Lcom/android/internal/telephony/SmsConstants$MessageClass;->CLASS_1:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    goto :goto_1e

    :pswitch_c
    sget-object v0, Lcom/android/internal/telephony/SmsConstants$MessageClass;->CLASS_0:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    nop

    :goto_1e
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch
.end method

.method public static greylist semCreateFromPdu(I[B)Lcom/android/internal/telephony/gsm/SmsMessage;
    .locals 4

    const-string v0, "SmsMessage"

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Lcom/android/internal/telephony/gsm/SmsMessage;

    invoke-direct {v2}, Lcom/android/internal/telephony/gsm/SmsMessage;-><init>()V

    invoke-static {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubId(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/gsm/SmsMessage;->setSubId(I)V

    invoke-direct {v2, p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->parsePdu([B)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v2

    const-string v3, "SMS PDU parsing failed with out of memory: "

    invoke-static {v0, v3, v2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1

    :catch_1
    move-exception v2

    const-string v3, "SMS PDU parsing failed: "

    invoke-static {v0, v3, v2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method

.method private static blacklist useValidityPeriod(I)Z
    .locals 6

    const-string v0, "SmsMessage"

    const/4 v1, 0x0

    invoke-static {v1, p0}, Landroid/telephony/SmsManager;->getSmsManagerForContextAndSubscriptionId(Landroid/content/Context;I)Landroid/telephony/SmsManager;

    move-result-object v1

    const-string/jumbo v2, "sms_not_used_validity_period_format"

    invoke-virtual {v1, v2}, Landroid/telephony/SmsManager;->getSmsSetting(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->isSupportTiantong()Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "satellite_mode_enabled"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "Do not use TP-VP for Tiantong"

    invoke-static {v0, v4}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SecurityException during get setting DB"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1
    nop

    :cond_2
    return v3
.end method


# virtual methods
.method protected blacklist extractPaginationForGsm()V
    .locals 19

    move-object/from16 v1, p0

    const-string v2, "extractPagination : "

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object v7, v5

    const-string v8, "SmsMessage"

    if-nez v5, :cond_0

    const-string/jumbo v0, "there is no message body"

    invoke-static {v8, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v9, 0x0

    :try_start_0
    const-string v0, "("

    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v10, 0x2

    const/4 v11, 0x1

    if-eqz v0, :cond_1

    const-string v0, ")"

    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x28

    invoke-virtual {v5, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/2addr v0, v11

    const/16 v12, 0x29

    invoke-virtual {v5, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    invoke-virtual {v5, v0, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    invoke-virtual {v5, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/2addr v0, v10

    invoke-virtual {v5, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    goto :goto_0

    :cond_1
    const-string v0, "["

    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "]"

    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x5b

    invoke-virtual {v5, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/2addr v0, v11

    const/16 v12, 0x5d

    invoke-virtual {v5, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    invoke-virtual {v5, v0, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    invoke-virtual {v5, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/2addr v0, v10

    invoke-virtual {v5, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "{"

    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "}"

    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x7b

    invoke-virtual {v5, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/2addr v0, v11

    const/16 v12, 0x7d

    invoke-virtual {v5, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    invoke-virtual {v5, v0, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    invoke-virtual {v5, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/2addr v0, v10

    invoke-virtual {v5, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "there is no pagination pattern maybe / or of "

    invoke-static {v8, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_5

    :goto_0
    nop

    const-string/jumbo v12, "there is no pagination yet"

    const-string v13, "/"

    const/4 v14, 0x0

    if-eqz v9, :cond_5

    move-object v2, v5

    invoke-virtual {v9, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    array-length v0, v7

    if-ne v0, v10, :cond_4

    :try_start_1
    aget-object v0, v7, v14

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move v3, v0

    aget-object v0, v7, v11

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move v4, v0

    const/4 v6, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {v8, v12}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    :cond_4
    :goto_1
    goto/16 :goto_6

    :cond_5
    const-string v0, " of "

    invoke-virtual {v5, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    array-length v0, v15

    const/4 v11, 0x3

    if-lt v0, v10, :cond_6

    const-string v0, " "

    invoke-virtual {v5, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    array-length v0, v10

    if-lt v0, v11, :cond_6

    :try_start_2
    aget-object v0, v10, v14

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move v3, v0

    const/16 v16, 0x2

    aget-object v0, v10, v16

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move v4, v0

    aget-object v0, v10, v14

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v16, 0x2

    aget-object v17, v10, v16

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    add-int v0, v0, v17

    add-int/lit8 v0, v0, 0x4

    add-int/lit8 v11, v0, 0x1

    invoke-virtual {v5, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1

    move-object v7, v11

    const/4 v6, 0x1

    goto :goto_2

    :catch_1
    move-exception v0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catch_2
    move-exception v0

    invoke-static {v8, v12}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    nop

    :cond_6
    :goto_3
    if-nez v6, :cond_c

    invoke-virtual {v5, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    array-length v0, v10

    const/4 v11, 0x2

    if-lt v0, v11, :cond_c

    const/4 v4, 0x0

    const/4 v11, 0x1

    aget-object v0, v10, v11

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v11

    :try_start_3
    aget-object v0, v10, v14

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move v3, v0

    const/4 v0, 0x0

    :goto_4
    aget-char v12, v11, v0

    invoke-static {v12}, Ljava/lang/Character;->isDigit(C)Z

    move-result v12

    if-eqz v12, :cond_b

    if-nez v0, :cond_7

    aget-char v12, v11, v0

    invoke-static {v12}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v12

    move v4, v12

    const/4 v13, 0x2

    const/16 v16, 0x3

    goto :goto_5

    :cond_7
    const/4 v12, 0x1

    if-ne v0, v12, :cond_8

    aget-char v13, v11, v14

    invoke-static {v13}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v13

    mul-int/lit8 v13, v13, 0xa

    aget-char v18, v11, v12

    invoke-static/range {v18 .. v18}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v12

    add-int v4, v13, v12

    const/4 v13, 0x2

    const/16 v16, 0x3

    goto :goto_5

    :cond_8
    const/4 v12, 0x2

    if-ne v0, v12, :cond_9

    aget-char v12, v11, v14

    invoke-static {v12}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v12

    mul-int/lit8 v12, v12, 0x64

    const/4 v13, 0x1

    aget-char v18, v11, v13

    invoke-static/range {v18 .. v18}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v13

    mul-int/lit8 v13, v13, 0xa

    add-int/2addr v12, v13

    const/4 v13, 0x2

    aget-char v18, v11, v13

    invoke-static/range {v18 .. v18}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v13

    add-int v4, v12, v13

    const/4 v13, 0x2

    const/16 v16, 0x3

    goto :goto_5

    :cond_9
    const/4 v12, 0x3

    if-ne v0, v12, :cond_a

    aget-char v12, v11, v14

    invoke-static {v12}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v12

    mul-int/lit16 v12, v12, 0x3e8

    const/4 v13, 0x1

    aget-char v18, v11, v13

    invoke-static/range {v18 .. v18}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v13

    mul-int/lit8 v13, v13, 0x64

    add-int/2addr v12, v13

    const/4 v13, 0x2

    aget-char v16, v11, v13

    invoke-static/range {v16 .. v16}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v16

    mul-int/lit8 v16, v16, 0xa

    add-int v12, v12, v16

    const/16 v16, 0x3

    aget-char v17, v11, v16

    invoke-static/range {v17 .. v17}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v17

    add-int v4, v12, v17

    goto :goto_5

    :cond_a
    move/from16 v16, v12

    const/4 v13, 0x2

    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_b
    aget-object v12, v10, v14

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v12, v0

    const/4 v13, 0x1

    add-int/2addr v12, v13

    invoke-virtual {v5, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_3

    const/4 v6, 0x1

    goto :goto_6

    :catch_3
    move-exception v0

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_4
    move-exception v0

    const-string/jumbo v2, "there is no pagination"

    invoke-static {v8, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v7

    goto :goto_6

    :cond_c
    move-object v2, v7

    :goto_6
    if-nez v6, :cond_d

    const-string v0, "No pagination found"

    invoke-static {v8, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "segmented number: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "total number: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x270f

    if-gez v3, :cond_e

    if-gt v3, v0, :cond_f

    :cond_e
    if-gez v4, :cond_10

    if-le v3, v0, :cond_10

    :cond_f
    const-string v0, "Its not segmented sms. "

    invoke-static {v8, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_10
    if-eqz v3, :cond_11

    if-eqz v4, :cond_11

    if-gt v3, v4, :cond_11

    if-gt v4, v0, :cond_11

    const-string v0, "It\'s segmented sms"

    invoke-static {v8, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    invoke-direct {v0}, Lcom/android/internal/telephony/SmsHeader$ConcatRef;-><init>()V

    iput v3, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    iput v4, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    const/4 v7, -0x1

    iput v7, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    new-instance v7, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v7}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    iput-object v7, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

    iget-object v7, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

    iput-object v0, v7, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    goto :goto_7

    :cond_11
    const-string v0, "It\'s not segmented sms."

    invoke-static {v8, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7
    return-void

    :catch_5
    move-exception v0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist getDataCodingScheme()I
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    return v0
.end method

.method public blacklist getMessageClass()Lcom/android/internal/telephony/SmsConstants$MessageClass;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    return-object v0
.end method

.method public blacklist getMessageIdentifier()I
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMessageRef:I

    return v0
.end method

.method public blacklist getMessagePriority()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getNumOfVoicemails()I
    .locals 2

    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mIsMwi:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->isCphsMwiMessage()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isCphsVoiceMessageSet()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xff

    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mVoiceMailCount:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mVoiceMailCount:I

    :goto_0
    const-string v0, "SmsMessage"

    const-string v1, "CPHS voice mail message"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mVoiceMailCount:I

    return v0
.end method

.method public blacklist getProtocolIdentifier()I
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mProtocolIdentifier:I

    return v0
.end method

.method public greylist-max-r getStatus()I
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mStatus:I

    return v0
.end method

.method public blacklist isCphsMwiMessage()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isCphsVoiceMessageClear()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isCphsVoiceMessageSet()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public greylist isMWIClearMessage()Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mIsMwi:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMwiSense:Z

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isCphsVoiceMessageClear()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public greylist isMWISetMessage()Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mIsMwi:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMwiSense:Z

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isCphsVoiceMessageSet()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public greylist isMwiDontStore()Z
    .locals 3

    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mIsMwi:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMwiDontStore:Z

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->isCphsMwiMessage()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubId()I

    move-result v2

    invoke-static {v0, v2}, Landroid/telephony/SmsManager;->getSmsManagerForContextAndSubscriptionId(Landroid/content/Context;I)Landroid/telephony/SmsManager;

    move-result-object v0

    const-string/jumbo v2, "sms_not_count_voicemail"

    invoke-virtual {v0, v2}, Landroid/telephony/SmsManager;->getSmsSetting(Ljava/lang/String;)Z

    move-result v0

    const-string v2, " "

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const-string v0, "RWC"

    sget-object v2, Lcom/android/internal/telephony/gsm/SmsMessage;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "TLS"

    sget-object v2, Lcom/android/internal/telephony/gsm/SmsMessage;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "MTA"

    sget-object v2, Lcom/android/internal/telephony/gsm/SmsMessage;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CPHS MWI messages in Canada "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/android/internal/telephony/gsm/SmsMessage;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " don\'t store"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SmsMessage"

    invoke-static {v2, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    return v1

    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    :cond_5
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isReplace()Z
    .locals 2

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mProtocolIdentifier:I

    and-int/lit16 v0, v0, 0xc0

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mProtocolIdentifier:I

    and-int/lit8 v0, v0, 0x3f

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mProtocolIdentifier:I

    and-int/lit8 v0, v0, 0x3f

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist isReplyPathPresent()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mReplyPathPresent:Z

    return v0
.end method

.method public greylist-max-r isStatusReportMessage()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mIsStatusReportMessage:Z

    return v0
.end method

.method public blacklist isTypeZero()Z
    .locals 2

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mProtocolIdentifier:I

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method blacklist isUsimDataDownload()Z
    .locals 2

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    sget-object v1, Lcom/android/internal/telephony/SmsConstants$MessageClass;->CLASS_2:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mProtocolIdentifier:I

    const/16 v1, 0x7f

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mProtocolIdentifier:I

    const/16 v1, 0x7c

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
