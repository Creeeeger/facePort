.class public Lcom/android/internal/telephony/cdma/SmsMessage;
.super Lcom/android/internal/telephony/SmsMessageBase;
.source "SmsMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    }
.end annotation


# static fields
.field private static final blacklist BEARER_DATA:B = 0x8t

.field private static final blacklist BEARER_REPLY_OPTION:B = 0x6t

.field private static final blacklist CAUSE_CODES:B = 0x7t

.field private static final blacklist DESTINATION_ADDRESS:B = 0x4t

.field private static final blacklist DESTINATION_SUB_ADDRESS:B = 0x5t

.field private static final blacklist LOGGABLE_TAG:Ljava/lang/String; = "CDMA:SMS"

.field static final blacklist LOG_TAG:Ljava/lang/String; = "SmsMessage"

.field private static final blacklist ORIGINATING_ADDRESS:B = 0x2t

.field private static final blacklist ORIGINATING_SUB_ADDRESS:B = 0x3t

.field private static final blacklist PRIORITY_EMERGENCY:I = 0x3

.field private static final blacklist PRIORITY_INTERACTIVE:I = 0x1

.field private static final blacklist PRIORITY_NORMAL:I = 0x0

.field private static final blacklist PRIORITY_URGENT:I = 0x2

.field private static final blacklist RETURN_ACK:I = 0x1

.field private static final blacklist RETURN_NO_ACK:I = 0x0

.field private static final blacklist SERVICE_CATEGORY:B = 0x1t

.field private static final blacklist TELESERVICE_IDENTIFIER:B = 0x0t

.field private static final blacklist VDBG:Z = false


# instance fields
.field private greylist mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

.field private greylist mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

.field private blacklist mIsCtcFota:Z

.field public blacklist mMsgEncoding:I

.field private blacklist mUserDataCtcFota:[B

.field private blacklist status:I


# direct methods
.method public constructor greylist <init>()V
    .locals 1

    .line 129
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsMessageBase;-><init>()V

    .line 1367
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mIsCtcFota:Z

    .line 1370
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mMsgEncoding:I

    .line 129
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/SmsAddress;Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;)V
    .locals 1
    .param p1, "addr"    # Lcom/android/internal/telephony/SmsAddress;
    .param p2, "env"    # Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    .line 122
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsMessageBase;-><init>()V

    .line 1367
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mIsCtcFota:Z

    .line 1370
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mMsgEncoding:I

    .line 123
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    .line 124
    iput-object p2, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    .line 125
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->createPdu()V

    .line 126
    return-void
.end method

.method public static greylist calculateLength(Ljava/lang/CharSequence;ZZ)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .locals 1
    .param p0, "messageBody"    # Ljava/lang/CharSequence;
    .param p1, "use7bitOnly"    # Z
    .param p2, "isEntireMsg"    # Z

    .line 435
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->calcTextEncodingDetails(Ljava/lang/CharSequence;ZZ)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist calculateLengthForEms(Ljava/lang/CharSequence;ZZ)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .locals 1
    .param p0, "messageBody"    # Ljava/lang/CharSequence;
    .param p1, "use7bitOnly"    # Z
    .param p2, "isEms"    # Z

    .line 1534
    const/4 v0, 0x1

    invoke-static {p0, p1, v0, p2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->calcTextEncodingDetails(Ljava/lang/CharSequence;ZZZ)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist calculateLengthWithEmail(Ljava/lang/CharSequence;ZI)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .locals 1
    .param p0, "messageBody"    # Ljava/lang/CharSequence;
    .param p1, "use7bitOnly"    # Z
    .param p2, "maxEmailLen"    # I

    .line 1892
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->calcTextEncodingDetailsWithEmail(Ljava/lang/CharSequence;ZI)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist convertDtmfToAscii(B)B
    .locals 1
    .param p0, "dtmfDigit"    # B

    .line 1273
    packed-switch p0, :pswitch_data_0

    .line 1295
    const/16 v0, 0x20

    .local v0, "asciiDigit":B
    goto :goto_0

    .line 1293
    .end local v0    # "asciiDigit":B
    :pswitch_0
    const/16 v0, 0x43

    .restart local v0    # "asciiDigit":B
    goto :goto_0

    .line 1292
    .end local v0    # "asciiDigit":B
    :pswitch_1
    const/16 v0, 0x42

    .restart local v0    # "asciiDigit":B
    goto :goto_0

    .line 1291
    .end local v0    # "asciiDigit":B
    :pswitch_2
    const/16 v0, 0x41

    .restart local v0    # "asciiDigit":B
    goto :goto_0

    .line 1290
    .end local v0    # "asciiDigit":B
    :pswitch_3
    const/16 v0, 0x23

    .restart local v0    # "asciiDigit":B
    goto :goto_0

    .line 1289
    .end local v0    # "asciiDigit":B
    :pswitch_4
    const/16 v0, 0x2a

    .restart local v0    # "asciiDigit":B
    goto :goto_0

    .line 1288
    .end local v0    # "asciiDigit":B
    :pswitch_5
    const/16 v0, 0x30

    .restart local v0    # "asciiDigit":B
    goto :goto_0

    .line 1287
    .end local v0    # "asciiDigit":B
    :pswitch_6
    const/16 v0, 0x39

    .restart local v0    # "asciiDigit":B
    goto :goto_0

    .line 1286
    .end local v0    # "asciiDigit":B
    :pswitch_7
    const/16 v0, 0x38

    .restart local v0    # "asciiDigit":B
    goto :goto_0

    .line 1285
    .end local v0    # "asciiDigit":B
    :pswitch_8
    const/16 v0, 0x37

    .restart local v0    # "asciiDigit":B
    goto :goto_0

    .line 1284
    .end local v0    # "asciiDigit":B
    :pswitch_9
    const/16 v0, 0x36

    .restart local v0    # "asciiDigit":B
    goto :goto_0

    .line 1283
    .end local v0    # "asciiDigit":B
    :pswitch_a
    const/16 v0, 0x35

    .restart local v0    # "asciiDigit":B
    goto :goto_0

    .line 1282
    .end local v0    # "asciiDigit":B
    :pswitch_b
    const/16 v0, 0x34

    .restart local v0    # "asciiDigit":B
    goto :goto_0

    .line 1281
    .end local v0    # "asciiDigit":B
    :pswitch_c
    const/16 v0, 0x33

    .restart local v0    # "asciiDigit":B
    goto :goto_0

    .line 1280
    .end local v0    # "asciiDigit":B
    :pswitch_d
    const/16 v0, 0x32

    .restart local v0    # "asciiDigit":B
    goto :goto_0

    .line 1279
    .end local v0    # "asciiDigit":B
    :pswitch_e
    const/16 v0, 0x31

    .restart local v0    # "asciiDigit":B
    goto :goto_0

    .line 1277
    .end local v0    # "asciiDigit":B
    :pswitch_f
    const/16 v0, 0x30

    .line 1299
    .restart local v0    # "asciiDigit":B
    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x0
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
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static greylist-max-q createFromEfRecord(I[B)Lcom/android/internal/telephony/cdma/SmsMessage;
    .locals 7
    .param p0, "index"    # I
    .param p1, "data"    # [B

    .line 161
    const-string v0, "SmsMessage"

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Lcom/android/internal/telephony/cdma/SmsMessage;

    invoke-direct {v2}, Lcom/android/internal/telephony/cdma/SmsMessage;-><init>()V

    .line 163
    .local v2, "msg":Lcom/android/internal/telephony/cdma/SmsMessage;
    iput p0, v2, Lcom/android/internal/telephony/cdma/SmsMessage;->mIndexOnIcc:I

    .line 168
    const/4 v3, 0x0

    aget-byte v4, p1, v3

    const/4 v5, 0x1

    and-int/2addr v4, v5

    if-nez v4, :cond_0

    .line 169
    const-string v3, "SMS parsing failed: Trying to parse a free record"

    invoke-static {v0, v3}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    return-object v1

    .line 172
    :cond_0
    aget-byte v4, p1, v3

    and-int/lit8 v4, v4, 0x7

    iput v4, v2, Lcom/android/internal/telephony/cdma/SmsMessage;->mStatusOnIcc:I

    .line 174
    iget v4, v2, Lcom/android/internal/telephony/cdma/SmsMessage;->mStatusOnIcc:I

    if-eq v4, v5, :cond_2

    iget v4, v2, Lcom/android/internal/telephony/cdma/SmsMessage;->mStatusOnIcc:I

    const/4 v6, 0x3

    if-ne v4, v6, :cond_1

    goto :goto_0

    .line 177
    :cond_1
    iput v5, v2, Lcom/android/internal/telephony/cdma/SmsMessage;->mMti:I

    goto :goto_1

    .line 175
    :cond_2
    :goto_0
    iput v3, v2, Lcom/android/internal/telephony/cdma/SmsMessage;->mMti:I

    .line 184
    :goto_1
    aget-byte v4, p1, v5

    and-int/lit16 v4, v4, 0xff

    .line 186
    .local v4, "size":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "msg["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]statusOnIcc: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/android/internal/telephony/cdma/SmsMessage;->mStatusOnIcc:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " size:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    new-array v5, v4, [B

    .line 191
    .local v5, "pdu":[B
    const/4 v6, 0x2

    invoke-static {p1, v6, v5, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 194
    invoke-direct {v2, v5}, Lcom/android/internal/telephony/cdma/SmsMessage;->parsePduFromEfRecord([B)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    return-object v2

    .line 196
    .end local v2    # "msg":Lcom/android/internal/telephony/cdma/SmsMessage;
    .end local v4    # "size":I
    .end local v5    # "pdu":[B
    :catch_0
    move-exception v2

    .line 197
    .local v2, "ex":Ljava/lang/RuntimeException;
    const-string v3, "SMS PDU parsing failed: "

    invoke-static {v0, v3, v2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 198
    return-object v1
.end method

.method public static greylist createFromPdu([B)Lcom/android/internal/telephony/cdma/SmsMessage;
    .locals 1
    .param p0, "pdu"    # [B

    .line 144
    invoke-static {}, Landroid/telephony/SmsManager;->getDefaultSmsSubscriptionId()I

    move-result v0

    invoke-static {v0, p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->semCreateFromPdu(I[B)Lcom/android/internal/telephony/cdma/SmsMessage;

    move-result-object v0

    return-object v0
.end method

.method private blacklist decodeSmsDisplayAddress(Lcom/android/internal/telephony/SmsAddress;)V
    .locals 8
    .param p1, "addr"    # Lcom/android/internal/telephony/SmsAddress;

    .line 914
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    const-string/jumbo v1, "sms_special_address_handling_for"

    invoke-virtual {v0, v1}, Landroid/telephony/SmsManager;->getSmsSetting(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0x2b

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "SmsMessage"

    const-string v5, "+"

    if-eqz v0, :cond_3

    .line 917
    iget v0, p1, Lcom/android/internal/telephony/SmsAddress;->ton:I

    if-nez v0, :cond_1

    .line 918
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 919
    .local v0, "origAddress":Ljava/lang/String;
    const-string v1, "00852"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 920
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "receive sms from HK number Before Address= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 922
    iput-object v5, p1, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    .line 923
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    .line 924
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "After Address Replacement = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 927
    :cond_0
    iput-object v0, p1, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    .line 929
    .end local v0    # "origAddress":Ljava/lang/String;
    :goto_0
    goto/16 :goto_2

    .line 930
    :cond_1
    iget v0, p1, Lcom/android/internal/telephony/SmsAddress;->ton:I

    if-ne v0, v3, :cond_2

    .line 931
    new-instance v0, Ljava/lang/String;

    iget-object v3, p1, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    iput-object v0, p1, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    .line 932
    iget-object v0, p1, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v1, :cond_6

    .line 933
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    goto/16 :goto_2

    .line 937
    :cond_2
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    iput-object v0, p1, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    goto/16 :goto_2

    .line 946
    :cond_3
    invoke-static {}, Landroid/sysprop/TelephonyProperties;->operator_idp_string()Ljava/util/Optional;

    move-result-object v0

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 947
    .local v0, "idd":Ljava/lang/String;
    new-instance v6, Ljava/lang/String;

    iget-object v7, p1, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([B)V

    iput-object v6, p1, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    .line 948
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, p1, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 949
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    goto :goto_1

    .line 950
    :cond_4
    iget v6, p1, Lcom/android/internal/telephony/SmsAddress;->ton:I

    if-ne v6, v3, :cond_5

    .line 951
    iget-object v3, p1, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v1, :cond_5

    .line 952
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    .line 955
    :cond_5
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " decodeSmsDisplayAddress = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/android/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 957
    .end local v0    # "idd":Ljava/lang/String;
    :cond_6
    :goto_2
    return-void
.end method

.method public static blacklist getDeliverPdu(Ljava/lang/String;Ljava/lang/String;J)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .locals 9
    .param p0, "origAddr"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "date"    # J

    .line 1164
    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto/16 :goto_0

    .line 1168
    :cond_0
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->parse(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    move-result-object v1

    .line 1169
    .local v1, "addr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    if-nez v1, :cond_1

    return-object v0

    .line 1171
    :cond_1
    new-instance v2, Lcom/android/internal/telephony/cdma/sms/BearerData;

    invoke-direct {v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;-><init>()V

    .line 1172
    .local v2, "bearerData":Lcom/android/internal/telephony/cdma/sms/BearerData;
    const/4 v3, 0x1

    iput v3, v2, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    .line 1174
    const/4 v3, 0x0

    iput v3, v2, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    .line 1176
    iput-boolean v3, v2, Lcom/android/internal/telephony/cdma/sms/BearerData;->deliveryAckReq:Z

    .line 1177
    iput-boolean v3, v2, Lcom/android/internal/telephony/cdma/sms/BearerData;->userAckReq:Z

    .line 1178
    iput-boolean v3, v2, Lcom/android/internal/telephony/cdma/sms/BearerData;->readAckReq:Z

    .line 1179
    iput-boolean v3, v2, Lcom/android/internal/telephony/cdma/sms/BearerData;->reportReq:Z

    .line 1181
    new-instance v4, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct {v4}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    iput-object v4, v2, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    .line 1182
    iget-object v4, v2, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iput-object p1, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 1184
    invoke-static {p2, p3}, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->fromMillis(J)Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    move-result-object v4

    iput-object v4, v2, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    .line 1186
    invoke-static {v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encode(Lcom/android/internal/telephony/cdma/sms/BearerData;)[B

    move-result-object v4

    .line 1187
    .local v4, "encodedBearerData":[B
    if-nez v4, :cond_2

    return-object v0

    .line 1190
    :cond_2
    :try_start_0
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    const/16 v6, 0x64

    invoke-direct {v5, v6}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 1191
    .local v5, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v6, Ljava/io/DataOutputStream;

    invoke-direct {v6, v5}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1192
    .local v6, "dos":Ljava/io/DataOutputStream;
    const/16 v7, 0x1002

    invoke-virtual {v6, v7}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1193
    invoke-virtual {v6, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1194
    invoke-virtual {v6, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1195
    iget v7, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    invoke-virtual {v6, v7}, Ljava/io/DataOutputStream;->write(I)V

    .line 1196
    iget v7, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    invoke-virtual {v6, v7}, Ljava/io/DataOutputStream;->write(I)V

    .line 1197
    iget v7, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->ton:I

    invoke-virtual {v6, v7}, Ljava/io/DataOutputStream;->write(I)V

    .line 1198
    iget v7, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    invoke-virtual {v6, v7}, Ljava/io/DataOutputStream;->write(I)V

    .line 1199
    iget v7, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    invoke-virtual {v6, v7}, Ljava/io/DataOutputStream;->write(I)V

    .line 1200
    iget-object v7, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    iget-object v8, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    array-length v8, v8

    invoke-virtual {v6, v7, v3, v8}, Ljava/io/DataOutputStream;->write([BII)V

    .line 1202
    invoke-virtual {v6, v3}, Ljava/io/DataOutputStream;->write(I)V

    .line 1203
    invoke-virtual {v6, v3}, Ljava/io/DataOutputStream;->write(I)V

    .line 1204
    invoke-virtual {v6, v3}, Ljava/io/DataOutputStream;->write(I)V

    .line 1205
    array-length v7, v4

    invoke-virtual {v6, v7}, Ljava/io/DataOutputStream;->write(I)V

    .line 1206
    array-length v7, v4

    invoke-virtual {v6, v4, v3, v7}, Ljava/io/DataOutputStream;->write([BII)V

    .line 1207
    invoke-virtual {v6}, Ljava/io/DataOutputStream;->close()V

    .line 1209
    new-instance v3, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    invoke-direct {v3}, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;-><init>()V

    .line 1210
    .local v3, "pdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    iput-object v7, v3, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;->encodedMessage:[B

    .line 1211
    iput-object v0, v3, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;->encodedScAddress:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1212
    return-object v3

    .line 1213
    .end local v3    # "pdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .end local v5    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v6    # "dos":Ljava/io/DataOutputStream;
    :catch_0
    move-exception v3

    .line 1214
    .local v3, "ex":Ljava/io/IOException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "creating Deliver PDU failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "SmsMessage"

    invoke-static {v6, v5}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1216
    .end local v3    # "ex":Ljava/io/IOException;
    return-object v0

    .line 1165
    .end local v1    # "addr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .end local v2    # "bearerData":Lcom/android/internal/telephony/cdma/sms/BearerData;
    .end local v4    # "encodedBearerData":[B
    :cond_3
    :goto_0
    return-object v0
.end method

.method public static blacklist getDomainChangeNotification(BLjava/lang/String;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .locals 26
    .param p0, "type"    # B
    .param p1, "doChgAddr"    # Ljava/lang/String;

    .line 1785
    nop

    .line 1786
    const/4 v0, 0x1

    move-object/from16 v1, p1

    invoke-static {v1, v0, v0}, Landroid/telephony/PhoneNumberUtils;->cdmaCheckAndProcessPlusCodeByNumberFormat(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    .line 1785
    invoke-static {v2}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->parse(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    move-result-object v2

    .line 1788
    .local v2, "destAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    const/4 v3, 0x0

    if-nez v2, :cond_0

    return-object v3

    .line 1790
    :cond_0
    new-instance v4, Lcom/android/internal/telephony/cdma/sms/BearerData;

    invoke-direct {v4}, Lcom/android/internal/telephony/cdma/sms/BearerData;-><init>()V

    .line 1791
    .local v4, "bearerData":Lcom/android/internal/telephony/cdma/sms/BearerData;
    const/4 v5, 0x2

    iput v5, v4, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    .line 1792
    invoke-static {}, Lcom/android/internal/telephony/cdma/SmsMessage;->getNextMessageId()I

    move-result v6

    iput v6, v4, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    .line 1793
    iput-boolean v0, v4, Lcom/android/internal/telephony/cdma/sms/BearerData;->deliveryAckReq:Z

    .line 1794
    const/4 v6, 0x0

    iput-boolean v6, v4, Lcom/android/internal/telephony/cdma/sms/BearerData;->userAckReq:Z

    .line 1795
    iput-boolean v6, v4, Lcom/android/internal/telephony/cdma/sms/BearerData;->readAckReq:Z

    .line 1796
    iput-boolean v6, v4, Lcom/android/internal/telephony/cdma/sms/BearerData;->reportReq:Z

    .line 1797
    iput-boolean v0, v4, Lcom/android/internal/telephony/cdma/sms/BearerData;->priorityIndicatorSet:Z

    .line 1798
    iput v5, v4, Lcom/android/internal/telephony/cdma/sms/BearerData;->priority:I

    .line 1800
    new-instance v7, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct {v7}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    .line 1801
    .local v7, "uData":Lcom/android/internal/telephony/cdma/sms/UserData;
    iput v6, v7, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    .line 1802
    iput-boolean v0, v7, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    .line 1804
    const/16 v8, 0x8

    new-array v9, v8, [B

    iput-object v9, v7, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 1805
    iget-object v9, v7, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    aput-byte v6, v9, v6

    .line 1806
    iget-object v9, v7, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    iget v10, v4, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    rem-int/lit16 v10, v10, 0x100

    int-to-byte v10, v10

    aput-byte v10, v9, v0

    .line 1807
    iget-object v9, v7, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    aput-byte v8, v9, v5

    .line 1808
    iget-object v9, v7, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    const/4 v10, 0x3

    aput-byte p0, v9, v10

    .line 1810
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 1811
    .local v9, "scTimeMillis":J
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v11

    .line 1812
    .local v11, "cal":Ljava/util/Calendar;
    invoke-virtual {v11, v9, v10}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1813
    const-wide/16 v12, 0x0

    .line 1814
    .local v12, "UtcTimeStamp":J
    invoke-virtual {v11, v0}, Ljava/util/Calendar;->get(I)I

    move-result v14

    int-to-long v14, v14

    .line 1815
    .local v14, "years":J
    invoke-virtual {v11, v5}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 1816
    .local v6, "months":I
    const/4 v0, 0x5

    invoke-virtual {v11, v0}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 1817
    .local v3, "dates":I
    const/16 v5, 0xa

    invoke-virtual {v11, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 1818
    .local v5, "hours":I
    const/16 v0, 0xc

    invoke-virtual {v11, v0}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 1819
    .local v8, "minutes":I
    const/16 v0, 0xd

    invoke-virtual {v11, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 1821
    .local v1, "seconds":I
    const-wide/16 v20, 0x76c

    sub-long v20, v14, v20

    const-wide/32 v22, 0x1e1853e

    mul-long v20, v20, v22

    move-wide/from16 v22, v9

    .end local v9    # "scTimeMillis":J
    .local v22, "scTimeMillis":J
    int-to-long v9, v6

    const-wide/32 v24, 0x28206f

    mul-long v9, v9, v24

    add-long v20, v20, v9

    int-to-long v9, v3

    const-wide/32 v24, 0x15180

    mul-long v9, v9, v24

    add-long v20, v20, v9

    int-to-long v9, v5

    const-wide/16 v24, 0xe10

    mul-long v9, v9, v24

    add-long v20, v20, v9

    int-to-long v9, v8

    const-wide/16 v24, 0x3c

    mul-long v9, v9, v24

    add-long v20, v20, v9

    int-to-long v9, v1

    add-long v20, v20, v9

    .line 1828
    .end local v12    # "UtcTimeStamp":J
    .local v20, "UtcTimeStamp":J
    iget-object v0, v7, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    const-wide/16 v12, 0xff

    and-long v9, v20, v12

    long-to-int v9, v9

    int-to-byte v9, v9

    const/4 v10, 0x7

    aput-byte v9, v0, v10

    .line 1829
    iget-object v0, v7, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    const/16 v10, 0x8

    shr-long v24, v20, v10

    and-long v9, v24, v12

    long-to-int v9, v9

    int-to-byte v9, v9

    const/4 v10, 0x6

    aput-byte v9, v0, v10

    .line 1830
    iget-object v0, v7, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    const/16 v9, 0x10

    shr-long v9, v20, v9

    and-long/2addr v9, v12

    long-to-int v9, v9

    int-to-byte v9, v9

    const/4 v10, 0x5

    aput-byte v9, v0, v10

    .line 1831
    iget-object v0, v7, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    const/4 v9, 0x4

    const/16 v10, 0x18

    shr-long v18, v20, v10

    and-long v12, v18, v12

    long-to-int v10, v12

    int-to-byte v10, v10

    aput-byte v10, v0, v9

    .line 1833
    iput-object v7, v4, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    .line 1835
    invoke-static {v4}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encode(Lcom/android/internal/telephony/cdma/sms/BearerData;)[B

    move-result-object v9

    .line 1837
    .local v9, "encodedBearerData":[B
    const-string v0, "CDMA:SMS"

    const/4 v10, 0x2

    invoke-static {v0, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    const-string v10, "SmsMessage"

    if-eqz v0, :cond_1

    .line 1838
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "MO (encoded) BearerData = "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1839
    if-eqz v9, :cond_1

    .line 1840
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "MO raw BearerData = \'"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v9}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v12, "\'"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1844
    :cond_1
    if-nez v9, :cond_2

    const/4 v10, 0x0

    return-object v10

    .line 1846
    :cond_2
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;-><init>()V

    move-object v12, v0

    .line 1847
    .local v12, "envelope":Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    const/4 v0, 0x0

    iput v0, v12, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    .line 1848
    const/16 v0, 0x1092

    iput v0, v12, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    .line 1849
    iput-object v2, v12, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->destAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .line 1850
    const/4 v0, 0x1

    iput v0, v12, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerReply:I

    .line 1851
    iput-object v9, v12, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    .line 1854
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v13, 0x64

    invoke-direct {v0, v13}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 1855
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v13, Ljava/io/DataOutputStream;

    invoke-direct {v13, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 1856
    .local v13, "dos":Ljava/io/DataOutputStream;
    move/from16 v16, v1

    .end local v1    # "seconds":I
    .local v16, "seconds":I
    :try_start_1
    iget v1, v12, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    invoke-virtual {v13, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1857
    const/4 v1, 0x0

    invoke-virtual {v13, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1858
    invoke-virtual {v13, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1859
    iget v1, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    invoke-virtual {v13, v1}, Ljava/io/DataOutputStream;->write(I)V

    .line 1860
    iget v1, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    invoke-virtual {v13, v1}, Ljava/io/DataOutputStream;->write(I)V

    .line 1861
    iget v1, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->ton:I

    invoke-virtual {v13, v1}, Ljava/io/DataOutputStream;->write(I)V

    .line 1862
    iget v1, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    invoke-virtual {v13, v1}, Ljava/io/DataOutputStream;->write(I)V

    .line 1863
    iget v1, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    invoke-virtual {v13, v1}, Ljava/io/DataOutputStream;->write(I)V

    .line 1864
    iget-object v1, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move/from16 v17, v3

    .end local v3    # "dates":I
    .local v17, "dates":I
    :try_start_2
    iget-object v3, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    array-length v3, v3
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-object/from16 v18, v2

    const/4 v2, 0x0

    .end local v2    # "destAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .local v18, "destAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    :try_start_3
    invoke-virtual {v13, v1, v2, v3}, Ljava/io/DataOutputStream;->write([BII)V

    .line 1866
    invoke-virtual {v13, v2}, Ljava/io/DataOutputStream;->write(I)V

    .line 1867
    invoke-virtual {v13, v2}, Ljava/io/DataOutputStream;->write(I)V

    .line 1868
    invoke-virtual {v13, v2}, Ljava/io/DataOutputStream;->write(I)V

    .line 1869
    array-length v1, v9

    invoke-virtual {v13, v1}, Ljava/io/DataOutputStream;->write(I)V

    .line 1870
    array-length v1, v9

    const/4 v2, 0x0

    invoke-virtual {v13, v9, v2, v1}, Ljava/io/DataOutputStream;->write([BII)V

    .line 1871
    invoke-virtual {v13}, Ljava/io/DataOutputStream;->close()V

    .line 1873
    new-instance v1, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    invoke-direct {v1}, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;-><init>()V

    .line 1874
    .local v1, "pdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;->encodedMessage:[B

    .line 1875
    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;->encodedScAddress:[B
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1877
    return-object v1

    .line 1878
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "pdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .end local v13    # "dos":Ljava/io/DataOutputStream;
    :catch_0
    move-exception v0

    goto :goto_0

    .end local v18    # "destAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .restart local v2    # "destAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    :catch_1
    move-exception v0

    move-object/from16 v18, v2

    .end local v2    # "destAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .restart local v18    # "destAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    goto :goto_0

    .end local v17    # "dates":I
    .end local v18    # "destAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .restart local v2    # "destAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .restart local v3    # "dates":I
    :catch_2
    move-exception v0

    move-object/from16 v18, v2

    move/from16 v17, v3

    .end local v2    # "destAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .end local v3    # "dates":I
    .restart local v17    # "dates":I
    .restart local v18    # "destAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    goto :goto_0

    .end local v16    # "seconds":I
    .end local v17    # "dates":I
    .end local v18    # "destAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .local v1, "seconds":I
    .restart local v2    # "destAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .restart local v3    # "dates":I
    :catch_3
    move-exception v0

    move/from16 v16, v1

    move-object/from16 v18, v2

    move/from16 v17, v3

    .line 1879
    .end local v1    # "seconds":I
    .end local v2    # "destAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .end local v3    # "dates":I
    .local v0, "ex":Ljava/io/IOException;
    .restart local v16    # "seconds":I
    .restart local v17    # "dates":I
    .restart local v18    # "destAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "creating SubmitPdu failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1881
    .end local v0    # "ex":Ljava/io/IOException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public static declared-synchronized greylist getNextMessageId()I
    .locals 7

    const-class v0, Lcom/android/internal/telephony/cdma/SmsMessage;

    monitor-enter v0

    .line 1025
    :try_start_0
    invoke-static {}, Landroid/sysprop/TelephonyProperties;->cdma_msg_id()Ljava/util/Optional;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1026
    .local v1, "msgId":I
    const v3, 0xffff

    rem-int v3, v1, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr v3, v2

    .line 1028
    .local v3, "nextMsgId":I
    :try_start_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Landroid/sysprop/TelephonyProperties;->cdma_msg_id(Ljava/lang/Integer;)V

    .line 1029
    const-string v4, "CDMA:SMS"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Lcom/android/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1030
    const-string v4, "SmsMessage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "next persist.radio.cdma.msgid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    const-string v4, "SmsMessage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "readback gets "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/sysprop/TelephonyProperties;->cdma_msg_id()Ljava/util/Optional;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1035
    :cond_0
    goto :goto_0

    .line 1033
    :catch_0
    move-exception v2

    .line 1034
    .local v2, "ex":Ljava/lang/RuntimeException;
    :try_start_2
    const-string v4, "SmsMessage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "set nextMessage ID failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1036
    .end local v2    # "ex":Ljava/lang/RuntimeException;
    :goto_0
    monitor-exit v0

    return v1

    .line 1024
    .end local v1    # "msgId":I
    .end local v3    # "nextMsgId":I
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static blacklist getSubmitPdu(ILjava/lang/String;Lcom/android/internal/telephony/cdma/sms/UserData;ZLjava/lang/String;I)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .locals 6
    .param p0, "subId"    # I
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "userData"    # Lcom/android/internal/telephony/cdma/sms/UserData;
    .param p3, "statusReportRequested"    # Z
    .param p4, "callbackNumber"    # Ljava/lang/String;
    .param p5, "priority"    # I

    .line 1576
    move v0, p0

    move-object v1, p1

    move v2, p3

    move-object v3, p2

    move-object v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/cdma/SmsMessage;->privateGetSubmitPdu(ILjava/lang/String;ZLcom/android/internal/telephony/cdma/sms/UserData;Ljava/lang/String;I)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getSubmitPdu(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;Ljava/lang/String;I)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .locals 7
    .param p0, "subId"    # I
    .param p1, "scAddr"    # Ljava/lang/String;
    .param p2, "destAddr"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "statusReportRequested"    # Z
    .param p5, "smsHeader"    # Lcom/android/internal/telephony/SmsHeader;
    .param p6, "callbackNumber"    # Ljava/lang/String;
    .param p7, "priority"    # I

    .line 1560
    if-eqz p3, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 1564
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    .line 1565
    .local v0, "uData":Lcom/android/internal/telephony/cdma/sms/UserData;
    iput-object p3, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 1566
    iput-object p5, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 1567
    move v1, p0

    move-object v2, p2

    move v3, p4

    move-object v4, v0

    move-object v5, p6

    move v6, p7

    invoke-static/range {v1 .. v6}, Lcom/android/internal/telephony/cdma/SmsMessage;->privateGetSubmitPdu(ILjava/lang/String;ZLcom/android/internal/telephony/cdma/sms/UserData;Ljava/lang/String;I)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v1

    return-object v1

    .line 1561
    .end local v0    # "uData":Lcom/android/internal/telephony/cdma/sms/UserData;
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static greylist getSubmitPdu(Ljava/lang/String;Lcom/android/internal/telephony/cdma/sms/UserData;Z)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .locals 1
    .param p0, "destAddr"    # Ljava/lang/String;
    .param p1, "userData"    # Lcom/android/internal/telephony/cdma/sms/UserData;
    .param p2, "statusReportRequested"    # Z

    .line 324
    invoke-static {p0, p2, p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->privateGetSubmitPdu(Ljava/lang/String;ZLcom/android/internal/telephony/cdma/sms/UserData;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-r getSubmitPdu(Ljava/lang/String;Lcom/android/internal/telephony/cdma/sms/UserData;ZI)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .locals 1
    .param p0, "destAddr"    # Ljava/lang/String;
    .param p1, "userData"    # Lcom/android/internal/telephony/cdma/sms/UserData;
    .param p2, "statusReportRequested"    # Z
    .param p3, "priority"    # I

    .line 340
    invoke-static {p0, p2, p1, p3}, Lcom/android/internal/telephony/cdma/SmsMessage;->privateGetSubmitPdu(Ljava/lang/String;ZLcom/android/internal/telephony/cdma/sms/UserData;I)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method public static greylist getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .locals 6
    .param p0, "scAddr"    # Ljava/lang/String;
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "destPort"    # I
    .param p3, "data"    # [B
    .param p4, "statusReportRequested"    # Z

    .line 285
    new-instance v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    invoke-direct {v0}, Lcom/android/internal/telephony/SmsHeader$PortAddrs;-><init>()V

    .line 286
    .local v0, "portAddrs":Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    iput p2, v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    .line 287
    const/4 v1, 0x0

    iput v1, v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->origPort:I

    .line 288
    iput-boolean v1, v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->areEightBits:Z

    .line 290
    new-instance v2, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v2}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 291
    .local v2, "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    iput-object v0, v2, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    .line 293
    new-instance v3, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct {v3}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    .line 296
    .local v3, "uData":Lcom/android/internal/telephony/cdma/sms/UserData;
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v4

    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v4

    .line 297
    .local v4, "phoneId":I
    const-string v5, "CHN"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/telephony/TelephonyFeatures;->isCountrySpecific(I[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 298
    const/4 v5, 0x4

    iput v5, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    .line 299
    iput-boolean v1, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    .line 300
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p3}, Ljava/lang/String;-><init>([B)V

    iput-object v1, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    goto :goto_0

    .line 303
    :cond_0
    iput-object v2, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 304
    iput v1, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    .line 305
    const/4 v1, 0x1

    iput-boolean v1, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    .line 306
    iput-object p3, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 309
    :goto_0
    invoke-static {p1, p4, v3}, Lcom/android/internal/telephony/cdma/SmsMessage;->privateGetSubmitPdu(Ljava/lang/String;ZLcom/android/internal/telephony/cdma/sms/UserData;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v1

    return-object v1
.end method

.method public static greylist getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .locals 6
    .param p0, "scAddr"    # Ljava/lang/String;
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "statusReportRequested"    # Z
    .param p4, "smsHeader"    # Lcom/android/internal/telephony/SmsHeader;

    .line 227
    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;I)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-r getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;I)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .locals 2
    .param p0, "scAddr"    # Ljava/lang/String;
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "statusReportRequested"    # Z
    .param p4, "smsHeader"    # Lcom/android/internal/telephony/SmsHeader;
    .param p5, "priority"    # I

    .line 253
    if-eqz p2, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 257
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    .line 258
    .local v0, "uData":Lcom/android/internal/telephony/cdma/sms/UserData;
    iput-object p2, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 259
    iput-object p4, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 260
    invoke-static {p1, p3, v0, p5}, Lcom/android/internal/telephony/cdma/SmsMessage;->privateGetSubmitPdu(Ljava/lang/String;ZLcom/android/internal/telephony/cdma/sms/UserData;I)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v1

    return-object v1

    .line 254
    .end local v0    # "uData":Lcom/android/internal/telephony/cdma/sms/UserData;
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist getSubmitPduForAutoLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;I)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .locals 2
    .param p0, "scAddr"    # Ljava/lang/String;
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "statusReportRequested"    # Z
    .param p4, "smsHeader"    # Lcom/android/internal/telephony/SmsHeader;
    .param p5, "priority"    # I

    .line 1591
    if-eqz p2, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1595
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    .line 1596
    .local v0, "uData":Lcom/android/internal/telephony/cdma/sms/UserData;
    iput-object p2, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 1597
    iput-object p4, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 1598
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->isAutoLogin:Z

    .line 1599
    invoke-static {p1, p3, v0, p5}, Lcom/android/internal/telephony/cdma/SmsMessage;->privateGetSubmitPdu(Ljava/lang/String;ZLcom/android/internal/telephony/cdma/sms/UserData;I)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v1

    return-object v1

    .line 1592
    .end local v0    # "uData":Lcom/android/internal/telephony/cdma/sms/UserData;
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist getSubmitPduForCCTUnlock(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .locals 5
    .param p0, "resultText"    # Ljava/lang/String;

    .line 1607
    new-instance v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    invoke-direct {v0}, Lcom/android/internal/telephony/SmsHeader$PortAddrs;-><init>()V

    .line 1608
    .local v0, "portAddrs":Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    const/16 v1, 0x2454

    iput v1, v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    .line 1609
    iput v1, v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->origPort:I

    .line 1610
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->areEightBits:Z

    .line 1612
    new-instance v2, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v2}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 1613
    .local v2, "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    iput-object v0, v2, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    .line 1615
    new-instance v3, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct {v3}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    .line 1616
    .local v3, "uData":Lcom/android/internal/telephony/cdma/sms/UserData;
    iput-object v2, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 1617
    iput v1, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    .line 1618
    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    .line 1619
    iput-object p0, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 1621
    const-string v4, "20868"

    invoke-static {v4, v1, v3}, Lcom/android/internal/telephony/cdma/SmsMessage;->privateGetSubmitPdu(Ljava/lang/String;ZLcom/android/internal/telephony/cdma/sms/UserData;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist getTPLayerLengthForPDU(Ljava/lang/String;)I
    .locals 2
    .param p0, "pdu"    # Ljava/lang/String;

    .line 207
    const-string v0, "SmsMessage"

    const-string/jumbo v1, "getTPLayerLengthForPDU: is not supported in CDMA mode."

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist newFromParcel(Landroid/os/Parcel;)Lcom/android/internal/telephony/cdma/SmsMessage;
    .locals 10
    .param p0, "p"    # Landroid/os/Parcel;

    .line 1409
    new-instance v0, Lcom/android/internal/telephony/cdma/SmsMessage;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/SmsMessage;-><init>()V

    .line 1410
    .local v0, "msg":Lcom/android/internal/telephony/cdma/SmsMessage;
    new-instance v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    invoke-direct {v1}, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;-><init>()V

    .line 1411
    .local v1, "env":Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    new-instance v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    invoke-direct {v2}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;-><init>()V

    .line 1412
    .local v2, "addr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    new-instance v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;

    invoke-direct {v3}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;-><init>()V

    .line 1419
    .local v3, "subaddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    .line 1421
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v4

    if-eqz v4, :cond_0

    .line 1422
    const/4 v4, 0x1

    iput v4, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    goto :goto_0

    .line 1425
    :cond_0
    iget v4, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    if-nez v4, :cond_1

    .line 1427
    const/4 v4, 0x2

    iput v4, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    goto :goto_0

    .line 1429
    :cond_1
    const/4 v4, 0x0

    iput v4, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    .line 1432
    :goto_0
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    .line 1435
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1436
    .local v4, "addressDigitMode":I
    and-int/lit16 v5, v4, 0xff

    int-to-byte v5, v5

    iput v5, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    .line 1437
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v5

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    iput v5, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    .line 1438
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->ton:I

    .line 1439
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v5

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    iput v5, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    .line 1440
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v5

    .line 1441
    .local v5, "count":B
    iput v5, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    .line 1442
    new-array v6, v5, [B

    .line 1444
    .local v6, "data":[B
    const/4 v7, 0x0

    .local v7, "index":I
    :goto_1
    if-ge v7, v5, :cond_3

    .line 1445
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v8

    aput-byte v8, v6, v7

    .line 1448
    if-nez v4, :cond_2

    .line 1449
    aget-byte v8, v6, v7

    invoke-static {v8}, Lcom/android/internal/telephony/cdma/SmsMessage;->convertDtmfToAscii(B)B

    move-result v8

    aput-byte v8, v6, v7

    .line 1444
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1453
    .end local v7    # "index":I
    :cond_3
    iput-object v6, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    .line 1455
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;->type:I

    .line 1456
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v7

    iput-byte v7, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;->odd:B

    .line 1457
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v5

    .line 1459
    if-gez v5, :cond_4

    .line 1460
    const/4 v5, 0x0

    .line 1465
    :cond_4
    new-array v6, v5, [B

    .line 1467
    const/4 v7, 0x0

    .restart local v7    # "index":I
    :goto_2
    if-ge v7, v5, :cond_5

    .line 1468
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v8

    aput-byte v8, v6, v7

    .line 1467
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1471
    .end local v7    # "index":I
    :cond_5
    iput-object v6, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;->origBytes:[B

    .line 1481
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1482
    .local v7, "countInt":I
    if-gez v7, :cond_6

    .line 1483
    const/4 v7, 0x0

    .line 1486
    :cond_6
    new-array v6, v7, [B

    .line 1487
    const/4 v8, 0x0

    .local v8, "index":I
    :goto_3
    if-ge v8, v7, :cond_7

    .line 1488
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v9

    aput-byte v9, v6, v8

    .line 1487
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 1491
    .end local v8    # "index":I
    :cond_7
    iput-object v6, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    .line 1494
    iput-object v2, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .line 1495
    iput-object v3, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origSubaddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;

    .line 1496
    iput-object v2, v0, Lcom/android/internal/telephony/cdma/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    .line 1497
    iput-object v1, v0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    .line 1500
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/SmsMessage;->createPdu()V

    .line 1502
    return-object v0
.end method

.method private blacklist parsePdu([B)V
    .locals 12
    .param p1, "pdu"    # [B

    .line 483
    const-string v0, "createFromPdu: conversion from byte array to object failed: "

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 484
    .local v1, "bais":Ljava/io/ByteArrayInputStream;
    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 487
    .local v2, "dis":Ljava/io/DataInputStream;
    new-instance v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    invoke-direct {v3}, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;-><init>()V

    .line 488
    .local v3, "env":Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    new-instance v4, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    invoke-direct {v4}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;-><init>()V

    .line 491
    .local v4, "addr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    new-instance v5, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;

    invoke-direct {v5}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;-><init>()V

    .line 494
    .local v5, "subaddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    :try_start_0
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    iput v6, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    .line 495
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    iput v6, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    .line 496
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    iput v6, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    .line 498
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readByte()B

    move-result v6

    iput v6, v4, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    .line 499
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readByte()B

    move-result v6

    iput v6, v4, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    .line 500
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readByte()B

    move-result v6

    iput v6, v4, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->ton:I

    .line 501
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readByte()B

    move-result v6

    iput v6, v4, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    .line 503
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v6

    .line 504
    .local v6, "length":I
    iput v6, v4, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    .line 507
    array-length v7, p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v8, " > pdu len "

    if-gt v6, v7, :cond_1

    .line 512
    :try_start_1
    new-array v7, v6, [B

    iput-object v7, v4, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    .line 513
    iget-object v7, v4, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    const/4 v9, 0x0

    invoke-virtual {v2, v7, v9, v6}, Ljava/io/DataInputStream;->read([BII)I

    .line 515
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    iput v7, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerReply:I

    .line 517
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readByte()B

    move-result v7

    iput-byte v7, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->replySeqNo:B

    .line 518
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readByte()B

    move-result v7

    iput-byte v7, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->errorClass:B

    .line 519
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readByte()B

    move-result v7

    iput-byte v7, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->causeCode:B

    .line 522
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    .line 524
    .local v7, "bearerDataLength":I
    array-length v10, p1

    if-gt v7, v10, :cond_0

    .line 529
    new-array v8, v7, [B

    iput-object v8, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    .line 530
    iget-object v8, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    invoke-virtual {v2, v8, v9, v7}, Ljava/io/DataInputStream;->read([BII)I

    .line 531
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V

    .line 537
    goto :goto_0

    .line 525
    :cond_0
    new-instance v9, Ljava/lang/RuntimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "createFromPdu: Invalid pdu, bearerDataLength "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    array-length v10, p1

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v9, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v2    # "dis":Ljava/io/DataInputStream;
    .end local v3    # "env":Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    .end local v4    # "addr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .end local v5    # "subaddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    .end local p0    # "this":Lcom/android/internal/telephony/cdma/SmsMessage;
    .end local p1    # "pdu":[B
    throw v9

    .line 508
    .end local v7    # "bearerDataLength":I
    .restart local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v2    # "dis":Ljava/io/DataInputStream;
    .restart local v3    # "env":Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    .restart local v4    # "addr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .restart local v5    # "subaddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    .restart local p0    # "this":Lcom/android/internal/telephony/cdma/SmsMessage;
    .restart local p1    # "pdu":[B
    :cond_1
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "createFromPdu: Invalid pdu, addr.numberOfDigits "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    array-length v9, p1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v2    # "dis":Ljava/io/DataInputStream;
    .end local v3    # "env":Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    .end local v4    # "addr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .end local v5    # "subaddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    .end local p0    # "this":Lcom/android/internal/telephony/cdma/SmsMessage;
    .end local p1    # "pdu":[B
    throw v7
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 535
    .end local v6    # "length":I
    .restart local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v2    # "dis":Ljava/io/DataInputStream;
    .restart local v3    # "env":Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    .restart local v4    # "addr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .restart local v5    # "subaddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    .restart local p0    # "this":Lcom/android/internal/telephony/cdma/SmsMessage;
    .restart local p1    # "pdu":[B
    :catch_0
    move-exception v6

    .line 536
    .local v6, "ex":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v7, "SmsMessage"

    invoke-static {v7, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    .end local v6    # "ex":Ljava/lang/Exception;
    :goto_0
    iput-object v4, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    .line 541
    iput-object v4, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .line 542
    iput-object v5, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origSubaddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;

    .line 543
    iput-object v3, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    .line 544
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mPdu:[B

    .line 546
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->parseSms()V

    .line 548
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SmsManager;->getMnoName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v6, "KDDI"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 549
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->callbackNumber:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    if-eqz v0, :cond_2

    .line 550
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->callbackNumber:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    .line 551
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->callbackNumber:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    iput-object v0, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .line 555
    :cond_2
    return-void

    .line 532
    :catch_1
    move-exception v6

    .line 533
    .local v6, "ex":Ljava/io/IOException;
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
.end method

.method private blacklist parsePduFromEfRecord([B)V
    .locals 19
    .param p1, "pdu"    # [B

    .line 561
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "SmsMessage"

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v4, v0

    .line 562
    .local v4, "bais":Ljava/io/ByteArrayInputStream;
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v5, v0

    .line 563
    .local v5, "dis":Ljava/io/DataInputStream;
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;-><init>()V

    move-object v6, v0

    .line 564
    .local v6, "env":Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;-><init>()V

    move-object v7, v0

    .line 565
    .local v7, "addr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;-><init>()V

    move-object v8, v0

    .line 568
    .local v8, "subAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    :try_start_0
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    iput v0, v6, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    .line 570
    :goto_0
    invoke-virtual {v5}, Ljava/io/DataInputStream;->available()I

    move-result v0

    if-lez v0, :cond_c

    .line 571
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    .line 572
    .local v0, "parameterId":I
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v9

    .line 573
    .local v9, "parameterLen":I
    new-array v10, v9, [B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 575
    .local v10, "parameterData":[B
    const/4 v11, 0x6

    const/4 v13, 0x2

    const/4 v14, 0x3

    const/16 v15, 0x8

    const/4 v12, 0x0

    packed-switch v0, :pswitch_data_0

    .line 687
    move-object/from16 v18, v8

    move/from16 v16, v9

    .end local v8    # "subAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    .end local v9    # "parameterLen":I
    .local v16, "parameterLen":I
    .local v18, "subAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    :try_start_1
    new-instance v8, Ljava/lang/Exception;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_6

    .line 683
    .end local v16    # "parameterLen":I
    .end local v18    # "subAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    .restart local v8    # "subAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    .restart local v9    # "parameterLen":I
    :pswitch_0
    :try_start_2
    invoke-virtual {v5, v10, v12, v9}, Ljava/io/DataInputStream;->read([BII)I

    .line 684
    iput-object v10, v6, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    .line 685
    move-object/from16 v18, v8

    goto/16 :goto_5

    .line 675
    :pswitch_1
    invoke-virtual {v5, v10, v12, v9}, Ljava/io/DataInputStream;->read([BII)I

    .line 676
    new-instance v14, Lcom/android/internal/util/BitwiseInputStream;

    invoke-direct {v14, v10}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    .line 677
    .local v14, "ccBis":Lcom/android/internal/util/BitwiseInputStream;
    invoke-virtual {v14, v11}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    move-result-object v11

    aget-byte v11, v11, v12

    iput-byte v11, v6, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->replySeqNo:B

    .line 678
    invoke-virtual {v14, v13}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    move-result-object v11

    aget-byte v11, v11, v12

    iput-byte v11, v6, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->errorClass:B

    .line 679
    iget-byte v11, v6, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->errorClass:B

    if-eqz v11, :cond_0

    .line 680
    invoke-virtual {v14, v15}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    move-result-object v11

    aget-byte v11, v11, v12

    iput-byte v11, v6, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->causeCode:B

    move-object/from16 v18, v8

    goto/16 :goto_5

    .line 679
    :cond_0
    move-object/from16 v18, v8

    goto/16 :goto_5

    .line 670
    .end local v14    # "ccBis":Lcom/android/internal/util/BitwiseInputStream;
    :pswitch_2
    invoke-virtual {v5, v10, v12, v9}, Ljava/io/DataInputStream;->read([BII)I

    .line 671
    new-instance v12, Lcom/android/internal/util/BitwiseInputStream;

    invoke-direct {v12, v10}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    .line 672
    .local v12, "replyOptBis":Lcom/android/internal/util/BitwiseInputStream;
    invoke-virtual {v12, v11}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v11

    iput v11, v6, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerReply:I

    .line 673
    move-object/from16 v18, v8

    goto/16 :goto_5

    .line 651
    .end local v12    # "replyOptBis":Lcom/android/internal/util/BitwiseInputStream;
    :pswitch_3
    invoke-virtual {v5, v10, v12, v9}, Ljava/io/DataInputStream;->read([BII)I

    .line 652
    new-instance v11, Lcom/android/internal/util/BitwiseInputStream;

    invoke-direct {v11, v10}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    .line 653
    .local v11, "subAddrBis":Lcom/android/internal/util/BitwiseInputStream;
    invoke-virtual {v11, v14}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v13

    iput v13, v8, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;->type:I

    .line 654
    const/4 v13, 0x1

    invoke-virtual {v11, v13}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    move-result-object v13

    aget-byte v12, v13, v12

    iput-byte v12, v8, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;->odd:B

    .line 655
    invoke-virtual {v11, v15}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v12

    .line 656
    .local v12, "subAddrLen":I
    new-array v13, v12, [B

    .line 657
    .local v13, "subdata":[B
    const/4 v15, 0x0

    .local v15, "index":I
    :goto_1
    if-ge v15, v12, :cond_1

    .line 658
    move/from16 v17, v12

    const/4 v14, 0x4

    .end local v12    # "subAddrLen":I
    .local v17, "subAddrLen":I
    invoke-virtual {v11, v14}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v12

    and-int/lit16 v12, v12, 0xff

    int-to-byte v12, v12

    .line 660
    .local v12, "b":B
    invoke-static {v12}, Lcom/android/internal/telephony/cdma/SmsMessage;->convertDtmfToAscii(B)B

    move-result v14

    aput-byte v14, v13, v15

    .line 657
    add-int/lit8 v15, v15, 0x1

    move/from16 v12, v17

    const/4 v14, 0x3

    goto :goto_1

    .end local v17    # "subAddrLen":I
    .local v12, "subAddrLen":I
    :cond_1
    move/from16 v17, v12

    .line 662
    .end local v12    # "subAddrLen":I
    .end local v15    # "index":I
    .restart local v17    # "subAddrLen":I
    iput-object v13, v8, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;->origBytes:[B

    .line 663
    const/4 v12, 0x3

    if-ne v0, v12, :cond_2

    .line 664
    iput-object v8, v6, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origSubaddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;

    move-object/from16 v18, v8

    goto/16 :goto_5

    .line 666
    :cond_2
    iput-object v8, v6, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->destSubaddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 668
    move-object/from16 v18, v8

    goto/16 :goto_5

    .line 692
    .end local v0    # "parameterId":I
    .end local v9    # "parameterLen":I
    .end local v10    # "parameterData":[B
    .end local v11    # "subAddrBis":Lcom/android/internal/util/BitwiseInputStream;
    .end local v13    # "subdata":[B
    .end local v17    # "subAddrLen":I
    :catch_0
    move-exception v0

    move-object/from16 v18, v8

    goto/16 :goto_7

    .line 594
    .restart local v0    # "parameterId":I
    .restart local v9    # "parameterLen":I
    .restart local v10    # "parameterData":[B
    :pswitch_4
    :try_start_3
    invoke-virtual {v5, v10, v12, v9}, Ljava/io/DataInputStream;->read([BII)I

    .line 595
    new-instance v11, Lcom/android/internal/util/BitwiseInputStream;

    invoke-direct {v11, v10}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    .line 596
    .local v11, "addrBis":Lcom/android/internal/util/BitwiseInputStream;
    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v14

    iput v14, v7, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    .line 597
    invoke-virtual {v11, v12}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v14

    iput v14, v7, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    .line 598
    const/4 v14, 0x0

    .line 599
    .local v14, "numberType":I
    iget v13, v7, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    if-ne v13, v12, :cond_3

    .line 600
    const/4 v12, 0x3

    :try_start_4
    invoke-virtual {v11, v12}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v12

    move v14, v12

    .line 601
    iput v14, v7, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->ton:I

    .line 603
    iget v12, v7, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    if-nez v12, :cond_3

    .line 604
    const/4 v12, 0x4

    invoke-virtual {v11, v12}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v13

    iput v13, v7, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 607
    :cond_3
    :try_start_5
    invoke-virtual {v11, v15}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v12

    iput v12, v7, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    .line 609
    iget v12, v7, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    new-array v12, v12, [B

    .line 610
    .local v12, "data":[B
    const/4 v13, 0x0

    .line 612
    .local v13, "b":B
    iget v15, v7, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    if-nez v15, :cond_5

    .line 614
    const/4 v15, 0x0

    .restart local v15    # "index":I
    :goto_2
    move-object/from16 v18, v8

    .end local v8    # "subAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    .restart local v18    # "subAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    :try_start_6
    iget v8, v7, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    if-ge v15, v8, :cond_4

    .line 615
    const/4 v8, 0x4

    invoke-virtual {v11, v8}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v16

    and-int/lit8 v8, v16, 0xf

    int-to-byte v13, v8

    .line 618
    invoke-static {v13}, Lcom/android/internal/telephony/cdma/SmsMessage;->convertDtmfToAscii(B)B

    move-result v8

    aput-byte v8, v12, v15

    .line 614
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v8, v18

    goto :goto_2

    :cond_4
    move/from16 v16, v9

    .end local v15    # "index":I
    goto :goto_4

    .line 620
    .end local v18    # "subAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    .restart local v8    # "subAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    :cond_5
    move-object/from16 v18, v8

    .end local v8    # "subAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    .restart local v18    # "subAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    iget v8, v7, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    const/4 v15, 0x1

    if-ne v8, v15, :cond_a

    .line 621
    iget v8, v7, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    if-nez v8, :cond_7

    .line 622
    const/4 v8, 0x0

    .local v8, "index":I
    :goto_3
    iget v15, v7, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    if-ge v8, v15, :cond_6

    .line 623
    move/from16 v16, v9

    const/16 v15, 0x8

    .end local v9    # "parameterLen":I
    .restart local v16    # "parameterLen":I
    invoke-virtual {v11, v15}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v9

    and-int/lit16 v9, v9, 0xff

    int-to-byte v13, v9

    .line 624
    aput-byte v13, v12, v8

    .line 622
    add-int/lit8 v8, v8, 0x1

    move/from16 v9, v16

    goto :goto_3

    .end local v16    # "parameterLen":I
    .restart local v9    # "parameterLen":I
    :cond_6
    move/from16 v16, v9

    .end local v8    # "index":I
    .end local v9    # "parameterLen":I
    .restart local v16    # "parameterLen":I
    goto :goto_4

    .line 627
    .end local v16    # "parameterLen":I
    .restart local v9    # "parameterLen":I
    :cond_7
    move/from16 v16, v9

    .end local v9    # "parameterLen":I
    .restart local v16    # "parameterLen":I
    iget v8, v7, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_9

    .line 628
    const/4 v8, 0x2

    if-ne v14, v8, :cond_8

    .line 629
    const-string v8, "TODO: Addr is email id"

    invoke-static {v3, v8}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 631
    :cond_8
    const-string v8, "TODO: Addr is data network address"

    invoke-static {v3, v8}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 634
    :cond_9
    const-string v8, "Addr is of incorrect type"

    invoke-static {v3, v8}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 637
    .end local v16    # "parameterLen":I
    .restart local v9    # "parameterLen":I
    :cond_a
    move/from16 v16, v9

    .end local v9    # "parameterLen":I
    .restart local v16    # "parameterLen":I
    const-string v8, "Incorrect Digit mode"

    invoke-static {v3, v8}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    :goto_4
    iput-object v12, v7, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    .line 640
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Addr="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v7}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/android/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 641
    const/4 v8, 0x2

    if-ne v0, v8, :cond_b

    .line 642
    iput-object v7, v6, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .line 643
    iput-object v7, v1, Lcom/android/internal/telephony/cdma/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    goto :goto_5

    .line 645
    :cond_b
    iput-object v7, v6, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->destAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .line 646
    iput-object v7, v1, Lcom/android/internal/telephony/cdma/SmsMessage;->mRecipientAddress:Lcom/android/internal/telephony/SmsAddress;

    .line 648
    goto :goto_5

    .line 590
    .end local v11    # "addrBis":Lcom/android/internal/util/BitwiseInputStream;
    .end local v12    # "data":[B
    .end local v13    # "b":B
    .end local v14    # "numberType":I
    .end local v16    # "parameterLen":I
    .end local v18    # "subAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    .local v8, "subAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    .restart local v9    # "parameterLen":I
    :pswitch_5
    move-object/from16 v18, v8

    move/from16 v16, v9

    .end local v8    # "subAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    .end local v9    # "parameterLen":I
    .restart local v16    # "parameterLen":I
    .restart local v18    # "subAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v8

    iput v8, v6, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    .line 591
    goto :goto_5

    .line 582
    .end local v16    # "parameterLen":I
    .end local v18    # "subAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    .restart local v8    # "subAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    .restart local v9    # "parameterLen":I
    :pswitch_6
    move-object/from16 v18, v8

    move/from16 v16, v9

    .end local v8    # "subAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    .end local v9    # "parameterLen":I
    .restart local v16    # "parameterLen":I
    .restart local v18    # "subAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v8

    iput v8, v6, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    .line 583
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "teleservice = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v6, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    nop

    .line 689
    .end local v0    # "parameterId":I
    .end local v10    # "parameterData":[B
    .end local v16    # "parameterLen":I
    :goto_5
    move-object/from16 v8, v18

    goto/16 :goto_0

    .line 687
    .restart local v0    # "parameterId":I
    .restart local v10    # "parameterData":[B
    .restart local v16    # "parameterLen":I
    :goto_6
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "unsupported parameterId ("

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ")"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .end local v4    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v5    # "dis":Ljava/io/DataInputStream;
    .end local v6    # "env":Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    .end local v7    # "addr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .end local v18    # "subAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    .end local p0    # "this":Lcom/android/internal/telephony/cdma/SmsMessage;
    .end local p1    # "pdu":[B
    throw v8

    .line 690
    .end local v0    # "parameterId":I
    .end local v10    # "parameterData":[B
    .end local v16    # "parameterLen":I
    .restart local v4    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v5    # "dis":Ljava/io/DataInputStream;
    .restart local v6    # "env":Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    .restart local v7    # "addr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .restart local v8    # "subAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    .restart local p0    # "this":Lcom/android/internal/telephony/cdma/SmsMessage;
    .restart local p1    # "pdu":[B
    :cond_c
    move-object/from16 v18, v8

    .end local v8    # "subAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    .restart local v18    # "subAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    invoke-virtual {v4}, Ljava/io/ByteArrayInputStream;->close()V

    .line 691
    invoke-virtual {v5}, Ljava/io/DataInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 694
    goto :goto_8

    .line 692
    :catch_1
    move-exception v0

    goto :goto_7

    .end local v18    # "subAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    .restart local v8    # "subAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    :catch_2
    move-exception v0

    move-object/from16 v18, v8

    .line 693
    .end local v8    # "subAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    .local v0, "ex":Ljava/lang/Exception;
    .restart local v18    # "subAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    :goto_7
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "parsePduFromEfRecord: conversion from pdu to SmsMessage failed"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_8
    iput-object v6, v1, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    .line 698
    iput-object v2, v1, Lcom/android/internal/telephony/cdma/SmsMessage;->mPdu:[B

    .line 700
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->parseSms()V

    .line 701
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static blacklist privateGetSubmitPdu(ILjava/lang/String;ZLcom/android/internal/telephony/cdma/sms/UserData;Ljava/lang/String;I)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .locals 16
    .param p0, "subId"    # I
    .param p1, "destAddrStr"    # Ljava/lang/String;
    .param p2, "statusReportRequested"    # Z
    .param p3, "userData"    # Lcom/android/internal/telephony/cdma/sms/UserData;
    .param p4, "callbackNumber"    # Ljava/lang/String;
    .param p5, "priority"    # I

    .line 1671
    move-object/from16 v1, p4

    move/from16 v2, p5

    .line 1672
    const/4 v0, 0x1

    move-object/from16 v3, p1

    invoke-static {v3, v0, v0}, Landroid/telephony/PhoneNumberUtils;->cdmaCheckAndProcessPlusCodeByNumberFormat(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v4

    .line 1671
    invoke-static {v4}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->parse(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    move-result-object v4

    .line 1674
    .local v4, "destAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    const/4 v5, 0x0

    if-nez v4, :cond_0

    return-object v5

    .line 1676
    :cond_0
    new-instance v6, Lcom/android/internal/telephony/cdma/sms/BearerData;

    invoke-direct {v6}, Lcom/android/internal/telephony/cdma/sms/BearerData;-><init>()V

    .line 1677
    .local v6, "bearerData":Lcom/android/internal/telephony/cdma/sms/BearerData;
    const/4 v7, 0x2

    iput v7, v6, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    .line 1679
    invoke-static {}, Lcom/android/internal/telephony/cdma/SmsMessage;->getNextMessageId()I

    move-result v8

    iput v8, v6, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    .line 1681
    move/from16 v8, p2

    iput-boolean v8, v6, Lcom/android/internal/telephony/cdma/sms/BearerData;->deliveryAckReq:Z

    .line 1682
    const/4 v9, 0x0

    iput-boolean v9, v6, Lcom/android/internal/telephony/cdma/sms/BearerData;->userAckReq:Z

    .line 1683
    iput-boolean v9, v6, Lcom/android/internal/telephony/cdma/sms/BearerData;->readAckReq:Z

    .line 1684
    iput-boolean v9, v6, Lcom/android/internal/telephony/cdma/sms/BearerData;->reportReq:Z

    .line 1686
    const-string v10, "SmsMessage"

    if-eqz v1, :cond_1

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_1

    .line 1687
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "callback number is set: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1688
    invoke-static/range {p4 .. p4}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->parse(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    move-result-object v11

    .line 1689
    .local v11, "cbNumber":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    if-eqz v11, :cond_1

    .line 1690
    iput-object v11, v6, Lcom/android/internal/telephony/cdma/sms/BearerData;->callbackNumber:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .line 1694
    .end local v11    # "cbNumber":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    :cond_1
    if-ne v2, v7, :cond_2

    .line 1695
    const-string/jumbo v11, "priority is set to high"

    invoke-static {v10, v11}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1696
    iput-boolean v0, v6, Lcom/android/internal/telephony/cdma/sms/BearerData;->priorityIndicatorSet:Z

    .line 1697
    iput v2, v6, Lcom/android/internal/telephony/cdma/sms/BearerData;->priority:I

    .line 1700
    :cond_2
    move/from16 v11, p0

    invoke-static {v5, v11}, Landroid/telephony/SmsManager;->getSmsManagerForContextAndSubscriptionId(Landroid/content/Context;I)Landroid/telephony/SmsManager;

    move-result-object v12

    const-string/jumbo v13, "sms_3gpp2_lgt_network"

    invoke-virtual {v12, v13}, Landroid/telephony/SmsManager;->getSmsSetting(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 1702
    iput-boolean v0, v6, Lcom/android/internal/telephony/cdma/sms/BearerData;->languageIndicatorSet:Z

    .line 1703
    const/16 v12, 0x40

    iput v12, v6, Lcom/android/internal/telephony/cdma/sms/BearerData;->language:I

    .line 1706
    :cond_3
    move-object/from16 v12, p3

    iput-object v12, v6, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    .line 1708
    invoke-static {v6}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encode(Lcom/android/internal/telephony/cdma/sms/BearerData;)[B

    move-result-object v13

    .line 1709
    .local v13, "encodedBearerData":[B
    const-string v14, "CDMA:SMS"

    invoke-static {v14, v7}, Lcom/android/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1710
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "MO (encoded) BearerData = "

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1711
    if-eqz v13, :cond_4

    .line 1712
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "MO raw BearerData = \'"

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v13}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v14, "\'"

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1715
    :cond_4
    if-nez v13, :cond_5

    return-object v5

    .line 1717
    :cond_5
    iget-boolean v7, v6, Lcom/android/internal/telephony/cdma/sms/BearerData;->hasUserDataHeader:Z

    if-eqz v7, :cond_6

    .line 1718
    const/16 v7, 0x1005

    goto :goto_0

    :cond_6
    const/16 v7, 0x1002

    .line 1720
    .local v7, "teleservice":I
    :goto_0
    new-instance v14, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    invoke-direct {v14}, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;-><init>()V

    .line 1721
    .local v14, "envelope":Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    iput v9, v14, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    .line 1722
    iput v7, v14, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    .line 1723
    iput-object v4, v14, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->destAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .line 1724
    iput v0, v14, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerReply:I

    .line 1725
    iput-object v13, v14, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    .line 1737
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v15, 0x64

    invoke-direct {v0, v15}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 1738
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v15, Ljava/io/DataOutputStream;

    invoke-direct {v15, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1739
    .local v15, "dos":Ljava/io/DataOutputStream;
    iget v5, v14, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    invoke-virtual {v15, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1740
    invoke-virtual {v15, v9}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1741
    invoke-virtual {v15, v9}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1742
    iget v5, v4, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    invoke-virtual {v15, v5}, Ljava/io/DataOutputStream;->write(I)V

    .line 1743
    iget v5, v4, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    invoke-virtual {v15, v5}, Ljava/io/DataOutputStream;->write(I)V

    .line 1744
    iget v5, v4, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->ton:I

    invoke-virtual {v15, v5}, Ljava/io/DataOutputStream;->write(I)V

    .line 1745
    iget v5, v4, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    invoke-virtual {v15, v5}, Ljava/io/DataOutputStream;->write(I)V

    .line 1746
    iget v5, v4, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    invoke-virtual {v15, v5}, Ljava/io/DataOutputStream;->write(I)V

    .line 1747
    iget-object v5, v4, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    iget-object v9, v4, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    array-length v9, v9

    const/4 v1, 0x0

    invoke-virtual {v15, v5, v1, v9}, Ljava/io/DataOutputStream;->write([BII)V

    .line 1749
    invoke-virtual {v15, v1}, Ljava/io/DataOutputStream;->write(I)V

    .line 1750
    invoke-virtual {v15, v1}, Ljava/io/DataOutputStream;->write(I)V

    .line 1751
    invoke-virtual {v15, v1}, Ljava/io/DataOutputStream;->write(I)V

    .line 1752
    array-length v1, v13

    invoke-virtual {v15, v1}, Ljava/io/DataOutputStream;->write(I)V

    .line 1753
    array-length v1, v13

    const/4 v5, 0x0

    invoke-virtual {v15, v13, v5, v1}, Ljava/io/DataOutputStream;->write([BII)V

    .line 1754
    invoke-virtual {v15}, Ljava/io/DataOutputStream;->close()V

    .line 1756
    new-instance v1, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    invoke-direct {v1}, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;-><init>()V

    .line 1757
    .local v1, "pdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    iput-object v5, v1, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;->encodedMessage:[B

    .line 1758
    const/4 v5, 0x0

    iput-object v5, v1, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;->encodedScAddress:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1759
    return-object v1

    .line 1760
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "pdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .end local v15    # "dos":Ljava/io/DataOutputStream;
    :catch_0
    move-exception v0

    .line 1761
    .local v0, "ex":Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "creating SubmitPdu failed: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1763
    .end local v0    # "ex":Ljava/io/IOException;
    const/4 v1, 0x0

    return-object v1
.end method

.method private static greylist privateGetSubmitPdu(Ljava/lang/String;ZLcom/android/internal/telephony/cdma/sms/UserData;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .locals 1
    .param p0, "destAddrStr"    # Ljava/lang/String;
    .param p1, "statusReportRequested"    # Z
    .param p2, "userData"    # Lcom/android/internal/telephony/cdma/sms/UserData;

    .line 1046
    const/4 v0, -0x1

    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/telephony/cdma/SmsMessage;->privateGetSubmitPdu(Ljava/lang/String;ZLcom/android/internal/telephony/cdma/sms/UserData;I)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist privateGetSubmitPdu(Ljava/lang/String;ZLcom/android/internal/telephony/cdma/sms/UserData;I)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .locals 12
    .param p0, "destAddrStr"    # Ljava/lang/String;
    .param p1, "statusReportRequested"    # Z
    .param p2, "userData"    # Lcom/android/internal/telephony/cdma/sms/UserData;
    .param p3, "priority"    # I

    .line 1071
    const-string v0, "SmsMessage"

    const/4 v1, 0x0

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_1

    .line 1076
    :cond_0
    nop

    .line 1077
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->cdmaCheckAndProcessPlusCodeForSms(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1076
    invoke-static {v2}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->parse(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    move-result-object v2

    .line 1078
    .local v2, "destAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    if-nez v2, :cond_1

    return-object v1

    .line 1080
    :cond_1
    new-instance v3, Lcom/android/internal/telephony/cdma/sms/BearerData;

    invoke-direct {v3}, Lcom/android/internal/telephony/cdma/sms/BearerData;-><init>()V

    .line 1081
    .local v3, "bearerData":Lcom/android/internal/telephony/cdma/sms/BearerData;
    const/4 v4, 0x2

    iput v4, v3, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    .line 1083
    invoke-static {}, Lcom/android/internal/telephony/cdma/SmsMessage;->getNextMessageId()I

    move-result v5

    iput v5, v3, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    .line 1085
    iput-boolean p1, v3, Lcom/android/internal/telephony/cdma/sms/BearerData;->deliveryAckReq:Z

    .line 1086
    const/4 v5, 0x0

    iput-boolean v5, v3, Lcom/android/internal/telephony/cdma/sms/BearerData;->userAckReq:Z

    .line 1087
    iput-boolean v5, v3, Lcom/android/internal/telephony/cdma/sms/BearerData;->readAckReq:Z

    .line 1088
    iput-boolean v5, v3, Lcom/android/internal/telephony/cdma/sms/BearerData;->reportReq:Z

    .line 1089
    const/4 v6, 0x1

    if-ltz p3, :cond_2

    const/4 v7, 0x3

    if-gt p3, v7, :cond_2

    .line 1090
    iput-boolean v6, v3, Lcom/android/internal/telephony/cdma/sms/BearerData;->priorityIndicatorSet:Z

    .line 1091
    iput p3, v3, Lcom/android/internal/telephony/cdma/sms/BearerData;->priority:I

    .line 1094
    :cond_2
    iput-object p2, v3, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    .line 1096
    invoke-static {v3}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encode(Lcom/android/internal/telephony/cdma/sms/BearerData;)[B

    move-result-object v7

    .line 1097
    .local v7, "encodedBearerData":[B
    if-nez v7, :cond_3

    return-object v1

    .line 1098
    :cond_3
    const-string v8, "CDMA:SMS"

    invoke-static {v8, v4}, Lcom/android/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1099
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MO (encoded) BearerData = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MO raw BearerData = \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v7}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    :cond_4
    iget-boolean v8, v3, Lcom/android/internal/telephony/cdma/sms/BearerData;->hasUserDataHeader:Z

    if-eqz v8, :cond_5

    iget v8, p2, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    if-eq v8, v4, :cond_5

    .line 1105
    const/16 v4, 0x1005

    goto :goto_0

    :cond_5
    const/16 v4, 0x1002

    .line 1107
    .local v4, "teleservice":I
    :goto_0
    new-instance v8, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    invoke-direct {v8}, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;-><init>()V

    .line 1108
    .local v8, "envelope":Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    iput v5, v8, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    .line 1109
    iput v4, v8, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    .line 1110
    iput-object v2, v8, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->destAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .line 1111
    iput v6, v8, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerReply:I

    .line 1112
    iput-object v7, v8, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    .line 1124
    :try_start_0
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    const/16 v9, 0x64

    invoke-direct {v6, v9}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 1125
    .local v6, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v9, Ljava/io/DataOutputStream;

    invoke-direct {v9, v6}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1126
    .local v9, "dos":Ljava/io/DataOutputStream;
    iget v10, v8, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    invoke-virtual {v9, v10}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1127
    invoke-virtual {v9, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1128
    invoke-virtual {v9, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1129
    iget v10, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    invoke-virtual {v9, v10}, Ljava/io/DataOutputStream;->write(I)V

    .line 1130
    iget v10, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    invoke-virtual {v9, v10}, Ljava/io/DataOutputStream;->write(I)V

    .line 1131
    iget v10, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->ton:I

    invoke-virtual {v9, v10}, Ljava/io/DataOutputStream;->write(I)V

    .line 1132
    iget v10, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    invoke-virtual {v9, v10}, Ljava/io/DataOutputStream;->write(I)V

    .line 1133
    iget v10, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    invoke-virtual {v9, v10}, Ljava/io/DataOutputStream;->write(I)V

    .line 1134
    iget-object v10, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    iget-object v11, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    array-length v11, v11

    invoke-virtual {v9, v10, v5, v11}, Ljava/io/DataOutputStream;->write([BII)V

    .line 1136
    invoke-virtual {v9, v5}, Ljava/io/DataOutputStream;->write(I)V

    .line 1137
    invoke-virtual {v9, v5}, Ljava/io/DataOutputStream;->write(I)V

    .line 1138
    invoke-virtual {v9, v5}, Ljava/io/DataOutputStream;->write(I)V

    .line 1139
    array-length v10, v7

    invoke-virtual {v9, v10}, Ljava/io/DataOutputStream;->write(I)V

    .line 1140
    array-length v10, v7

    invoke-virtual {v9, v7, v5, v10}, Ljava/io/DataOutputStream;->write([BII)V

    .line 1141
    invoke-virtual {v9}, Ljava/io/DataOutputStream;->close()V

    .line 1143
    new-instance v5, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    invoke-direct {v5}, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;-><init>()V

    .line 1144
    .local v5, "pdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    iput-object v10, v5, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;->encodedMessage:[B

    .line 1145
    iput-object v1, v5, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;->encodedScAddress:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1146
    return-object v5

    .line 1147
    .end local v5    # "pdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .end local v6    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v9    # "dos":Ljava/io/DataOutputStream;
    :catch_0
    move-exception v5

    .line 1148
    .local v5, "ex":Ljava/io/IOException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "creating SubmitPdu failed: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1150
    .end local v5    # "ex":Ljava/io/IOException;
    return-object v1

    .line 1072
    .end local v2    # "destAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .end local v3    # "bearerData":Lcom/android/internal/telephony/cdma/sms/BearerData;
    .end local v4    # "teleservice":I
    .end local v7    # "encodedBearerData":[B
    .end local v8    # "envelope":Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    :cond_6
    :goto_1
    const-string/jumbo v2, "privateGetSubmitPdu - destAddrStr is invalid"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    return-object v1
.end method

.method public static greylist semCreateFromPdu(I[B)Lcom/android/internal/telephony/cdma/SmsMessage;
    .locals 5
    .param p0, "phoneId"    # I
    .param p1, "pdu"    # [B

    .line 1379
    const-string v0, "SmsMessage"

    new-instance v1, Lcom/android/internal/telephony/cdma/SmsMessage;

    invoke-direct {v1}, Lcom/android/internal/telephony/cdma/SmsMessage;-><init>()V

    .line 1382
    .local v1, "msg":Lcom/android/internal/telephony/cdma/SmsMessage;
    const/4 v2, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubId(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/cdma/SmsMessage;->setSubId(I)V

    .line 1383
    invoke-direct {v1, p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->parsePdu([B)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1384
    return-object v1

    .line 1388
    :catch_0
    move-exception v3

    .line 1389
    .local v3, "e":Ljava/lang/OutOfMemoryError;
    const-string v4, "SMS PDU parsing failed with out of memory: "

    invoke-static {v0, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1390
    return-object v2

    .line 1385
    .end local v3    # "e":Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v3

    .line 1386
    .local v3, "ex":Ljava/lang/RuntimeException;
    const-string v4, "SMS PDU parsing failed: "

    invoke-static {v0, v4, v3}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1387
    return-object v2
.end method


# virtual methods
.method public blacklist createPdu()V
    .locals 7

    .line 1225
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    .line 1226
    .local v0, "env":Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    iget-object v1, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .line 1227
    .local v1, "addr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    const/16 v3, 0x64

    invoke-direct {v2, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 1228
    .local v2, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v3, Ljava/io/DataOutputStream;

    new-instance v4, Ljava/io/BufferedOutputStream;

    invoke-direct {v4, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v3, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1231
    .local v3, "dos":Ljava/io/DataOutputStream;
    :try_start_0
    iget v4, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1232
    iget v4, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1233
    iget v4, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1235
    iget v4, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1236
    iget v4, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1237
    iget v4, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->ton:I

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1238
    iget v4, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1239
    iget v4, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1240
    iget-object v4, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    iget-object v5, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    array-length v5, v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6, v5}, Ljava/io/DataOutputStream;->write([BII)V

    .line 1242
    iget v4, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerReply:I

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1244
    iget-byte v4, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->replySeqNo:B

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1245
    iget-byte v4, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->errorClass:B

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1246
    iget-byte v4, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->causeCode:B

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1248
    iget-object v4, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1249
    iget-object v4, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    array-length v5, v5

    invoke-virtual {v3, v4, v6, v5}, Ljava/io/DataOutputStream;->write([BII)V

    .line 1250
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    .line 1260
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mPdu:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1263
    goto :goto_0

    .line 1261
    :catch_0
    move-exception v4

    .line 1262
    .local v4, "ex":Ljava/io/IOException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "createPdu: conversion from object to byte array failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "SmsMessage"

    invoke-static {v6, v5}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1264
    .end local v4    # "ex":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method public blacklist getBearerData()[B
    .locals 1

    .line 1525
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    return-object v0
.end method

.method public blacklist getCDMAMessageType()I
    .locals 1

    .line 1512
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    if-eqz v0, :cond_0

    .line 1513
    const/4 v0, 0x1

    return v0

    .line 1515
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getEnvelopeBearerData()[B
    .locals 1

    .line 989
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    return-object v0
.end method

.method public blacklist getEnvelopeServiceCategory()I
    .locals 1

    .line 996
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    return v0
.end method

.method public greylist getIncomingSmsFingerprint()[B
    .locals 4

    .line 1319
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1321
    .local v0, "output":Ljava/io/ByteArrayOutputStream;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v1, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1322
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v1, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1323
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    array-length v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1325
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v1

    const-string/jumbo v2, "sms_3gpp2_lgt_network"

    invoke-virtual {v1, v2}, Landroid/telephony/SmsManager;->getSmsSetting(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v1, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    const/16 v2, 0x1002

    if-ne v1, v2, :cond_2

    .line 1328
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    if-eqz v1, :cond_0

    .line 1329
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v2, v2

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1331
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    if-eqz v1, :cond_1

    .line 1332
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    .line 1333
    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    .line 1332
    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1335
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->callbackNumber:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    if-eqz v1, :cond_3

    .line 1336
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->callbackNumber:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/sms/BearerData;->callbackNumber:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .line 1337
    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    .line 1336
    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 1340
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    array-length v2, v2

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1343
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origSubaddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origSubaddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;->origBytes:[B

    if-eqz v1, :cond_3

    .line 1344
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origSubaddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;->origBytes:[B

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origSubaddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;->origBytes:[B

    array-length v2, v2

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1349
    :cond_3
    :goto_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method public blacklist getMessageClass()Lcom/android/internal/telephony/SmsConstants$MessageClass;
    .locals 1

    .line 1004
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->displayMode:I

    if-nez v0, :cond_0

    .line 1005
    sget-object v0, Lcom/android/internal/telephony/SmsConstants$MessageClass;->CLASS_0:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    return-object v0

    .line 1007
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/SmsConstants$MessageClass;->UNKNOWN:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    return-object v0
.end method

.method public blacklist getMessageEncoding()I
    .locals 1

    .line 1901
    iget v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mMsgEncoding:I

    return v0
.end method

.method public blacklist getMessageIdentifier()I
    .locals 1

    .line 1542
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    if-eqz v0, :cond_0

    .line 1543
    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    return v0

    .line 1545
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getMessagePriority()I
    .locals 2

    .line 1771
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->priorityIndicatorSet:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1772
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->priority:I

    return v0

    .line 1773
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public greylist getMessageType()I
    .locals 2

    .line 471
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "getMessageType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mMti:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SmsMessage"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    iget v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mMti:I

    return v0
.end method

.method public greylist getNumOfVoicemails()I
    .locals 1

    .line 1307
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->numberOfMessages:I

    return v0
.end method

.method public blacklist getProtocolIdentifier()I
    .locals 2

    .line 348
    const-string v0, "SmsMessage"

    const-string/jumbo v1, "getProtocolIdentifier: is not supported in CDMA mode."

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getServiceCategory()I
    .locals 1

    .line 1399
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    return v0
.end method

.method public blacklist getSmsCbProgramData()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/telephony/cdma/CdmaSmsCbProgramData;",
            ">;"
        }
    .end annotation

    .line 1358
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->serviceCategoryProgramData:Ljava/util/ArrayList;

    return-object v0
.end method

.method public blacklist getStatus()I
    .locals 1

    .line 405
    iget v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->status:I

    shl-int/lit8 v0, v0, 0x10

    return v0
.end method

.method public greylist getTeleService()I
    .locals 1

    .line 449
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    return v0
.end method

.method public blacklist isCphsMwiMessage()Z
    .locals 2

    .line 368
    const-string v0, "SmsMessage"

    const-string/jumbo v1, "isCphsMwiMessage: is not supported in CDMA mode."

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isCtcFota()Z
    .locals 1

    .line 1644
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mIsCtcFota:Z

    return v0
.end method

.method public blacklist isMWIClearMessage()Z
    .locals 1

    .line 377
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->numberOfMessages:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist isMWISetMessage()Z
    .locals 1

    .line 385
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->numberOfMessages:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist isMwiDontStore()Z
    .locals 1

    .line 393
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->numberOfMessages:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist isReplace()Z
    .locals 2

    .line 358
    const-string v0, "SmsMessage"

    const-string/jumbo v1, "isReplace: is not supported in CDMA mode."

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isReplyPathPresent()Z
    .locals 2

    .line 420
    const-string v0, "SmsMessage"

    const-string/jumbo v1, "isReplyPathPresent: is not supported in CDMA mode."

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    const/4 v0, 0x0

    return v0
.end method

.method public greylist isStatusReportMessage()Z
    .locals 2

    .line 412
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist parseBroadcastSms(Ljava/lang/String;II)Landroid/telephony/SmsCbMessage;
    .locals 17
    .param p1, "plmn"    # Ljava/lang/String;
    .param p2, "slotIndex"    # I
    .param p3, "subId"    # I

    .line 967
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v2, v2, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decode([BI)Lcom/android/internal/telephony/cdma/sms/BearerData;

    move-result-object v1

    .line 968
    .local v1, "bData":Lcom/android/internal/telephony/cdma/sms/BearerData;
    const-string v2, "SmsMessage"

    if-nez v1, :cond_0

    .line 969
    const-string v3, "BearerData.decode() returned null"

    invoke-static {v2, v3}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    const/4 v2, 0x0

    return-object v2

    .line 973
    :cond_0
    const/4 v3, 0x2

    const-string v4, "CDMA:SMS"

    invoke-static {v4, v3}, Lcom/android/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 974
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MT raw BearerData = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    invoke-static {v4}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    :cond_1
    new-instance v8, Landroid/telephony/SmsCbLocation;

    move-object/from16 v2, p1

    invoke-direct {v8, v2}, Landroid/telephony/SmsCbLocation;-><init>(Ljava/lang/String;)V

    .line 979
    .local v8, "location":Landroid/telephony/SmsCbLocation;
    new-instance v3, Landroid/telephony/SmsCbMessage;

    const/4 v5, 0x2

    const/4 v6, 0x1

    iget v7, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v9, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    .line 981
    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->getLanguage()Ljava/lang/String;

    move-result-object v10

    iget-object v4, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v11, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    iget v12, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->priority:I

    const/4 v13, 0x0

    iget-object v14, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->cmasWarningInfo:Landroid/telephony/SmsCbCmasInfo;

    move-object v4, v3

    move/from16 v15, p2

    move/from16 v16, p3

    invoke-direct/range {v4 .. v16}, Landroid/telephony/SmsCbMessage;-><init>(IIILandroid/telephony/SmsCbLocation;ILjava/lang/String;Ljava/lang/String;ILandroid/telephony/SmsCbEtwsInfo;Landroid/telephony/SmsCbCmasInfo;II)V

    .line 979
    return-object v3
.end method

.method public blacklist parseCtcFota()V
    .locals 6

    .line 1629
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mIsCtcFota:Z

    .line 1631
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mUserDataCtcFota:[B

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 1632
    aget-byte v3, v2, v1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    add-int/lit8 v3, v1, 0x1

    aget-byte v3, v2, v3

    const/4 v5, 0x6

    if-ne v3, v5, :cond_0

    .line 1633
    array-length v3, v2

    sub-int/2addr v3, v1

    .line 1634
    .local v3, "datalen":I
    new-array v5, v3, [B

    .line 1635
    .local v5, "payload":[B
    invoke-static {v2, v1, v5, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1636
    iput-object v5, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mUserData:[B

    .line 1637
    iput-boolean v4, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mIsCtcFota:Z

    .line 1638
    goto :goto_1

    .line 1631
    .end local v3    # "datalen":I
    .end local v5    # "payload":[B
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1641
    .end local v1    # "i":I
    :cond_1
    :goto_1
    return-void
.end method

.method public greylist parseSms()V
    .locals 7

    .line 793
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    const/4 v1, 0x0

    const/high16 v2, 0x40000

    if-ne v0, v2, :cond_1

    .line 794
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/BearerData;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    .line 795
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    if-eqz v0, :cond_0

    .line 796
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    aget-byte v1, v2, v1

    and-int/lit16 v1, v1, 0xff

    iput v1, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->numberOfMessages:I

    .line 803
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/SmsMessage;->parseSpecificTid(I)V

    .line 805
    return-void

    .line 807
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    invoke-static {v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decode([B)Lcom/android/internal/telephony/cdma/sms/BearerData;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    .line 810
    sget-boolean v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->mIsfourBytesUnicode:Z

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eqz v0, :cond_2

    .line 811
    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mIsfourBytesUnicode:Z

    .line 812
    new-array v0, v3, [B

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mlastByte:[B

    .line 813
    sget v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->mBodyOffset:I

    iput v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBodyOffset:I

    .line 814
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mlastByte:[B

    sget-object v4, Lcom/android/internal/telephony/cdma/sms/BearerData;->mlastByte:[B

    aget-byte v4, v4, v1

    aput-byte v4, v0, v1

    .line 815
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mlastByte:[B

    sget-object v4, Lcom/android/internal/telephony/cdma/sms/BearerData;->mlastByte:[B

    aget-byte v4, v4, v2

    aput-byte v4, v0, v2

    .line 818
    :cond_2
    const-string v0, "CDMA:SMS"

    invoke-static {v0, v3}, Lcom/android/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    const-string v4, "SmsMessage"

    if-eqz v0, :cond_3

    .line 819
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MT raw BearerData = \'"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v5, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    .line 820
    invoke-static {v5}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "\'"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 819
    invoke-static {v4, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MT (decoded) BearerData = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    iput v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mMessageRef:I

    .line 824
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    if-eqz v0, :cond_5

    .line 825
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mUserData:[B

    .line 826
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 827
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mMessageBody:Ljava/lang/String;

    .line 829
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    if-eqz v0, :cond_4

    .line 830
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    iput v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mMsgEncoding:I

    .line 833
    :cond_4
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    const-string/jumbo v5, "sms_wap_push_format_sms"

    invoke-virtual {v0, v5}, Landroid/telephony/SmsManager;->getSmsSetting(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    const/16 v5, 0x1002

    if-ne v0, v5, :cond_5

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    if-nez v0, :cond_5

    .line 835
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mUserData:[B

    array-length v0, v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mUserDataCtcFota:[B

    .line 836
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mUserData:[B

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mUserDataCtcFota:[B

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mUserData:[B

    array-length v6, v6

    invoke-static {v0, v1, v5, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 840
    :cond_5
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->callbackNumber:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    if-eqz v0, :cond_6

    .line 841
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "parseSms() callback = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->callbackNumber:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->callbackNumber:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .line 843
    .local v0, "cback":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    iget-object v1, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->address:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->callbackNumber:Ljava/lang/String;

    .line 846
    .end local v0    # "cback":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    :cond_6
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    if-eqz v0, :cond_7

    .line 847
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/SmsMessage;->decodeSmsDisplayAddress(Lcom/android/internal/telephony/SmsAddress;)V

    .line 851
    :cond_7
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mRecipientAddress:Lcom/android/internal/telephony/SmsAddress;

    if-eqz v0, :cond_8

    .line 852
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mRecipientAddress:Lcom/android/internal/telephony/SmsAddress;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/SmsMessage;->decodeSmsDisplayAddress(Lcom/android/internal/telephony/SmsAddress;)V

    .line 856
    :cond_8
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    const-string/jumbo v1, "sms_support_reply_address"

    invoke-virtual {v0, v1}, Landroid/telephony/SmsManager;->getSmsSetting(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 857
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->callbackNumber:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    if-eqz v0, :cond_9

    .line 858
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SMS callback number: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->callbackNumber:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->address:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->callbackNumber:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->replyAddress:Lcom/android/internal/telephony/SmsAddress;

    .line 861
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SMS CALL BACK NUMBER: getDisplayOriginatingAddress(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 863
    :cond_9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->replyAddress:Lcom/android/internal/telephony/SmsAddress;

    .line 864
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SMS CALL BACK NUMBER: null  getDisplayOriginatingAddress(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    :cond_a
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    if-eqz v0, :cond_b

    .line 869
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->toMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mScTimeMillis:J

    .line 874
    :cond_b
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    iput v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mTeleserviceId:I

    .line 876
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SmsManager;->getMnoName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LGU"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 877
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/SmsMessage;->parseSpecificTid(I)V

    .line 881
    :cond_c
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_f

    .line 889
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageStatusSet:Z

    if-nez v0, :cond_e

    .line 890
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DELIVERY_ACK message without msgStatus ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 891
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mUserData:[B

    if-nez v1, :cond_d

    const-string v1, "also missing"

    goto :goto_1

    :cond_d
    const-string v1, "does have"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " userData)."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 890
    invoke-static {v4, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    iput v3, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->status:I

    goto :goto_2

    .line 895
    :cond_e
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->errorClass:I

    shl-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->status:I

    .line 896
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v1, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageStatus:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->status:I

    goto :goto_2

    .line 898
    :cond_f
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    if-eq v0, v2, :cond_11

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    if-ne v0, v3, :cond_10

    goto :goto_2

    .line 900
    :cond_10
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported message type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v2, v2, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 903
    :cond_11
    :goto_2
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mMessageBody:Ljava/lang/String;

    if-eqz v0, :cond_12

    .line 905
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->parseMessageBody()V

    goto :goto_3

    .line 906
    :cond_12
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mUserData:[B

    .line 909
    :goto_3
    return-void
.end method

.method public blacklist preprocessCdmaFdeaWap()Z
    .locals 11

    .line 720
    const-string v0, "SmsMessage"

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Lcom/android/internal/util/BitwiseInputStream;

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mUserData:[B

    invoke-direct {v2, v3}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    .line 723
    .local v2, "inStream":Lcom/android/internal/util/BitwiseInputStream;
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v4

    if-eqz v4, :cond_0

    .line 724
    const-string v3, "Invalid FDEA WDP Header Message Identifier SUBPARAMETER_ID"

    invoke-static {v0, v3}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    return v1

    .line 729
    :cond_0
    invoke-virtual {v2, v3}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_1

    .line 730
    const-string v3, "Invalid FDEA WDP Header Message Identifier SUBPARAM_LEN"

    invoke-static {v0, v3}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    return v1

    .line 735
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    const/4 v6, 0x4

    invoke-virtual {v2, v6}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v6

    iput v6, v4, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    .line 738
    invoke-virtual {v2, v3}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v4

    shl-int/2addr v4, v3

    .line 739
    .local v4, "msgId":I
    invoke-virtual {v2, v3}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v6

    or-int/2addr v4, v6

    .line 740
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iput v4, v6, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    .line 741
    iput v4, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mMessageRef:I

    .line 744
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v8

    if-ne v8, v7, :cond_2

    move v8, v7

    goto :goto_0

    :cond_2
    move v8, v1

    :goto_0
    iput-boolean v8, v6, Lcom/android/internal/telephony/cdma/sms/BearerData;->hasUserDataHeader:Z

    .line 745
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-boolean v6, v6, Lcom/android/internal/telephony/cdma/sms/BearerData;->hasUserDataHeader:Z

    if-eqz v6, :cond_3

    .line 746
    const-string v3, "Invalid FDEA WDP Header Message Identifier HEADER_IND"

    invoke-static {v0, v3}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    return v1

    .line 751
    :cond_3
    invoke-virtual {v2, v5}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 754
    invoke-virtual {v2, v3}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v5

    if-eq v5, v7, :cond_4

    .line 755
    const-string v3, "Invalid FDEA WDP Header User Data SUBPARAMETER_ID"

    invoke-static {v0, v3}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    return v1

    .line 760
    :cond_4
    invoke-virtual {v2, v3}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v5

    mul-int/2addr v5, v3

    .line 763
    .local v5, "userDataLen":I
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v6, v6, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    const/4 v8, 0x5

    invoke-virtual {v2, v8}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v8

    iput v8, v6, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    .line 764
    const/4 v6, 0x5

    .line 765
    .local v6, "consumedBits":I
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v8, v8, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v8, v8, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    if-eqz v8, :cond_5

    .line 766
    const-string v3, "Invalid FDEA WDP Header User Data MSG_ENCODING"

    invoke-static {v0, v3}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    return v1

    .line 771
    :cond_5
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v8, v8, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-virtual {v2, v3}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v9

    iput v9, v8, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    .line 772
    add-int/2addr v6, v3

    .line 774
    sub-int v8, v5, v6

    .line 775
    .local v8, "remainingBits":I
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v9, v9, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v9, v9, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    mul-int/2addr v9, v3

    .line 776
    .local v9, "dataBits":I
    if-ge v9, v8, :cond_6

    move v3, v9

    goto :goto_1

    :cond_6
    move v3, v8

    .line 777
    .end local v9    # "dataBits":I
    .local v3, "dataBits":I
    :goto_1
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v9, v9, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-virtual {v2, v3}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    move-result-object v10

    iput-object v10, v9, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 778
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v9, v9, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v9, v9, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    iput-object v9, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mUserData:[B
    :try_end_0
    .catch Lcom/android/internal/util/BitwiseInputStream$AccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 779
    return v7

    .line 780
    .end local v2    # "inStream":Lcom/android/internal/util/BitwiseInputStream;
    .end local v3    # "dataBits":I
    .end local v4    # "msgId":I
    .end local v5    # "userDataLen":I
    .end local v6    # "consumedBits":I
    .end local v8    # "remainingBits":I
    :catch_0
    move-exception v2

    .line 781
    .local v2, "ex":Lcom/android/internal/util/BitwiseInputStream$AccessException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fail to preprocess FDEA WAP: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    .end local v2    # "ex":Lcom/android/internal/util/BitwiseInputStream$AccessException;
    return v1
.end method
