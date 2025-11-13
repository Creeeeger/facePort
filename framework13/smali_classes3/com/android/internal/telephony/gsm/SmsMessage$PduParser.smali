.class Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;
.super Ljava/lang/Object;
.source "SmsMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/SmsMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PduParser"
.end annotation


# instance fields
.field greylist-max-r mCur:I

.field greylist-max-r mPdu:[B

.field blacklist mSubId:I

.field blacklist mUserData:[B

.field blacklist mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

.field greylist mUserDataSeptetPadding:I

.field blacklist mValidityPeriodFormat:I


# direct methods
.method constructor greylist <init>([B)V
    .locals 2
    .param p1, "pdu"    # [B

    .line 842
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 838
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mValidityPeriodFormat:I

    .line 839
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubscriptionId()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mSubId:I

    .line 843
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    .line 844
    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    .line 845
    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mUserDataSeptetPadding:I

    .line 846
    return-void
.end method


# virtual methods
.method blacklist constructUserData(ZZ)I
    .locals 9
    .param p1, "hasUserDataHeader"    # Z
    .param p2, "dataInSeptets"    # Z

    .line 972
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    .line 975
    .local v0, "offset":I
    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mValidityPeriodFormat:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 981
    :pswitch_0
    add-int/lit8 v0, v0, 0x1

    .line 982
    goto :goto_0

    .line 978
    :pswitch_1
    const/4 v0, 0x7

    .line 979
    nop

    .line 988
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    add-int/lit8 v2, v0, 0x1

    .end local v0    # "offset":I
    .local v2, "offset":I
    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    .line 989
    .local v0, "userDataLength":I
    const/4 v3, 0x0

    .line 990
    .local v3, "headerSeptets":I
    const/4 v4, 0x0

    .line 992
    .local v4, "userDataHeaderLength":I
    const/4 v5, 0x0

    if-eqz p1, :cond_1

    .line 993
    add-int/lit8 v6, v2, 0x1

    .end local v2    # "offset":I
    .local v6, "offset":I
    aget-byte v2, v1, v2

    and-int/lit16 v4, v2, 0xff

    .line 995
    new-array v2, v4, [B

    .line 996
    .local v2, "udh":[B
    invoke-static {v1, v6, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 998
    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mSubId:I

    invoke-static {v1, v2}, Lcom/android/internal/telephony/SmsHeader;->semFromByteArray(I[B)Lcom/android/internal/telephony/SmsHeader;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 1000
    add-int v1, v6, v4

    .line 1002
    .end local v6    # "offset":I
    .local v1, "offset":I
    add-int/lit8 v6, v4, 0x1

    mul-int/lit8 v6, v6, 0x8

    .line 1003
    .local v6, "headerBits":I
    div-int/lit8 v3, v6, 0x7

    .line 1004
    rem-int/lit8 v7, v6, 0x7

    if-lez v7, :cond_0

    const/4 v7, 0x1

    goto :goto_1

    :cond_0
    move v7, v5

    :goto_1
    add-int/2addr v3, v7

    .line 1005
    mul-int/lit8 v7, v3, 0x7

    sub-int/2addr v7, v6

    iput v7, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mUserDataSeptetPadding:I

    move v2, v1

    .line 1009
    .end local v1    # "offset":I
    .end local v6    # "headerBits":I
    .local v2, "offset":I
    :cond_1
    if-eqz p2, :cond_2

    .line 1015
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    array-length v1, v1

    sub-int/2addr v1, v2

    .local v1, "bufferLen":I
    goto :goto_3

    .line 1021
    .end local v1    # "bufferLen":I
    :cond_2
    if-eqz p1, :cond_3

    add-int/lit8 v1, v4, 0x1

    goto :goto_2

    :cond_3
    move v1, v5

    :goto_2
    sub-int v1, v0, v1

    .line 1022
    .restart local v1    # "bufferLen":I
    if-gez v1, :cond_4

    .line 1023
    const/4 v1, 0x0

    .line 1027
    :cond_4
    :goto_3
    new-array v6, v1, [B

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mUserData:[B

    .line 1031
    invoke-static {}, Lcom/android/internal/telephony/gsm/SmsMessage;->-$$Nest$sfgetmUnsupportedDatacodingScheme()Z

    move-result v6

    if-eqz v6, :cond_6

    if-eqz p1, :cond_5

    goto :goto_4

    .line 1034
    :cond_5
    const-string v6, "SmsMessage"

    const-string v7, "array copy skip! if dataCodingScheme is unsupporting,\n encodingType is Unknown and messageBody is null"

    invoke-static {v6, v7}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 1032
    :cond_6
    :goto_4
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mUserData:[B

    array-length v8, v7

    invoke-static {v6, v2, v7, v5, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1037
    :goto_5
    iput v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    .line 1039
    if-eqz p2, :cond_8

    .line 1041
    sub-int v6, v0, v3

    .line 1043
    .local v6, "count":I
    if-gez v6, :cond_7

    goto :goto_6

    :cond_7
    move v5, v6

    :goto_6
    return v5

    .line 1046
    .end local v6    # "count":I
    :cond_8
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mUserData:[B

    array-length v5, v5

    return v5

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method blacklist getAddress()Lcom/android/internal/telephony/gsm/GsmSmsAddress;
    .locals 6

    .line 901
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    .line 902
    .local v0, "addressLength":I
    add-int/lit8 v1, v0, 0x1

    div-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x2

    .line 906
    .local v1, "lengthBytes":I
    :try_start_0
    const-string v2, "SmsMessage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAddress : Mno = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mSubId:I

    invoke-static {v4, v5}, Landroid/telephony/SmsManager;->getSmsManagerForContextAndSubscriptionId(Landroid/content/Context;I)Landroid/telephony/SmsManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/SmsManager;->getMnoName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    new-instance v2, Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    iget v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mSubId:I

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    iget v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    invoke-direct {v2, v3, v4, v5, v1}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;-><init>(I[BII)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 913
    .local v2, "ret":Lcom/android/internal/telephony/gsm/GsmSmsAddress;
    nop

    .line 915
    iget v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    .line 917
    return-object v2

    .line 909
    .end local v2    # "ret":Lcom/android/internal/telephony/gsm/GsmSmsAddress;
    :catch_0
    move-exception v2

    .line 910
    .local v2, "e":Ljava/text/ParseException;
    const/4 v3, 0x0

    .line 912
    .local v3, "ret":Lcom/android/internal/telephony/gsm/GsmSmsAddress;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-virtual {v2}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method greylist getByte()I
    .locals 3

    .line 887
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method blacklist getSCAddress()Ljava/lang/String;
    .locals 4

    .line 861
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v0

    .line 863
    .local v0, "len":I
    if-nez v0, :cond_0

    .line 865
    const/4 v1, 0x0

    .local v1, "ret":Ljava/lang/String;
    goto :goto_0

    .line 869
    .end local v1    # "ret":Ljava/lang/String;
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    iget v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    const/4 v3, 0x2

    invoke-static {v1, v2, v0, v3}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDToString([BIII)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 874
    .restart local v1    # "ret":Ljava/lang/String;
    goto :goto_0

    .line 871
    .end local v1    # "ret":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 872
    .local v1, "tr":Ljava/lang/RuntimeException;
    const-string v2, "SmsMessage"

    const-string/jumbo v3, "invalid SC address: "

    invoke-static {v2, v3, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 873
    const/4 v2, 0x0

    move-object v1, v2

    .line 877
    .local v1, "ret":Ljava/lang/String;
    :goto_0
    iget v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    .line 879
    return-object v1
.end method

.method blacklist getSCTimestampMillis()J
    .locals 13

    .line 926
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    aget-byte v0, v0, v1

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->gsmBcdByteToInt(B)I

    move-result v0

    .line 927
    .local v0, "year":I
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    iget v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    aget-byte v1, v1, v2

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->gsmBcdByteToInt(B)I

    move-result v1

    .line 928
    .local v1, "month":I
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    iget v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    aget-byte v2, v2, v3

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/IccUtils;->gsmBcdByteToInt(B)I

    move-result v2

    .line 929
    .local v2, "day":I
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    iget v4, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    aget-byte v3, v3, v4

    invoke-static {v3}, Lcom/android/internal/telephony/uicc/IccUtils;->gsmBcdByteToInt(B)I

    move-result v3

    .line 930
    .local v3, "hour":I
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    iget v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    aget-byte v4, v4, v5

    invoke-static {v4}, Lcom/android/internal/telephony/uicc/IccUtils;->gsmBcdByteToInt(B)I

    move-result v4

    .line 931
    .local v4, "minute":I
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    iget v6, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    aget-byte v5, v5, v6

    invoke-static {v5}, Lcom/android/internal/telephony/uicc/IccUtils;->gsmBcdByteToInt(B)I

    move-result v5

    .line 938
    .local v5, "second":I
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    iget v7, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    aget-byte v6, v6, v7

    .line 941
    .local v6, "tzByte":B
    and-int/lit8 v7, v6, -0x9

    int-to-byte v7, v7

    invoke-static {v7}, Lcom/android/internal/telephony/uicc/IccUtils;->gsmBcdByteToInt(B)I

    move-result v7

    .line 943
    .local v7, "timezoneOffset":I
    and-int/lit8 v8, v6, 0x8

    if-nez v8, :cond_0

    move v8, v7

    goto :goto_0

    :cond_0
    neg-int v8, v7

    :goto_0
    move v7, v8

    .line 946
    new-instance v8, Landroid/text/format/Time;

    const-string v9, "UTC"

    invoke-direct {v8, v9}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 949
    .local v8, "time":Landroid/text/format/Time;
    const/16 v9, 0x5a

    if-lt v0, v9, :cond_1

    add-int/lit16 v9, v0, 0x76c

    goto :goto_1

    :cond_1
    add-int/lit16 v9, v0, 0x7d0

    :goto_1
    iput v9, v8, Landroid/text/format/Time;->year:I

    .line 950
    add-int/lit8 v9, v1, -0x1

    iput v9, v8, Landroid/text/format/Time;->month:I

    .line 951
    iput v2, v8, Landroid/text/format/Time;->monthDay:I

    .line 952
    iput v3, v8, Landroid/text/format/Time;->hour:I

    .line 953
    iput v4, v8, Landroid/text/format/Time;->minute:I

    .line 954
    iput v5, v8, Landroid/text/format/Time;->second:I

    .line 957
    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v9

    mul-int/lit8 v11, v7, 0xf

    mul-int/lit8 v11, v11, 0x3c

    mul-int/lit16 v11, v11, 0x3e8

    int-to-long v11, v11

    sub-long/2addr v9, v11

    return-wide v9
.end method

.method blacklist getUseDataNSRISms(I)Ljava/lang/String;
    .locals 8
    .param p1, "byteCount"    # I

    .line 1176
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserData()[B

    move-result-object v0

    .line 1177
    .local v0, "nsriUserdata":[B
    const/4 v1, 0x0

    .line 1178
    .local v1, "ret":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1180
    .local v2, "cnt":I
    const-string v3, "SmsMessage"

    const-string v4, "[NSRI_SMS] getUseDataNSRISms"

    invoke-static {v3, v4}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1182
    const/4 v4, 0x0

    :try_start_0
    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "f1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "a0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1183
    new-instance v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    iget v6, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    const-string v7, "ISO8859_1"

    invoke-direct {v4, v5, v6, p1, v7}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    move-object v1, v4

    .line 1184
    const-string v4, "[NSRI_SMS] : getUserDataUCS2    ISO8859_1"

    invoke-static {v3, v4}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1186
    :cond_0
    new-instance v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    iget v6, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    const-string/jumbo v7, "utf-16"

    invoke-direct {v4, v5, v6, p1, v7}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v4

    .line 1191
    :goto_0
    goto :goto_1

    .line 1188
    :catch_0
    move-exception v4

    .line 1189
    .local v4, "ex":Ljava/io/UnsupportedEncodingException;
    const-string v1, ""

    .line 1190
    const-string/jumbo v5, "implausible UnsupportedEncodingException"

    invoke-static {v3, v5, v4}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1193
    .end local v4    # "ex":Ljava/io/UnsupportedEncodingException;
    :goto_1
    return-object v1
.end method

.method greylist getUserData()[B
    .locals 1

    .line 1057
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mUserData:[B

    return-object v0
.end method

.method blacklist getUserDataGSM7Bit(III)Ljava/lang/String;
    .locals 6
    .param p1, "septetCount"    # I
    .param p2, "languageTable"    # I
    .param p3, "languageShiftTable"    # I

    .line 1080
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    iget v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mUserDataSeptetPadding:I

    move v2, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BIIIII)Ljava/lang/String;

    move-result-object v0

    .line 1083
    .local v0, "ret":Ljava/lang/String;
    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    mul-int/lit8 v2, p1, 0x7

    div-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    .line 1085
    return-object v0
.end method

.method blacklist getUserDataGSM8bit(I)Ljava/lang/String;
    .locals 2
    .param p1, "byteCount"    # I

    .line 1098
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    invoke-static {v0, v1, p1}, Lcom/android/internal/telephony/GsmAlphabet;->gsm8BitUnpackedToString([BII)Ljava/lang/String;

    move-result-object v0

    .line 1100
    .local v0, "ret":Ljava/lang/String;
    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    .line 1102
    return-object v0
.end method

.method blacklist getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;
    .locals 1

    .line 1066
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

    return-object v0
.end method

.method blacklist getUserDataKSC5601(I)Ljava/lang/String;
    .locals 6
    .param p1, "byteCount"    # I

    .line 1148
    const-string v0, "SmsMessage"

    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserData()[B

    move-result-object v1

    .line 1149
    .local v1, "nsriUserdata":[B
    const/4 v2, 0x0

    iget v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mSubId:I

    invoke-static {v2, v3}, Landroid/telephony/SmsManager;->getSmsManagerForContextAndSubscriptionId(Landroid/content/Context;I)Landroid/telephony/SmsManager;

    move-result-object v2

    const-string/jumbo v3, "sms_nsri_security_solution"

    invoke-virtual {v2, v3}, Landroid/telephony/SmsManager;->getSmsSetting(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "KSC5601"

    if-eqz v2, :cond_1

    :try_start_1
    array-length v2, v1

    if-lez v2, :cond_1

    .line 1150
    const/4 v2, 0x0

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "f1"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "a0"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1151
    const-string v2, "[NSRI_SMS] getUserDataKSC5601 KSC5601"

    invoke-static {v0, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1152
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    iget v4, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    const-string v5, "ISO8859_1"

    invoke-direct {v2, v3, v4, p1, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    move-object v0, v2

    .local v0, "ret":Ljava/lang/String;
    goto :goto_0

    .line 1154
    .end local v0    # "ret":Ljava/lang/String;
    :cond_0
    new-instance v2, Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    iget v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    invoke-direct {v2, v4, v5, p1, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    move-object v0, v2

    .restart local v0    # "ret":Ljava/lang/String;
    goto :goto_0

    .line 1158
    .end local v0    # "ret":Ljava/lang/String;
    :cond_1
    new-instance v2, Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    iget v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    invoke-direct {v2, v4, v5, p1, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v2

    .line 1163
    .end local v1    # "nsriUserdata":[B
    .restart local v0    # "ret":Ljava/lang/String;
    :goto_0
    goto :goto_1

    .line 1160
    .end local v0    # "ret":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1161
    .local v1, "ex":Ljava/io/UnsupportedEncodingException;
    const-string v2, ""

    .line 1162
    .local v2, "ret":Ljava/lang/String;
    const-string/jumbo v3, "implausible UnsupportedEncodingException"

    invoke-static {v0, v3, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v2

    .line 1165
    .end local v1    # "ex":Ljava/io/UnsupportedEncodingException;
    .end local v2    # "ret":Ljava/lang/String;
    .restart local v0    # "ret":Ljava/lang/String;
    :goto_1
    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    .line 1166
    return-object v0
.end method

.method greylist getUserDataUCS2(I)Ljava/lang/String;
    .locals 5
    .param p1, "byteCount"    # I

    .line 1119
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserData()[B

    move-result-object v0

    .line 1120
    .local v0, "nsriUserdata":[B
    const/4 v1, 0x0

    iget v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mSubId:I

    invoke-static {v1, v2}, Landroid/telephony/SmsManager;->getSmsManagerForContextAndSubscriptionId(Landroid/content/Context;I)Landroid/telephony/SmsManager;

    move-result-object v1

    const-string/jumbo v2, "sms_nsri_security_solution"

    invoke-virtual {v1, v2}, Landroid/telephony/SmsManager;->getSmsSetting(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 1121
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUseDataNSRISms(I)Ljava/lang/String;

    move-result-object v1

    .local v1, "ret":Ljava/lang/String;
    goto :goto_0

    .line 1124
    .end local v1    # "ret":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    iget v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    const-string/jumbo v4, "utf-16"

    invoke-direct {v1, v2, v3, p1, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1129
    .end local v0    # "nsriUserdata":[B
    .restart local v1    # "ret":Ljava/lang/String;
    :goto_0
    goto :goto_1

    .line 1126
    .end local v1    # "ret":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1127
    .local v0, "ex":Ljava/io/UnsupportedEncodingException;
    const-string v1, ""

    .line 1128
    .restart local v1    # "ret":Ljava/lang/String;
    const-string v2, "SmsMessage"

    const-string/jumbo v3, "implausible UnsupportedEncodingException"

    invoke-static {v2, v3, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1131
    .end local v0    # "ex":Ljava/io/UnsupportedEncodingException;
    :goto_1
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    .line 1132
    return-object v1
.end method

.method blacklist moreDataPresent()Z
    .locals 2

    .line 1170
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    array-length v0, v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method blacklist setSubIdforParser(I)V
    .locals 0
    .param p1, "subId"    # I

    .line 849
    iput p1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mSubId:I

    .line 850
    return-void
.end method
