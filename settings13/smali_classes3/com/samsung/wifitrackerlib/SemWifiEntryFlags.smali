.class public Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;
.super Ljava/lang/Object;
.source "SemWifiEntryFlags.java"


# static fields
.field private static isTencentSecuritySupported:I = -0x1

.field private static isWapiSupported:I = -0x1

.field private static isWpa3OweSupported:I = -0x1

.field private static isWpa3SaeH2eSupported:I = -0x1

.field private static isWpa3SaeSupported:I = -0x1

.field private static isWpa3SuiteBSupported:I = -0x1

.field private static sTencentManager:Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;

.field private static sVendor:Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;


# instance fields
.field private has6EStandard:Z

.field public hasSamsungScore:Z

.field private hasVHTVSICapabilities:Z

.field private isCaptivePortal:Z

.field private isCarrierNetwork:Z

.field private isH2ENetwork:Z

.field private isLocked:Z

.field private isOpenRoamingNetwork:Z

.field private isSamsungMobileHotspot:Z

.field public isTencentRiskAp:Z

.field private maybeMobileHotspot:Z

.field public networkScoringUiEnabled:Z

.field public networkType:I

.field private passpointConfiguration:Landroid/net/wifi/hotspot2/PasspointConfiguration;

.field public prevSummaryString:Ljava/lang/String;

.field public final qoSScoredNetworkCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/wifitrackerlib/WifiScoredNetwork;",
            ">;"
        }
    .end annotation
.end field

.field private semConfig:Lcom/samsung/android/wifi/SemWifiConfiguration;

.field private staCount:I

.field private wifiStandard:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 58
    iput v0, p0, Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;->staCount:I

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;->qoSScoredNetworkCache:Ljava/util/Map;

    .line 69
    invoke-static {}, Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;->getOpBranding()Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

    return-void
.end method

.method public static getOpBranding()Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;
    .locals 2

    .line 278
    sget-object v0, Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;->sVendor:Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

    if-nez v0, :cond_0

    .line 279
    invoke-static {}, Lcom/samsung/android/wifi/SemOpBrandingLoader;->getInstance()Lcom/samsung/android/wifi/SemOpBrandingLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemOpBrandingLoader;->getOpBranding()Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

    move-result-object v0

    sput-object v0, Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;->sVendor:Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getOpBranding: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;->sVendor:Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

    invoke-virtual {v1}, Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemWifiEntryFlags"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    :cond_0
    sget-object v0, Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;->sVendor:Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

    return-object v0
.end method

.method public static getTencentManager()Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;
    .locals 1

    .line 254
    sget-object v0, Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;->sTencentManager:Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;

    if-nez v0, :cond_0

    .line 255
    invoke-static {}, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->getInstance()Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;

    move-result-object v0

    sput-object v0, Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;->sTencentManager:Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;

    .line 257
    :cond_0
    sget-object v0, Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;->sTencentManager:Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;

    return-object v0
.end method

.method public static isEnhancedOpenSupported(Landroid/net/wifi/WifiManager;)Z
    .locals 2

    .line 217
    sget v0, Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;->isWpa3OweSupported:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isEnhancedOpenSupported()Z

    move-result p0

    sput p0, Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;->isWpa3OweSupported:I

    .line 220
    :cond_0
    sget p0, Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;->isWpa3OweSupported:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isTencentSecuritySupported()Z
    .locals 2

    .line 240
    sget v0, Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;->isTencentSecuritySupported:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 241
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_ConfigSecureSvcIntegration"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TencentSecurityWiFi"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 242
    sput v0, Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;->isTencentSecuritySupported:I

    .line 244
    :cond_0
    sget v0, Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;->isTencentSecuritySupported:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isWapiSupported(Landroid/net/wifi/WifiManager;)Z
    .locals 2

    .line 233
    sget v0, Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;->isWapiSupported:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isWapiSupported()Z

    move-result p0

    sput p0, Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;->isWapiSupported:I

    .line 236
    :cond_0
    sget p0, Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;->isWapiSupported:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isWpa3SaeH2eSupported(Landroid/net/wifi/WifiManager;)Z
    .locals 2

    .line 209
    sget v0, Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;->isWpa3SaeH2eSupported:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isWpa3SaeH2eSupported()Z

    move-result p0

    sput p0, Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;->isWpa3SaeH2eSupported:I

    .line 212
    :cond_0
    sget p0, Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;->isWpa3SaeH2eSupported:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isWpa3SaeSupported(Landroid/net/wifi/WifiManager;)Z
    .locals 2

    .line 202
    sget v0, Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;->isWpa3SaeSupported:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isWpa3SaeSupported()Z

    move-result p0

    sput p0, Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;->isWpa3SaeSupported:I

    .line 205
    :cond_0
    sget p0, Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;->isWpa3SaeSupported:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isWpa3SuiteBSupported(Landroid/net/wifi/WifiManager;)Z
    .locals 2

    .line 225
    sget v0, Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;->isWpa3SuiteBSupported:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isWpa3SuiteBSupported()Z

    move-result p0

    sput p0, Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;->isWpa3SuiteBSupported:I

    .line 228
    :cond_0
    sget p0, Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;->isWpa3SuiteBSupported:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static resetSupportedFlags()V
    .locals 1

    const/4 v0, -0x1

    .line 261
    sput v0, Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;->isWpa3SaeSupported:I

    .line 262
    sput v0, Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;->isWpa3SaeH2eSupported:I

    .line 263
    sput v0, Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;->isWpa3OweSupported:I

    .line 264
    sput v0, Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;->isWpa3SuiteBSupported:I

    .line 265
    sput v0, Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;->isWapiSupported:I

    .line 266
    sput v0, Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;->isTencentSecuritySupported:I

    const/4 v0, 0x0

    .line 267
    sput-object v0, Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;->sVendor:Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

    return-void
.end method


# virtual methods
.method public getPrevSummaryString()Ljava/lang/String;
    .locals 0

    .line 178
    iget-object p0, p0, Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;->prevSummaryString:Ljava/lang/String;

    return-object p0
.end method

.method public getSemDisableReason()I
    .locals 0

    .line 173
    iget-object p0, p0, Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;->semConfig:Lcom/samsung/android/wifi/SemWifiConfiguration;

    if-eqz p0, :cond_0

    iget p0, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->networkDisableReason:I

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getStaCount()I
    .locals 0

    .line 165
    iget p0, p0, Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;->staCount:I

    return p0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 2

    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 287
    iget v1, p0, Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;->wifiStandard:I

    if-eqz v1, :cond_1

    .line 288
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 289
    iget-boolean v1, p0, Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;->has6EStandard:Z

    if-eqz v1, :cond_0

    const-string v1, "E"

    .line 290
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v1, "G"

    .line 292
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    :cond_1
    iget v1, p0, Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;->staCount:I

    if-ltz v1, :cond_2

    const-string v1, " STAs:"

    .line 296
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    iget v1, p0, Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;->staCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 300
    :cond_2
    iget-object v1, p0, Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;->passpointConfiguration:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    if-eqz v1, :cond_3

    const-string v1, " hs20"

    .line 301
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    :cond_3
    iget-boolean v1, p0, Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;->hasVHTVSICapabilities:Z

    if-eqz v1, :cond_4

    const-string v1, " giga"

    .line 304
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    :cond_4
    iget-boolean v1, p0, Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;->isSamsungMobileHotspot:Z

    if-eqz v1, :cond_5

    const-string v1, " sec-mhs"

    .line 307
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 308
    :cond_5
    iget-boolean v1, p0, Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;->maybeMobileHotspot:Z

    if-eqz v1, :cond_6

    const-string v1, " mhs"

    .line 309
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    :cond_6
    :goto_0
    iget-boolean v1, p0, Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;->isCarrierNetwork:Z

    if-eqz v1, :cond_7

    const-string v1, " carrier"

    .line 312
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    :cond_7
    iget-boolean v1, p0, Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;->isOpenRoamingNetwork:Z

    if-eqz v1, :cond_8

    const-string v1, " oauth"

    .line 315
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    :cond_8
    iget-boolean p0, p0, Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;->isTencentRiskAp:Z

    if-eqz p0, :cond_9

    const-string p0, " risk"

    .line 319
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    :cond_9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getWifiStandard()I
    .locals 0

    .line 149
    iget p0, p0, Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;->wifiStandard:I

    return p0
.end method

.method public has6EStandard()Z
    .locals 0

    .line 157
    iget-boolean p0, p0, Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;->has6EStandard:Z

    return p0
.end method

.method public hasSamsungScore()Z
    .locals 0

    .line 186
    iget-boolean p0, p0, Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;->hasSamsungScore:Z

    return p0
.end method

.method public hasVHTVSICapabilities()Z
    .locals 0

    .line 141
    iget-boolean p0, p0, Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;->hasVHTVSICapabilities:Z

    return p0
.end method

.method public isCaptivePortal()Z
    .locals 0

    .line 85
    iget-boolean p0, p0, Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;->isCaptivePortal:Z

    return p0
.end method

.method public isCarrierNetwork()Z
    .locals 0

    .line 93
    iget-boolean p0, p0, Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;->isCarrierNetwork:Z

    return p0
.end method

.method public isH2ENetwork()Z
    .locals 0

    .line 101
    iget-boolean p0, p0, Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;->isH2ENetwork:Z

    return p0
.end method

.method public isLocked()Z
    .locals 0

    .line 109
    iget-boolean p0, p0, Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;->isLocked:Z

    return p0
.end method

.method public isOpenRoamingNetwork()Z
    .locals 0

    .line 117
    iget-boolean p0, p0, Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;->isOpenRoamingNetwork:Z

    return p0
.end method

.method public isSamsungMobileHotspot()Z
    .locals 0

    .line 125
    iget-boolean p0, p0, Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;->isSamsungMobileHotspot:Z

    return p0
.end method

.method public maybeMobileHotspot()Z
    .locals 0

    .line 133
    iget-boolean p0, p0, Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;->maybeMobileHotspot:Z

    return p0
.end method

.method public removeAllCapabilities()V
    .locals 1

    const/4 v0, 0x0

    .line 271
    iput-boolean v0, p0, Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;->hasVHTVSICapabilities:Z

    .line 272
    iput v0, p0, Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;->wifiStandard:I

    .line 273
    iput-boolean v0, p0, Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;->has6EStandard:Z

    const/4 v0, -0x1

    .line 274
    iput v0, p0, Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;->staCount:I

    return-void
.end method

.method public setCaptivePortal(Z)V
    .locals 0

    .line 89
    iput-boolean p1, p0, Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;->isCaptivePortal:Z

    return-void
.end method

.method public setCarrierNetwork(Z)V
    .locals 0

    .line 97
    iput-boolean p1, p0, Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;->isCarrierNetwork:Z

    return-void
.end method

.method public setH2ENetwork(Z)V
    .locals 0

    .line 105
    iput-boolean p1, p0, Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;->isH2ENetwork:Z

    return-void
.end method

.method public setHas6EStandard(Z)V
    .locals 0

    .line 161
    iput-boolean p1, p0, Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;->has6EStandard:Z

    return-void
.end method

.method public setHasVHTVSICapabilities(Z)V
    .locals 0

    .line 145
    iput-boolean p1, p0, Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;->hasVHTVSICapabilities:Z

    return-void
.end method

.method public setLocked(Z)V
    .locals 0

    .line 113
    iput-boolean p1, p0, Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;->isLocked:Z

    return-void
.end method

.method public setMaybeMobileHotspot(Z)V
    .locals 0

    .line 137
    iput-boolean p1, p0, Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;->maybeMobileHotspot:Z

    return-void
.end method

.method public setOpenRoamingNetwork(Z)V
    .locals 0

    .line 121
    iput-boolean p1, p0, Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;->isOpenRoamingNetwork:Z

    return-void
.end method

.method public setPasspointConfiguration(Landroid/net/wifi/hotspot2/PasspointConfiguration;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;->passpointConfiguration:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    return-void
.end method

.method public setPrevSummaryString(Ljava/lang/String;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;->prevSummaryString:Ljava/lang/String;

    return-void
.end method

.method public setSamsungMobileHotspot(Z)V
    .locals 0

    .line 129
    iput-boolean p1, p0, Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;->isSamsungMobileHotspot:Z

    return-void
.end method

.method public setSemWifiConfiguration(Lcom/samsung/android/wifi/SemWifiConfiguration;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;->semConfig:Lcom/samsung/android/wifi/SemWifiConfiguration;

    return-void
.end method

.method public setStaCount(I)V
    .locals 0

    .line 169
    iput p1, p0, Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;->staCount:I

    return-void
.end method

.method public setWifiStandard(I)V
    .locals 0

    .line 153
    iput p1, p0, Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;->wifiStandard:I

    return-void
.end method
