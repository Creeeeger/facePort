.class public final Lcom/android/internal/telephony/cdma/sms/BearerData;
.super Ljava/lang/Object;
.source "BearerData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;,
        Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;,
        Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;
    }
.end annotation


# static fields
.field public static final blacklist ALERT_DEFAULT:I = 0x0

.field public static final blacklist ALERT_HIGH_PRIO:I = 0x3

.field public static final blacklist ALERT_LOW_PRIO:I = 0x1

.field public static final blacklist ALERT_MEDIUM_PRIO:I = 0x2

.field public static final blacklist DISPLAY_MODE_DEFAULT:I = 0x1

.field public static final blacklist DISPLAY_MODE_IMMEDIATE:I = 0x0

.field public static final blacklist DISPLAY_MODE_USER:I = 0x2

.field public static final blacklist ERROR_NONE:I = 0x0

.field public static final blacklist ERROR_PERMANENT:I = 0x3

.field public static final blacklist ERROR_TEMPORARY:I = 0x2

.field public static final blacklist ERROR_UNDEFINED:I = 0xff

.field public static final blacklist LANGUAGE_CHINESE:I = 0x6

.field public static final blacklist LANGUAGE_ENGLISH:I = 0x1

.field public static final blacklist LANGUAGE_FRENCH:I = 0x2

.field public static final blacklist LANGUAGE_HEBREW:I = 0x7

.field public static final blacklist LANGUAGE_JAPANESE:I = 0x4

.field public static final blacklist LANGUAGE_KOREAN:I = 0x5

.field public static final blacklist LANGUAGE_SPANISH:I = 0x3

.field public static final blacklist LANGUAGE_UNKNOWN:I = 0x0

.field public static final blacklist LANGUAGE_UNKNOWN_LGT:I = 0x40

.field private static final blacklist LOG_TAG:Ljava/lang/String; = "BearerData"

.field public static final blacklist MESSAGE_TYPE_CANCELLATION:I = 0x3

.field public static final blacklist MESSAGE_TYPE_DELIVER:I = 0x1

.field public static final blacklist MESSAGE_TYPE_DELIVERY_ACK:I = 0x4

.field public static final blacklist MESSAGE_TYPE_DELIVER_REPORT:I = 0x7

.field public static final blacklist MESSAGE_TYPE_READ_ACK:I = 0x6

.field public static final blacklist MESSAGE_TYPE_SUBMIT:I = 0x2

.field public static final blacklist MESSAGE_TYPE_SUBMIT_REPORT:I = 0x8

.field public static final blacklist MESSAGE_TYPE_USER_ACK:I = 0x5

.field public static final blacklist PRIORITY_EMERGENCY:I = 0x3

.field public static final blacklist PRIORITY_INTERACTIVE:I = 0x1

.field public static final blacklist PRIORITY_NORMAL:I = 0x0

.field public static final blacklist PRIORITY_URGENT:I = 0x2

.field public static final blacklist PRIVACY_CONFIDENTIAL:I = 0x2

.field public static final blacklist PRIVACY_NOT_RESTRICTED:I = 0x0

.field public static final blacklist PRIVACY_RESTRICTED:I = 0x1

.field public static final blacklist PRIVACY_SECRET:I = 0x3

.field public static final blacklist RELATIVE_TIME_DAYS_LIMIT:I = 0xc4

.field public static final blacklist RELATIVE_TIME_HOURS_LIMIT:I = 0xa7

.field public static final blacklist RELATIVE_TIME_INDEFINITE:I = 0xf5

.field public static final blacklist RELATIVE_TIME_MINS_LIMIT:I = 0x8f

.field public static final blacklist RELATIVE_TIME_MOBILE_INACTIVE:I = 0xf7

.field public static final blacklist RELATIVE_TIME_NOW:I = 0xf6

.field public static final blacklist RELATIVE_TIME_RESERVED:I = 0xf8

.field public static final blacklist RELATIVE_TIME_WEEKS_LIMIT:I = 0xf4

.field public static final blacklist STATUS_ACCEPTED:I = 0x0

.field public static final blacklist STATUS_BLOCKED_DESTINATION:I = 0x7

.field public static final blacklist STATUS_CANCELLED:I = 0x3

.field public static final blacklist STATUS_CANCEL_FAILED:I = 0x6

.field public static final blacklist STATUS_DELIVERED:I = 0x2

.field public static final blacklist STATUS_DEPOSITED_TO_INTERNET:I = 0x1

.field public static final blacklist STATUS_DUPLICATE_MESSAGE:I = 0x9

.field public static final blacklist STATUS_INVALID_DESTINATION:I = 0xa

.field public static final blacklist STATUS_MESSAGE_EXPIRED:I = 0xd

.field public static final blacklist STATUS_NETWORK_CONGESTION:I = 0x4

.field public static final blacklist STATUS_NETWORK_ERROR:I = 0x5

.field public static final blacklist STATUS_TEXT_TOO_LONG:I = 0x8

.field public static final blacklist STATUS_UNDEFINED:I = 0xff

.field public static final blacklist STATUS_UNKNOWN_ERROR:I = 0x1f

.field private static final blacklist SUBPARAM_ALERT_ON_MESSAGE_DELIVERY:B = 0xct

.field private static final blacklist SUBPARAM_CALLBACK_NUMBER:B = 0xet

.field private static final blacklist SUBPARAM_DEFERRED_DELIVERY_TIME_ABSOLUTE:B = 0x6t

.field private static final blacklist SUBPARAM_DEFERRED_DELIVERY_TIME_RELATIVE:B = 0x7t

.field private static final blacklist SUBPARAM_ID_LAST_DEFINED:B = 0x17t

.field private static final blacklist SUBPARAM_LANGUAGE_INDICATOR:B = 0xdt

.field private static final blacklist SUBPARAM_MESSAGE_CENTER_TIME_STAMP:B = 0x3t

.field private static final blacklist SUBPARAM_MESSAGE_DEPOSIT_INDEX:B = 0x11t

.field private static final blacklist SUBPARAM_MESSAGE_DISPLAY_MODE:B = 0xft

.field private static final blacklist SUBPARAM_MESSAGE_IDENTIFIER:B = 0x0t

.field private static final blacklist SUBPARAM_MESSAGE_STATUS:B = 0x14t

.field private static final blacklist SUBPARAM_NUMBER_OF_MESSAGES:B = 0xbt

.field private static final blacklist SUBPARAM_PRIORITY_INDICATOR:B = 0x8t

.field private static final blacklist SUBPARAM_PRIVACY_INDICATOR:B = 0x9t

.field private static final blacklist SUBPARAM_REPLY_OPTION:B = 0xat

.field private static final blacklist SUBPARAM_SERVICE_CATEGORY_PROGRAM_DATA:B = 0x12t

.field private static final blacklist SUBPARAM_SERVICE_CATEGORY_PROGRAM_RESULTS:B = 0x13t

.field private static final blacklist SUBPARAM_USER_DATA:B = 0x1t

.field private static final blacklist SUBPARAM_USER_RESPONSE_CODE:B = 0x2t

.field private static final blacklist SUBPARAM_VALIDITY_PERIOD_ABSOLUTE:B = 0x4t

.field private static final blacklist SUBPARAM_VALIDITY_PERIOD_RELATIVE:B = 0x5t

.field public static blacklist compChar:C

.field public static blacklist mBodyOffset:I

.field public static blacklist mIsfourBytesUnicode:Z

.field public static blacklist mlastByte:[B

.field public static blacklist userLength:I

.field public static blacklist userdata:[B


# instance fields
.field public blacklist alert:I

.field public blacklist alertIndicatorSet:Z

.field public blacklist callbackNumber:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

.field public blacklist cmasWarningInfo:Landroid/telephony/SmsCbCmasInfo;

.field public blacklist deferredDeliveryTimeAbsolute:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

.field public blacklist deferredDeliveryTimeRelative:I

.field public blacklist deferredDeliveryTimeRelativeSet:Z

.field public blacklist deliveryAckReq:Z

.field public blacklist depositIndex:I

.field public greylist displayMode:I

.field public blacklist displayModeSet:Z

.field public blacklist errorClass:I

.field public greylist hasUserDataHeader:Z

.field public blacklist language:I

.field public blacklist languageIndicatorSet:Z

.field public greylist messageId:I

.field public blacklist messageStatus:I

.field public blacklist messageStatusSet:Z

.field public blacklist messageType:I

.field public greylist msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

.field public blacklist msgDeliveryTime:Ljava/lang/String;

.field public blacklist numberOfMessages:I

.field public greylist priority:I

.field public greylist priorityIndicatorSet:Z

.field public blacklist privacy:I

.field public blacklist privacyIndicatorSet:Z

.field public blacklist readAckReq:Z

.field public blacklist reportReq:Z

.field public blacklist serviceCategoryProgramData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/telephony/cdma/CdmaSmsCbProgramData;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist serviceCategoryProgramResults:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/telephony/cdma/CdmaSmsCbProgramResults;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist userAckReq:Z

.field public greylist userData:Lcom/android/internal/telephony/cdma/sms/UserData;

.field public blacklist userResponseCode:I

.field public blacklist userResponseCodeSet:Z

.field public blacklist validityPeriodAbsolute:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

.field public blacklist validityPeriodRelative:I

.field public blacklist validityPeriodRelativeSet:Z


# direct methods
.method public constructor greylist <init>()V
    .locals 2

    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->priorityIndicatorSet:Z

    .line 125
    iput v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->priority:I

    .line 137
    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->privacyIndicatorSet:Z

    .line 138
    iput v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->privacy:I

    .line 149
    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->alertIndicatorSet:Z

    .line 150
    iput v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->alert:I

    .line 162
    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->displayModeSet:Z

    .line 163
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->displayMode:I

    .line 182
    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->languageIndicatorSet:Z

    .line 183
    iput v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->language:I

    .line 215
    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageStatusSet:Z

    .line 216
    const/16 v1, 0xff

    iput v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->errorClass:I

    .line 217
    iput v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageStatus:I

    .line 245
    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userResponseCodeSet:Z

    .line 250
    return-void
.end method

.method public static blacklist calcTextEncodingDetails(Ljava/lang/CharSequence;ZZ)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .locals 1
    .param p0, "msg"    # Ljava/lang/CharSequence;
    .param p1, "force7BitEncoding"    # Z
    .param p2, "isEntireMsg"    # Z

    .line 2556
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->calcTextEncodingDetails(Ljava/lang/CharSequence;ZZZ)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist calcTextEncodingDetails(Ljava/lang/CharSequence;ZZZ)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .locals 7
    .param p0, "msg"    # Ljava/lang/CharSequence;
    .param p1, "force7BitEncoding"    # Z
    .param p2, "isEntireMsg"    # Z
    .param p3, "isEms"    # Z

    .line 564
    const/4 v0, 0x0

    .line 565
    .local v0, "newMsg":Ljava/lang/CharSequence;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 566
    .local v1, "r":Landroid/content/res/Resources;
    const v2, 0x11101c1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 567
    invoke-static {p0, v3}, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->translate(Ljava/lang/CharSequence;Z)Ljava/lang/String;

    move-result-object v0

    .line 569
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 570
    move-object v0, p0

    .line 574
    :cond_1
    invoke-static {v0, p1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->countAsciiSeptets(Ljava/lang/CharSequence;Z)I

    move-result v2

    .line 575
    .local v2, "septets":I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_2

    const/16 v4, 0xa0

    if-gt v2, v4, :cond_2

    .line 576
    new-instance v4, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    invoke-direct {v4}, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;-><init>()V

    .line 577
    .local v4, "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    iput v3, v4, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    .line 578
    iput v2, v4, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitCount:I

    .line 579
    rsub-int v5, v2, 0xa0

    iput v5, v4, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    .line 580
    iput v3, v4, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    goto :goto_1

    .line 584
    .end local v4    # "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :cond_2
    invoke-static {p0, p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLengthForCdma(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v4

    .line 587
    .restart local v4    # "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    iget v5, v4, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    if-ne v5, v3, :cond_5

    iget v5, v4, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    if-ne v5, v3, :cond_5

    if-eqz p2, :cond_5

    .line 593
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    iput v5, v4, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitCount:I

    .line 594
    iget v5, v4, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitCount:I

    mul-int/lit8 v5, v5, 0x2

    .line 595
    .local v5, "octets":I
    const/16 v6, 0x8c

    if-le v5, v6, :cond_4

    .line 601
    const/16 v3, 0x86

    .line 603
    .local v3, "max_user_data_bytes_with_header":I
    invoke-static {}, Landroid/telephony/SmsMessage;->hasEmsSupport()Z

    move-result v6

    if-nez v6, :cond_3

    .line 605
    add-int/lit8 v6, v3, -0x2

    mul-int/lit8 v6, v6, 0x9

    if-gt v5, v6, :cond_3

    .line 606
    add-int/lit8 v3, v3, -0x2

    .line 609
    :cond_3
    add-int/lit8 v6, v3, -0x1

    add-int/2addr v6, v5

    div-int/2addr v6, v3

    iput v6, v4, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    .line 611
    iget v6, v4, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    mul-int/2addr v6, v3

    sub-int/2addr v6, v5

    div-int/lit8 v6, v6, 0x2

    iput v6, v4, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    .line 613
    .end local v3    # "max_user_data_bytes_with_header":I
    goto :goto_0

    .line 614
    :cond_4
    iput v3, v4, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    .line 615
    rsub-int v3, v5, 0x8c

    div-int/lit8 v3, v3, 0x2

    iput v3, v4, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    .line 617
    :goto_0
    if-nez p3, :cond_5

    .line 618
    const/4 v3, 0x3

    iput v3, v4, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    .line 623
    .end local v5    # "octets":I
    :cond_5
    :goto_1
    return-object v4
.end method

.method public static blacklist calcTextEncodingDetailsWithEmail(Ljava/lang/CharSequence;ZI)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .locals 10
    .param p0, "msg"    # Ljava/lang/CharSequence;
    .param p1, "force7BitEncoding"    # Z
    .param p2, "maxEmailLen"    # I

    .line 2567
    new-instance v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    invoke-direct {v0}, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;-><init>()V

    .line 2568
    .local v0, "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    invoke-static {p0, p1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->countAsciiSeptets(Ljava/lang/CharSequence;Z)I

    move-result v1

    .line 2570
    .local v1, "septets":I
    const/4 v2, 0x1

    if-lez p2, :cond_0

    rsub-int v3, p2, 0xa0

    sub-int/2addr v3, v2

    goto :goto_0

    .line 2571
    :cond_0
    const/16 v3, 0xa0

    :goto_0
    nop

    .line 2572
    .local v3, "maxLenPerSMS":I
    if-lez p2, :cond_1

    rsub-int v4, p2, 0x9a

    sub-int/2addr v4, v2

    goto :goto_1

    .line 2573
    :cond_1
    const/16 v4, 0x9a

    :goto_1
    nop

    .line 2575
    .local v4, "maxLenPerSMSWithHeader":I
    const/4 v5, -0x1

    if-eq v1, v5, :cond_2

    if-gt v1, v3, :cond_2

    .line 2576
    iput v2, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    .line 2577
    iput v1, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitCount:I

    .line 2578
    sub-int v5, v3, v1

    iput v5, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    .line 2579
    iput v2, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    goto/16 :goto_6

    .line 2580
    :cond_2
    const/4 v6, 0x0

    if-eq v1, v5, :cond_5

    .line 2581
    iput v1, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitCount:I

    .line 2582
    if-le v1, v3, :cond_4

    .line 2583
    add-int/lit8 v5, v1, -0x1

    div-int/2addr v5, v4

    add-int/2addr v5, v2

    iput v5, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    .line 2584
    rem-int v5, v1, v4

    if-lez v5, :cond_3

    .line 2585
    rem-int v5, v1, v4

    sub-int v5, v4, v5

    iput v5, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_2

    .line 2587
    :cond_3
    iput v6, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_2

    .line 2590
    :cond_4
    iput v2, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    .line 2591
    sub-int v5, v3, v1

    iput v5, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    .line 2593
    :goto_2
    iput v2, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    goto :goto_6

    .line 2595
    :cond_5
    mul-int/lit8 p2, p2, 0x2

    .line 2597
    if-lez p2, :cond_6

    rsub-int v7, p2, 0x8c

    sub-int/2addr v7, v2

    goto :goto_3

    .line 2598
    :cond_6
    const/16 v7, 0x8c

    :goto_3
    move v3, v7

    .line 2599
    if-lez p2, :cond_7

    rsub-int v7, p2, 0x80

    sub-int/2addr v7, v2

    goto :goto_4

    .line 2600
    :cond_7
    const/16 v7, 0x80

    :goto_4
    move v4, v7

    .line 2602
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v7

    mul-int/lit8 v7, v7, 0x2

    .line 2603
    .local v7, "octets":I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v8

    iput v8, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitCount:I

    .line 2604
    const/16 v8, 0x3e8

    if-le v7, v3, :cond_a

    .line 2605
    add-int/lit8 v9, v3, -0x2

    if-le p2, v9, :cond_8

    .line 2606
    iput v8, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    .line 2607
    iput v5, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_5

    .line 2609
    :cond_8
    rem-int v5, v7, v4

    if-eqz v5, :cond_9

    .line 2610
    div-int v5, v7, v4

    add-int/2addr v5, v2

    iput v5, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    .line 2611
    rem-int v2, v7, v4

    sub-int v2, v4, v2

    div-int/lit8 v2, v2, 0x2

    iput v2, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_5

    .line 2614
    :cond_9
    div-int v2, v7, v4

    iput v2, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    .line 2615
    iput v6, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_5

    .line 2619
    :cond_a
    add-int/lit8 v6, v4, -0x2

    if-lt p2, v6, :cond_b

    .line 2620
    iput v8, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    .line 2621
    iput v5, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_5

    .line 2623
    :cond_b
    iput v2, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    .line 2624
    sub-int v2, v3, v7

    div-int/lit8 v2, v2, 0x2

    iput v2, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    .line 2627
    :goto_5
    const/4 v2, 0x3

    iput v2, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    .line 2629
    .end local v7    # "octets":I
    :goto_6
    return-object v0
.end method

.method private static greylist countAsciiSeptets(Ljava/lang/CharSequence;Z)I
    .locals 5
    .param p0, "msg"    # Ljava/lang/CharSequence;
    .param p1, "force"    # Z

    .line 540
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 541
    .local v0, "msgLen":I
    if-eqz p1, :cond_0

    return v0

    .line 542
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 543
    sget-object v2, Lcom/android/internal/telephony/cdma/sms/UserData;->charToAscii:Landroid/util/SparseIntArray;

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    if-ne v2, v4, :cond_1

    .line 544
    return v4

    .line 542
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 547
    .end local v1    # "i":I
    :cond_2
    return v0
.end method

.method public static blacklist decode([B)Lcom/android/internal/telephony/cdma/sms/BearerData;
    .locals 1
    .param p0, "smsData"    # [B

    .line 2298
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decode([BI)Lcom/android/internal/telephony/cdma/sms/BearerData;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist decode([BI)Lcom/android/internal/telephony/cdma/sms/BearerData;
    .locals 11
    .param p0, "smsData"    # [B
    .param p1, "serviceCategory"    # I

    .line 2316
    const-string v0, "BearerData decode failed: "

    const-string v1, "BearerData"

    :try_start_0
    new-instance v2, Lcom/android/internal/util/BitwiseInputStream;

    invoke-direct {v2, p0}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    .line 2317
    .local v2, "inStream":Lcom/android/internal/util/BitwiseInputStream;
    new-instance v3, Lcom/android/internal/telephony/cdma/sms/BearerData;

    invoke-direct {v3}, Lcom/android/internal/telephony/cdma/sms/BearerData;-><init>()V

    .line 2318
    .local v3, "bData":Lcom/android/internal/telephony/cdma/sms/BearerData;
    const/4 v4, 0x0

    .line 2319
    .local v4, "foundSubparamMask":I
    :goto_0
    invoke-virtual {v2}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    move-result v5
    :try_end_0
    .catch Lcom/android/internal/util/BitwiseInputStream$AccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, ")"

    const/4 v7, 0x1

    if-lez v5, :cond_3

    .line 2320
    const/16 v5, 0x8

    :try_start_1
    invoke-virtual {v2, v5}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v5

    .line 2321
    .local v5, "subparamId":I
    shl-int/2addr v7, v5

    .line 2328
    .local v7, "subparamIdBit":I
    and-int v8, v4, v7

    const/16 v9, 0x17

    if-eqz v8, :cond_1

    if-ltz v5, :cond_1

    if-le v5, v9, :cond_0

    goto :goto_1

    .line 2331
    :cond_0
    new-instance v8, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "illegal duplicate subparameter ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v8, v6}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    .end local p0    # "smsData":[B
    .end local p1    # "serviceCategory":I
    throw v8

    .line 2335
    .restart local p0    # "smsData":[B
    .restart local p1    # "serviceCategory":I
    :cond_1
    :goto_1
    packed-switch v5, :pswitch_data_0

    .line 2394
    :pswitch_0
    invoke-static {v3, v2, v5}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeReserved(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;I)Z

    move-result v6

    goto/16 :goto_2

    .line 2355
    :pswitch_1
    invoke-static {v3, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeMsgStatus(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v6

    .line 2356
    .local v6, "decodeSuccess":Z
    goto/16 :goto_2

    .line 2391
    .end local v6    # "decodeSuccess":Z
    :pswitch_2
    invoke-static {v3, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeServiceCategoryProgramData(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v6

    .line 2392
    .restart local v6    # "decodeSuccess":Z
    goto :goto_2

    .line 2388
    .end local v6    # "decodeSuccess":Z
    :pswitch_3
    invoke-static {v3, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeDepositIndex(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v6

    .line 2389
    .restart local v6    # "decodeSuccess":Z
    goto :goto_2

    .line 2379
    .end local v6    # "decodeSuccess":Z
    :pswitch_4
    invoke-static {v3, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeDisplayMode(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v6

    .line 2380
    .restart local v6    # "decodeSuccess":Z
    goto :goto_2

    .line 2352
    .end local v6    # "decodeSuccess":Z
    :pswitch_5
    invoke-static {v3, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeCallbackNumber(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v6

    .line 2353
    .restart local v6    # "decodeSuccess":Z
    goto :goto_2

    .line 2376
    .end local v6    # "decodeSuccess":Z
    :pswitch_6
    invoke-static {v3, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeLanguageIndicator(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v6

    .line 2377
    .restart local v6    # "decodeSuccess":Z
    goto :goto_2

    .line 2385
    .end local v6    # "decodeSuccess":Z
    :pswitch_7
    invoke-static {v3, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeMsgDeliveryAlert(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v6

    .line 2386
    .restart local v6    # "decodeSuccess":Z
    goto :goto_2

    .line 2349
    .end local v6    # "decodeSuccess":Z
    :pswitch_8
    invoke-static {v3, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeMsgCount(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v6

    .line 2350
    .restart local v6    # "decodeSuccess":Z
    goto :goto_2

    .line 2346
    .end local v6    # "decodeSuccess":Z
    :pswitch_9
    invoke-static {v3, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeReplyOption(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v6

    .line 2347
    .restart local v6    # "decodeSuccess":Z
    goto :goto_2

    .line 2373
    .end local v6    # "decodeSuccess":Z
    :pswitch_a
    invoke-static {v3, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodePrivacyIndicator(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v6

    .line 2374
    .restart local v6    # "decodeSuccess":Z
    goto :goto_2

    .line 2382
    .end local v6    # "decodeSuccess":Z
    :pswitch_b
    invoke-static {v3, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodePriorityIndicator(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v6

    .line 2383
    .restart local v6    # "decodeSuccess":Z
    goto :goto_2

    .line 2370
    .end local v6    # "decodeSuccess":Z
    :pswitch_c
    invoke-static {v3, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeDeferredDeliveryRel(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v6

    .line 2371
    .restart local v6    # "decodeSuccess":Z
    goto :goto_2

    .line 2367
    .end local v6    # "decodeSuccess":Z
    :pswitch_d
    invoke-static {v3, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeDeferredDeliveryAbs(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v6

    .line 2368
    .restart local v6    # "decodeSuccess":Z
    goto :goto_2

    .line 2364
    .end local v6    # "decodeSuccess":Z
    :pswitch_e
    invoke-static {v3, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeValidityRel(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v6

    .line 2365
    .restart local v6    # "decodeSuccess":Z
    goto :goto_2

    .line 2361
    .end local v6    # "decodeSuccess":Z
    :pswitch_f
    invoke-static {v3, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeValidityAbs(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v6

    .line 2362
    .restart local v6    # "decodeSuccess":Z
    goto :goto_2

    .line 2358
    .end local v6    # "decodeSuccess":Z
    :pswitch_10
    invoke-static {v3, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeMsgCenterTimeStamp(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v6

    .line 2359
    .restart local v6    # "decodeSuccess":Z
    goto :goto_2

    .line 2343
    .end local v6    # "decodeSuccess":Z
    :pswitch_11
    invoke-static {v3, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeUserResponseCode(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v6

    .line 2344
    .restart local v6    # "decodeSuccess":Z
    goto :goto_2

    .line 2340
    .end local v6    # "decodeSuccess":Z
    :pswitch_12
    invoke-static {v3, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeUserData(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v6

    .line 2341
    .restart local v6    # "decodeSuccess":Z
    goto :goto_2

    .line 2337
    .end local v6    # "decodeSuccess":Z
    :pswitch_13
    invoke-static {v3, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeMessageId(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v6

    .line 2338
    .restart local v6    # "decodeSuccess":Z
    nop

    .line 2396
    :goto_2
    if-eqz v6, :cond_2

    if-ltz v5, :cond_2

    if-gt v5, v9, :cond_2

    .line 2399
    or-int/2addr v4, v7

    .line 2401
    .end local v5    # "subparamId":I
    .end local v6    # "decodeSuccess":Z
    .end local v7    # "subparamIdBit":I
    :cond_2
    goto/16 :goto_0

    .line 2402
    :cond_3
    and-int/lit8 v5, v4, 0x1

    if-eqz v5, :cond_8

    .line 2405
    iget-object v5, v3, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    if-eqz v5, :cond_7

    .line 2406
    invoke-static {p1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->isCmasAlertCategory(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2407
    invoke-static {v3, p1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeCmasUserData(Lcom/android/internal/telephony/cdma/sms/BearerData;I)V

    goto :goto_3

    .line 2408
    :cond_4
    iget-object v5, v3, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v5, v5, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    if-ne v5, v7, :cond_6

    .line 2409
    xor-int/lit8 v5, v4, 0x1

    xor-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_5

    .line 2413
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IS-91 must occur without extra subparams ("

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2416
    :cond_5
    invoke-static {v3}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeIs91(Lcom/android/internal/telephony/cdma/sms/BearerData;)V

    goto :goto_3

    .line 2418
    :cond_6
    iget-object v5, v3, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-boolean v6, v3, Lcom/android/internal/telephony/cdma/sms/BearerData;->hasUserDataHeader:Z

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeUserDataPayload(Lcom/android/internal/telephony/cdma/sms/UserData;Z)V

    .line 2420
    invoke-static {}, Landroid/telephony/SmsMessage;->getCDMASmsReassembly()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 2421
    iget-object v5, v3, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v5, v5, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    iget-object v6, v3, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cdma/sms/BearerData;->extractPagination(Ljava/lang/String;Lcom/android/internal/telephony/cdma/sms/UserData;)V

    .line 2426
    :cond_7
    :goto_3
    return-object v3

    .line 2403
    :cond_8
    new-instance v5, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    const-string/jumbo v6, "missing MESSAGE_IDENTIFIER subparam"

    invoke-direct {v5, v6}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    .end local p0    # "smsData":[B
    .end local p1    # "serviceCategory":I
    throw v5
    :try_end_1
    .catch Lcom/android/internal/util/BitwiseInputStream$AccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2429
    .end local v2    # "inStream":Lcom/android/internal/util/BitwiseInputStream;
    .end local v3    # "bData":Lcom/android/internal/telephony/cdma/sms/BearerData;
    .end local v4    # "foundSubparamMask":I
    .restart local p0    # "smsData":[B
    .restart local p1    # "serviceCategory":I
    :catch_0
    move-exception v2

    .line 2430
    .local v2, "ex":Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 2427
    .end local v2    # "ex":Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
    :catch_1
    move-exception v2

    .line 2428
    .local v2, "ex":Lcom/android/internal/util/BitwiseInputStream$AccessException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2431
    .end local v2    # "ex":Lcom/android/internal/util/BitwiseInputStream$AccessException;
    nop

    .line 2432
    :goto_4
    const/4 v0, 0x0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static blacklist decode7bitAscii([BII)Ljava/lang/String;
    .locals 16
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "numFields"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .line 1334
    move-object/from16 v1, p0

    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    const-string/jumbo v2, "sms_qmi_cdma_gsm"

    invoke-virtual {v0, v2}, Landroid/telephony/SmsManager;->getSmsSetting(Ljava/lang/String;)Z

    move-result v0

    const-string v2, ")"

    const-string v3, " bits, but only have "

    const-string/jumbo v4, "insufficient data (wanted "

    const-string v5, "7bit ASCII decode failed: "

    const/16 v7, 0xa

    const/16 v8, 0x20

    const/4 v9, 0x7

    if-eqz v0, :cond_5

    .line 1336
    mul-int/lit8 v0, p1, 0x8

    .line 1337
    .local v0, "offsetBits":I
    add-int/lit8 v10, v0, 0x6

    :try_start_0
    div-int/2addr v10, v9
    :try_end_0
    .catch Lcom/android/internal/util/BitwiseInputStream$AccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1338
    .local v10, "offsetSeptets":I
    mul-int/lit8 v11, v10, 0x7

    sub-int/2addr v11, v0

    .line 1340
    .local v11, "paddingBits":I
    sub-int v12, p2, v10

    .line 1342
    .end local p2    # "numFields":I
    .local v12, "numFields":I
    :try_start_1
    new-instance v13, Ljava/lang/StringBuffer;

    invoke-direct {v13, v12}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 1343
    .local v13, "strBuf":Ljava/lang/StringBuffer;
    new-instance v14, Lcom/android/internal/util/BitwiseInputStream;

    invoke-direct {v14, v1}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    .line 1345
    .local v14, "inStream":Lcom/android/internal/util/BitwiseInputStream;
    mul-int/lit8 v15, v12, 0x7

    add-int/2addr v15, v0

    add-int/2addr v15, v11

    .line 1346
    .local v15, "wantedBits":I
    invoke-virtual {v14}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    move-result v6

    if-lt v6, v15, :cond_4

    .line 1350
    add-int v2, v0, v11

    invoke-virtual {v14, v2}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 1352
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v12, :cond_3

    .line 1353
    invoke-virtual {v14, v9}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    .line 1354
    .local v3, "charCode":I
    if-lt v3, v8, :cond_0

    sget v4, Lcom/android/internal/telephony/cdma/sms/UserData;->ASCII_MAP_MAX_INDEX:I

    if-gt v3, v4, :cond_0

    .line 1356
    sget-object v4, Lcom/android/internal/telephony/cdma/sms/UserData;->ASCII_MAP:[C

    add-int/lit8 v6, v3, -0x20

    aget-char v4, v4, v6

    invoke-virtual {v13, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 1357
    :cond_0
    if-ne v3, v7, :cond_1

    .line 1358
    invoke-virtual {v13, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 1359
    :cond_1
    const/16 v4, 0xd

    if-ne v3, v4, :cond_2

    .line 1360
    invoke-virtual {v13, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 1363
    :cond_2
    invoke-virtual {v13, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1352
    .end local v3    # "charCode":I
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1366
    .end local v2    # "i":I
    :cond_3
    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1347
    :cond_4
    new-instance v6, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1348
    invoke-virtual {v14}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    .end local v12    # "numFields":I
    .end local p0    # "data":[B
    .end local p1    # "offset":I
    throw v6
    :try_end_1
    .catch Lcom/android/internal/util/BitwiseInputStream$AccessException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1367
    .end local v0    # "offsetBits":I
    .end local v10    # "offsetSeptets":I
    .end local v11    # "paddingBits":I
    .end local v13    # "strBuf":Ljava/lang/StringBuffer;
    .end local v14    # "inStream":Lcom/android/internal/util/BitwiseInputStream;
    .end local v15    # "wantedBits":I
    .restart local v12    # "numFields":I
    .restart local p0    # "data":[B
    .restart local p1    # "offset":I
    :catch_0
    move-exception v0

    goto :goto_2

    .end local v12    # "numFields":I
    .restart local p2    # "numFields":I
    :catch_1
    move-exception v0

    move/from16 v12, p2

    .line 1368
    .end local p2    # "numFields":I
    .local v0, "ex":Lcom/android/internal/util/BitwiseInputStream$AccessException;
    .restart local v12    # "numFields":I
    :goto_2
    new-instance v2, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1373
    .end local v0    # "ex":Lcom/android/internal/util/BitwiseInputStream$AccessException;
    .end local v12    # "numFields":I
    .restart local p2    # "numFields":I
    :cond_5
    mul-int/lit8 v0, p1, 0x8

    .line 1374
    .local v0, "offsetBits":I
    add-int/lit8 v6, v0, 0x6

    :try_start_2
    div-int/2addr v6, v9
    :try_end_2
    .catch Lcom/android/internal/util/BitwiseInputStream$AccessException; {:try_start_2 .. :try_end_2} :catch_3

    .line 1375
    .local v6, "offsetSeptets":I
    sub-int v10, p2, v6

    .line 1377
    .end local p2    # "numFields":I
    .local v10, "numFields":I
    :try_start_3
    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11, v10}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 1378
    .local v11, "strBuf":Ljava/lang/StringBuffer;
    new-instance v12, Lcom/android/internal/util/BitwiseInputStream;

    invoke-direct {v12, v1}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    .line 1379
    .local v12, "inStream":Lcom/android/internal/util/BitwiseInputStream;
    mul-int/lit8 v13, v6, 0x7

    mul-int/lit8 v14, v10, 0x7

    add-int/2addr v13, v14

    .line 1380
    .local v13, "wantedBits":I
    invoke-virtual {v12}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    move-result v14

    if-lt v14, v13, :cond_a

    .line 1384
    mul-int/lit8 v2, v6, 0x7

    invoke-virtual {v12, v2}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 1385
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_3
    if-ge v2, v10, :cond_9

    .line 1386
    invoke-virtual {v12, v9}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    .line 1387
    .restart local v3    # "charCode":I
    if-lt v3, v8, :cond_6

    sget v4, Lcom/android/internal/telephony/cdma/sms/UserData;->ASCII_MAP_MAX_INDEX:I

    if-gt v3, v4, :cond_6

    .line 1389
    sget-object v4, Lcom/android/internal/telephony/cdma/sms/UserData;->ASCII_MAP:[C

    add-int/lit8 v14, v3, -0x20

    aget-char v4, v4, v14

    invoke-virtual {v11, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/16 v4, 0xd

    goto :goto_4

    .line 1390
    :cond_6
    if-ne v3, v7, :cond_7

    .line 1391
    invoke-virtual {v11, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/16 v4, 0xd

    goto :goto_4

    .line 1392
    :cond_7
    const/16 v4, 0xd

    if-ne v3, v4, :cond_8

    .line 1393
    invoke-virtual {v11, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 1396
    :cond_8
    invoke-virtual {v11, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1385
    .end local v3    # "charCode":I
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1399
    .end local v2    # "i":I
    :cond_9
    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1381
    :cond_a
    new-instance v7, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1382
    invoke-virtual {v12}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v7, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    .end local v10    # "numFields":I
    .end local p0    # "data":[B
    .end local p1    # "offset":I
    throw v7
    :try_end_3
    .catch Lcom/android/internal/util/BitwiseInputStream$AccessException; {:try_start_3 .. :try_end_3} :catch_2

    .line 1400
    .end local v0    # "offsetBits":I
    .end local v6    # "offsetSeptets":I
    .end local v11    # "strBuf":Ljava/lang/StringBuffer;
    .end local v12    # "inStream":Lcom/android/internal/util/BitwiseInputStream;
    .end local v13    # "wantedBits":I
    .restart local v10    # "numFields":I
    .restart local p0    # "data":[B
    .restart local p1    # "offset":I
    :catch_2
    move-exception v0

    goto :goto_5

    .end local v10    # "numFields":I
    .restart local p2    # "numFields":I
    :catch_3
    move-exception v0

    move/from16 v10, p2

    .line 1401
    .end local p2    # "numFields":I
    .local v0, "ex":Lcom/android/internal/util/BitwiseInputStream$AccessException;
    .restart local v10    # "numFields":I
    :goto_5
    new-instance v2, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static blacklist decode7bitGsm([BII)Ljava/lang/String;
    .locals 9
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "numFields"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .line 1410
    mul-int/lit8 v0, p1, 0x8

    .line 1411
    .local v0, "offsetBits":I
    add-int/lit8 v1, v0, 0x6

    div-int/lit8 v1, v1, 0x7

    .line 1412
    .local v1, "offsetSeptets":I
    sub-int/2addr p2, v1

    .line 1413
    mul-int/lit8 v2, v1, 0x7

    sub-int v8, v2, v0

    .line 1414
    .local v8, "paddingBits":I
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, v8

    invoke-static/range {v2 .. v7}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BIIIII)Ljava/lang/String;

    move-result-object v2

    .line 1416
    .local v2, "result":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 1419
    return-object v2

    .line 1417
    :cond_0
    new-instance v3, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    const-string v4, "7bit GSM decoding failed"

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static blacklist decodeCallbackNumber(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 11
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "inStream"    # Lcom/android/internal/util/BitwiseInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;,
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .line 1816
    const/16 v0, 0x8

    .line 1817
    .local v0, "EXPECTED_PARAM_SIZE":I
    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v2

    mul-int/2addr v2, v1

    .line 1818
    .local v2, "paramBits":I
    if-ge v2, v1, :cond_0

    .line 1819
    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 1820
    const/4 v1, 0x0

    return v1

    .line 1822
    :cond_0
    new-instance v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    invoke-direct {v3}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;-><init>()V

    .line 1823
    .local v3, "addr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v5

    iput v5, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    .line 1824
    const/4 v5, 0x4

    .line 1825
    .local v5, "fieldBits":B
    const/4 v6, 0x1

    .line 1826
    .local v6, "consumedBits":B
    iget v7, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    if-ne v7, v4, :cond_1

    .line 1827
    const/4 v7, 0x3

    invoke-virtual {p1, v7}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v7

    iput v7, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->ton:I

    .line 1828
    const/4 v7, 0x4

    invoke-virtual {p1, v7}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v7

    iput v7, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    .line 1829
    const/16 v5, 0x8

    .line 1830
    add-int/lit8 v7, v6, 0x7

    int-to-byte v6, v7

    .line 1832
    :cond_1
    invoke-virtual {p1, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v1

    iput v1, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    .line 1833
    add-int/lit8 v1, v6, 0x8

    int-to-byte v1, v1

    .line 1834
    .end local v6    # "consumedBits":B
    .local v1, "consumedBits":B
    sub-int v6, v2, v1

    .line 1835
    .local v6, "remainingBits":I
    iget v7, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    mul-int/2addr v7, v5

    .line 1836
    .local v7, "dataBits":I
    sub-int v8, v6, v7

    .line 1837
    .local v8, "paddingBits":I
    if-lt v6, v7, :cond_2

    .line 1842
    invoke-virtual {p1, v7}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    move-result-object v9

    iput-object v9, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    .line 1843
    invoke-virtual {p1, v8}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 1844
    invoke-static {v3}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeSmsAddress(Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;)V

    .line 1845
    iput-object v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->callbackNumber:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .line 1846
    return v4

    .line 1838
    :cond_2
    new-instance v4, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "CALLBACK_NUMBER subparam encoding size error (remainingBits + "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", dataBits + "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", paddingBits + "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v4, v9}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private static blacklist decodeCharset([BIIILjava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "numFields"    # I
    .param p3, "width"    # I
    .param p4, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .line 1311
    if-ltz p2, :cond_0

    mul-int v0, p2, p3

    add-int/2addr v0, p1

    array-length v1, p0

    if-le v0, v1, :cond_1

    .line 1313
    :cond_0
    rem-int v0, p1, p3

    .line 1314
    .local v0, "padding":I
    array-length v1, p0

    sub-int/2addr v1, p1

    sub-int/2addr v1, v0

    div-int/2addr v1, p3

    .line 1315
    .local v1, "maxNumFields":I
    if-ltz v1, :cond_2

    .line 1318
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " decode error: offset = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " numFields = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " data.length = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " maxNumFields = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BearerData"

    invoke-static {v3, v2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1321
    move p2, v1

    .line 1324
    .end local v0    # "padding":I
    .end local v1    # "maxNumFields":I
    :cond_1
    :try_start_0
    new-instance v0, Ljava/lang/String;

    mul-int v1, p2, p3

    invoke-direct {v0, p0, p1, v1, p4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1325
    :catch_0
    move-exception v0

    .line 1326
    .local v0, "ex":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " decode failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1316
    .local v0, "padding":I
    .restart local v1    # "maxNumFields":I
    :cond_2
    new-instance v2, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " decode failed: offset out of range"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static blacklist decodeCmasUserData(Lcom/android/internal/telephony/cdma/sms/BearerData;I)V
    .locals 17
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "serviceCategory"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;,
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .line 2217
    move-object/from16 v0, p0

    new-instance v1, Lcom/android/internal/util/BitwiseInputStream;

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    invoke-direct {v1, v2}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    .line 2218
    .local v1, "inStream":Lcom/android/internal/util/BitwiseInputStream;
    invoke-virtual {v1}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    move-result v2

    const/16 v3, 0x8

    if-lt v2, v3, :cond_2

    .line 2221
    invoke-virtual {v1, v3}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v2

    .line 2222
    .local v2, "protocolVersion":I
    if-nez v2, :cond_1

    .line 2226
    invoke-static/range {p1 .. p1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->serviceCategoryToCmasMessageClass(I)I

    move-result v11

    .line 2227
    .local v11, "messageClass":I
    const/4 v4, -0x1

    .line 2228
    .local v4, "category":I
    const/4 v5, -0x1

    .line 2229
    .local v5, "responseType":I
    const/4 v6, -0x1

    .line 2230
    .local v6, "severity":I
    const/4 v7, -0x1

    .line 2231
    .local v7, "urgency":I
    const/4 v8, -0x1

    move v12, v4

    move v13, v5

    move v14, v6

    move v15, v7

    move/from16 v16, v8

    .line 2233
    .end local v4    # "category":I
    .end local v5    # "responseType":I
    .end local v6    # "severity":I
    .end local v7    # "urgency":I
    .local v12, "category":I
    .local v13, "responseType":I
    .local v14, "severity":I
    .local v15, "urgency":I
    .local v16, "certainty":I
    :goto_0
    invoke-virtual {v1}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    move-result v4

    const/16 v5, 0x10

    if-lt v4, v5, :cond_0

    .line 2234
    invoke-virtual {v1, v3}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v4

    .line 2235
    .local v4, "recordType":I
    invoke-virtual {v1, v3}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v5

    .line 2236
    .local v5, "recordLen":I
    packed-switch v4, :pswitch_data_0

    .line 2280
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "skipping unsupported CMAS record type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "BearerData"

    invoke-static {v7, v6}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2281
    mul-int/lit8 v6, v5, 0x8

    invoke-virtual {v1, v6}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    goto :goto_2

    .line 2271
    :pswitch_0
    invoke-virtual {v1, v3}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v6

    .line 2272
    .end local v12    # "category":I
    .local v6, "category":I
    invoke-virtual {v1, v3}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v7

    .line 2273
    .end local v13    # "responseType":I
    .local v7, "responseType":I
    const/4 v8, 0x4

    invoke-virtual {v1, v8}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v9

    .line 2274
    .end local v14    # "severity":I
    .local v9, "severity":I
    invoke-virtual {v1, v8}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v10

    .line 2275
    .end local v15    # "urgency":I
    .local v10, "urgency":I
    invoke-virtual {v1, v8}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v8

    .line 2276
    .end local v16    # "certainty":I
    .local v8, "certainty":I
    mul-int/lit8 v12, v5, 0x8

    add-int/lit8 v12, v12, -0x1c

    invoke-virtual {v1, v12}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 2277
    move v12, v6

    move v13, v7

    move/from16 v16, v8

    move v14, v9

    move v15, v10

    goto :goto_2

    .line 2238
    .end local v6    # "category":I
    .end local v7    # "responseType":I
    .end local v8    # "certainty":I
    .end local v9    # "severity":I
    .end local v10    # "urgency":I
    .restart local v12    # "category":I
    .restart local v13    # "responseType":I
    .restart local v14    # "severity":I
    .restart local v15    # "urgency":I
    .restart local v16    # "certainty":I
    :pswitch_1
    new-instance v6, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct {v6}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    .line 2239
    .local v6, "alertUserData":Lcom/android/internal/telephony/cdma/sms/UserData;
    const/4 v7, 0x5

    invoke-virtual {v1, v7}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v8

    iput v8, v6, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    .line 2240
    const/4 v8, 0x1

    iput-boolean v8, v6, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    .line 2241
    const/4 v8, 0x0

    iput v8, v6, Lcom/android/internal/telephony/cdma/sms/UserData;->msgType:I

    .line 2244
    iget v9, v6, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    packed-switch v9, :pswitch_data_1

    .line 2261
    :pswitch_2
    const/4 v9, 0x0

    .local v9, "numFields":I
    goto :goto_1

    .line 2257
    .end local v9    # "numFields":I
    :pswitch_3
    add-int/lit8 v9, v5, -0x1

    div-int/lit8 v9, v9, 0x2

    .line 2258
    .restart local v9    # "numFields":I
    goto :goto_1

    .line 2253
    .end local v9    # "numFields":I
    :pswitch_4
    mul-int/lit8 v9, v5, 0x8

    sub-int/2addr v9, v7

    div-int/lit8 v9, v9, 0x7

    .line 2254
    .restart local v9    # "numFields":I
    goto :goto_1

    .line 2247
    .end local v9    # "numFields":I
    :pswitch_5
    add-int/lit8 v9, v5, -0x1

    .line 2248
    .restart local v9    # "numFields":I
    nop

    .line 2264
    :goto_1
    iput v9, v6, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    .line 2265
    mul-int/lit8 v10, v5, 0x8

    sub-int/2addr v10, v7

    invoke-virtual {v1, v10}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    move-result-object v7

    iput-object v7, v6, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 2266
    invoke-static {v6, v8}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeUserDataPayload(Lcom/android/internal/telephony/cdma/sms/UserData;Z)V

    .line 2267
    iput-object v6, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    .line 2268
    nop

    .line 2284
    .end local v4    # "recordType":I
    .end local v5    # "recordLen":I
    .end local v6    # "alertUserData":Lcom/android/internal/telephony/cdma/sms/UserData;
    .end local v9    # "numFields":I
    :goto_2
    goto/16 :goto_0

    .line 2286
    :cond_0
    new-instance v3, Landroid/telephony/SmsCbCmasInfo;

    move-object v4, v3

    move v5, v11

    move v6, v12

    move v7, v13

    move v8, v14

    move v9, v15

    move/from16 v10, v16

    invoke-direct/range {v4 .. v10}, Landroid/telephony/SmsCbCmasInfo;-><init>(IIIIII)V

    iput-object v3, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->cmasWarningInfo:Landroid/telephony/SmsCbCmasInfo;

    .line 2288
    return-void

    .line 2223
    .end local v11    # "messageClass":I
    .end local v12    # "category":I
    .end local v13    # "responseType":I
    .end local v14    # "severity":I
    .end local v15    # "urgency":I
    .end local v16    # "certainty":I
    :cond_1
    new-instance v3, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unsupported CMAE_protocol_version "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2219
    .end local v2    # "protocolVersion":I
    :cond_2
    new-instance v2, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    const-string v3, "emergency CB with no CMAE_protocol_version"

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_2
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method private static blacklist decodeDeferredDeliveryAbs(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 5
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "inStream"    # Lcom/android/internal/util/BitwiseInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;
        }
    .end annotation

    .line 1910
    const/16 v0, 0x30

    .line 1911
    .local v0, "EXPECTED_PARAM_SIZE":I
    const/4 v1, 0x0

    .line 1912
    .local v1, "decodeSuccess":Z
    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    mul-int/2addr v3, v2

    .line 1913
    .local v3, "paramBits":I
    const/16 v2, 0x30

    if-lt v3, v2, :cond_0

    .line 1914
    add-int/lit8 v3, v3, -0x30

    .line 1915
    const/4 v1, 0x1

    .line 1916
    nop

    .line 1917
    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    move-result-object v2

    .line 1916
    invoke-static {v2}, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->fromByteArray([B)Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->deferredDeliveryTimeAbsolute:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    .line 1919
    :cond_0
    if-eqz v1, :cond_1

    if-lez v3, :cond_3

    .line 1920
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DEFERRED_DELIVERY_TIME_ABSOLUTE decode "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1921
    if-eqz v1, :cond_2

    const-string/jumbo v4, "succeeded"

    goto :goto_0

    :cond_2
    const-string v4, "failed"

    :goto_0
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " (extra bits = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1920
    const-string v4, "BearerData"

    invoke-static {v4, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1924
    :cond_3
    invoke-virtual {p1, v3}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 1925
    return v1
.end method

.method private static blacklist decodeDeferredDeliveryRel(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 5
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "inStream"    # Lcom/android/internal/util/BitwiseInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;
        }
    .end annotation

    .line 1950
    const/16 v0, 0x8

    .line 1951
    .local v0, "EXPECTED_PARAM_SIZE":I
    const/4 v1, 0x0

    .line 1952
    .local v1, "decodeSuccess":Z
    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    mul-int/2addr v3, v2

    .line 1953
    .local v3, "paramBits":I
    if-lt v3, v2, :cond_0

    .line 1954
    add-int/lit8 v3, v3, -0x8

    .line 1955
    const/4 v1, 0x1

    .line 1956
    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->validityPeriodRelative:I

    .line 1958
    :cond_0
    if-eqz v1, :cond_1

    if-lez v3, :cond_3

    .line 1959
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DEFERRED_DELIVERY_TIME_RELATIVE decode "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1960
    if-eqz v1, :cond_2

    const-string/jumbo v4, "succeeded"

    goto :goto_0

    :cond_2
    const-string v4, "failed"

    :goto_0
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " (extra bits = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1959
    const-string v4, "BearerData"

    invoke-static {v4, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1963
    :cond_3
    invoke-virtual {p1, v3}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 1964
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->validityPeriodRelativeSet:Z

    .line 1965
    return v1
.end method

.method private static blacklist decodeDepositIndex(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 5
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "inStream"    # Lcom/android/internal/util/BitwiseInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;
        }
    .end annotation

    .line 1762
    const/16 v0, 0x10

    .line 1763
    .local v0, "EXPECTED_PARAM_SIZE":I
    const/4 v1, 0x0

    .line 1764
    .local v1, "decodeSuccess":Z
    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    mul-int/2addr v3, v2

    .line 1765
    .local v3, "paramBits":I
    const/16 v4, 0x10

    if-lt v3, v4, :cond_0

    .line 1766
    add-int/lit8 v3, v3, -0x10

    .line 1767
    const/4 v1, 0x1

    .line 1768
    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v4

    shl-int/2addr v4, v2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v2

    or-int/2addr v2, v4

    iput v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->depositIndex:I

    .line 1770
    :cond_0
    if-eqz v1, :cond_1

    if-lez v3, :cond_3

    .line 1771
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MESSAGE_DEPOSIT_INDEX decode "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1772
    if-eqz v1, :cond_2

    const-string/jumbo v4, "succeeded"

    goto :goto_0

    :cond_2
    const-string v4, "failed"

    :goto_0
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " (extra bits = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1771
    const-string v4, "BearerData"

    invoke-static {v4, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1775
    :cond_3
    invoke-virtual {p1, v3}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 1776
    return v1
.end method

.method private static blacklist decodeDisplayMode(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 5
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "inStream"    # Lcom/android/internal/util/BitwiseInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;
        }
    .end annotation

    .line 2011
    const/16 v0, 0x8

    .line 2012
    .local v0, "EXPECTED_PARAM_SIZE":I
    const/4 v1, 0x0

    .line 2013
    .local v1, "decodeSuccess":Z
    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    mul-int/2addr v3, v2

    .line 2014
    .local v3, "paramBits":I
    if-lt v3, v2, :cond_0

    .line 2015
    add-int/lit8 v3, v3, -0x8

    .line 2016
    const/4 v1, 0x1

    .line 2017
    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->displayMode:I

    .line 2018
    const/4 v2, 0x6

    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 2020
    :cond_0
    if-eqz v1, :cond_1

    if-lez v3, :cond_3

    .line 2021
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DISPLAY_MODE decode "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2022
    if-eqz v1, :cond_2

    const-string/jumbo v4, "succeeded"

    goto :goto_0

    :cond_2
    const-string v4, "failed"

    :goto_0
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " (extra bits = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2021
    const-string v4, "BearerData"

    invoke-static {v4, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2025
    :cond_3
    invoke-virtual {p1, v3}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 2026
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->displayModeSet:Z

    .line 2027
    return v1
.end method

.method private static blacklist decodeDtmfSmsAddress([BI)Ljava/lang/String;
    .locals 6
    .param p0, "rawData"    # [B
    .param p1, "numFields"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .line 1784
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 1785
    .local v0, "strBuf":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_5

    .line 1786
    div-int/lit8 v2, v1, 0x2

    aget-byte v2, p0, v2

    rem-int/lit8 v3, v1, 0x2

    mul-int/lit8 v3, v3, 0x4

    rsub-int/lit8 v3, v3, 0x4

    ushr-int/2addr v2, v3

    and-int/lit8 v2, v2, 0xf

    .line 1787
    .local v2, "val":I
    const/16 v3, 0xa

    const/4 v4, 0x1

    if-lt v2, v4, :cond_0

    const/16 v4, 0x9

    if-gt v2, v4, :cond_0

    invoke-static {v2, v3}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 1788
    :cond_0
    const/16 v4, 0x30

    if-ne v2, v3, :cond_1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 1789
    :cond_1
    const/16 v3, 0xb

    if-ne v2, v3, :cond_2

    const/16 v3, 0x2a

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 1790
    :cond_2
    const/16 v3, 0xc

    if-ne v2, v3, :cond_3

    const/16 v3, 0x23

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 1792
    :cond_3
    if-nez v2, :cond_4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1785
    .end local v2    # "val":I
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1794
    .restart local v2    # "val":I
    :cond_4
    new-instance v3, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "invalid SMS address DTMF code ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1796
    .end local v1    # "i":I
    .end local v2    # "val":I
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist decodeGsmDcs([BIII)Ljava/lang/String;
    .locals 4
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "numFields"    # I
    .param p3, "msgType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .line 1437
    and-int/lit16 v0, p3, 0xc0

    const-string v1, ")"

    if-nez v0, :cond_0

    .line 1442
    shr-int/lit8 v0, p3, 0x2

    and-int/lit8 v0, v0, 0x3

    packed-switch v0, :pswitch_data_0

    .line 1450
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unsupported user msgType encoding ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1448
    :pswitch_0
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeUtf16([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1446
    :pswitch_1
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeUtf8([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1444
    :pswitch_2
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decode7bitGsm([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1438
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unsupported coding group ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static blacklist decodeIs91(Lcom/android/internal/telephony/cdma/sms/BearerData;)V
    .locals 3
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;,
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .line 1695
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgType:I

    packed-switch v0, :pswitch_data_0

    .line 1707
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unsupported IS-91 message type ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v2, v2, Lcom/android/internal/telephony/cdma/sms/UserData;->msgType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1700
    :pswitch_0
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeIs91Cli(Lcom/android/internal/telephony/cdma/sms/BearerData;)V

    .line 1701
    goto :goto_0

    .line 1704
    :pswitch_1
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeIs91ShortMessage(Lcom/android/internal/telephony/cdma/sms/BearerData;)V

    .line 1705
    goto :goto_0

    .line 1697
    :pswitch_2
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeIs91VoicemailStatus(Lcom/android/internal/telephony/cdma/sms/BearerData;)V

    .line 1698
    nop

    .line 1710
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x82
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static blacklist decodeIs91Cli(Lcom/android/internal/telephony/cdma/sms/BearerData;)V
    .locals 5
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .line 1678
    new-instance v0, Lcom/android/internal/util/BitwiseInputStream;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    invoke-direct {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    .line 1679
    .local v0, "inStream":Lcom/android/internal/util/BitwiseInputStream;
    invoke-virtual {v0}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    move-result v1

    div-int/lit8 v1, v1, 0x4

    .line 1680
    .local v1, "dataLen":I
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v2, v2, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    .line 1681
    .local v2, "numFields":I
    const/16 v3, 0xe

    if-gt v1, v3, :cond_0

    const/4 v3, 0x3

    if-lt v1, v3, :cond_0

    if-lt v1, v2, :cond_0

    .line 1684
    new-instance v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    invoke-direct {v3}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;-><init>()V

    .line 1685
    .local v3, "addr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    const/4 v4, 0x0

    iput v4, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    .line 1686
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    iput-object v4, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    .line 1687
    int-to-byte v4, v2

    iput v4, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    .line 1688
    invoke-static {v3}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeSmsAddress(Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;)V

    .line 1689
    iput-object v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->callbackNumber:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .line 1690
    return-void

    .line 1682
    .end local v3    # "addr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    :cond_0
    new-instance v3, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    const-string v4, "IS-91 voicemail status decoding failed"

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static blacklist decodeIs91ShortMessage(Lcom/android/internal/telephony/cdma/sms/BearerData;)V
    .locals 8
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;,
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .line 1655
    new-instance v0, Lcom/android/internal/util/BitwiseInputStream;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    invoke-direct {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    .line 1656
    .local v0, "inStream":Lcom/android/internal/util/BitwiseInputStream;
    invoke-virtual {v0}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    move-result v1

    const/4 v2, 0x6

    div-int/2addr v1, v2

    .line 1657
    .local v1, "dataLen":I
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v3, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    .line 1659
    .local v3, "numFields":I
    const/16 v4, 0xe

    if-gt v3, v4, :cond_1

    if-lt v1, v3, :cond_1

    .line 1662
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 1663
    .local v4, "strbuf":Ljava/lang/StringBuffer;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v3, :cond_0

    .line 1664
    sget-object v6, Lcom/android/internal/telephony/cdma/sms/UserData;->ASCII_MAP:[C

    invoke-virtual {v0, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v7

    aget-char v6, v6, v7

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1663
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1666
    .end local v5    # "i":I
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 1667
    return-void

    .line 1660
    .end local v4    # "strbuf":Ljava/lang/StringBuffer;
    :cond_1
    new-instance v2, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    const-string v4, "IS-91 short message decoding failed"

    invoke-direct {v2, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static blacklist decodeIs91VoicemailStatus(Lcom/android/internal/telephony/cdma/sms/BearerData;)V
    .locals 11
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;,
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .line 1612
    const-string v0, "IS-91 voicemail status decoding failed: "

    new-instance v1, Lcom/android/internal/util/BitwiseInputStream;

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    invoke-direct {v1, v2}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    .line 1613
    .local v1, "inStream":Lcom/android/internal/util/BitwiseInputStream;
    invoke-virtual {v1}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    move-result v2

    const/4 v3, 0x6

    div-int/2addr v2, v3

    .line 1614
    .local v2, "dataLen":I
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v4, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    .line 1615
    .local v4, "numFields":I
    const/16 v5, 0xe

    if-gt v2, v5, :cond_3

    const/4 v5, 0x3

    if-lt v2, v5, :cond_3

    if-lt v2, v4, :cond_3

    .line 1619
    :try_start_0
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 1620
    .local v6, "strbuf":Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {v1}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    move-result v7

    if-lt v7, v3, :cond_0

    .line 1621
    sget-object v7, Lcom/android/internal/telephony/cdma/sms/UserData;->ASCII_MAP:[C

    invoke-virtual {v1, v3}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v8

    aget-char v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 1623
    :cond_0
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1624
    .local v3, "data":Ljava/lang/String;
    const/4 v7, 0x0

    const/4 v8, 0x2

    invoke-virtual {v3, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->numberOfMessages:I

    .line 1625
    invoke-virtual {v3, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 1626
    .local v9, "prioCode":C
    const/16 v10, 0x20

    if-ne v9, v10, :cond_1

    .line 1627
    iput v7, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->priority:I

    goto :goto_1

    .line 1628
    :cond_1
    const/16 v7, 0x21

    if-ne v9, v7, :cond_2

    .line 1629
    iput v8, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->priority:I

    .line 1634
    :goto_1
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->priorityIndicatorSet:Z

    .line 1635
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    add-int/lit8 v8, v4, -0x3

    invoke-virtual {v3, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v7, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 1640
    .end local v3    # "data":Ljava/lang/String;
    .end local v6    # "strbuf":Ljava/lang/StringBuffer;
    .end local v9    # "prioCode":C
    nop

    .line 1641
    return-void

    .line 1631
    .restart local v3    # "data":Ljava/lang/String;
    .restart local v6    # "strbuf":Ljava/lang/StringBuffer;
    .restart local v9    # "prioCode":C
    :cond_2
    new-instance v5, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IS-91 voicemail status decoding failed: illegal priority setting ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    .end local v1    # "inStream":Lcom/android/internal/util/BitwiseInputStream;
    .end local v2    # "dataLen":I
    .end local v4    # "numFields":I
    .end local p0    # "bData":Lcom/android/internal/telephony/cdma/sms/BearerData;
    throw v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1638
    .end local v3    # "data":Ljava/lang/String;
    .end local v6    # "strbuf":Ljava/lang/StringBuffer;
    .end local v9    # "prioCode":C
    .restart local v1    # "inStream":Lcom/android/internal/util/BitwiseInputStream;
    .restart local v2    # "dataLen":I
    .restart local v4    # "numFields":I
    .restart local p0    # "bData":Lcom/android/internal/telephony/cdma/sms/BearerData;
    :catch_0
    move-exception v3

    .line 1639
    .local v3, "ex":Ljava/lang/IndexOutOfBoundsException;
    new-instance v5, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1636
    .end local v3    # "ex":Ljava/lang/IndexOutOfBoundsException;
    :catch_1
    move-exception v3

    .line 1637
    .local v3, "ex":Ljava/lang/NumberFormatException;
    new-instance v5, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1616
    .end local v3    # "ex":Ljava/lang/NumberFormatException;
    :cond_3
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    const-string v3, "IS-91 voicemail status decoding failed"

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist decodeKSC5601([BII)Ljava/lang/String;
    .locals 5
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "numFields"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .line 2536
    rem-int/lit8 v0, p1, 0x2

    .line 2537
    .local v0, "padding":I
    add-int v1, p1, v0

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr p2, v1

    .line 2539
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "EUC_KR"

    invoke-direct {v1, p0, p1, p2, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 2540
    :catch_0
    move-exception v1

    .line 2541
    .local v1, "ex":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EUC-KR decode failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static blacklist decodeLanguageIndicator(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 5
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "inStream"    # Lcom/android/internal/util/BitwiseInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;
        }
    .end annotation

    .line 1991
    const/16 v0, 0x8

    .line 1992
    .local v0, "EXPECTED_PARAM_SIZE":I
    const/4 v1, 0x0

    .line 1993
    .local v1, "decodeSuccess":Z
    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    mul-int/2addr v3, v2

    .line 1994
    .local v3, "paramBits":I
    if-lt v3, v2, :cond_0

    .line 1995
    add-int/lit8 v3, v3, -0x8

    .line 1996
    const/4 v1, 0x1

    .line 1997
    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->language:I

    .line 1999
    :cond_0
    if-eqz v1, :cond_1

    if-lez v3, :cond_3

    .line 2000
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LANGUAGE_INDICATOR decode "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2001
    if-eqz v1, :cond_2

    const-string/jumbo v4, "succeeded"

    goto :goto_0

    :cond_2
    const-string v4, "failed"

    :goto_0
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " (extra bits = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2000
    const-string v4, "BearerData"

    invoke-static {v4, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2004
    :cond_3
    invoke-virtual {p1, v3}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 2005
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->languageIndicatorSet:Z

    .line 2006
    return v1
.end method

.method private static blacklist decodeLatin([BII)Ljava/lang/String;
    .locals 2
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "numFields"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .line 1425
    const/4 v0, 0x1

    const-string v1, "ISO-8859-1"

    invoke-static {p0, p1, p2, v0, v1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeCharset([BIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist decodeMessageId(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 5
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "inStream"    # Lcom/android/internal/util/BitwiseInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;
        }
    .end annotation

    .line 1211
    const/16 v0, 0x18

    .line 1212
    .local v0, "EXPECTED_PARAM_SIZE":I
    const/4 v1, 0x0

    .line 1213
    .local v1, "decodeSuccess":Z
    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    mul-int/2addr v3, v2

    .line 1214
    .local v3, "paramBits":I
    const/16 v4, 0x18

    if-lt v3, v4, :cond_1

    .line 1215
    add-int/lit8 v3, v3, -0x18

    .line 1216
    const/4 v1, 0x1

    .line 1217
    const/4 v4, 0x4

    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v4

    iput v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    .line 1218
    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v4

    shl-int/2addr v4, v2

    iput v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    .line 1219
    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v2

    or-int/2addr v2, v4

    iput v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    .line 1220
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v4

    if-ne v4, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->hasUserDataHeader:Z

    .line 1221
    const/4 v2, 0x3

    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 1223
    :cond_1
    if-eqz v1, :cond_2

    if-lez v3, :cond_4

    .line 1224
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MESSAGE_IDENTIFIER decode "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1225
    if-eqz v1, :cond_3

    const-string/jumbo v4, "succeeded"

    goto :goto_1

    :cond_3
    const-string v4, "failed"

    :goto_1
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " (extra bits = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1224
    const-string v4, "BearerData"

    invoke-static {v4, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1228
    :cond_4
    invoke-virtual {p1, v3}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 1229
    return v1
.end method

.method private static blacklist decodeMsgCenterTimeStamp(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 5
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "inStream"    # Lcom/android/internal/util/BitwiseInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;
        }
    .end annotation

    .line 1872
    const/16 v0, 0x30

    .line 1873
    .local v0, "EXPECTED_PARAM_SIZE":I
    const/4 v1, 0x0

    .line 1874
    .local v1, "decodeSuccess":Z
    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    mul-int/2addr v3, v2

    .line 1875
    .local v3, "paramBits":I
    const/16 v2, 0x30

    if-lt v3, v2, :cond_0

    .line 1876
    add-int/lit8 v3, v3, -0x30

    .line 1877
    const/4 v1, 0x1

    .line 1878
    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->fromByteArray([B)Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    .line 1880
    :cond_0
    if-eqz v1, :cond_1

    if-lez v3, :cond_3

    .line 1881
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MESSAGE_CENTER_TIME_STAMP decode "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1882
    if-eqz v1, :cond_2

    const-string/jumbo v4, "succeeded"

    goto :goto_0

    :cond_2
    const-string v4, "failed"

    :goto_0
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " (extra bits = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1881
    const-string v4, "BearerData"

    invoke-static {v4, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1885
    :cond_3
    invoke-virtual {p1, v3}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 1886
    return v1
.end method

.method private static blacklist decodeMsgCount(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 6
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "inStream"    # Lcom/android/internal/util/BitwiseInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;
        }
    .end annotation

    .line 1737
    const/16 v0, 0x8

    .line 1738
    .local v0, "EXPECTED_PARAM_SIZE":I
    const/4 v1, 0x0

    .line 1739
    .local v1, "decodeSuccess":Z
    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    mul-int/2addr v3, v2

    .line 1740
    .local v3, "paramBits":I
    if-lt v3, v2, :cond_1

    .line 1741
    add-int/lit8 v3, v3, -0x8

    .line 1742
    const/4 v1, 0x1

    .line 1744
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v4

    const-string/jumbo v5, "sms_3gpp2_lgt_network"

    invoke-virtual {v4, v5}, Landroid/telephony/SmsManager;->getSmsSetting(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1745
    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v2

    int-to-byte v2, v2

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/IccUtils;->cdmaHexByteToInt(B)I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->numberOfMessages:I

    goto :goto_0

    .line 1747
    :cond_0
    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v2

    int-to-byte v2, v2

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/IccUtils;->cdmaBcdByteToInt(B)I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->numberOfMessages:I

    .line 1751
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    if-lez v3, :cond_4

    .line 1752
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NUMBER_OF_MESSAGES decode "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1753
    if-eqz v1, :cond_3

    const-string/jumbo v4, "succeeded"

    goto :goto_1

    :cond_3
    const-string v4, "failed"

    :goto_1
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " (extra bits = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1752
    const-string v4, "BearerData"

    invoke-static {v4, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1756
    :cond_4
    invoke-virtual {p1, v3}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 1757
    return v1
.end method

.method private static blacklist decodeMsgDeliveryAlert(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 5
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "inStream"    # Lcom/android/internal/util/BitwiseInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;
        }
    .end annotation

    .line 2053
    const/16 v0, 0x8

    .line 2054
    .local v0, "EXPECTED_PARAM_SIZE":I
    const/4 v1, 0x0

    .line 2055
    .local v1, "decodeSuccess":Z
    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    mul-int/2addr v3, v2

    .line 2056
    .local v3, "paramBits":I
    if-lt v3, v2, :cond_0

    .line 2057
    add-int/lit8 v3, v3, -0x8

    .line 2058
    const/4 v1, 0x1

    .line 2059
    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->alert:I

    .line 2060
    const/4 v2, 0x6

    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 2062
    :cond_0
    if-eqz v1, :cond_1

    if-lez v3, :cond_3

    .line 2063
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ALERT_ON_MESSAGE_DELIVERY decode "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2064
    if-eqz v1, :cond_2

    const-string/jumbo v4, "succeeded"

    goto :goto_0

    :cond_2
    const-string v4, "failed"

    :goto_0
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " (extra bits = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2063
    const-string v4, "BearerData"

    invoke-static {v4, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2067
    :cond_3
    invoke-virtual {p1, v3}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 2068
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->alertIndicatorSet:Z

    .line 2069
    return v1
.end method

.method private static blacklist decodeMsgStatus(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 5
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "inStream"    # Lcom/android/internal/util/BitwiseInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;
        }
    .end annotation

    .line 1851
    const/16 v0, 0x8

    .line 1852
    .local v0, "EXPECTED_PARAM_SIZE":I
    const/4 v1, 0x0

    .line 1853
    .local v1, "decodeSuccess":Z
    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    mul-int/2addr v3, v2

    .line 1854
    .local v3, "paramBits":I
    if-lt v3, v2, :cond_0

    .line 1855
    add-int/lit8 v3, v3, -0x8

    .line 1856
    const/4 v1, 0x1

    .line 1857
    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->errorClass:I

    .line 1858
    const/4 v2, 0x6

    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageStatus:I

    .line 1860
    :cond_0
    if-eqz v1, :cond_1

    if-lez v3, :cond_3

    .line 1861
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MESSAGE_STATUS decode "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1862
    if-eqz v1, :cond_2

    const-string/jumbo v4, "succeeded"

    goto :goto_0

    :cond_2
    const-string v4, "failed"

    :goto_0
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " (extra bits = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1861
    const-string v4, "BearerData"

    invoke-static {v4, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1865
    :cond_3
    invoke-virtual {p1, v3}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 1866
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageStatusSet:Z

    .line 1867
    return v1
.end method

.method private static blacklist decodePriorityIndicator(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 5
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "inStream"    # Lcom/android/internal/util/BitwiseInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;
        }
    .end annotation

    .line 2032
    const/16 v0, 0x8

    .line 2033
    .local v0, "EXPECTED_PARAM_SIZE":I
    const/4 v1, 0x0

    .line 2034
    .local v1, "decodeSuccess":Z
    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    mul-int/2addr v3, v2

    .line 2035
    .local v3, "paramBits":I
    if-lt v3, v2, :cond_0

    .line 2036
    add-int/lit8 v3, v3, -0x8

    .line 2037
    const/4 v1, 0x1

    .line 2038
    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->priority:I

    .line 2039
    const/4 v2, 0x6

    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 2041
    :cond_0
    if-eqz v1, :cond_1

    if-lez v3, :cond_3

    .line 2042
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PRIORITY_INDICATOR decode "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2043
    if-eqz v1, :cond_2

    const-string/jumbo v4, "succeeded"

    goto :goto_0

    :cond_2
    const-string v4, "failed"

    :goto_0
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " (extra bits = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2042
    const-string v4, "BearerData"

    invoke-static {v4, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2046
    :cond_3
    invoke-virtual {p1, v3}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 2047
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->priorityIndicatorSet:Z

    .line 2048
    return v1
.end method

.method private static blacklist decodePrivacyIndicator(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 5
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "inStream"    # Lcom/android/internal/util/BitwiseInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;
        }
    .end annotation

    .line 1970
    const/16 v0, 0x8

    .line 1971
    .local v0, "EXPECTED_PARAM_SIZE":I
    const/4 v1, 0x0

    .line 1972
    .local v1, "decodeSuccess":Z
    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    mul-int/2addr v3, v2

    .line 1973
    .local v3, "paramBits":I
    if-lt v3, v2, :cond_0

    .line 1974
    add-int/lit8 v3, v3, -0x8

    .line 1975
    const/4 v1, 0x1

    .line 1976
    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->privacy:I

    .line 1977
    const/4 v2, 0x6

    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 1979
    :cond_0
    if-eqz v1, :cond_1

    if-lez v3, :cond_3

    .line 1980
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PRIVACY_INDICATOR decode "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1981
    if-eqz v1, :cond_2

    const-string/jumbo v4, "succeeded"

    goto :goto_0

    :cond_2
    const-string v4, "failed"

    :goto_0
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " (extra bits = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1980
    const-string v4, "BearerData"

    invoke-static {v4, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1984
    :cond_3
    invoke-virtual {p1, v3}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 1985
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->privacyIndicatorSet:Z

    .line 1986
    return v1
.end method

.method private static blacklist decodeReplyOption(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 6
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "inStream"    # Lcom/android/internal/util/BitwiseInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;
        }
    .end annotation

    .line 1714
    const/16 v0, 0x8

    .line 1715
    .local v0, "EXPECTED_PARAM_SIZE":I
    const/4 v1, 0x0

    .line 1716
    .local v1, "decodeSuccess":Z
    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    mul-int/2addr v3, v2

    .line 1717
    .local v3, "paramBits":I
    if-lt v3, v2, :cond_4

    .line 1718
    add-int/lit8 v3, v3, -0x8

    .line 1719
    const/4 v1, 0x1

    .line 1720
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v4

    const/4 v5, 0x0

    if-ne v4, v2, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v5

    :goto_0
    iput-boolean v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userAckReq:Z

    .line 1721
    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v4

    if-ne v4, v2, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v5

    :goto_1
    iput-boolean v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->deliveryAckReq:Z

    .line 1722
    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v4

    if-ne v4, v2, :cond_2

    move v4, v2

    goto :goto_2

    :cond_2
    move v4, v5

    :goto_2
    iput-boolean v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->readAckReq:Z

    .line 1723
    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v4

    if-ne v4, v2, :cond_3

    goto :goto_3

    :cond_3
    move v2, v5

    :goto_3
    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->reportReq:Z

    .line 1724
    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 1726
    :cond_4
    if-eqz v1, :cond_5

    if-lez v3, :cond_7

    .line 1727
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "REPLY_OPTION decode "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1728
    if-eqz v1, :cond_6

    const-string/jumbo v4, "succeeded"

    goto :goto_4

    :cond_6
    const-string v4, "failed"

    :goto_4
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " (extra bits = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1727
    const-string v4, "BearerData"

    invoke-static {v4, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1731
    :cond_7
    invoke-virtual {p1, v3}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 1732
    return v1
.end method

.method private static blacklist decodeReserved(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;I)Z
    .locals 6
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "inStream"    # Lcom/android/internal/util/BitwiseInputStream;
    .param p2, "subparamId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;,
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .line 1236
    const/4 v0, 0x0

    .line 1237
    .local v0, "decodeSuccess":Z
    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v1

    .line 1238
    .local v1, "subparamLen":I
    mul-int/lit8 v2, v1, 0x8

    .line 1239
    .local v2, "paramBits":I
    invoke-virtual {p1}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    move-result v3

    if-gt v2, v3, :cond_0

    .line 1240
    const/4 v0, 0x1

    .line 1241
    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 1243
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RESERVED bearer data subparameter "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " decode "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1244
    if-eqz v0, :cond_1

    const-string/jumbo v5, "succeeded"

    goto :goto_0

    :cond_1
    const-string v5, "failed"

    :goto_0
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " (param bits = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1243
    const-string v5, "BearerData"

    invoke-static {v5, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1245
    if-eqz v0, :cond_2

    .line 1250
    return v0

    .line 1246
    :cond_2
    new-instance v3, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " had invalid SUBPARAM_LEN "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static blacklist decodeServiceCategoryProgramData(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 24
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "inStream"    # Lcom/android/internal/util/BitwiseInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;,
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .line 2095
    move-object/from16 v0, p1

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    move-result v1

    const-string v2, " bits available"

    const-string v3, "SERVICE_CATEGORY_PROGRAM_DATA decode failed: only "

    const/16 v4, 0xd

    if-lt v1, v4, :cond_6

    .line 2100
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v4

    mul-int/2addr v4, v1

    .line 2101
    .local v4, "paramBits":I
    const/4 v5, 0x5

    invoke-virtual {v0, v5}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v5

    .line 2102
    .local v5, "msgEncoding":I
    add-int/lit8 v4, v4, -0x5

    .line 2104
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    move-result v6

    if-lt v6, v4, :cond_5

    .line 2109
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2111
    .local v3, "programDataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/cdma/CdmaSmsCbProgramData;>;"
    const/16 v6, 0x30

    .line 2112
    .local v6, "CATEGORY_FIELD_MIN_SIZE":I
    const/4 v7, 0x0

    .line 2113
    .local v7, "decodeSuccess":Z
    :goto_0
    const/16 v8, 0x30

    if-lt v4, v8, :cond_1

    .line 2114
    const/4 v8, 0x4

    invoke-virtual {v0, v8}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v16

    .line 2115
    .local v16, "operation":I
    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v9

    shl-int/2addr v9, v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v10

    or-int v17, v9, v10

    .line 2116
    .local v17, "category":I
    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v18

    .line 2117
    .local v18, "language":I
    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v19

    .line 2118
    .local v19, "maxMessages":I
    invoke-virtual {v0, v8}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v8

    .line 2119
    .local v8, "alertOption":I
    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v15

    .line 2120
    .local v15, "numFields":I
    add-int/lit8 v4, v4, -0x30

    .line 2122
    invoke-static {v5, v15}, Lcom/android/internal/telephony/cdma/sms/BearerData;->getBitsForNumFields(II)I

    move-result v14

    .line 2123
    .local v14, "textBits":I
    if-lt v4, v14, :cond_0

    .line 2128
    new-instance v9, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct {v9}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    move-object v13, v9

    .line 2129
    .local v13, "userData":Lcom/android/internal/telephony/cdma/sms/UserData;
    iput v5, v13, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    .line 2130
    const/4 v9, 0x1

    iput-boolean v9, v13, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    .line 2131
    iput v15, v13, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    .line 2132
    invoke-virtual {v0, v14}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    move-result-object v9

    iput-object v9, v13, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 2133
    sub-int/2addr v4, v14

    .line 2135
    const/4 v9, 0x0

    invoke-static {v13, v9}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeUserDataPayload(Lcom/android/internal/telephony/cdma/sms/UserData;Z)V

    .line 2136
    iget-object v12, v13, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 2137
    .local v12, "categoryName":Ljava/lang/String;
    new-instance v20, Landroid/telephony/cdma/CdmaSmsCbProgramData;

    move-object/from16 v9, v20

    move/from16 v10, v16

    move/from16 v11, v17

    move-object/from16 v21, v12

    .end local v12    # "categoryName":Ljava/lang/String;
    .local v21, "categoryName":Ljava/lang/String;
    move/from16 v12, v18

    move-object/from16 v22, v13

    .end local v13    # "userData":Lcom/android/internal/telephony/cdma/sms/UserData;
    .local v22, "userData":Lcom/android/internal/telephony/cdma/sms/UserData;
    move/from16 v13, v19

    move v1, v14

    .end local v14    # "textBits":I
    .local v1, "textBits":I
    move v14, v8

    move/from16 v23, v15

    .end local v15    # "numFields":I
    .local v23, "numFields":I
    move-object/from16 v15, v21

    invoke-direct/range {v9 .. v15}, Landroid/telephony/cdma/CdmaSmsCbProgramData;-><init>(IIIIILjava/lang/String;)V

    .line 2139
    .local v9, "programData":Landroid/telephony/cdma/CdmaSmsCbProgramData;
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2141
    const/4 v7, 0x1

    .line 2142
    .end local v1    # "textBits":I
    .end local v8    # "alertOption":I
    .end local v9    # "programData":Landroid/telephony/cdma/CdmaSmsCbProgramData;
    .end local v16    # "operation":I
    .end local v17    # "category":I
    .end local v18    # "language":I
    .end local v19    # "maxMessages":I
    .end local v21    # "categoryName":Ljava/lang/String;
    .end local v22    # "userData":Lcom/android/internal/telephony/cdma/sms/UserData;
    .end local v23    # "numFields":I
    const/16 v1, 0x8

    goto :goto_0

    .line 2124
    .restart local v8    # "alertOption":I
    .restart local v14    # "textBits":I
    .restart local v15    # "numFields":I
    .restart local v16    # "operation":I
    .restart local v17    # "category":I
    .restart local v18    # "language":I
    .restart local v19    # "maxMessages":I
    :cond_0
    move v1, v14

    .end local v14    # "textBits":I
    .restart local v1    # "textBits":I
    new-instance v9, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "category name is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " bits in length, but there are only "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v9, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 2144
    .end local v1    # "textBits":I
    .end local v8    # "alertOption":I
    .end local v15    # "numFields":I
    .end local v16    # "operation":I
    .end local v17    # "category":I
    .end local v18    # "language":I
    .end local v19    # "maxMessages":I
    :cond_1
    if-eqz v7, :cond_2

    if-lez v4, :cond_4

    .line 2145
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SERVICE_CATEGORY_PROGRAM_DATA decode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2146
    if-eqz v7, :cond_3

    const-string/jumbo v2, "succeeded"

    goto :goto_1

    :cond_3
    const-string v2, "failed"

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (extra bits = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2145
    const-string v2, "BearerData"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2150
    :cond_4
    invoke-virtual {v0, v4}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 2151
    move-object/from16 v1, p0

    iput-object v3, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->serviceCategoryProgramData:Ljava/util/ArrayList;

    .line 2152
    return v7

    .line 2105
    .end local v3    # "programDataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/cdma/CdmaSmsCbProgramData;>;"
    .end local v6    # "CATEGORY_FIELD_MIN_SIZE":I
    .end local v7    # "decodeSuccess":Z
    :cond_5
    move-object/from16 v1, p0

    new-instance v2, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2106
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " bits available ("

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " bits expected)"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2096
    .end local v4    # "paramBits":I
    .end local v5    # "msgEncoding":I
    :cond_6
    move-object/from16 v1, p0

    new-instance v4, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2097
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private static blacklist decodeShiftJis([BII)Ljava/lang/String;
    .locals 2
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "numFields"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .line 1431
    const/4 v0, 0x1

    const-string v1, "Shift_JIS"

    invoke-static {p0, p1, p2, v0, v1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeCharset([BIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist decodeSmsAddress(Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;)V
    .locals 5
    .param p0, "addr"    # Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .line 1800
    iget v0, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1804
    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    array-length v3, v3

    const-string v4, "US-ASCII"

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->address:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1807
    goto :goto_0

    .line 1805
    :catch_0
    move-exception v0

    .line 1806
    .local v0, "ex":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    const-string/jumbo v2, "invalid SMS address ASCII code"

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1809
    .end local v0    # "ex":Ljava/io/UnsupportedEncodingException;
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    iget v1, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeDtmfSmsAddress([BI)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->address:Ljava/lang/String;

    .line 1811
    :goto_0
    return-void
.end method

.method private static blacklist decodeUnknownSubParam(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 2
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "inStream"    # Lcom/android/internal/util/BitwiseInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;,
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .line 2792
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v1

    mul-int/2addr v1, v0

    .line 2793
    .local v1, "paramBits":I
    invoke-virtual {p1, v1}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 2794
    const/4 v0, 0x1

    return v0
.end method

.method private static blacklist decodeUserData(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 6
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "inStream"    # Lcom/android/internal/util/BitwiseInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;
        }
    .end annotation

    .line 1256
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v1

    mul-int/2addr v1, v0

    .line 1257
    .local v1, "paramBits":I
    new-instance v2, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct {v2}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    .line 1258
    const/4 v3, 0x5

    invoke-virtual {p1, v3}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    iput v3, v2, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    .line 1259
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    .line 1260
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    const/4 v4, 0x0

    iput v4, v2, Lcom/android/internal/telephony/cdma/sms/UserData;->msgType:I

    .line 1261
    const/4 v2, 0x5

    .line 1262
    .local v2, "consumedBits":I
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v4, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    if-eq v4, v3, :cond_0

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v4, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    const/16 v5, 0xa

    if-ne v4, v5, :cond_1

    .line 1264
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-virtual {p1, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v5

    iput v5, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->msgType:I

    .line 1265
    add-int/lit8 v2, v2, 0x8

    .line 1267
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-virtual {p1, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v5

    iput v5, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    .line 1268
    add-int/2addr v2, v0

    .line 1269
    sub-int v0, v1, v2

    .line 1270
    .local v0, "dataBits":I
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-virtual {p1, v0}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    move-result-object v5

    iput-object v5, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 1271
    return v3
.end method

.method private static greylist decodeUserDataPayload(Lcom/android/internal/telephony/cdma/sms/UserData;Z)V
    .locals 9
    .param p0, "userData"    # Lcom/android/internal/telephony/cdma/sms/UserData;
    .param p1, "hasUserDataHeader"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .line 1459
    const-string v0, "decodeUserDataPayload: conversion from byte array to object failed: "

    const/4 v1, 0x0

    .line 1460
    .local v1, "offset":I
    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 1461
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    aget-byte v3, v3, v2

    and-int/lit16 v3, v3, 0xff

    .line 1462
    .local v3, "udhLen":I
    add-int/lit8 v4, v3, 0x1

    add-int/2addr v1, v4

    .line 1463
    new-array v4, v3, [B

    .line 1464
    .local v4, "headerData":[B
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    const/4 v6, 0x1

    invoke-static {v5, v6, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1465
    invoke-static {v4}, Lcom/android/internal/telephony/SmsHeader;->fromByteArray([B)Lcom/android/internal/telephony/SmsHeader;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 1467
    .end local v3    # "udhLen":I
    .end local v4    # "headerData":[B
    :cond_0
    iget v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    const v4, 0x11101c2

    packed-switch v3, :pswitch_data_0

    .line 1590
    :pswitch_0
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unsupported user data encoding ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1512
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeKSC5601([BII)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 1513
    goto/16 :goto_8

    .line 1518
    :pswitch_2
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/SmsManager;->getMnoName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    const-string v5, "KDDI"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1519
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    const-string v5, "BearerData"

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    iget-object v3, v3, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    iget-object v3, v3, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v3, v3, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    const/16 v6, 0xb84

    if-ne v3, v6, :cond_2

    .line 1520
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[pre_payload]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    invoke-static {v4}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1521
    new-instance v3, Ljava/io/ByteArrayInputStream;

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 1522
    .local v3, "bais":Ljava/io/ByteArrayInputStream;
    new-instance v4, Ljava/io/DataInputStream;

    invoke-direct {v4, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1525
    .local v4, "dis":Ljava/io/DataInputStream;
    :try_start_0
    invoke-virtual {v4, v1}, Ljava/io/DataInputStream;->skipBytes(I)I

    .line 1526
    iget v6, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    sub-int/2addr v6, v1

    .line 1527
    .local v6, "len":I
    new-array v7, v6, [B

    iput-object v7, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 1528
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    invoke-virtual {v4, v7, v2, v6}, Ljava/io/DataInputStream;->read([BII)I

    move-result v2

    .line 1529
    .local v2, "numRead":I
    if-gez v2, :cond_1

    .line 1530
    const-string v7, "decodeUserDataPayload: the end of the stream has been reached."

    invoke-static {v5, v7}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1532
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[post_payload]: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    invoke-static {v8}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1537
    .end local v2    # "numRead":I
    .end local v6    # "len":I
    :try_start_1
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1538
    :catch_0
    move-exception v2

    .line 1539
    .local v2, "ex":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1

    .line 1536
    .end local v2    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    goto :goto_3

    .line 1533
    :catch_1
    move-exception v2

    .line 1534
    .restart local v2    # "ex":Ljava/lang/Exception;
    :try_start_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1537
    .end local v2    # "ex":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 1540
    :goto_0
    goto :goto_2

    .line 1538
    :catch_2
    move-exception v2

    .line 1539
    .restart local v2    # "ex":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1541
    .end local v2    # "ex":Ljava/lang/Exception;
    nop

    .line 1542
    .end local v3    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v4    # "dis":Ljava/io/DataInputStream;
    :goto_2
    goto/16 :goto_8

    .line 1537
    .restart local v3    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v4    # "dis":Ljava/io/DataInputStream;
    :goto_3
    :try_start_4
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 1540
    goto :goto_4

    .line 1538
    :catch_3
    move-exception v6

    .line 1539
    .local v6, "ex":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1541
    .end local v6    # "ex":Ljava/lang/Exception;
    :goto_4
    throw v2

    .line 1543
    .end local v3    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v4    # "dis":Ljava/io/DataInputStream;
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[[ENCODING_GSM_DCS]] userData.msgType = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgType:I

    and-int/lit16 v3, v3, 0xff

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1544
    iget v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgType:I

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_8

    .line 1545
    iget v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgType:I

    shr-int/lit8 v0, v0, 0x2

    and-int/lit8 v0, v0, 0x3

    packed-switch v0, :pswitch_data_1

    goto :goto_6

    .line 1575
    :pswitch_3
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeUtf16_KDDI([BII)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 1576
    goto :goto_6

    .line 1552
    :pswitch_4
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 1553
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 1558
    .local v0, "decodingtypeUTF8_GsmDcs":Z
    iget v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    new-array v3, v3, [B

    .line 1559
    .local v3, "payload_GsmDcs":[B
    iget v4, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v5, v5

    if-ge v4, v5, :cond_3

    .line 1560
    iget v4, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    goto :goto_5

    :cond_3
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v4, v4

    .line 1562
    .local v4, "copyLen_GsmDcs":I
    :goto_5
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    invoke-static {v5, v2, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1563
    iput-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 1565
    if-nez v0, :cond_4

    .line 1568
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    iget v5, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    invoke-static {v2, v1, v5}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeLatin([BII)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    goto :goto_6

    .line 1570
    :cond_4
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    iget v5, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    invoke-static {v2, v1, v5}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeUtf8([BII)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 1572
    goto :goto_6

    .line 1547
    .end local v0    # "decodingtypeUTF8_GsmDcs":Z
    .end local v3    # "payload_GsmDcs":[B
    .end local v4    # "copyLen_GsmDcs":I
    :pswitch_5
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decode7bitGsm([BII)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 1548
    nop

    .line 1579
    :goto_6
    goto/16 :goto_8

    .line 1584
    :cond_5
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    iget v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgType:I

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeGsmDcs([BIII)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 1587
    goto/16 :goto_8

    .line 1502
    :pswitch_6
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decode7bitGsm([BII)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 1503
    goto :goto_8

    .line 1505
    :pswitch_7
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeLatin([BII)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 1506
    goto :goto_8

    .line 1508
    :pswitch_8
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeShiftJis([BII)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 1509
    goto :goto_8

    .line 1499
    :pswitch_9
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeUtf16([BII)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 1500
    goto :goto_8

    .line 1496
    :pswitch_a
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decode7bitAscii([BII)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 1497
    goto :goto_8

    .line 1472
    :pswitch_b
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 1473
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 1478
    .local v0, "decodingtypeUTF8":Z
    iget v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    new-array v3, v3, [B

    .line 1479
    .local v3, "payload":[B
    iget v4, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v5, v5

    if-ge v4, v5, :cond_6

    .line 1480
    iget v4, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    goto :goto_7

    :cond_6
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v4, v4

    .line 1482
    .local v4, "copyLen":I
    :goto_7
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    invoke-static {v5, v2, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1483
    iput-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 1485
    if-nez v0, :cond_7

    .line 1488
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    iget v5, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    invoke-static {v2, v1, v5}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeLatin([BII)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    goto :goto_8

    .line 1490
    :cond_7
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    iget v5, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    invoke-static {v2, v1, v5}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeUtf8([BII)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 1492
    nop

    .line 1593
    .end local v0    # "decodingtypeUTF8":Z
    .end local v3    # "payload":[B
    .end local v4    # "copyLen":I
    :cond_8
    :goto_8
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_0
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method private static blacklist decodeUserResponseCode(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 5
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "inStream"    # Lcom/android/internal/util/BitwiseInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;
        }
    .end annotation

    .line 2074
    const/16 v0, 0x8

    .line 2075
    .local v0, "EXPECTED_PARAM_SIZE":I
    const/4 v1, 0x0

    .line 2076
    .local v1, "decodeSuccess":Z
    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    mul-int/2addr v3, v2

    .line 2077
    .local v3, "paramBits":I
    if-lt v3, v2, :cond_0

    .line 2078
    add-int/lit8 v3, v3, -0x8

    .line 2079
    const/4 v1, 0x1

    .line 2080
    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userResponseCode:I

    .line 2082
    :cond_0
    if-eqz v1, :cond_1

    if-lez v3, :cond_3

    .line 2083
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "USER_RESPONSE_CODE decode "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2084
    if-eqz v1, :cond_2

    const-string/jumbo v4, "succeeded"

    goto :goto_0

    :cond_2
    const-string v4, "failed"

    :goto_0
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " (extra bits = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2083
    const-string v4, "BearerData"

    invoke-static {v4, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2087
    :cond_3
    invoke-virtual {p1, v3}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 2088
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userResponseCodeSet:Z

    .line 2089
    return v1
.end method

.method private static blacklist decodeUtf16([BII)Ljava/lang/String;
    .locals 6
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "numFields"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .line 1284
    rem-int/lit8 v0, p1, 0x2

    .line 1285
    .local v0, "padding":I
    add-int v1, p1, v0

    const/4 v2, 0x2

    div-int/2addr v1, v2

    sub-int/2addr p2, v1

    .line 1287
    invoke-static {}, Landroid/telephony/SmsMessage;->getCDMASmsReassembly()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1288
    mul-int/lit8 v1, p2, 0x2

    add-int/2addr v1, p1

    sput v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->userLength:I

    .line 1290
    add-int/lit8 v3, v1, -0x2

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    int-to-char v3, v3

    sput-char v3, Lcom/android/internal/telephony/cdma/sms/BearerData;->compChar:C

    .line 1291
    add-int/lit8 v4, v1, -0x1

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    int-to-char v4, v4

    or-int/2addr v3, v4

    int-to-char v3, v3

    sput-char v3, Lcom/android/internal/telephony/cdma/sms/BearerData;->compChar:C

    .line 1293
    const v4, 0xd83d

    const/4 v5, 0x0

    if-eq v3, v4, :cond_0

    const v4, 0xd83c

    if-eq v3, v4, :cond_0

    const v4, 0xd83e

    if-ne v3, v4, :cond_1

    :cond_0
    const/16 v3, 0x8c

    if-ne v1, v3, :cond_1

    .line 1294
    const-string v1, "BearerData"

    const-string v3, "emoji is broken in the end of segment"

    invoke-static {v1, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1295
    new-array v1, v2, [B

    sput-object v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->mlastByte:[B

    .line 1296
    sget v3, Lcom/android/internal/telephony/cdma/sms/BearerData;->userLength:I

    add-int/lit8 v4, v3, -0x2

    aget-byte v4, p0, v4

    aput-byte v4, v1, v5

    .line 1297
    const/4 v4, 0x1

    sub-int/2addr v3, v4

    aget-byte v3, p0, v3

    aput-byte v3, v1, v4

    .line 1298
    sput p1, Lcom/android/internal/telephony/cdma/sms/BearerData;->mBodyOffset:I

    .line 1299
    sput-boolean v4, Lcom/android/internal/telephony/cdma/sms/BearerData;->mIsfourBytesUnicode:Z

    goto :goto_0

    .line 1301
    :cond_1
    sput-boolean v5, Lcom/android/internal/telephony/cdma/sms/BearerData;->mIsfourBytesUnicode:Z

    .line 1305
    :cond_2
    :goto_0
    const-string/jumbo v1, "utf-16be"

    invoke-static {p0, p1, p2, v2, v1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeCharset([BIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist decodeUtf16_KDDI([BII)Ljava/lang/String;
    .locals 4
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "numFields"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .line 2524
    :try_start_0
    new-instance v0, Ljava/lang/String;

    sub-int v1, p2, p1

    const-string/jumbo v2, "utf-16be"

    invoke-direct {v0, p0, p1, v1, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2525
    :catch_0
    move-exception v0

    .line 2526
    .local v0, "ex":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UTF-16 decode failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static blacklist decodeUtf8([BII)Ljava/lang/String;
    .locals 2
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "numFields"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .line 1277
    const/4 v0, 0x1

    const-string v1, "UTF-8"

    invoke-static {p0, p1, p2, v0, v1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeCharset([BIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist decodeValidityAbs(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 5
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "inStream"    # Lcom/android/internal/util/BitwiseInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;
        }
    .end annotation

    .line 1891
    const/16 v0, 0x30

    .line 1892
    .local v0, "EXPECTED_PARAM_SIZE":I
    const/4 v1, 0x0

    .line 1893
    .local v1, "decodeSuccess":Z
    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    mul-int/2addr v3, v2

    .line 1894
    .local v3, "paramBits":I
    const/16 v2, 0x30

    if-lt v3, v2, :cond_0

    .line 1895
    add-int/lit8 v3, v3, -0x30

    .line 1896
    const/4 v1, 0x1

    .line 1897
    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->fromByteArray([B)Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->validityPeriodAbsolute:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    .line 1899
    :cond_0
    if-eqz v1, :cond_1

    if-lez v3, :cond_3

    .line 1900
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VALIDITY_PERIOD_ABSOLUTE decode "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1901
    if-eqz v1, :cond_2

    const-string/jumbo v4, "succeeded"

    goto :goto_0

    :cond_2
    const-string v4, "failed"

    :goto_0
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " (extra bits = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1900
    const-string v4, "BearerData"

    invoke-static {v4, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1904
    :cond_3
    invoke-virtual {p1, v3}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 1905
    return v1
.end method

.method private static blacklist decodeValidityRel(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 5
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "inStream"    # Lcom/android/internal/util/BitwiseInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;
        }
    .end annotation

    .line 1930
    const/16 v0, 0x8

    .line 1931
    .local v0, "EXPECTED_PARAM_SIZE":I
    const/4 v1, 0x0

    .line 1932
    .local v1, "decodeSuccess":Z
    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    mul-int/2addr v3, v2

    .line 1933
    .local v3, "paramBits":I
    if-lt v3, v2, :cond_0

    .line 1934
    add-int/lit8 v3, v3, -0x8

    .line 1935
    const/4 v1, 0x1

    .line 1936
    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->deferredDeliveryTimeRelative:I

    .line 1938
    :cond_0
    if-eqz v1, :cond_1

    if-lez v3, :cond_3

    .line 1939
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VALIDITY_PERIOD_RELATIVE decode "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1940
    if-eqz v1, :cond_2

    const-string/jumbo v4, "succeeded"

    goto :goto_0

    :cond_2
    const-string v4, "failed"

    :goto_0
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " (extra bits = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1939
    const-string v4, "BearerData"

    invoke-static {v4, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1943
    :cond_3
    invoke-virtual {p1, v3}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 1944
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->deferredDeliveryTimeRelativeSet:Z

    .line 1945
    return v1
.end method

.method public static greylist encode(Lcom/android/internal/telephony/cdma/sms/BearerData;)[B
    .locals 6
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;

    .line 1142
    const-string v0, "BearerData encode failed: "

    const-string v1, "BearerData"

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->hasUserDataHeader:Z

    .line 1145
    :try_start_0
    new-instance v2, Lcom/android/internal/util/BitwiseOutputStream;

    const/16 v5, 0xc8

    invoke-direct {v2, v5}, Lcom/android/internal/util/BitwiseOutputStream;-><init>(I)V

    .line 1146
    .local v2, "outStream":Lcom/android/internal/util/BitwiseOutputStream;
    const/16 v5, 0x8

    invoke-virtual {v2, v5, v4}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1147
    invoke-static {p0, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeMessageId(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V

    .line 1148
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    if-eqz v4, :cond_1

    .line 1149
    invoke-virtual {v2, v5, v3}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1150
    invoke-static {p0, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeUserData(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V

    .line 1152
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->callbackNumber:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    if-eqz v3, :cond_2

    .line 1153
    const/16 v3, 0xe

    invoke-virtual {v2, v5, v3}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1154
    invoke-static {p0, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeCallbackNumber(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V

    .line 1156
    :cond_2
    iget-boolean v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userAckReq:Z

    if-nez v3, :cond_3

    iget-boolean v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->deliveryAckReq:Z

    if-nez v3, :cond_3

    iget-boolean v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->readAckReq:Z

    if-nez v3, :cond_3

    iget-boolean v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->reportReq:Z

    if-eqz v3, :cond_4

    .line 1157
    :cond_3
    const/16 v3, 0xa

    invoke-virtual {v2, v5, v3}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1158
    invoke-static {p0, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeReplyOption(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V

    .line 1160
    :cond_4
    iget v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->numberOfMessages:I

    if-eqz v3, :cond_5

    .line 1161
    const/16 v3, 0xb

    invoke-virtual {v2, v5, v3}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1162
    invoke-static {p0, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeMsgCount(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V

    .line 1164
    :cond_5
    iget-boolean v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->validityPeriodRelativeSet:Z

    if-eqz v3, :cond_6

    .line 1165
    const/4 v3, 0x5

    invoke-virtual {v2, v5, v3}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1166
    invoke-static {p0, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeValidityPeriodRel(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V

    .line 1168
    :cond_6
    iget-boolean v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->privacyIndicatorSet:Z

    if-eqz v3, :cond_7

    .line 1169
    const/16 v3, 0x9

    invoke-virtual {v2, v5, v3}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1170
    invoke-static {p0, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodePrivacyIndicator(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V

    .line 1172
    :cond_7
    iget-boolean v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->languageIndicatorSet:Z

    if-eqz v3, :cond_8

    .line 1173
    const/16 v3, 0xd

    invoke-virtual {v2, v5, v3}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1174
    invoke-static {p0, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeLanguageIndicator(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V

    .line 1176
    :cond_8
    iget-boolean v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->displayModeSet:Z

    if-eqz v3, :cond_9

    .line 1177
    const/16 v3, 0xf

    invoke-virtual {v2, v5, v3}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1178
    invoke-static {p0, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeDisplayMode(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V

    .line 1180
    :cond_9
    iget-boolean v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->priorityIndicatorSet:Z

    if-eqz v3, :cond_a

    .line 1181
    invoke-virtual {v2, v5, v5}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1182
    invoke-static {p0, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodePriorityIndicator(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V

    .line 1184
    :cond_a
    iget-boolean v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->alertIndicatorSet:Z

    if-eqz v3, :cond_b

    .line 1185
    const/16 v3, 0xc

    invoke-virtual {v2, v5, v3}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1186
    invoke-static {p0, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeMsgDeliveryAlert(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V

    .line 1188
    :cond_b
    iget-boolean v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageStatusSet:Z

    if-eqz v3, :cond_c

    .line 1189
    const/16 v3, 0x14

    invoke-virtual {v2, v5, v3}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1190
    invoke-static {p0, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeMsgStatus(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V

    .line 1192
    :cond_c
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->serviceCategoryProgramResults:Ljava/util/ArrayList;

    if-eqz v3, :cond_d

    .line 1193
    const/16 v3, 0x13

    invoke-virtual {v2, v5, v3}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1194
    invoke-static {p0, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeScpResults(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V

    .line 1196
    :cond_d
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    if-eqz v3, :cond_e

    .line 1197
    const/4 v3, 0x3

    invoke-virtual {v2, v5, v3}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1198
    invoke-static {p0, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeMsgCenterTimeStamp(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V

    .line 1200
    :cond_e
    invoke-virtual {v2}, Lcom/android/internal/util/BitwiseOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_0
    .catch Lcom/android/internal/util/BitwiseOutputStream$AccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1203
    .end local v2    # "outStream":Lcom/android/internal/util/BitwiseOutputStream;
    :catch_0
    move-exception v2

    .line 1204
    .local v2, "ex":Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1201
    .end local v2    # "ex":Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
    :catch_1
    move-exception v2

    .line 1202
    .local v2, "ex":Lcom/android/internal/util/BitwiseOutputStream$AccessException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1205
    .end local v2    # "ex":Lcom/android/internal/util/BitwiseOutputStream$AccessException;
    nop

    .line 1206
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private static blacklist encode16bitEms(Lcom/android/internal/telephony/cdma/sms/UserData;[B)V
    .locals 8
    .param p0, "uData"    # Lcom/android/internal/telephony/cdma/sms/UserData;
    .param p1, "udhData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .line 714
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeUtf16(Ljava/lang/String;)[B

    move-result-object v0

    .line 715
    .local v0, "payload":[B
    array-length v1, p1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 716
    .local v1, "udhBytes":I
    add-int/lit8 v3, v1, 0x1

    div-int/lit8 v3, v3, 0x2

    .line 717
    .local v3, "udhCodeUnits":I
    array-length v4, v0

    div-int/lit8 v4, v4, 0x2

    .line 718
    .local v4, "payloadCodeUnits":I
    const/4 v5, 0x4

    iput v5, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    .line 719
    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    .line 720
    add-int v5, v3, v4

    iput v5, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    .line 721
    iget v5, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    mul-int/lit8 v5, v5, 0x2

    new-array v5, v5, [B

    iput-object v5, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 722
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v6, p1

    int-to-byte v6, v6

    const/4 v7, 0x0

    aput-byte v6, v5, v7

    .line 723
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v6, p1

    invoke-static {p1, v7, v5, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 724
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v5, v0

    invoke-static {v0, v7, v2, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 725
    return-void
.end method

.method private static greylist encode7bitAscii(Ljava/lang/String;Z)[B
    .locals 7
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "force"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .line 631
    :try_start_0
    new-instance v0, Lcom/android/internal/util/BitwiseOutputStream;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;-><init>(I)V

    .line 632
    .local v0, "outStream":Lcom/android/internal/util/BitwiseOutputStream;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 633
    .local v1, "msgLen":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 634
    sget-object v3, Lcom/android/internal/telephony/cdma/sms/UserData;->charToAscii:Landroid/util/SparseIntArray;

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    .line 635
    .local v3, "charCode":I
    const/4 v4, 0x7

    if-ne v3, v5, :cond_1

    .line 636
    if-eqz p1, :cond_0

    .line 637
    const/16 v5, 0x20

    invoke-virtual {v0, v4, v5}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    goto :goto_1

    .line 639
    :cond_0
    new-instance v4, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cannot ASCII encode ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    .end local p0    # "msg":Ljava/lang/String;
    .end local p1    # "force":Z
    throw v4

    .line 642
    .restart local p0    # "msg":Ljava/lang/String;
    .restart local p1    # "force":Z
    :cond_1
    invoke-virtual {v0, v4, v3}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 633
    .end local v3    # "charCode":I
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 645
    .end local v2    # "i":I
    :cond_2
    invoke-virtual {v0}, Lcom/android/internal/util/BitwiseOutputStream;->toByteArray()[B

    move-result-object v2
    :try_end_0
    .catch Lcom/android/internal/util/BitwiseOutputStream$AccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 646
    .end local v0    # "outStream":Lcom/android/internal/util/BitwiseOutputStream;
    .end local v1    # "msgLen":I
    :catch_0
    move-exception v0

    .line 647
    .local v0, "ex":Lcom/android/internal/util/BitwiseOutputStream$AccessException;
    new-instance v1, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "7bit ASCII encode failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static blacklist encode7bitAsciiEms(Lcom/android/internal/telephony/cdma/sms/UserData;[BZ)V
    .locals 16
    .param p0, "uData"    # Lcom/android/internal/telephony/cdma/sms/UserData;
    .param p1, "udhData"    # [B
    .param p2, "force"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .line 731
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    const-string/jumbo v4, "sms_qmi_cdma_gsm"

    invoke-virtual {v0, v4}, Landroid/telephony/SmsManager;->getSmsSetting(Ljava/lang/String;)Z

    move-result v0

    const/4 v4, 0x2

    const-string v5, "7bit ASCII encode failed: "

    const/4 v6, 0x0

    const/4 v7, 0x7

    const/4 v8, 0x1

    if-eqz v0, :cond_3

    .line 732
    iget-object v0, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encode7bitAscii(Ljava/lang/String;Z)[B

    move-result-object v9

    .line 733
    .local v9, "payload":[B
    iget-object v0, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/2addr v7, v0

    .line 734
    .local v7, "payloadSeptets":I
    array-length v0, v2

    add-int/2addr v0, v8

    mul-int/lit8 v10, v0, 0x8

    .line 736
    .local v10, "udhBitsOccupied":I
    rem-int/lit8 v0, v10, 0x7

    .line 737
    .local v0, "fill_bits":I
    if-eqz v0, :cond_0

    .line 738
    rsub-int/lit8 v0, v0, 0x7

    move v11, v0

    goto :goto_0

    .line 737
    :cond_0
    move v11, v0

    .line 742
    .end local v0    # "fill_bits":I
    .local v11, "fill_bits":I
    :goto_0
    add-int v0, v7, v10

    add-int v12, v0, v11

    .line 743
    .local v12, "totalBits":I
    add-int/lit8 v0, v12, 0x7

    div-int/lit8 v13, v0, 0x8

    .line 745
    .local v13, "totalBytes":I
    const/16 v0, 0x8c

    if-gt v13, v0, :cond_2

    .line 750
    iput v4, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    .line 751
    iput-boolean v8, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    .line 753
    div-int/lit8 v0, v12, 0x7

    iput v0, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    .line 754
    mul-int/lit8 v0, v13, 0x8

    sub-int/2addr v0, v12

    iput v0, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->paddingBits:I

    .line 756
    new-array v0, v13, [B

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 757
    iget-object v0, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v4, v2

    int-to-byte v4, v4

    aput-byte v4, v0, v6

    .line 760
    :try_start_0
    new-instance v0, Lcom/android/internal/util/BitwiseOutputStream;

    invoke-direct {v0, v13}, Lcom/android/internal/util/BitwiseOutputStream;-><init>(I)V

    .line 762
    .local v0, "outStream":Lcom/android/internal/util/BitwiseOutputStream;
    array-length v4, v2

    mul-int/lit8 v4, v4, 0x8

    invoke-virtual {v0, v4, v2}, Lcom/android/internal/util/BitwiseOutputStream;->writeByteArray(I[B)V

    .line 763
    if-eqz v11, :cond_1

    .line 764
    new-array v4, v8, [B

    .line 765
    .local v4, "filbits":[B
    invoke-virtual {v0, v11, v4}, Lcom/android/internal/util/BitwiseOutputStream;->writeByteArray(I[B)V

    .line 767
    .end local v4    # "filbits":[B
    :cond_1
    invoke-virtual {v0, v7, v9}, Lcom/android/internal/util/BitwiseOutputStream;->writeByteArray(I[B)V

    .line 769
    invoke-virtual {v0}, Lcom/android/internal/util/BitwiseOutputStream;->toByteArray()[B

    move-result-object v4

    iget-object v14, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    add-int/lit8 v15, v13, -0x1

    invoke-static {v4, v6, v14, v8, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Lcom/android/internal/util/BitwiseOutputStream$AccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 773
    .end local v0    # "outStream":Lcom/android/internal/util/BitwiseOutputStream;
    nop

    .line 774
    .end local v7    # "payloadSeptets":I
    .end local v9    # "payload":[B
    .end local v10    # "udhBitsOccupied":I
    .end local v11    # "fill_bits":I
    .end local v12    # "totalBits":I
    .end local v13    # "totalBytes":I
    goto/16 :goto_4

    .line 771
    .restart local v7    # "payloadSeptets":I
    .restart local v9    # "payload":[B
    .restart local v10    # "udhBitsOccupied":I
    .restart local v11    # "fill_bits":I
    .restart local v12    # "totalBits":I
    .restart local v13    # "totalBytes":I
    :catch_0
    move-exception v0

    .line 772
    .local v0, "ex":Lcom/android/internal/util/BitwiseOutputStream$AccessException;
    new-instance v4, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 746
    .end local v0    # "ex":Lcom/android/internal/util/BitwiseOutputStream$AccessException;
    :cond_2
    new-instance v4, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "encoded user data too large ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " > "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " bytes)"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 777
    .end local v7    # "payloadSeptets":I
    .end local v9    # "payload":[B
    .end local v10    # "udhBitsOccupied":I
    .end local v11    # "fill_bits":I
    .end local v12    # "totalBits":I
    .end local v13    # "totalBytes":I
    :cond_3
    :try_start_1
    const-string v0, "BearerData"

    const-string v9, "encode7bitAsciiEms"

    invoke-static {v0, v9}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    array-length v0, v2

    add-int/2addr v0, v8

    .line 779
    .local v0, "udhBytes":I
    mul-int/lit8 v9, v0, 0x8

    add-int/lit8 v9, v9, 0x6

    div-int/2addr v9, v7

    .line 780
    .local v9, "udhSeptets":I
    mul-int/lit8 v10, v9, 0x7

    mul-int/lit8 v11, v0, 0x8

    sub-int/2addr v10, v11

    .line 781
    .local v10, "paddingBits":I
    iget-object v11, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 783
    .local v11, "msg":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v12

    .line 784
    .local v12, "msgLen":I
    new-instance v13, Lcom/android/internal/util/BitwiseOutputStream;

    .line 785
    if-lez v10, :cond_4

    move v14, v8

    goto :goto_1

    :cond_4
    move v14, v6

    :goto_1
    add-int/2addr v14, v12

    invoke-direct {v13, v14}, Lcom/android/internal/util/BitwiseOutputStream;-><init>(I)V

    .line 786
    .local v13, "outStream":Lcom/android/internal/util/BitwiseOutputStream;
    invoke-virtual {v13, v10, v6}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 787
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_2
    if-ge v14, v12, :cond_7

    .line 788
    sget-object v15, Lcom/android/internal/telephony/cdma/sms/UserData;->charToAscii:Landroid/util/SparseIntArray;

    invoke-virtual {v11, v14}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/4 v8, -0x1

    invoke-virtual {v15, v6, v8}, Landroid/util/SparseIntArray;->get(II)I

    move-result v6

    .line 789
    .local v6, "charCode":I
    if-ne v6, v8, :cond_6

    .line 790
    if-eqz v3, :cond_5

    .line 791
    const/16 v8, 0x20

    invoke-virtual {v13, v7, v8}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    goto :goto_3

    .line 793
    :cond_5
    new-instance v4, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cannot ASCII encode ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v11, v14}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    .end local p0    # "uData":Lcom/android/internal/telephony/cdma/sms/UserData;
    .end local p1    # "udhData":[B
    .end local p2    # "force":Z
    throw v4

    .line 796
    .restart local p0    # "uData":Lcom/android/internal/telephony/cdma/sms/UserData;
    .restart local p1    # "udhData":[B
    .restart local p2    # "force":Z
    :cond_6
    invoke-virtual {v13, v7, v6}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 787
    .end local v6    # "charCode":I
    :goto_3
    add-int/lit8 v14, v14, 0x1

    const/4 v6, 0x0

    const/4 v8, 0x1

    goto :goto_2

    .line 799
    .end local v14    # "i":I
    :cond_7
    invoke-virtual {v13}, Lcom/android/internal/util/BitwiseOutputStream;->toByteArray()[B

    move-result-object v6

    .line 800
    .local v6, "payload":[B
    iput v4, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    .line 801
    const/4 v4, 0x1

    iput-boolean v4, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    .line 802
    iget-object v4, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v9

    iput v4, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    .line 803
    array-length v4, v6

    add-int/2addr v4, v0

    new-array v4, v4, [B

    iput-object v4, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 804
    iget-object v4, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v7, v2

    int-to-byte v7, v7

    const/4 v8, 0x0

    aput-byte v7, v4, v8

    .line 805
    iget-object v4, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v7, v2

    const/4 v14, 0x1

    invoke-static {v2, v8, v4, v14, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 806
    iget-object v4, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v7, v6

    invoke-static {v6, v8, v4, v0, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1
    .catch Lcom/android/internal/util/BitwiseOutputStream$AccessException; {:try_start_1 .. :try_end_1} :catch_1

    .line 809
    .end local v0    # "udhBytes":I
    .end local v6    # "payload":[B
    .end local v9    # "udhSeptets":I
    .end local v10    # "paddingBits":I
    .end local v11    # "msg":Ljava/lang/String;
    .end local v12    # "msgLen":I
    .end local v13    # "outStream":Lcom/android/internal/util/BitwiseOutputStream;
    nop

    .line 811
    :goto_4
    return-void

    .line 807
    :catch_1
    move-exception v0

    .line 808
    .local v0, "ex":Lcom/android/internal/util/BitwiseOutputStream$AccessException;
    new-instance v4, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private static blacklist encode7bitAsciiForAutoLogin(Ljava/lang/String;Z)[B
    .locals 7
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "force"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .line 2458
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 2459
    .local v0, "msgLen":I
    new-instance v1, Lcom/android/internal/util/BitwiseOutputStream;

    invoke-direct {v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;-><init>(I)V

    .line 2460
    .local v1, "outStream":Lcom/android/internal/util/BitwiseOutputStream;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_3

    .line 2461
    const/4 v3, 0x4

    const/4 v4, 0x7

    if-ge v2, v3, :cond_0

    .line 2462
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v4, v3}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    goto :goto_1

    .line 2464
    :cond_0
    sget-object v3, Lcom/android/internal/telephony/cdma/sms/UserData;->charToAscii:Landroid/util/SparseIntArray;

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/4 v6, -0x1

    invoke-virtual {v3, v5, v6}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    .line 2465
    .local v3, "charCode":I
    if-ne v3, v6, :cond_2

    .line 2466
    if-eqz p1, :cond_1

    .line 2467
    const/16 v5, 0x20

    invoke-virtual {v1, v4, v5}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    goto :goto_1

    .line 2469
    :cond_1
    new-instance v4, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cannot ASCII encode ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    .end local p0    # "msg":Ljava/lang/String;
    .end local p1    # "force":Z
    throw v4

    .line 2472
    .restart local p0    # "msg":Ljava/lang/String;
    .restart local p1    # "force":Z
    :cond_2
    invoke-virtual {v1, v4, v3}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 2460
    .end local v3    # "charCode":I
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2476
    .end local v2    # "i":I
    :cond_3
    invoke-virtual {v1}, Lcom/android/internal/util/BitwiseOutputStream;->toByteArray()[B

    move-result-object v2
    :try_end_0
    .catch Lcom/android/internal/util/BitwiseOutputStream$AccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 2477
    .end local v0    # "msgLen":I
    .end local v1    # "outStream":Lcom/android/internal/util/BitwiseOutputStream;
    :catch_0
    move-exception v0

    .line 2478
    .local v0, "ex":Lcom/android/internal/util/BitwiseOutputStream$AccessException;
    new-instance v1, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "7bit ASCII encode failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static blacklist encode7bitEms(Lcom/android/internal/telephony/cdma/sms/UserData;[BZ)V
    .locals 7
    .param p0, "uData"    # Lcom/android/internal/telephony/cdma/sms/UserData;
    .param p1, "udhData"    # [B
    .param p2, "force"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .line 700
    array-length v0, p1

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 701
    .local v0, "udhBytes":I
    mul-int/lit8 v2, v0, 0x8

    add-int/lit8 v2, v2, 0x6

    div-int/lit8 v2, v2, 0x7

    .line 702
    .local v2, "udhSeptets":I
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-static {v3, v2, p2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encode7bitGsm(Ljava/lang/String;IZ)Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;

    move-result-object v3

    .line 703
    .local v3, "gcr":Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;
    const/16 v4, 0x9

    iput v4, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    .line 704
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    .line 705
    iget v4, v3, Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;->septets:I

    iput v4, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    .line 706
    iget-object v4, v3, Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;->data:[B

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 707
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v5, p1

    int-to-byte v5, v5

    const/4 v6, 0x0

    aput-byte v5, v4, v6

    .line 708
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v5, p1

    invoke-static {p1, v6, v4, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 709
    return-void
.end method

.method private static blacklist encode7bitGsm(Ljava/lang/String;IZ)Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;
    .locals 6
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "septetOffset"    # I
    .param p2, "force"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .line 686
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    :try_start_0
    invoke-static {p0, p1, v2, v1, v1}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPacked(Ljava/lang/String;IZII)[B

    move-result-object v2

    .line 687
    .local v2, "fullData":[B
    new-instance v3, Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;-><init>(Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult-IA;)V

    .line 688
    .local v3, "result":Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;
    array-length v4, v2

    sub-int/2addr v4, v0

    new-array v4, v4, [B

    iput-object v4, v3, Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;->data:[B

    .line 689
    iget-object v4, v3, Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;->data:[B

    array-length v5, v2

    sub-int/2addr v5, v0

    invoke-static {v2, v0, v4, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 690
    aget-byte v0, v2, v1

    and-int/lit16 v0, v0, 0xff

    iput v0, v3, Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;->septets:I
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 691
    return-object v3

    .line 692
    .end local v2    # "fullData":[B
    .end local v3    # "result":Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;
    :catch_0
    move-exception v0

    .line 693
    .local v0, "ex":Lcom/android/internal/telephony/EncodeException;
    new-instance v1, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "7bit GSM encode failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static blacklist encodeCallbackNumber(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .locals 10
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "outStream"    # Lcom/android/internal/util/BitwiseOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;,
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .line 1026
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->callbackNumber:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .line 1027
    .local v0, "addr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeCdmaSmsAddress(Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;)V

    .line 1028
    const/16 v1, 0x9

    .line 1029
    .local v1, "paramBits":I
    const/4 v2, 0x0

    .line 1030
    .local v2, "dataBits":I
    iget v3, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    const/4 v4, 0x4

    const/4 v5, 0x1

    const/16 v6, 0x8

    if-ne v3, v5, :cond_0

    .line 1031
    add-int/lit8 v1, v1, 0x7

    .line 1032
    iget v3, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    mul-int/2addr v3, v6

    .end local v2    # "dataBits":I
    .local v3, "dataBits":I
    goto :goto_0

    .line 1034
    .end local v3    # "dataBits":I
    .restart local v2    # "dataBits":I
    :cond_0
    iget v3, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    mul-int/2addr v3, v4

    .line 1036
    .end local v2    # "dataBits":I
    .restart local v3    # "dataBits":I
    :goto_0
    add-int/2addr v1, v3

    .line 1037
    div-int/lit8 v2, v1, 0x8

    rem-int/lit8 v7, v1, 0x8

    const/4 v8, 0x0

    if-lez v7, :cond_1

    move v7, v5

    goto :goto_1

    :cond_1
    move v7, v8

    :goto_1
    add-int/2addr v2, v7

    .line 1038
    .local v2, "paramBytes":I
    mul-int/lit8 v7, v2, 0x8

    sub-int/2addr v7, v1

    .line 1039
    .local v7, "paddingBits":I
    invoke-virtual {p1, v6, v2}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1040
    iget v9, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    invoke-virtual {p1, v5, v9}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1041
    iget v9, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    if-ne v9, v5, :cond_2

    .line 1042
    const/4 v5, 0x3

    iget v9, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->ton:I

    invoke-virtual {p1, v5, v9}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1043
    iget v5, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    invoke-virtual {p1, v4, v5}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1045
    :cond_2
    iget v4, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    invoke-virtual {p1, v6, v4}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1046
    iget-object v4, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    invoke-virtual {p1, v3, v4}, Lcom/android/internal/util/BitwiseOutputStream;->writeByteArray(I[B)V

    .line 1047
    if-lez v7, :cond_3

    invoke-virtual {p1, v7, v8}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1048
    :cond_3
    return-void
.end method

.method private static blacklist encodeCdmaSmsAddress(Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;)V
    .locals 3
    .param p0, "addr"    # Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .line 1012
    iget v0, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1014
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->address:Ljava/lang/String;

    const-string v1, "US-ASCII"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1017
    goto :goto_0

    .line 1015
    :catch_0
    move-exception v0

    .line 1016
    .local v0, "ex":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    const-string/jumbo v2, "invalid SMS address, cannot convert to ASCII"

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1019
    .end local v0    # "ex":Ljava/io/UnsupportedEncodingException;
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->address:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeDtmfSmsAddress(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    .line 1021
    :goto_0
    return-void
.end method

.method private static blacklist encodeDisplayMode(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .locals 2
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "outStream"    # Lcom/android/internal/util/BitwiseOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;
        }
    .end annotation

    .line 1090
    const/16 v0, 0x8

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1091
    iget v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->displayMode:I

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1092
    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->skip(I)V

    .line 1093
    return-void
.end method

.method private static blacklist encodeDtmfSmsAddress(Ljava/lang/String;)[B
    .locals 10
    .param p0, "address"    # Ljava/lang/String;

    .line 987
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 988
    .local v0, "digits":I
    mul-int/lit8 v1, v0, 0x4

    .line 989
    .local v1, "dataBits":I
    div-int/lit8 v2, v1, 0x8

    .line 990
    .local v2, "dataBytes":I
    rem-int/lit8 v3, v1, 0x8

    if-lez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    add-int/2addr v2, v3

    .line 991
    new-array v3, v2, [B

    .line 992
    .local v3, "rawData":[B
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v0, :cond_5

    .line 993
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 994
    .local v5, "c":C
    const/4 v6, 0x0

    .line 995
    .local v6, "val":I
    const/16 v7, 0x31

    if-lt v5, v7, :cond_1

    const/16 v7, 0x39

    if-gt v5, v7, :cond_1

    add-int/lit8 v6, v5, -0x30

    goto :goto_2

    .line 996
    :cond_1
    const/16 v7, 0x30

    if-ne v5, v7, :cond_2

    const/16 v6, 0xa

    goto :goto_2

    .line 997
    :cond_2
    const/16 v7, 0x2a

    if-ne v5, v7, :cond_3

    const/16 v6, 0xb

    goto :goto_2

    .line 998
    :cond_3
    const/16 v7, 0x23

    if-ne v5, v7, :cond_4

    const/16 v6, 0xc

    .line 1000
    :goto_2
    div-int/lit8 v7, v4, 0x2

    aget-byte v8, v3, v7

    rem-int/lit8 v9, v4, 0x2

    mul-int/lit8 v9, v9, 0x4

    rsub-int/lit8 v9, v9, 0x4

    shl-int v9, v6, v9

    or-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v3, v7

    .line 992
    .end local v5    # "c":C
    .end local v6    # "val":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 999
    .restart local v5    # "c":C
    .restart local v6    # "val":I
    :cond_4
    const/4 v7, 0x0

    return-object v7

    .line 1002
    .end local v4    # "i":I
    .end local v5    # "c":C
    .end local v6    # "val":I
    :cond_5
    return-object v3
.end method

.method private static blacklist encodeEmsUserDataPayload(Lcom/android/internal/telephony/cdma/sms/UserData;)V
    .locals 4
    .param p0, "uData"    # Lcom/android/internal/telephony/cdma/sms/UserData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .line 816
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    invoke-static {v0}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v0

    .line 817
    .local v0, "headerData":[B
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    if-eqz v1, :cond_4

    .line 818
    iget v1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    const/16 v2, 0x9

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    .line 819
    invoke-static {p0, v0, v3}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encode7bitEms(Lcom/android/internal/telephony/cdma/sms/UserData;[BZ)V

    goto :goto_0

    .line 820
    :cond_0
    iget v1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 821
    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encode16bitEms(Lcom/android/internal/telephony/cdma/sms/UserData;[B)V

    goto :goto_0

    .line 822
    :cond_1
    iget v1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 823
    invoke-static {p0, v0, v3}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encode7bitAsciiEms(Lcom/android/internal/telephony/cdma/sms/UserData;[BZ)V

    goto :goto_0

    .line 826
    :cond_2
    iget v1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    if-nez v1, :cond_3

    .line 827
    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeOctet(Lcom/android/internal/telephony/cdma/sms/UserData;[B)V

    goto :goto_0

    .line 830
    :cond_3
    new-instance v1, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unsupported EMS user data encoding ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 835
    :cond_4
    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, v0, v1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encode7bitEms(Lcom/android/internal/telephony/cdma/sms/UserData;[BZ)V
    :try_end_0
    .catch Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 838
    goto :goto_0

    .line 836
    :catch_0
    move-exception v1

    .line 837
    .local v1, "ex":Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encode16bitEms(Lcom/android/internal/telephony/cdma/sms/UserData;[B)V

    .line 840
    .end local v1    # "ex":Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
    :goto_0
    return-void
.end method

.method private static blacklist encodeKSC5601(Ljava/lang/String;)[B
    .locals 4
    .param p0, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .line 2489
    :try_start_0
    const-string v0, "EUC_KR"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2490
    :catch_0
    move-exception v0

    .line 2491
    .local v0, "ex":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EUC_KR encode failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static blacklist encodeLanguageIndicator(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .locals 2
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "outStream"    # Lcom/android/internal/util/BitwiseOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;
        }
    .end annotation

    .line 1083
    const/16 v0, 0x8

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1084
    iget v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->language:I

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1085
    return-void
.end method

.method private static blacklist encodeMessageId(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .locals 4
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "outStream"    # Lcom/android/internal/util/BitwiseOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;
        }
    .end annotation

    .line 530
    const/16 v0, 0x8

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 531
    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    const/4 v3, 0x4

    invoke-virtual {p1, v3, v2}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 532
    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    shr-int/2addr v2, v0

    invoke-virtual {p1, v0, v2}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 533
    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    invoke-virtual {p1, v0, v2}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 534
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->hasUserDataHeader:Z

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 535
    invoke-virtual {p1, v1}, Lcom/android/internal/util/BitwiseOutputStream;->skip(I)V

    .line 536
    return-void
.end method

.method private static blacklist encodeMsgCenterTimeStamp(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .locals 2
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "outStream"    # Lcom/android/internal/util/BitwiseOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;
        }
    .end annotation

    .line 1128
    const/16 v0, 0x8

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1129
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->toByteArray()[B

    move-result-object v0

    const/16 v1, 0x30

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->writeByteArray(I[B)V

    .line 1130
    return-void
.end method

.method private static blacklist encodeMsgCount(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .locals 2
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "outStream"    # Lcom/android/internal/util/BitwiseOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;
        }
    .end annotation

    .line 1061
    const/16 v0, 0x8

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1062
    iget v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->numberOfMessages:I

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1063
    return-void
.end method

.method private static blacklist encodeMsgDeliveryAlert(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .locals 2
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "outStream"    # Lcom/android/internal/util/BitwiseOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;
        }
    .end annotation

    .line 1106
    const/16 v0, 0x8

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1107
    iget v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->alert:I

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1108
    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->skip(I)V

    .line 1109
    return-void
.end method

.method private static blacklist encodeMsgStatus(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .locals 2
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "outStream"    # Lcom/android/internal/util/BitwiseOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;
        }
    .end annotation

    .line 1053
    const/16 v0, 0x8

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1054
    iget v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->errorClass:I

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1055
    iget v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageStatus:I

    const/4 v1, 0x6

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1056
    return-void
.end method

.method private static blacklist encodeOctet(Lcom/android/internal/telephony/cdma/sms/UserData;[B)V
    .locals 6
    .param p0, "uData"    # Lcom/android/internal/telephony/cdma/sms/UserData;
    .param p1, "udhData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .line 2501
    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2504
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 2505
    .local v0, "payload":[B
    array-length v1, p1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 2506
    .local v1, "udhBytes":I
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    .line 2507
    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    .line 2508
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v1

    iput v4, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    .line 2509
    iget v4, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    new-array v4, v4, [B

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 2510
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v5, p1

    int-to-byte v5, v5

    aput-byte v5, v4, v3

    .line 2511
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v5, p1

    invoke-static {p1, v3, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2512
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v4, v0

    invoke-static {v0, v3, v2, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2514
    .end local v0    # "payload":[B
    .end local v1    # "udhBytes":I
    return-void

    .line 2502
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    const-string v1, "encodeOctet failed with null data"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist encodePriorityIndicator(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .locals 2
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "outStream"    # Lcom/android/internal/util/BitwiseOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;
        }
    .end annotation

    .line 1098
    const/16 v0, 0x8

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1099
    iget v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->priority:I

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1100
    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->skip(I)V

    .line 1101
    return-void
.end method

.method private static blacklist encodePrivacyIndicator(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .locals 2
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "outStream"    # Lcom/android/internal/util/BitwiseOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;
        }
    .end annotation

    .line 1075
    const/16 v0, 0x8

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1076
    iget v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->privacy:I

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1077
    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->skip(I)V

    .line 1078
    return-void
.end method

.method private static blacklist encodeReplyOption(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .locals 2
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "outStream"    # Lcom/android/internal/util/BitwiseOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;
        }
    .end annotation

    .line 978
    const/16 v0, 0x8

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 979
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userAckReq:Z

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 980
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->deliveryAckReq:Z

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 981
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->readAckReq:Z

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 982
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->reportReq:Z

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 983
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 984
    return-void
.end method

.method private static blacklist encodeScpResults(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .locals 7
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "outStream"    # Lcom/android/internal/util/BitwiseOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;
        }
    .end annotation

    .line 1114
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->serviceCategoryProgramResults:Ljava/util/ArrayList;

    .line 1115
    .local v0, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/cdma/CdmaSmsCbProgramResults;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x4

    mul-int/2addr v1, v2

    const/16 v3, 0x8

    invoke-virtual {p1, v3, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1116
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/cdma/CdmaSmsCbProgramResults;

    .line 1117
    .local v4, "result":Landroid/telephony/cdma/CdmaSmsCbProgramResults;
    invoke-virtual {v4}, Landroid/telephony/cdma/CdmaSmsCbProgramResults;->getCategory()I

    move-result v5

    .line 1118
    .local v5, "category":I
    shr-int/lit8 v6, v5, 0x8

    invoke-virtual {p1, v3, v6}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1119
    invoke-virtual {p1, v3, v5}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1120
    invoke-virtual {v4}, Landroid/telephony/cdma/CdmaSmsCbProgramResults;->getLanguage()I

    move-result v6

    invoke-virtual {p1, v3, v6}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1121
    invoke-virtual {v4}, Landroid/telephony/cdma/CdmaSmsCbProgramResults;->getCategoryResult()I

    move-result v6

    invoke-virtual {p1, v2, v6}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1122
    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseOutputStream;->skip(I)V

    .line 1123
    .end local v4    # "result":Landroid/telephony/cdma/CdmaSmsCbProgramResults;
    .end local v5    # "category":I
    goto :goto_0

    .line 1124
    :cond_0
    return-void
.end method

.method private static blacklist encodeShiftJis(Ljava/lang/String;)[B
    .locals 4
    .param p0, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .line 844
    :try_start_0
    const-string v0, "Shift_JIS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 845
    :catch_0
    move-exception v0

    .line 846
    .local v0, "ex":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Shift-JIS encode failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static blacklist encodeUserData(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .locals 10
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "outStream"    # Lcom/android/internal/util/BitwiseOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;,
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .line 940
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-static {v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeUserDataPayload(Lcom/android/internal/telephony/cdma/sms/UserData;)V

    .line 941
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->hasUserDataHeader:Z

    .line 943
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v0, v0

    const/16 v3, 0x8c

    if-gt v0, v3, :cond_8

    .line 949
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    const/4 v3, 0x2

    const/16 v4, 0x8

    if-ne v0, v3, :cond_1

    .line 950
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v3, v3

    mul-int/2addr v3, v4

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v5, v5, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    mul-int/lit8 v5, v5, 0x7

    sub-int/2addr v3, v5

    iput v3, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->paddingBits:I

    goto :goto_1

    .line 953
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iput v2, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->paddingBits:I

    .line 956
    :goto_1
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v0, v0

    mul-int/2addr v0, v4

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v3, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->paddingBits:I

    sub-int/2addr v0, v3

    .line 957
    .local v0, "dataBits":I
    add-int/lit8 v3, v0, 0xd

    .line 958
    .local v3, "paramBits":I
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v5, v5, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    const/16 v6, 0xa

    if-eq v5, v1, :cond_2

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v5, v5, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    if-ne v5, v6, :cond_3

    .line 960
    :cond_2
    add-int/lit8 v3, v3, 0x8

    .line 962
    :cond_3
    div-int/lit8 v5, v3, 0x8

    rem-int/lit8 v7, v3, 0x8

    if-lez v7, :cond_4

    move v7, v1

    goto :goto_2

    :cond_4
    move v7, v2

    :goto_2
    add-int/2addr v5, v7

    .line 963
    .local v5, "paramBytes":I
    mul-int/lit8 v7, v5, 0x8

    sub-int/2addr v7, v3

    .line 964
    .local v7, "paddingBits":I
    invoke-virtual {p1, v4, v5}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 965
    const/4 v8, 0x5

    iget-object v9, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v9, v9, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    invoke-virtual {p1, v8, v9}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 966
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v8, v8, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    if-eq v8, v1, :cond_5

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v1, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    if-ne v1, v6, :cond_6

    .line 968
    :cond_5
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v1, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->msgType:I

    invoke-virtual {p1, v4, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 970
    :cond_6
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v1, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    invoke-virtual {p1, v4, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 971
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->writeByteArray(I[B)V

    .line 972
    if-lez v7, :cond_7

    invoke-virtual {p1, v7, v2}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 973
    :cond_7
    return-void

    .line 944
    .end local v0    # "dataBits":I
    .end local v3    # "paramBits":I
    .end local v5    # "paramBytes":I
    .end local v7    # "paddingBits":I
    :cond_8
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "encoded user data too large ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist encodeUserDataPayload(Lcom/android/internal/telephony/cdma/sms/UserData;)V
    .locals 9
    .param p0, "uData"    # Lcom/android/internal/telephony/cdma/sms/UserData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .line 853
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    const-string v1, ""

    const-string v2, "BearerData"

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    if-eqz v0, :cond_0

    .line 854
    const-string/jumbo v0, "user data with null payloadStr"

    invoke-static {v2, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 858
    :cond_0
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    const-string/jumbo v3, "sms_support_ksc5601"

    invoke-virtual {v0, v3}, Landroid/telephony/SmsManager;->getSmsSetting(Ljava/lang/String;)Z

    move-result v0

    const/16 v4, 0x10

    if-nez v0, :cond_1

    .line 859
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    if-eqz v0, :cond_2

    .line 860
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeEmsUserDataPayload(Lcom/android/internal/telephony/cdma/sms/UserData;)V

    .line 861
    return-void

    .line 864
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    if-eq v0, v4, :cond_2

    .line 865
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeEmsUserDataPayload(Lcom/android/internal/telephony/cdma/sms/UserData;)V

    .line 866
    return-void

    .line 871
    :cond_2
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    const/4 v5, 0x2

    const/4 v6, 0x4

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v0, :cond_b

    .line 872
    iget v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    if-nez v0, :cond_4

    .line 873
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    if-nez v0, :cond_3

    .line 874
    const-string/jumbo v0, "user data with octet encoding but null payload"

    invoke-static {v2, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    new-array v0, v8, [B

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 876
    iput v8, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    goto/16 :goto_2

    .line 878
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v0, v0

    iput v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    goto/16 :goto_2

    .line 881
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    if-nez v0, :cond_5

    .line 882
    const-string/jumbo v0, "non-octet user data with null payloadStr"

    invoke-static {v2, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 885
    :cond_5
    iget v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_6

    .line 886
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-static {v0, v8, v7}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encode7bitGsm(Ljava/lang/String;IZ)Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;

    move-result-object v0

    .line 887
    .local v0, "gcr":Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;
    iget-object v1, v0, Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;->data:[B

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 888
    iget v1, v0, Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;->septets:I

    iput v1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    .line 889
    .end local v0    # "gcr":Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;
    goto/16 :goto_2

    :cond_6
    iget v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    if-ne v0, v5, :cond_7

    .line 890
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-static {v0, v7}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encode7bitAscii(Ljava/lang/String;Z)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 891
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    goto/16 :goto_2

    .line 892
    :cond_7
    iget v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    if-ne v0, v6, :cond_8

    .line 893
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeUtf16(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 894
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    goto/16 :goto_2

    .line 895
    :cond_8
    iget v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_9

    .line 896
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeShiftJis(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 897
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v0, v0

    iput v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    goto :goto_2

    .line 899
    :cond_9
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/telephony/SmsManager;->getSmsSetting(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    if-ne v0, v4, :cond_a

    .line 901
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeKSC5601(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 903
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v0, v0

    iput v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    goto :goto_2

    .line 906
    :cond_a
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unsupported user data encoding ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 912
    :cond_b
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    if-eqz v0, :cond_d

    .line 915
    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->isAutoLogin:Z

    if-ne v0, v7, :cond_c

    .line 916
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-static {v0, v8}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encode7bitAsciiForAutoLogin(Ljava/lang/String;Z)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    goto :goto_0

    .line 918
    :cond_c
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-static {v0, v8}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encode7bitAscii(Ljava/lang/String;Z)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 920
    :goto_0
    iput v5, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I
    :try_end_0
    .catch Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 924
    goto :goto_1

    .line 921
    :catch_0
    move-exception v0

    .line 922
    .local v0, "ex":Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeUtf16(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 923
    iput v6, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    .line 925
    .end local v0    # "ex":Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
    :goto_1
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    .line 928
    :cond_d
    iput-boolean v7, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    .line 930
    :goto_2
    return-void
.end method

.method private static blacklist encodeUtf16(Ljava/lang/String;)[B
    .locals 4
    .param p0, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .line 655
    :try_start_0
    const-string/jumbo v0, "utf-16be"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 656
    :catch_0
    move-exception v0

    .line 657
    .local v0, "ex":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UTF-16 encode failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static blacklist encodeValidityPeriodRel(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .locals 2
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "outStream"    # Lcom/android/internal/util/BitwiseOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;
        }
    .end annotation

    .line 1068
    const/16 v0, 0x8

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1069
    iget v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->validityPeriodRelative:I

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1070
    return-void
.end method

.method private static blacklist extractPagination(Ljava/lang/String;Lcom/android/internal/telephony/cdma/sms/UserData;)V
    .locals 18
    .param p0, "payloadStr"    # Ljava/lang/String;
    .param p1, "userData"    # Lcom/android/internal/telephony/cdma/sms/UserData;

    .line 2637
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "extractPagination : "

    const/4 v4, 0x0

    .local v4, "segNum":I
    const/4 v5, 0x0

    .line 2638
    .local v5, "totNum":I
    const/4 v6, 0x0

    .line 2640
    .local v6, "paginationSuccess":Z
    move-object/from16 v7, p0

    .line 2642
    .local v7, "payload":Ljava/lang/String;
    const-string v8, "BearerData"

    if-nez v1, :cond_0

    .line 2643
    const-string/jumbo v0, "there is no message body"

    invoke-static {v8, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2644
    return-void

    .line 2647
    :cond_0
    const/4 v9, 0x0

    .line 2649
    .local v9, "pagination":Ljava/lang/String;
    :try_start_0
    const-string v0, "("

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v10, 0x2

    const/4 v11, 0x1

    if-eqz v0, :cond_1

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2650
    const/16 v0, 0x28

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/2addr v0, v11

    const/16 v12, 0x29

    invoke-virtual {v1, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    invoke-virtual {v1, v0, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    .line 2651
    invoke-virtual {v1, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/2addr v0, v10

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .end local p0    # "payloadStr":Ljava/lang/String;
    .local v0, "payloadStr":Ljava/lang/String;
    goto :goto_0

    .line 2652
    .end local v0    # "payloadStr":Ljava/lang/String;
    .restart local p0    # "payloadStr":Ljava/lang/String;
    :cond_1
    const-string v0, "["

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2653
    const/16 v0, 0x5b

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/2addr v0, v11

    const/16 v12, 0x5d

    invoke-virtual {v1, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    invoke-virtual {v1, v0, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    .line 2654
    invoke-virtual {v1, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/2addr v0, v10

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .end local p0    # "payloadStr":Ljava/lang/String;
    .restart local v0    # "payloadStr":Ljava/lang/String;
    goto :goto_0

    .line 2655
    .end local v0    # "payloadStr":Ljava/lang/String;
    .restart local p0    # "payloadStr":Ljava/lang/String;
    :cond_2
    const-string/jumbo v0, "{"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2656
    const/16 v0, 0x7b

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/2addr v0, v11

    const/16 v12, 0x7d

    invoke-virtual {v1, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    invoke-virtual {v1, v0, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    .line 2657
    invoke-virtual {v1, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/2addr v0, v10

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .end local p0    # "payloadStr":Ljava/lang/String;
    .restart local v0    # "payloadStr":Ljava/lang/String;
    goto :goto_0

    .line 2659
    .end local v0    # "payloadStr":Ljava/lang/String;
    .restart local p0    # "payloadStr":Ljava/lang/String;
    :cond_3
    const-string/jumbo v0, "there is no pagination pattern maybe / or of "

    invoke-static {v8, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_5

    .line 2664
    .end local p0    # "payloadStr":Ljava/lang/String;
    .local v1, "payloadStr":Ljava/lang/String;
    :goto_0
    nop

    .line 2666
    const-string/jumbo v12, "there is no pagination yet"

    const-string v13, "/"

    const/4 v14, 0x3

    const/4 v15, 0x0

    if-eqz v9, :cond_5

    .line 2667
    move-object v3, v1

    .line 2668
    .end local v7    # "payload":Ljava/lang/String;
    .local v3, "payload":Ljava/lang/String;
    invoke-virtual {v9, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 2670
    .local v7, "page":[Ljava/lang/String;
    array-length v0, v7

    if-ne v0, v10, :cond_4

    .line 2672
    :try_start_1
    aget-object v0, v7, v15

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move v4, v0

    .line 2673
    aget-object v0, v7, v11

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move v5, v0

    .line 2674
    const/4 v6, 0x1

    .line 2678
    goto :goto_1

    .line 2675
    :catch_0
    move-exception v0

    .line 2676
    .local v0, "ex":Ljava/lang/NumberFormatException;
    invoke-static {v8, v12}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2677
    const/4 v6, 0x0

    .line 2680
    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    .end local v7    # "page":[Ljava/lang/String;
    :cond_4
    :goto_1
    goto/16 :goto_5

    .line 2681
    .end local v3    # "payload":Ljava/lang/String;
    .local v7, "payload":Ljava/lang/String;
    :cond_5
    const-string v0, " of "

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 2682
    .local v11, "page":[Ljava/lang/String;
    array-length v0, v11

    if-lt v0, v10, :cond_6

    .line 2683
    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 2684
    .local v10, "pageCount":[Ljava/lang/String;
    array-length v0, v10

    if-lt v0, v14, :cond_6

    .line 2686
    :try_start_2
    aget-object v0, v10, v15

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move v4, v0

    .line 2687
    const/16 v16, 0x2

    aget-object v0, v10, v16

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move v5, v0

    .line 2688
    aget-object v0, v10, v15

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v16, 0x2

    aget-object v17, v10, v16

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    add-int v0, v0, v17

    add-int/lit8 v0, v0, 0x4

    .line 2689
    .local v0, "offset":I
    add-int/lit8 v14, v0, 0x1

    invoke-virtual {v1, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1

    move-object v7, v12

    .line 2690
    const/4 v6, 0x1

    .end local v0    # "offset":I
    goto :goto_2

    .line 2693
    :catch_1
    move-exception v0

    .line 2694
    .local v0, "ex":Ljava/lang/StringIndexOutOfBoundsException;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v8, v12}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2691
    .end local v0    # "ex":Ljava/lang/StringIndexOutOfBoundsException;
    :catch_2
    move-exception v0

    .line 2692
    .local v0, "ex":Ljava/lang/NumberFormatException;
    invoke-static {v8, v12}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2698
    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    .end local v10    # "pageCount":[Ljava/lang/String;
    :cond_6
    :goto_2
    if-nez v6, :cond_c

    .line 2699
    invoke-virtual {v1, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 2700
    .local v10, "tempPage":[Ljava/lang/String;
    array-length v0, v10

    const/4 v12, 0x2

    if-lt v0, v12, :cond_c

    .line 2701
    const/4 v5, 0x0

    .line 2702
    const/4 v12, 0x1

    aget-object v0, v10, v12

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v12

    .line 2704
    .local v12, "totalNumber":[C
    :try_start_3
    aget-object v0, v10, v15

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move v4, v0

    .line 2705
    const/4 v0, 0x0

    .line 2706
    .local v0, "i":I
    :goto_3
    aget-char v13, v12, v0

    invoke-static {v13}, Ljava/lang/Character;->isDigit(C)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 2707
    if-nez v0, :cond_7

    .line 2708
    aget-char v13, v12, v0

    invoke-static {v13}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v13

    move v5, v13

    goto :goto_4

    .line 2709
    :cond_7
    const/4 v13, 0x1

    if-ne v0, v13, :cond_8

    .line 2710
    aget-char v14, v12, v15

    invoke-static {v14}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v14

    mul-int/lit8 v14, v14, 0xa

    aget-char v17, v12, v13

    .line 2711
    invoke-static/range {v17 .. v17}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v13

    add-int v5, v14, v13

    goto :goto_4

    .line 2712
    :cond_8
    const/4 v13, 0x2

    if-ne v0, v13, :cond_9

    .line 2713
    aget-char v13, v12, v15

    invoke-static {v13}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v13

    mul-int/lit8 v13, v13, 0x64

    const/4 v14, 0x1

    aget-char v17, v12, v14

    .line 2714
    invoke-static/range {v17 .. v17}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v14

    mul-int/lit8 v14, v14, 0xa

    add-int/2addr v13, v14

    const/4 v14, 0x2

    aget-char v17, v12, v14

    .line 2715
    invoke-static/range {v17 .. v17}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v14

    add-int v5, v13, v14

    goto :goto_4

    .line 2716
    :cond_9
    const/4 v13, 0x3

    if-ne v0, v13, :cond_a

    .line 2717
    aget-char v13, v12, v15

    invoke-static {v13}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v13

    mul-int/lit16 v13, v13, 0x3e8

    const/4 v14, 0x1

    aget-char v17, v12, v14

    .line 2718
    invoke-static/range {v17 .. v17}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v14

    mul-int/lit8 v14, v14, 0x64

    add-int/2addr v13, v14

    const/4 v14, 0x2

    aget-char v17, v12, v14

    .line 2719
    invoke-static/range {v17 .. v17}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v14

    mul-int/lit8 v14, v14, 0xa

    add-int/2addr v13, v14

    const/4 v14, 0x3

    aget-char v17, v12, v14

    .line 2720
    invoke-static/range {v17 .. v17}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v14

    add-int v5, v13, v14

    .line 2722
    :cond_a
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 2724
    :cond_b
    aget-object v13, v10, v15

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    add-int/2addr v13, v0

    const/4 v14, 0x1

    add-int/2addr v13, v14

    invoke-virtual {v1, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_3

    .line 2725
    .end local v7    # "payload":Ljava/lang/String;
    .restart local v3    # "payload":Ljava/lang/String;
    const/4 v6, 0x1

    .line 2731
    .end local v0    # "i":I
    goto :goto_5

    .line 2728
    .end local v3    # "payload":Ljava/lang/String;
    .restart local v7    # "payload":Ljava/lang/String;
    :catch_3
    move-exception v0

    .line 2729
    .local v0, "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2730
    return-void

    .line 2726
    .end local v0    # "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    :catch_4
    move-exception v0

    .line 2727
    .local v0, "ex":Ljava/lang/NumberFormatException;
    const-string/jumbo v3, "there is no pagination"

    invoke-static {v8, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2731
    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    move-object v3, v7

    goto :goto_5

    .line 2736
    .end local v10    # "tempPage":[Ljava/lang/String;
    .end local v11    # "page":[Ljava/lang/String;
    .end local v12    # "totalNumber":[C
    :cond_c
    move-object v3, v7

    .end local v7    # "payload":Ljava/lang/String;
    .restart local v3    # "payload":Ljava/lang/String;
    :goto_5
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 2737
    .local v0, "data":[B
    array-length v7, v0

    sput v7, Lcom/android/internal/telephony/cdma/sms/BearerData;->userLength:I

    .line 2738
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "spr segment length : "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v10, Lcom/android/internal/telephony/cdma/sms/BearerData;->userLength:I

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2740
    iget v7, v2, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    const/4 v10, 0x3

    if-ne v7, v10, :cond_f

    .line 2741
    sget v7, Lcom/android/internal/telephony/cdma/sms/BearerData;->userLength:I

    const/4 v10, 0x1

    if-le v7, v10, :cond_f

    .line 2742
    add-int/lit8 v10, v7, -0x2

    aget-byte v10, v0, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    int-to-char v10, v10

    sput-char v10, Lcom/android/internal/telephony/cdma/sms/BearerData;->compChar:C

    .line 2743
    const/4 v11, 0x1

    sub-int/2addr v7, v11

    aget-byte v7, v0, v7

    and-int/lit16 v7, v7, 0xff

    int-to-char v7, v7

    or-int/2addr v7, v10

    int-to-char v7, v7

    sput-char v7, Lcom/android/internal/telephony/cdma/sms/BearerData;->compChar:C

    .line 2745
    const v10, 0xd83d

    if-eq v7, v10, :cond_e

    const v10, 0xd83c

    if-eq v7, v10, :cond_e

    const v10, 0xd83e

    if-ne v7, v10, :cond_d

    goto :goto_6

    .line 2753
    :cond_d
    sput-boolean v15, Lcom/android/internal/telephony/cdma/sms/BearerData;->mIsfourBytesUnicode:Z

    goto :goto_7

    .line 2746
    :cond_e
    :goto_6
    const-string/jumbo v7, "spr emoji is broken in the end of segment"

    invoke-static {v8, v7}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2747
    const/4 v7, 0x2

    new-array v7, v7, [B

    sput-object v7, Lcom/android/internal/telephony/cdma/sms/BearerData;->mlastByte:[B

    .line 2748
    sget v10, Lcom/android/internal/telephony/cdma/sms/BearerData;->userLength:I

    add-int/lit8 v11, v10, -0x2

    aget-byte v11, v0, v11

    aput-byte v11, v7, v15

    .line 2749
    const/4 v11, 0x1

    sub-int/2addr v10, v11

    aget-byte v10, v0, v10

    aput-byte v10, v7, v11

    .line 2750
    sput-boolean v11, Lcom/android/internal/telephony/cdma/sms/BearerData;->mIsfourBytesUnicode:Z

    .line 2751
    sput v15, Lcom/android/internal/telephony/cdma/sms/BearerData;->mBodyOffset:I

    .line 2758
    :cond_f
    :goto_7
    if-nez v6, :cond_10

    .line 2759
    const-string v7, "No pagination found"

    invoke-static {v8, v7}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2760
    return-void

    .line 2762
    :cond_10
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "segmented number: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2763
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "total number: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2764
    const/16 v7, 0x270f

    if-gez v4, :cond_11

    if-gt v4, v7, :cond_12

    :cond_11
    if-gez v5, :cond_13

    if-le v4, v7, :cond_13

    .line 2765
    :cond_12
    const-string v7, "Its not segmented sms. "

    invoke-static {v8, v7}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2766
    return-void

    .line 2770
    :cond_13
    if-eqz v4, :cond_14

    if-eqz v5, :cond_14

    if-gt v4, v5, :cond_14

    if-gt v5, v7, :cond_14

    .line 2771
    const-string v7, "It\'s segmented sms"

    invoke-static {v8, v7}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2772
    new-instance v7, Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    invoke-direct {v7}, Lcom/android/internal/telephony/SmsHeader$ConcatRef;-><init>()V

    .line 2773
    .local v7, "concatRef":Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    iput v4, v7, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    .line 2774
    iput v5, v7, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    .line 2775
    const/4 v8, -0x1

    iput v8, v7, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    .line 2776
    new-instance v8, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v8}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    iput-object v8, v2, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 2777
    iget-object v8, v2, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    iput-object v7, v8, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    .line 2781
    .end local v7    # "concatRef":Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    goto :goto_8

    .line 2782
    :cond_14
    const-string v7, "It\'s not segmented sms."

    invoke-static {v8, v7}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2784
    :goto_8
    return-void

    .line 2661
    .end local v0    # "data":[B
    .end local v1    # "payloadStr":Ljava/lang/String;
    .end local v3    # "payload":Ljava/lang/String;
    .local v7, "payload":Ljava/lang/String;
    .restart local p0    # "payloadStr":Ljava/lang/String;
    :catch_5
    move-exception v0

    .line 2662
    .local v0, "ex":Ljava/lang/StringIndexOutOfBoundsException;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2663
    return-void
.end method

.method private static greylist-max-r getBitsForNumFields(II)I
    .locals 3
    .param p0, "msgEncoding"    # I
    .param p1, "numFields"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .line 2188
    packed-switch p0, :pswitch_data_0

    .line 2205
    :pswitch_0
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unsupported message encoding ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2202
    :pswitch_1
    mul-int/lit8 v0, p1, 0x10

    return v0

    .line 2199
    :pswitch_2
    mul-int/lit8 v0, p1, 0x7

    return v0

    .line 2194
    :pswitch_3
    mul-int/lit8 v0, p1, 0x8

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private static blacklist getLanguageCodeForValue(I)Ljava/lang/String;
    .locals 1
    .param p0, "languageValue"    # I

    .line 464
    packed-switch p0, :pswitch_data_0

    .line 487
    const/4 v0, 0x0

    return-object v0

    .line 484
    :pswitch_0
    const-string/jumbo v0, "he"

    return-object v0

    .line 481
    :pswitch_1
    const-string/jumbo v0, "zh"

    return-object v0

    .line 478
    :pswitch_2
    const-string/jumbo v0, "ko"

    return-object v0

    .line 475
    :pswitch_3
    const-string/jumbo v0, "ja"

    return-object v0

    .line 472
    :pswitch_4
    const-string v0, "es"

    return-object v0

    .line 469
    :pswitch_5
    const-string v0, "fr"

    return-object v0

    .line 466
    :pswitch_6
    const-string v0, "en"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static blacklist isCmasAlertCategory(I)Z
    .locals 1
    .param p0, "category"    # I

    .line 2302
    const/16 v0, 0x1000

    if-lt p0, v0, :cond_0

    const/16 v0, 0x10ff

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static blacklist serviceCategoryToCmasMessageClass(I)I
    .locals 1
    .param p0, "serviceCategory"    # I

    .line 2156
    packed-switch p0, :pswitch_data_0

    .line 2173
    const/4 v0, -0x1

    return v0

    .line 2170
    :pswitch_0
    const/4 v0, 0x4

    return v0

    .line 2167
    :pswitch_1
    const/4 v0, 0x3

    return v0

    .line 2164
    :pswitch_2
    const/4 v0, 0x2

    return v0

    .line 2161
    :pswitch_3
    const/4 v0, 0x1

    return v0

    .line 2158
    :pswitch_4
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1000
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public blacklist getLanguage()Ljava/lang/String;
    .locals 1

    .line 455
    iget v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->language:I

    invoke-static {v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->getLanguageCodeForValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 4

    .line 493
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 494
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "BearerData "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 495
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "{ messageType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 496
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", messageId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", priority="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->priorityIndicatorSet:Z

    const-string/jumbo v3, "unset"

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->priority:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 498
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", privacy="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->privacyIndicatorSet:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->privacy:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v3

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", alert="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->alertIndicatorSet:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->alert:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_2

    :cond_2
    move-object v2, v3

    :goto_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 500
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", displayMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->displayModeSet:Z

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->displayMode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_3

    :cond_3
    move-object v2, v3

    :goto_3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", language="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->languageIndicatorSet:Z

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->language:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_4

    :cond_4
    move-object v2, v3

    :goto_4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", errorClass="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageStatusSet:Z

    if-eqz v2, :cond_5

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->errorClass:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_5

    :cond_5
    move-object v2, v3

    :goto_5
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 503
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", msgStatus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageStatusSet:Z

    if-eqz v2, :cond_6

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageStatus:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_6

    :cond_6
    move-object v2, v3

    :goto_6
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 504
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", msgCenterTimeStamp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 505
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    if-eqz v2, :cond_7

    goto :goto_7

    :cond_7
    move-object v2, v3

    :goto_7
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 504
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", validityPeriodAbsolute="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 507
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->validityPeriodAbsolute:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    if-eqz v2, :cond_8

    goto :goto_8

    :cond_8
    move-object v2, v3

    :goto_8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 506
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", validityPeriodRelative="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 509
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->validityPeriodRelativeSet:Z

    if-eqz v2, :cond_9

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->validityPeriodRelative:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_9

    :cond_9
    move-object v2, v3

    :goto_9
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 508
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", deferredDeliveryTimeAbsolute="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 511
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->deferredDeliveryTimeAbsolute:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    if-eqz v2, :cond_a

    goto :goto_a

    :cond_a
    move-object v2, v3

    :goto_a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 510
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", deferredDeliveryTimeRelative="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 513
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->deferredDeliveryTimeRelativeSet:Z

    if-eqz v2, :cond_b

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->deferredDeliveryTimeRelative:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :cond_b
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 512
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 514
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", userAckReq="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userAckReq:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 515
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", deliveryAckReq="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->deliveryAckReq:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 516
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", readAckReq="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->readAckReq:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", reportReq="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->reportReq:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 518
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", numberOfMessages="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->numberOfMessages:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 519
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", callbackNumber="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->callbackNumber:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    const-string v3, "BearerData"

    invoke-static {v3, v2}, Lcom/android/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 520
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", depositIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->depositIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 521
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", hasUserDataHeader="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->hasUserDataHeader:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 522
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", userData="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 523
    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 524
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
