.class public Lcom/android/internal/telephony/IccPcscProvider;
.super Ljava/lang/Object;
.source "IccPcscProvider.java"


# static fields
.field public static final blacklist CONNECT:I = 0x4

.field public static final blacklist DISCONNECT:I = 0x5

.field public static final blacklist INIT:I = 0x1

.field private static final blacklist OEM_AUTH_ATR:I = 0xd

.field private static final blacklist OEM_AUTH_OPEN_CHANNEL:I = 0x9

.field private static final blacklist OEM_AUTH_SEND_APDU:I = 0x8

.field private static final blacklist OEM_DOMESTIC_PCSC_POWERDOWN:I = 0x28

.field private static final blacklist OEM_DOMESTIC_PCSC_POWERUP:I = 0x26

.field private static final blacklist OEM_DOMESTIC_PCSC_TRANSMIT:I = 0x27

.field private static final blacklist OEM_FUNCTION_ID_AUTH:I = 0x15

.field private static final blacklist OEM_FUNCTION_ID_DOMESTIC:I = 0x16

.field public static final blacklist POWERDOWN:I = 0x3

.field public static final blacklist POWERUP:I = 0x2

.field public static final blacklist RESPONSE_MAX_SIZE:I = 0x106

.field public static final blacklist SIM_STATE_ABSENT:I = 0x1

.field public static final blacklist SIM_STATE_NETWORK_LOCKED:I = 0x4

.field public static final blacklist SIM_STATE_PIN_REQUIRED:I = 0x2

.field public static final blacklist SIM_STATE_PUK_REQUIRED:I = 0x3

.field public static final blacklist SIM_STATE_READY:I = 0x5

.field public static final blacklist SIM_STATE_UNKNOWN:I = 0x0

.field public static final blacklist SMARTCARD_IO_ERROR_ATR_BUFFER:I = -0x6

.field public static final blacklist SMARTCARD_IO_ERROR_CARD_NOT_EXIST:I = -0x2

.field public static final blacklist SMARTCARD_IO_ERROR_OPEN_CHANNEL:I = -0x1

.field public static final blacklist SMARTCARD_IO_ERROR_RESPONSE_BUFFER:I = -0x5

.field public static final blacklist SMARTCARD_IO_ERROR_TRANSMIT_BUFFER:I = -0x4

.field public static final blacklist SMARTCARD_IO_INVALID_CHANNEL:I = -0x3

.field public static final blacklist SMARTCARD_IO_SUCCESS:I = 0x0

.field public static final blacklist TRANSMIT:I = 0x6

.field public static final blacklist USIMAUTH:I = 0x7

.field static final blacklist mLogTag:Ljava/lang/String; = "RIL_IccPcscProvider"


# instance fields
.field private blacklist _atr:[B

.field private blacklist isInitiated:Z

.field private blacklist mPhoneId:I


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/IccPcscProvider;->isInitiated:Z

    .line 70
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/IccPcscProvider;->mPhoneId:I

    .line 71
    invoke-direct {p0}, Lcom/android/internal/telephony/IccPcscProvider;->pscsPowerup()V

    .line 72
    return-void
.end method

.method public constructor blacklist <init>(I)V
    .locals 1
    .param p1, "phoneId"    # I

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/IccPcscProvider;->isInitiated:Z

    .line 75
    iput p1, p0, Lcom/android/internal/telephony/IccPcscProvider;->mPhoneId:I

    .line 76
    invoke-direct {p0}, Lcom/android/internal/telephony/IccPcscProvider;->pscsPowerup()V

    .line 77
    return-void
.end method

.method private static blacklist bytesToHexString([B)Ljava/lang/String;
    .locals 5
    .param p0, "bytes"    # [B

    .line 348
    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 350
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 352
    .local v0, "ret":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 355
    aget-byte v2, p0, v1

    shr-int/lit8 v2, v2, 0x4

    and-int/lit8 v2, v2, 0xf

    .line 357
    .local v2, "b":I
    const-string v3, "0123456789abcdef"

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 359
    aget-byte v4, p0, v1

    and-int/lit8 v2, v4, 0xf

    .line 361
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 352
    .end local v2    # "b":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 364
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private blacklist connectToRIL()I
    .locals 10

    .line 153
    const-string v0, "RIL_IccPcscProvider"

    const-string v1, "connectToRIL"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    const/4 v1, 0x0

    .line 157
    .local v1, "val":I
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 158
    .local v2, "bos":Ljava/io/ByteArrayOutputStream;
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 161
    .local v3, "dos":Ljava/io/DataOutputStream;
    const/16 v4, 0x9

    .line 162
    .local v4, "fileSize":I
    const/16 v5, 0x16

    const/4 v6, -0x1

    :try_start_0
    invoke-virtual {v3, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 163
    const/16 v5, 0x27

    invoke-virtual {v3, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 164
    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 165
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 166
    const/16 v7, 0x70

    invoke-virtual {v3, v7}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 167
    invoke-virtual {v3, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 168
    invoke-virtual {v3, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 169
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 173
    .end local v4    # "fileSize":I
    nop

    .line 176
    :try_start_1
    new-array v4, v5, [B

    .line 177
    .local v4, "response":[B
    invoke-direct {p0}, Lcom/android/internal/telephony/IccPcscProvider;->getTelephonyService()Lcom/android/internal/telephony/ISemTelephony;

    move-result-object v5

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    const/4 v8, 0x4

    iget v9, p0, Lcom/android/internal/telephony/IccPcscProvider;->mPhoneId:I

    invoke-interface {v5, v7, v4, v8, v9}, Lcom/android/internal/telephony/ISemTelephony;->sendRequestToRIL([B[BII)I

    move-result v5

    move v1, v5

    .line 178
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    .line 179
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 180
    const/4 v0, 0x0

    .line 181
    .end local v3    # "dos":Ljava/io/DataOutputStream;
    .local v0, "dos":Ljava/io/DataOutputStream;
    const/4 v2, 0x0

    .line 182
    return v1

    .line 183
    .end local v0    # "dos":Ljava/io/DataOutputStream;
    .end local v4    # "response":[B
    .restart local v3    # "dos":Ljava/io/DataOutputStream;
    :catch_0
    move-exception v4

    .line 184
    .local v4, "e":Ljava/lang/Exception;
    const-string v5, "Exception - connect"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :try_start_2
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    .line 187
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 189
    goto :goto_0

    .line 188
    :catch_1
    move-exception v0

    .line 190
    :goto_0
    return v6

    .line 170
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v4

    .line 171
    .local v4, "e":Ljava/io/IOException;
    const-string v5, "IOException - connect"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    return v6
.end method

.method private blacklist disconnectFromRIL(I)I
    .locals 9
    .param p1, "channel"    # I

    .line 272
    const-string v0, "RIL_IccPcscProvider"

    const-string v1, "disconnectFromRIL"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    const/4 v1, 0x0

    .line 274
    .local v1, "val":I
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 275
    .local v2, "bos":Ljava/io/ByteArrayOutputStream;
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 280
    .local v3, "dos":Ljava/io/DataOutputStream;
    const/16 v4, 0x8

    .line 281
    .local v4, "fileSize":I
    const/16 v5, 0x16

    const/4 v6, -0x1

    :try_start_0
    invoke-virtual {v3, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 282
    const/16 v5, 0x27

    invoke-virtual {v3, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 283
    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 284
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 285
    const/16 v5, 0x70

    invoke-virtual {v3, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 286
    const/16 v5, 0x80

    invoke-virtual {v3, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 287
    invoke-virtual {v3, p1}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 291
    .end local v4    # "fileSize":I
    nop

    .line 294
    const/4 v0, 0x1

    :try_start_1
    new-array v0, v0, [B

    .line 295
    .local v0, "response":[B
    invoke-direct {p0}, Lcom/android/internal/telephony/IccPcscProvider;->getTelephonyService()Lcom/android/internal/telephony/ISemTelephony;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    const/4 v7, 0x5

    iget v8, p0, Lcom/android/internal/telephony/IccPcscProvider;->mPhoneId:I

    invoke-interface {v4, v5, v0, v7, v8}, Lcom/android/internal/telephony/ISemTelephony;->sendRequestToRIL([B[BII)I

    move-result v4

    move v1, v4

    .line 296
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    .line 297
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 298
    const/4 v3, 0x0

    .line 299
    const/4 v2, 0x0

    .line 300
    return v1

    .line 301
    .end local v0    # "response":[B
    :catch_0
    move-exception v0

    .line 303
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    .line 304
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 306
    goto :goto_0

    .line 305
    :catch_1
    move-exception v4

    .line 307
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 308
    return v6

    .line 288
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v4

    .line 289
    .local v4, "e":Ljava/io/IOException;
    const-string v5, "IO Exception - Disconnect"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    return v6
.end method

.method private blacklist getTelephonyService()Lcom/android/internal/telephony/ISemTelephony;
    .locals 3

    .line 334
    const-string/jumbo v0, "isemtelephony"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ISemTelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISemTelephony;

    move-result-object v0

    .line 335
    .local v0, "semTelephony":Lcom/android/internal/telephony/ISemTelephony;
    if-nez v0, :cond_0

    .line 336
    const-string v1, "RIL_IccPcscProvider"

    const-string v2, "Unable to find ISemTelephony interface."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    :cond_0
    return-object v0
.end method

.method private blacklist pcscPowerdown()V
    .locals 2

    .line 126
    const-string v0, "RIL_IccPcscProvider"

    const-string/jumbo v1, "pcscPowerdown"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    return-void
.end method

.method private blacklist pscsPowerup()V
    .locals 11

    .line 80
    const/4 v0, 0x0

    .line 81
    .local v0, "atrLength":I
    const-string v1, "RIL_IccPcscProvider"

    const-string/jumbo v2, "pscsPowerup"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 84
    .local v3, "bos":Ljava/io/ByteArrayOutputStream;
    new-instance v4, Ljava/io/DataOutputStream;

    invoke-direct {v4, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 87
    .local v4, "dos":Ljava/io/DataOutputStream;
    const/4 v5, 0x4

    .line 88
    .local v5, "fileSize":I
    const/16 v6, 0x16

    :try_start_0
    invoke-virtual {v4, v6}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 89
    const/16 v6, 0x26

    invoke-virtual {v4, v6}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 90
    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeShort(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 94
    .end local v5    # "fileSize":I
    nop

    .line 97
    const/16 v5, 0x106

    const/4 v6, 0x0

    :try_start_1
    new-array v5, v5, [B

    .line 98
    .local v5, "response":[B
    invoke-direct {p0}, Lcom/android/internal/telephony/IccPcscProvider;->getTelephonyService()Lcom/android/internal/telephony/ISemTelephony;

    move-result-object v7

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    iget v9, p0, Lcom/android/internal/telephony/IccPcscProvider;->mPhoneId:I

    const/4 v10, 0x2

    invoke-interface {v7, v8, v5, v10, v9}, Lcom/android/internal/telephony/ISemTelephony;->sendRequestToRIL([B[BII)I

    .line 99
    aget-byte v7, v5, v6

    move v0, v7

    .line 100
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "pscsPowerup ATR:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v5}, Lcom/android/internal/telephony/IccPcscProvider;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "pscsPowerup atrLength:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/android/internal/telephony/IccPcscProvider;->_atr:[B

    .line 103
    invoke-static {v5, v10, v1, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 104
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/IccPcscProvider;->isInitiated:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 108
    .end local v5    # "response":[B
    goto :goto_0

    .line 105
    :catch_0
    move-exception v1

    .line 106
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 107
    iput-boolean v6, p0, Lcom/android/internal/telephony/IccPcscProvider;->isInitiated:Z

    .line 112
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    nop

    .line 113
    :try_start_2
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V

    .line 114
    nop

    .line 115
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 118
    goto :goto_1

    .line 116
    :catch_1
    move-exception v1

    .line 117
    .local v1, "ex":Ljava/io/IOException;
    const-string v5, "close fail!!!"

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    .end local v1    # "ex":Ljava/io/IOException;
    :goto_1
    return-void

    .line 91
    :catch_2
    move-exception v2

    .line 92
    .local v2, "e":Ljava/io/IOException;
    const-string v5, "IOException - connect"

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    return-void
.end method

.method private blacklist transmitToRIL(I[B[B)I
    .locals 8
    .param p1, "channel"    # I
    .param p2, "command"    # [B
    .param p3, "response"    # [B

    .line 220
    const/4 v0, 0x0

    .line 221
    .local v0, "val":I
    const-string v1, "RIL_IccPcscProvider"

    const-string/jumbo v2, "transmitToRIL"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 224
    .local v2, "bos":Ljava/io/ByteArrayOutputStream;
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 227
    .local v3, "dos":Ljava/io/DataOutputStream;
    const/4 v4, -0x1

    :try_start_0
    array-length v5, p2

    add-int/lit8 v5, v5, 0x4

    .line 228
    .local v5, "fileSize":I
    const/16 v6, 0x16

    invoke-virtual {v3, v6}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 229
    const/16 v6, 0x27

    invoke-virtual {v3, v6}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 230
    invoke-virtual {v3, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 232
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    array-length v7, p2

    if-ge v6, v7, :cond_0

    .line 233
    aget-byte v7, p2, v6

    invoke-virtual {v3, v7}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 232
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 238
    .end local v5    # "fileSize":I
    .end local v6    # "i":I
    :cond_0
    nop

    .line 241
    :try_start_1
    invoke-direct {p0}, Lcom/android/internal/telephony/IccPcscProvider;->getTelephonyService()Lcom/android/internal/telephony/ISemTelephony;

    move-result-object v1

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    const/4 v6, 0x6

    iget v7, p0, Lcom/android/internal/telephony/IccPcscProvider;->mPhoneId:I

    invoke-interface {v1, v5, p3, v6, v7}, Lcom/android/internal/telephony/ISemTelephony;->sendRequestToRIL([B[BII)I

    move-result v1

    move v0, v1

    .line 242
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    .line 243
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 244
    const/4 v1, 0x0

    .line 245
    .end local v3    # "dos":Ljava/io/DataOutputStream;
    .local v1, "dos":Ljava/io/DataOutputStream;
    const/4 v2, 0x0

    .line 246
    return v0

    .line 247
    .end local v1    # "dos":Ljava/io/DataOutputStream;
    .restart local v3    # "dos":Ljava/io/DataOutputStream;
    :catch_0
    move-exception v1

    .line 249
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    .line 250
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 252
    goto :goto_1

    .line 251
    :catch_1
    move-exception v5

    .line 253
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 254
    return v4

    .line 235
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v5

    .line 236
    .local v5, "e":Ljava/io/IOException;
    const-string v6, "IOException - transmit"

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    return v4
.end method


# virtual methods
.method public blacklist connect()I
    .locals 3

    .line 141
    const/4 v0, -0x1

    .line 143
    .local v0, "logiCh":I
    iget-boolean v1, p0, Lcom/android/internal/telephony/IccPcscProvider;->isInitiated:Z

    if-nez v1, :cond_0

    .line 144
    invoke-direct {p0}, Lcom/android/internal/telephony/IccPcscProvider;->pscsPowerup()V

    .line 145
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/IccPcscProvider;->isInitiated:Z

    .line 147
    :cond_0
    const-string v1, "RIL_IccPcscProvider"

    const-string v2, "connect"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    invoke-direct {p0}, Lcom/android/internal/telephony/IccPcscProvider;->connectToRIL()I

    move-result v1

    return v1
.end method

.method public blacklist disconnect(I)I
    .locals 2
    .param p1, "channel"    # I

    .line 267
    const-string v0, "RIL_IccPcscProvider"

    const-string v1, "disconnect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccPcscProvider;->disconnectFromRIL(I)I

    move-result v0

    return v0
.end method

.method protected whitelist test-api finalize()V
    .locals 0

    .line 122
    invoke-direct {p0}, Lcom/android/internal/telephony/IccPcscProvider;->pcscPowerdown()V

    .line 123
    return-void
.end method

.method public blacklist getATR([B)I
    .locals 3
    .param p1, "atr"    # [B

    .line 321
    iget-object v0, p0, Lcom/android/internal/telephony/IccPcscProvider;->_atr:[B

    array-length v1, v0

    .line 322
    .local v1, "size":I
    if-eqz p1, :cond_1

    array-length v2, p1

    if-ge v2, v1, :cond_0

    goto :goto_0

    .line 328
    :cond_0
    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 329
    return v1

    .line 323
    :cond_1
    :goto_0
    const-string v0, "RIL_IccPcscProvider"

    const-string v2, "getATR SMARTCARD_IO_ERROR_ATR_BUFFER"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    const/4 v0, -0x6

    return v0
.end method

.method public blacklist transmit(I[B[B)I
    .locals 1
    .param p1, "channel"    # I
    .param p2, "command"    # [B
    .param p3, "response"    # [B

    .line 208
    if-nez p2, :cond_0

    .line 209
    const/4 v0, -0x4

    return v0

    .line 211
    :cond_0
    if-nez p3, :cond_1

    .line 212
    const/4 v0, -0x5

    return v0

    .line 215
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/IccPcscProvider;->transmitToRIL(I[B[B)I

    move-result v0

    return v0
.end method
