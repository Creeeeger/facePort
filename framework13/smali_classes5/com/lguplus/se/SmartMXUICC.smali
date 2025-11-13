.class public Lcom/lguplus/se/SmartMXUICC;
.super Ljava/lang/Object;
.source "SmartMXUICC.java"


# static fields
.field static final blacklist DBG:Z = true

.field public static final blacklist EXTRA_ID:Ljava/lang/String; = "android.nfc.extra.ID"

.field public static final blacklist RESPONSE_MAX_SIZE:I = 0x106

.field public static final blacklist SMARTCARD_IO_ERROR_ATR_BUFFER:I = -0x6

.field public static final blacklist SMARTCARD_IO_ERROR_CARD_NOT_EXIST:I = -0x2

.field public static final blacklist SMARTCARD_IO_ERROR_OPEN_CHANNEL:I = -0x1

.field public static final blacklist SMARTCARD_IO_ERROR_RESPONSE_BUFFER:I = -0x5

.field public static final blacklist SMARTCARD_IO_ERROR_TRANSMIT_BUFFER:I = -0x4

.field public static final blacklist SMARTCARD_IO_INVALID_CHANNEL:I = -0x3

.field public static final blacklist SMARTCARD_IO_SUCCESS:I = 0x0

.field public static final blacklist SMART_MX_ID:Ljava/lang/String; = "android.nfc.smart_mx.ID"

.field public static final blacklist UICC_ID:Ljava/lang/String; = "android.nfc.uicc.ID"

.field private static blacklist handleId:[I = null

.field static final blacklist mLogTag:Ljava/lang/String; = "SmartMXUICC"

.field private static blacklist pcscInstance:Lcom/android/internal/telephony/IccPcscProvider;

.field static blacklist random:Ljava/util/Random;

.field private static blacklist sInstance:Lcom/lguplus/se/SmartMXUICC;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 35
    const/4 v0, 0x0

    sput-object v0, Lcom/lguplus/se/SmartMXUICC;->sInstance:Lcom/lguplus/se/SmartMXUICC;

    .line 36
    sput-object v0, Lcom/lguplus/se/SmartMXUICC;->pcscInstance:Lcom/android/internal/telephony/IccPcscProvider;

    .line 38
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/lguplus/se/SmartMXUICC;->handleId:[I

    .line 41
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/lguplus/se/SmartMXUICC;->random:Ljava/util/Random;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private constructor blacklist <init>()V
    .locals 4

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const-string v0, "SmartMXUICC"

    invoke-static {v0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    const/4 v1, 0x0

    .line 58
    .local v1, "phoneId":I
    new-instance v2, Lcom/android/internal/telephony/IccPcscProvider;

    invoke-direct {v2, v1}, Lcom/android/internal/telephony/IccPcscProvider;-><init>(I)V

    sput-object v2, Lcom/lguplus/se/SmartMXUICC;->pcscInstance:Lcom/android/internal/telephony/IccPcscProvider;

    .line 60
    nop

    .line 63
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SmartMXUICC pcscInstance retrun : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/lguplus/se/SmartMXUICC;->pcscInstance:Lcom/android/internal/telephony/IccPcscProvider;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    return-void
.end method

.method public static greylist createSmartMXUICC()Lcom/lguplus/se/SmartMXUICC;
    .locals 3

    .line 45
    const-class v0, Lcom/lguplus/se/SmartMXUICC;

    monitor-enter v0

    .line 46
    :try_start_0
    const-string v1, "SmartMXUICC"

    const-string v2, "Making an Instance..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    sget-object v1, Lcom/lguplus/se/SmartMXUICC;->sInstance:Lcom/lguplus/se/SmartMXUICC;

    if-nez v1, :cond_0

    .line 49
    new-instance v1, Lcom/lguplus/se/SmartMXUICC;

    invoke-direct {v1}, Lcom/lguplus/se/SmartMXUICC;-><init>()V

    sput-object v1, Lcom/lguplus/se/SmartMXUICC;->sInstance:Lcom/lguplus/se/SmartMXUICC;

    .line 50
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    sget-object v0, Lcom/lguplus/se/SmartMXUICC;->sInstance:Lcom/lguplus/se/SmartMXUICC;

    return-object v0

    .line 50
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private blacklist openLogicalChannel()I
    .locals 4

    .line 69
    sget-object v0, Lcom/lguplus/se/SmartMXUICC;->pcscInstance:Lcom/android/internal/telephony/IccPcscProvider;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccPcscProvider;->connect()I

    move-result v0

    .line 72
    .local v0, "channel":I
    const-string v1, "SmartMXUICC"

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    .line 73
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "openLogicalChannel channel["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    return v0

    .line 77
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "openLogicalChannel Failed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    return v0
.end method


# virtual methods
.method public greylist closeSecureElementConnection(I)V
    .locals 3
    .param p1, "ch"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 134
    move v0, p1

    .line 136
    .local v0, "channel":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "closeSecureElementConnection channel : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SmartMXUICC"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 140
    const-string v1, "closeSecureElementConnection channel is wrong"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    return-void

    .line 144
    :cond_0
    sget-object v1, Lcom/lguplus/se/SmartMXUICC;->pcscInstance:Lcom/android/internal/telephony/IccPcscProvider;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/IccPcscProvider;->disconnect(I)I

    .line 146
    const-string v1, "closeSecureElementConnection done!"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    return-void
.end method

.method public greylist exchangeAPDU(I[B)[B
    .locals 7
    .param p1, "ch"    # I
    .param p2, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    const/4 v0, 0x0

    .line 107
    .local v0, "resSize":I
    move v1, p1

    .line 108
    .local v1, "channel":I
    const/16 v2, 0x106

    new-array v2, v2, [B

    .line 109
    .local v2, "apdu_res":[B
    const/4 v3, 0x0

    .line 111
    .local v3, "response":[B
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exchangeAPDU channel : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "SmartMXUICC"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    const/4 v4, 0x0

    aget-byte v6, p2, v4

    or-int/2addr v6, v1

    int-to-byte v6, v6

    aput-byte v6, p2, v4

    .line 115
    sget-object v6, Lcom/lguplus/se/SmartMXUICC;->pcscInstance:Lcom/android/internal/telephony/IccPcscProvider;

    invoke-virtual {v6, v1, p2, v2}, Lcom/android/internal/telephony/IccPcscProvider;->transmit(I[B[B)I

    move-result v0

    .line 117
    if-lez v0, :cond_0

    .line 118
    new-array v3, v0, [B

    .line 119
    invoke-static {v2, v4, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 123
    :cond_0
    if-eqz v3, :cond_1

    .line 129
    return-object v3

    .line 125
    :cond_1
    const-string v4, "exchangeAPDU return null"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Response is NULL"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public greylist getATR()[B
    .locals 6

    .line 163
    const/4 v0, 0x0

    .line 164
    .local v0, "resSize":I
    const/16 v1, 0x106

    new-array v1, v1, [B

    .line 165
    .local v1, "apdu_res":[B
    const/4 v2, 0x0

    .line 167
    .local v2, "response":[B
    :try_start_0
    sget-object v3, Lcom/lguplus/se/SmartMXUICC;->pcscInstance:Lcom/android/internal/telephony/IccPcscProvider;

    invoke-virtual {v3, v1}, Lcom/android/internal/telephony/IccPcscProvider;->getATR([B)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v3

    .line 172
    nop

    .line 174
    if-lez v0, :cond_0

    .line 175
    new-array v2, v0, [B

    .line 176
    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 179
    :cond_0
    return-object v2

    .line 169
    :catch_0
    move-exception v3

    .line 170
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "SmartMXUICC"

    const-string v5, "getATR Errors"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    const/4 v4, 0x0

    return-object v4
.end method

.method public greylist getSecureElementTechList(I)[I
    .locals 1
    .param p1, "ch"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 153
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist getSecureElementUid(I)[B
    .locals 1
    .param p1, "ch"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 158
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist isSmartMX()Z
    .locals 1

    .line 185
    const/4 v0, 0x0

    return v0
.end method

.method public greylist openSecureElementConnection(Ljava/lang/String;)I
    .locals 3
    .param p1, "seType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    const/4 v0, 0x0

    .line 85
    .local v0, "retVal":I
    if-eqz p1, :cond_3

    .line 88
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 89
    const/4 v0, -0x2

    goto :goto_0

    .line 90
    :cond_0
    const-string v1, "android.nfc.uicc.ID"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 91
    invoke-direct {p0}, Lcom/lguplus/se/SmartMXUICC;->openLogicalChannel()I

    move-result v0

    goto :goto_0

    .line 93
    :cond_1
    const/4 v0, -0x1

    .line 95
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "openSecureElementConnection, retVal:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SmartMXUICC"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 101
    return v0

    .line 99
    :cond_2
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Fail to open channel"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 86
    :cond_3
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "seType must not be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
