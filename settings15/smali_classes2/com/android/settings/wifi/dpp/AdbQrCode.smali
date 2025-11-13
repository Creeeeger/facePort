.class public final Lcom/android/settings/wifi/dpp/AdbQrCode;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mAdbConfig:Lcom/android/settings/wifi/dpp/WifiNetworkConfig;

.field public final mPublicKey:Ljava/lang/String;

.field public final mScheme:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "DPP:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "WIFI"

    const-string v3, "Invalid format"

    if-eqz v1, :cond_1

    const-string v1, "DPP"

    iput-object v1, p0, Lcom/android/settings/wifi/dpp/AdbQrCode;->mScheme:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/android/settings/wifi/dpp/AdbQrCode;->getKeyValueList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    const-string v0, "K:"

    invoke-static {v0, p1}, Lcom/android/settings/wifi/dpp/AdbQrCode;->getValueOrNull(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iput-object v0, p0, Lcom/android/settings/wifi/dpp/AdbQrCode;->mPublicKey:Ljava/lang/String;

    const-string v0, "I:"

    invoke-static {v0, p1}, Lcom/android/settings/wifi/dpp/AdbQrCode;->getValueOrNull(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const-string v0, "WIFI:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    iput-object v2, p0, Lcom/android/settings/wifi/dpp/AdbQrCode;->mScheme:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/android/settings/wifi/dpp/AdbQrCode;->getKeyValueList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    const-string v0, "T:"

    invoke-static {v0, p1}, Lcom/android/settings/wifi/dpp/AdbQrCode;->getValueOrNull(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "S:"

    invoke-static {v1, p1}, Lcom/android/settings/wifi/dpp/AdbQrCode;->getValueOrNull(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "P:"

    invoke-static {v4, p1}, Lcom/android/settings/wifi/dpp/AdbQrCode;->getValueOrNull(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "H:"

    invoke-static {v5, p1}, Lcom/android/settings/wifi/dpp/AdbQrCode;->getValueOrNull(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    const-string v5, "true"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/dpp/AdbQrCode;->removeBackSlash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/dpp/AdbQrCode;->removeBackSlash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/dpp/AdbQrCode;->removeBackSlash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v10, -0x1

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->getValidConfigOrNull(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZ)Lcom/android/settings/wifi/dpp/WifiNetworkConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/dpp/AdbQrCode;->mAdbConfig:Lcom/android/settings/wifi/dpp/WifiNetworkConfig;

    if-eqz p1, :cond_7

    :goto_0
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/AdbQrCode;->mScheme:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/android/settings/wifi/dpp/AdbQrCode;->mAdbConfig:Lcom/android/settings/wifi/dpp/WifiNetworkConfig;

    if-nez p1, :cond_2

    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;

    invoke-direct {v0, p1}, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;-><init>(Lcom/android/settings/wifi/dpp/WifiNetworkConfig;)V

    move-object p1, v0

    :goto_1
    iput-object p1, p0, Lcom/android/settings/wifi/dpp/AdbQrCode;->mAdbConfig:Lcom/android/settings/wifi/dpp/WifiNetworkConfig;

    iget-object p1, p1, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->mSecurity:Ljava/lang/String;

    const-string v0, "ADB"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/android/settings/wifi/dpp/AdbQrCode;->mAdbConfig:Lcom/android/settings/wifi/dpp/WifiNetworkConfig;

    iget-object p1, p1, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->mSsid:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p0, p0, Lcom/android/settings/wifi/dpp/AdbQrCode;->mAdbConfig:Lcom/android/settings/wifi/dpp/WifiNetworkConfig;

    iget-object p0, p0, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->mPreSharedKey:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_3

    return-void

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Empty password"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Empty service name"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid security type"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "DPP format not supported for ADB QR code"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid scheme"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Empty QR code"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getKeyValueList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "(?<!\\\\)"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ";"

    invoke-static {v0}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static getValueOrNull(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 2

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->stripLeading()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getPublicKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/wifi/dpp/AdbQrCode;->mPublicKey:Ljava/lang/String;

    return-object p0
.end method

.method public removeBackSlash(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_3

    aget-char v4, p1, v2

    const/16 v5, 0x5c

    if-eq v4, v5, :cond_1

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    move v3, v1

    goto :goto_2

    :cond_1
    if-eqz v3, :cond_2

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const/4 v3, 0x1

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
