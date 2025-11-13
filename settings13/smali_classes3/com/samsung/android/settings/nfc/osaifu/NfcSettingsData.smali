.class public Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;
.super Ljava/lang/Object;
.source "NfcSettingsData.java"


# static fields
.field private static final CSC_SALES_CODE:Ljava/lang/String;

.field protected static final DBG:Z

.field public static final IS_MYAU_SERVICE:Z

.field public static final MNO:Ljava/lang/String;

.field private static final OMC_SALES_CODE:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mRceciverContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "persist.omc.sales_code"

    .line 24
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;->OMC_SALES_CODE:Ljava/lang/String;

    const-string v1, "ro.csc.sales_code"

    .line 25
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;->CSC_SALES_CODE:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v2, ""

    .line 26
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move-object v0, v1

    :cond_1
    sput-object v0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;->MNO:Ljava/lang/String;

    const/4 v0, -0x1

    const-string v1, "ro.product.first_api_level"

    .line 94
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0x19

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lt v0, v1, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v3

    :goto_0
    sput-boolean v0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;->IS_MYAU_SERVICE:Z

    .line 97
    invoke-static {}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;->getDebugLevel()I

    move-result v0

    const/16 v1, 0x4f4c

    if-eq v0, v1, :cond_3

    goto :goto_1

    :cond_3
    move v2, v3

    :goto_1
    sput-boolean v2, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;->mRceciverContext:Landroid/content/Context;

    .line 22
    iput-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 100
    iput-object p1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;->mContext:Landroid/content/Context;

    .line 101
    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    return-void
.end method

.method public static getDebugLevel()I
    .locals 2

    const-string v0, "ro.boot.debug_level"

    const-string v1, "Unknown"

    .line 264
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 265
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x2

    .line 266
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/16 v0, 0x4f4c

    :goto_0
    return v0
.end method


# virtual methods
.method public checkSimMno()Z
    .locals 3

    .line 244
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->getSimOperator(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    .line 245
    sget-boolean v1, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;->DBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SIM MCC MNC : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[NfcSettingsData]"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p0, :cond_2

    .line 247
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-le v1, v2, :cond_2

    const/4 v1, 0x3

    .line 248
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 249
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    const/16 v1, 0x1b8

    if-eq v2, v1, :cond_1

    const/16 v1, 0x1b9

    if-ne v2, v1, :cond_2

    :cond_1
    const/16 v1, 0xa

    if-eq p0, v1, :cond_2

    const/16 v1, 0x14

    if-eq p0, v1, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    return v0
.end method

.method public checkUIMSupport()Z
    .locals 2

    const/4 p0, 0x0

    .line 229
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/efs/sec_efs/FeliCaLock/05"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 231
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "[NfcSettingsData]"

    const-string v1, "UIM does not have NFC lock function"

    .line 232
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 237
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return p0
.end method

.method public getCLFLockState()I
    .locals 5

    const-string p0, "[NfcSettingsData]"

    const/16 v0, 0x100

    const/4 v1, 0x0

    .line 109
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    const-string v3, "/efs/sec_efs/FeliCaLock/01"

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 110
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->read()I

    move-result v1
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 112
    :try_start_2
    sget-boolean v3, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;->DBG:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCLFLockState : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    if-ltz v1, :cond_2

    const/4 p0, 0x3

    if-ge p0, v1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 125
    :cond_2
    :goto_0
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_4

    :catch_0
    move-exception p0

    .line 128
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :catch_1
    move v0, v1

    goto :goto_1

    :catchall_0
    move-exception p0

    move-object v1, v2

    goto :goto_5

    :catch_2
    move-object v1, v2

    goto :goto_2

    :catch_3
    :goto_1
    move-object v1, v2

    goto :goto_3

    :catchall_1
    move-exception p0

    goto :goto_5

    :catch_4
    :goto_2
    :try_start_4
    const-string v2, "IOException!"

    .line 120
    invoke-static {p0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v1, :cond_3

    .line 125
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_4

    :catch_5
    :goto_3
    :try_start_6
    const-string v2, "FileNotFoundException!"

    .line 118
    invoke-static {p0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v1, :cond_3

    .line 125
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    :cond_3
    :goto_4
    return v0

    :goto_5
    if-eqz v1, :cond_4

    :try_start_8
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_6

    :catch_6
    move-exception v0

    .line 128
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 130
    :cond_4
    :goto_6
    throw p0
.end method

.method public getRWP2pStatus()I
    .locals 1

    .line 178
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez p0, :cond_0

    const-string p0, "[NfcSettingsData]"

    const-string v0, "mNfcAdapter is null!"

    .line 179
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0xb

    return p0

    .line 184
    :cond_0
    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->getAdapterRwP2pState()I

    move-result p0

    return p0
.end method

.method public getUIMLockState()I
    .locals 5

    const-string p0, "[NfcSettingsData]"

    const/16 v0, 0x100

    const/4 v1, 0x0

    .line 141
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    const-string v3, "/efs/sec_efs/FeliCaLock/03"

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 142
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->read()I

    move-result v1

    .line 144
    sget-boolean v3, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;->DBG:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getUIMLockState : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    const/16 p0, 0x10

    if-eq v1, p0, :cond_3

    const/16 p0, 0x20

    if-ne v1, p0, :cond_1

    goto :goto_0

    :cond_1
    if-ne v1, v0, :cond_2

    const/16 p0, 0x40

    if-eq v1, p0, :cond_4

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p0, 0x0

    move v0, p0

    .line 158
    :cond_4
    :goto_1
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :catch_0
    move-exception p0

    .line 161
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :catchall_0
    move-exception p0

    move-object v1, v2

    goto :goto_5

    :catch_1
    move-object v1, v2

    goto :goto_2

    :catch_2
    move-object v1, v2

    goto :goto_3

    :catchall_1
    move-exception p0

    goto :goto_5

    :catch_3
    :goto_2
    :try_start_3
    const-string v2, "IOException!"

    .line 154
    invoke-static {p0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_5

    .line 158
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_4

    :catch_4
    :goto_3
    :try_start_5
    const-string v2, "FileNotFoundException!"

    .line 152
    invoke-static {p0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v1, :cond_5

    .line 158
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    :cond_5
    :goto_4
    return v0

    :goto_5
    if-eqz v1, :cond_6

    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_6

    :catch_5
    move-exception v0

    .line 161
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 163
    :cond_6
    :goto_6
    throw p0
.end method

.method public setRWP2pStatus(Z)Z
    .locals 0

    .line 188
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez p0, :cond_0

    const-string p0, "[NfcSettingsData]"

    const-string p1, "mNfcAdapter is null!"

    .line 189
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 194
    :cond_0
    invoke-virtual {p0, p1}, Landroid/nfc/NfcAdapter;->setRwP2pMode(Z)Z

    move-result p0

    return p0
.end method
