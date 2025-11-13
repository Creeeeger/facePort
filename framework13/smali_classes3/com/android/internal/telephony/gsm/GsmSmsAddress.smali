.class public Lcom/android/internal/telephony/gsm/GsmSmsAddress;
.super Lcom/android/internal/telephony/SmsAddress;
.source "GsmSmsAddress.java"


# static fields
.field static final blacklist DOCOMO:Ljava/lang/String; = "DOCOMO"

.field static final blacklist DOCOMO_SMS:Ljava/lang/String; = "DOCOMO SMS"

.field private static final blacklist LOG_TAG:Ljava/lang/String; = "GsmSmsAddress"

.field static final blacklist NTT_DOCOMO:Ljava/lang/String; = "NTT DOCOMO"

.field static final blacklist OFFSET_ADDRESS_LENGTH:I = 0x0

.field static final blacklist OFFSET_ADDRESS_VALUE:I = 0x2

.field static final blacklist OFFSET_TOA:I = 0x1


# instance fields
.field blacklist partofaddress:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(I[BII)V
    .locals 9
    .param p1, "subId"    # I
    .param p2, "data"    # [B
    .param p3, "offset"    # I
    .param p4, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 110
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsAddress;-><init>()V

    .line 111
    new-array v0, p4, [B

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->origBytes:[B

    .line 112
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->origBytes:[B

    const/4 v1, 0x0

    invoke-static {p2, p3, v0, v1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 115
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->origBytes:[B

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    .line 117
    .local v0, "addressLength":I
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->origBytes:[B

    const/4 v3, 0x1

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    .line 118
    .local v2, "toa":I
    shr-int/lit8 v4, v2, 0x4

    and-int/lit8 v4, v4, 0x7

    iput v4, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->ton:I

    .line 121
    and-int/lit16 v4, v2, 0x80

    const/16 v5, 0x80

    if-ne v4, v5, :cond_9

    .line 126
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isAlphanumeric()Z

    move-result v4

    const/4 v5, 0x2

    if-eqz v4, :cond_0

    .line 128
    mul-int/lit8 v3, v0, 0x4

    div-int/lit8 v3, v3, 0x7

    .line 130
    .local v3, "countSeptets":I
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->origBytes:[B

    invoke-static {v4, v5, v3}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BII)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->address:Ljava/lang/String;

    .line 132
    .end local v3    # "countSeptets":I
    goto :goto_0

    .line 137
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->origBytes:[B

    add-int/lit8 v6, p4, -0x1

    aget-byte v4, v4, v6

    .line 139
    .local v4, "lastByte":B
    and-int/lit8 v6, v0, 0x1

    if-ne v6, v3, :cond_1

    .line 141
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->origBytes:[B

    add-int/lit8 v7, p4, -0x1

    aget-byte v8, v6, v7

    or-int/lit16 v8, v8, 0xf0

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    .line 143
    :cond_1
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->origBytes:[B

    add-int/lit8 v7, p4, -0x1

    invoke-static {v6, v3, v7, v5}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDToString([BIII)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->address:Ljava/lang/String;

    .line 150
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->origBytes:[B

    add-int/lit8 v5, p4, -0x1

    aput-byte v4, v3, v5

    .line 153
    .end local v4    # "lastByte":B
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->address:Ljava/lang/String;

    if-eqz v3, :cond_8

    .line 154
    const/4 v3, 0x0

    invoke-static {v3, p1}, Landroid/telephony/SmsManager;->getSmsManagerForContextAndSubscriptionId(Landroid/content/Context;I)Landroid/telephony/SmsManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/SmsManager;->getMnoName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "SKT"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 155
    invoke-static {v3, p1}, Landroid/telephony/SmsManager;->getSmsManagerForContextAndSubscriptionId(Landroid/content/Context;I)Landroid/telephony/SmsManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/SmsManager;->getMnoName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "KT_KR"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 156
    invoke-static {v3, p1}, Landroid/telephony/SmsManager;->getSmsManagerForContextAndSubscriptionId(Landroid/content/Context;I)Landroid/telephony/SmsManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/SmsManager;->getMnoName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "LGU"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 157
    :cond_2
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->address:Ljava/lang/String;

    const-string v5, "+"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v6, -0x1

    if-eq v4, v6, :cond_3

    .line 158
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Address Before Replacement = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->address:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "GsmSmsAddress"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    new-instance v4, Ljava/lang/StringBuffer;

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->address:Ljava/lang/String;

    invoke-direct {v4, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 160
    .local v4, "sb":Ljava/lang/StringBuffer;
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->address:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 161
    invoke-virtual {v4, v1, v5}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 162
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->address:Ljava/lang/String;

    .line 163
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Address after Replacement = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->address:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    .end local v4    # "sb":Ljava/lang/StringBuffer;
    :cond_3
    invoke-static {v3, p1}, Landroid/telephony/SmsManager;->getSmsManagerForContextAndSubscriptionId(Landroid/content/Context;I)Landroid/telephony/SmsManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/SmsManager;->getMnoName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DOCOMO"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 169
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->address:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v5, 0x6

    if-lt v3, v5, :cond_4

    .line 170
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->address:Ljava/lang/String;

    invoke-virtual {v3, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->partofaddress:Ljava/lang/String;

    goto :goto_1

    .line 172
    :cond_4
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->address:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->partofaddress:Ljava/lang/String;

    .line 174
    :goto_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->address:Ljava/lang/String;

    const-string v3, "NTT DOCOMO"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 175
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->address:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 176
    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->address:Ljava/lang/String;

    goto :goto_2

    .line 179
    :cond_5
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->address:Ljava/lang/String;

    const-string v5, "DOCOMO SMS"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 180
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->address:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 181
    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->address:Ljava/lang/String;

    goto :goto_2

    .line 184
    :cond_6
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->address:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 185
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->address:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 186
    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->address:Ljava/lang/String;

    goto :goto_2

    .line 189
    :cond_7
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->partofaddress:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 190
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->partofaddress:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 191
    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->address:Ljava/lang/String;

    .line 197
    :cond_8
    :goto_2
    return-void

    .line 122
    :cond_9
    new-instance v1, Ljava/text/ParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid TOA - high bit must be set. toa = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v4, p3, 0x1

    invoke-direct {v1, v3, v4}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method public constructor greylist <init>([BII)V
    .locals 8
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 57
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsAddress;-><init>()V

    .line 58
    new-array v0, p3, [B

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->origBytes:[B

    .line 59
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->origBytes:[B

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 62
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->origBytes:[B

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    .line 64
    .local v0, "addressLength":I
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->origBytes:[B

    const/4 v2, 0x1

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    .line 65
    .local v1, "toa":I
    shr-int/lit8 v3, v1, 0x4

    and-int/lit8 v3, v3, 0x7

    iput v3, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->ton:I

    .line 68
    and-int/lit16 v3, v1, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_2

    .line 73
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isAlphanumeric()Z

    move-result v3

    const/4 v4, 0x2

    if-eqz v3, :cond_0

    .line 75
    mul-int/lit8 v2, v0, 0x4

    div-int/lit8 v2, v2, 0x7

    .line 77
    .local v2, "countSeptets":I
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->origBytes:[B

    invoke-static {v3, v4, v2}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BII)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->address:Ljava/lang/String;

    .line 79
    .end local v2    # "countSeptets":I
    goto :goto_0

    .line 84
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->origBytes:[B

    add-int/lit8 v5, p3, -0x1

    aget-byte v3, v3, v5

    .line 86
    .local v3, "lastByte":B
    and-int/lit8 v5, v0, 0x1

    if-ne v5, v2, :cond_1

    .line 88
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->origBytes:[B

    add-int/lit8 v6, p3, -0x1

    aget-byte v7, v5, v6

    or-int/lit16 v7, v7, 0xf0

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 90
    :cond_1
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->origBytes:[B

    add-int/lit8 v6, p3, -0x1

    invoke-static {v5, v2, v6, v4}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDToString([BIII)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->address:Ljava/lang/String;

    .line 97
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->origBytes:[B

    add-int/lit8 v4, p3, -0x1

    aput-byte v3, v2, v4

    .line 99
    .end local v3    # "lastByte":B
    :goto_0
    return-void

    .line 69
    :cond_2
    new-instance v2, Ljava/text/ParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid TOA - high bit must be set. toa = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v4, p2, 0x1

    invoke-direct {v2, v3, v4}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v2
.end method


# virtual methods
.method public blacklist getAddressString()Ljava/lang/String;
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->address:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist isAlphanumeric()Z
    .locals 2

    .line 209
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->ton:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public greylist isCphsVoiceMessageClear()Z
    .locals 3

    .line 271
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isCphsVoiceMessageIndicatorAddress()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->origBytes:[B

    const/4 v1, 0x2

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    const/16 v2, 0x10

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->origBytes:[B

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x90

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist isCphsVoiceMessageIndicatorAddress()Z
    .locals 4

    .line 243
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->origBytes:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    const/4 v2, 0x1

    const/4 v3, 0x4

    if-ne v0, v3, :cond_0

    .line 244
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isAlphanumeric()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->origBytes:[B

    aget-byte v0, v0, v2

    and-int/lit8 v0, v0, 0xf

    if-nez v0, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    nop

    .line 243
    :goto_0
    return v1
.end method

.method public greylist isCphsVoiceMessageSet()Z
    .locals 3

    .line 256
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isCphsVoiceMessageIndicatorAddress()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->origBytes:[B

    const/4 v1, 0x2

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    const/16 v2, 0x11

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->origBytes:[B

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x91

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist isNetworkSpecific()Z
    .locals 2

    .line 214
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->ton:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
