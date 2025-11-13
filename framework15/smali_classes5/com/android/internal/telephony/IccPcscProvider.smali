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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/IccPcscProvider;->isInitiated:Z

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/IccPcscProvider;->mPhoneId:I

    invoke-direct {p0}, Lcom/android/internal/telephony/IccPcscProvider;->pscsPowerup()V

    return-void
.end method

.method public constructor blacklist <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/IccPcscProvider;->isInitiated:Z

    iput p1, p0, Lcom/android/internal/telephony/IccPcscProvider;->mPhoneId:I

    invoke-direct {p0}, Lcom/android/internal/telephony/IccPcscProvider;->pscsPowerup()V

    return-void
.end method

.method private static blacklist bytesToHexString([B)Ljava/lang/String;
    .locals 5

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    aget-byte v2, p0, v1

    shr-int/lit8 v2, v2, 0x4

    and-int/lit8 v2, v2, 0xf

    const-string v3, "0123456789abcdef"

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-byte v4, p0, v1

    and-int/lit8 v2, v4, 0xf

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private blacklist connectToRIL()I
    .locals 10

    const-string v0, "connectToRIL"

    const-string v1, "RIL_IccPcscProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 v4, 0x9

    const/16 v5, 0x16

    const/4 v6, -0x1

    :try_start_0
    invoke-virtual {v3, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v5, 0x27

    invoke-virtual {v3, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v7, 0x70

    invoke-virtual {v3, v7}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {v3, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {v3, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    nop

    :try_start_1
    new-array v4, v5, [B

    invoke-direct {p0}, Lcom/android/internal/telephony/IccPcscProvider;->getTelephonyService()Lcom/android/internal/telephony/ISemTelephony;

    move-result-object v5

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    iget v8, p0, Lcom/android/internal/telephony/IccPcscProvider;->mPhoneId:I

    const/4 v9, 0x4

    invoke-interface {v5, v7, v4, v9, v8}, Lcom/android/internal/telephony/ISemTelephony;->sendRequestToRIL([B[BII)I

    move-result v5

    move v0, v5

    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v1, 0x0

    const/4 v2, 0x0

    return v0

    :catch_0
    move-exception v4

    const-string v5, "Exception - connect"

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_2
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    :goto_0
    return v6

    :catch_2
    move-exception v4

    const-string v5, "IOException - connect"

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v6
.end method

.method private blacklist disconnectFromRIL(I)I
    .locals 9

    const-string v0, "disconnectFromRIL"

    const-string v1, "RIL_IccPcscProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 v4, 0x8

    const/16 v5, 0x16

    const/4 v6, -0x1

    :try_start_0
    invoke-virtual {v3, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v5, 0x27

    invoke-virtual {v3, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v5, 0x70

    invoke-virtual {v3, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v5, 0x80

    invoke-virtual {v3, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {v3, p1}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    nop

    const/4 v1, 0x1

    :try_start_1
    new-array v1, v1, [B

    invoke-direct {p0}, Lcom/android/internal/telephony/IccPcscProvider;->getTelephonyService()Lcom/android/internal/telephony/ISemTelephony;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    iget v7, p0, Lcom/android/internal/telephony/IccPcscProvider;->mPhoneId:I

    const/4 v8, 0x5

    invoke-interface {v4, v5, v1, v8, v7}, Lcom/android/internal/telephony/ISemTelephony;->sendRequestToRIL([B[BII)I

    move-result v4

    move v0, v4

    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v3, 0x0

    const/4 v2, 0x0

    return v0

    :catch_0
    move-exception v1

    :try_start_2
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v4

    :goto_0
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return v6

    :catch_2
    move-exception v4

    const-string v5, "IO Exception - Disconnect"

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v6
.end method

.method private blacklist getTelephonyService()Lcom/android/internal/telephony/ISemTelephony;
    .locals 3

    const-string/jumbo v0, "isemtelephony"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ISemTelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISemTelephony;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "RIL_IccPcscProvider"

    const-string v2, "Unable to find ISemTelephony interface."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v0
.end method

.method private blacklist pcscPowerdown()V
    .locals 2

    const-string v0, "RIL_IccPcscProvider"

    const-string/jumbo v1, "pcscPowerdown"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist pscsPowerup()V
    .locals 11

    const/4 v0, 0x0

    const-string v1, "RIL_IccPcscProvider"

    const-string/jumbo v2, "pscsPowerup"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v4, Ljava/io/DataOutputStream;

    invoke-direct {v4, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v5, 0x4

    const/16 v6, 0x16

    :try_start_0
    invoke-virtual {v4, v6}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v6, 0x26

    invoke-virtual {v4, v6}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeShort(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    nop

    const/16 v5, 0x106

    const/4 v6, 0x0

    :try_start_1
    new-array v5, v5, [B

    invoke-direct {p0}, Lcom/android/internal/telephony/IccPcscProvider;->getTelephonyService()Lcom/android/internal/telephony/ISemTelephony;

    move-result-object v7

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    iget v9, p0, Lcom/android/internal/telephony/IccPcscProvider;->mPhoneId:I

    const/4 v10, 0x2

    invoke-interface {v7, v8, v5, v10, v9}, Lcom/android/internal/telephony/ISemTelephony;->sendRequestToRIL([B[BII)I

    aget-byte v7, v5, v6

    move v0, v7

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

    new-array v1, v0, [B

    iput-object v1, p0, Lcom/android/internal/telephony/IccPcscProvider;->_atr:[B

    iget-object v1, p0, Lcom/android/internal/telephony/IccPcscProvider;->_atr:[B

    invoke-static {v5, v10, v1, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/IccPcscProvider;->isInitiated:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    iput-boolean v6, p0, Lcom/android/internal/telephony/IccPcscProvider;->isInitiated:Z

    :goto_0
    nop

    :try_start_2
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V

    nop

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    const-string v5, "close fail!!!"

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    :catch_2
    move-exception v2

    const-string v5, "IOException - connect"

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist transmitToRIL(I[B[B)I
    .locals 8

    const/4 v0, 0x0

    const-string/jumbo v1, "transmitToRIL"

    const-string v2, "RIL_IccPcscProvider"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v4, -0x1

    :try_start_0
    array-length v5, p2

    add-int/lit8 v5, v5, 0x4

    const/16 v6, 0x16

    invoke-virtual {v3, v6}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v6, 0x27

    invoke-virtual {v3, v6}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {v3, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    const/4 v6, 0x0

    :goto_0
    array-length v7, p2

    if-ge v6, v7, :cond_0

    aget-byte v7, p2, v6

    invoke-virtual {v3, v7}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    nop

    :try_start_1
    invoke-direct {p0}, Lcom/android/internal/telephony/IccPcscProvider;->getTelephonyService()Lcom/android/internal/telephony/ISemTelephony;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    iget v6, p0, Lcom/android/internal/telephony/IccPcscProvider;->mPhoneId:I

    const/4 v7, 0x6

    invoke-interface {v2, v5, p3, v7, v6}, Lcom/android/internal/telephony/ISemTelephony;->sendRequestToRIL([B[BII)I

    move-result v2

    move v0, v2

    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v2, 0x0

    const/4 v1, 0x0

    return v0

    :catch_0
    move-exception v2

    :try_start_2
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v5

    :goto_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    return v4

    :catch_2
    move-exception v5

    const-string v6, "IOException - transmit"

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4
.end method


# virtual methods
.method public blacklist connect()I
    .locals 3

    const/4 v0, -0x1

    iget-boolean v1, p0, Lcom/android/internal/telephony/IccPcscProvider;->isInitiated:Z

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/internal/telephony/IccPcscProvider;->pscsPowerup()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/IccPcscProvider;->isInitiated:Z

    :cond_0
    const-string v1, "RIL_IccPcscProvider"

    const-string v2, "connect"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/internal/telephony/IccPcscProvider;->connectToRIL()I

    move-result v1

    return v1
.end method

.method public blacklist disconnect(I)I
    .locals 2

    const-string v0, "RIL_IccPcscProvider"

    const-string v1, "disconnect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccPcscProvider;->disconnectFromRIL(I)I

    move-result v0

    return v0
.end method

.method protected whitelist test-api finalize()V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/telephony/IccPcscProvider;->pcscPowerdown()V

    return-void
.end method

.method public blacklist getATR([B)I
    .locals 3

    iget-object v0, p0, Lcom/android/internal/telephony/IccPcscProvider;->_atr:[B

    array-length v0, v0

    if-eqz p1, :cond_1

    array-length v1, p1

    if-ge v1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/IccPcscProvider;->_atr:[B

    const/4 v2, 0x0

    invoke-static {v1, v2, p1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return v0

    :cond_1
    :goto_0
    const-string v1, "RIL_IccPcscProvider"

    const-string/jumbo v2, "getATR SMARTCARD_IO_ERROR_ATR_BUFFER"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x6

    return v1
.end method

.method public blacklist transmit(I[B[B)I
    .locals 1

    if-nez p2, :cond_0

    const/4 v0, -0x4

    return v0

    :cond_0
    if-nez p3, :cond_1

    const/4 v0, -0x5

    return v0

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/IccPcscProvider;->transmitToRIL(I[B[B)I

    move-result v0

    return v0
.end method
