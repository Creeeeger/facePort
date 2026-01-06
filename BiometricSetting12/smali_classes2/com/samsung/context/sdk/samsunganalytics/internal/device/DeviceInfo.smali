.class public Lcom/samsung/context/sdk/samsunganalytics/internal/device/DeviceInfo;
.super Ljava/lang/Object;
.source "DeviceInfo.java"


# instance fields
.field private androidVersion:Ljava/lang/String;

.field private appVersionName:Ljava/lang/String;

.field private brand:Ljava/lang/String;

.field private country:Ljava/lang/String;

.field private deviceModel:Ljava/lang/String;

.field private firmwareVersion:Ljava/lang/String;

.field private language:Ljava/lang/String;

.field private mcc:Ljava/lang/String;

.field private mnc:Ljava/lang/String;

.field private timeZoneOffset:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/device/DeviceInfo;->country:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/device/DeviceInfo;->language:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/device/DeviceInfo;->androidVersion:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/device/DeviceInfo;->brand:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/device/DeviceInfo;->deviceModel:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/device/DeviceInfo;->appVersionName:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/device/DeviceInfo;->mcc:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/device/DeviceInfo;->mnc:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/device/DeviceInfo;->timeZoneOffset:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/device/DeviceInfo;->firmwareVersion:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getDisplayCountry()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/device/DeviceInfo;->country:Ljava/lang/String;

    const-string v1, "phone"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x3

    if-lt v4, v5, :cond_0

    invoke-virtual {v3, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/device/DeviceInfo;->mcc:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/device/DeviceInfo;->mnc:Ljava/lang/String;

    :cond_0
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/device/DeviceInfo;->language:Ljava/lang/String;

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v3, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/device/DeviceInfo;->androidVersion:Ljava/lang/String;

    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    iput-object v3, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/device/DeviceInfo;->brand:Ljava/lang/String;

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v3, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/device/DeviceInfo;->deviceModel:Ljava/lang/String;

    sget-object v3, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    iput-object v3, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/device/DeviceInfo;->firmwareVersion:Ljava/lang/String;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/device/DeviceInfo;->timeZoneOffset:Ljava/lang/String;

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/device/DeviceInfo;->appVersionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->LogException(Ljava/lang/Class;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getAndroidVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/device/DeviceInfo;->androidVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getAppVersionName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/device/DeviceInfo;->appVersionName:Ljava/lang/String;

    return-object v0
.end method

.method public getBrand()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/device/DeviceInfo;->brand:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/device/DeviceInfo;->country:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceModel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/device/DeviceInfo;->deviceModel:Ljava/lang/String;

    return-object v0
.end method

.method public getFirmwareVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/device/DeviceInfo;->firmwareVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/device/DeviceInfo;->language:Ljava/lang/String;

    return-object v0
.end method

.method public getMcc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/device/DeviceInfo;->mcc:Ljava/lang/String;

    return-object v0
.end method

.method public getMnc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/device/DeviceInfo;->mnc:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeZoneOffset()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/device/DeviceInfo;->timeZoneOffset:Ljava/lang/String;

    return-object v0
.end method
