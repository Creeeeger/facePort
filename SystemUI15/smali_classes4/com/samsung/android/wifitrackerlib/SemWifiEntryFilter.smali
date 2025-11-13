.class public final Lcom/samsung/android/wifitrackerlib/SemWifiEntryFilter;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final SETTING_DEVELOPER_RSSI:[I

.field public static final SETTING_DEVELOPER_RSSI_5G:[I


# instance fields
.field public final CSC_WIFI_SUPPORT_VZW_EAP_AKA:Z

.field public final DISPLAY_SSID_STATUS_BAR_INFO:Z

.field public final mContext:Landroid/content/Context;

.field public final mIsDeveloperOptionOn:Z

.field public mWeakSignalRssi:I

.field public mWeakSignalRssi5Ghz:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, -0x49

    const/16 v1, -0x4e

    const/16 v2, -0x7f

    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    sput-object v0, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFilter;->SETTING_DEVELOPER_RSSI:[I

    const/16 v0, -0x46

    const/16 v1, -0x4b

    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    sput-object v0, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFilter;->SETTING_DEVELOPER_RSSI_5G:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "ro.csc.sales_code"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v1, Lcom/samsung/android/wifitrackerlib/SemWifiUtils;->$r8$clinit:I

    const-string v1, ""

    :try_start_0
    const-string v2, "persist.omc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "ril.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    const-string v2, "VZW"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFilter;->CSC_WIFI_SUPPORT_VZW_EAP_AKA:Z

    const-string v1, "SWC"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFilter;->DISPLAY_SSID_STATUS_BAR_INFO:Z

    iput-object p1, p0, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFilter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;->isWifiDeveloperOptionOn(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFilter;->mIsDeveloperOptionOn:Z

    invoke-virtual {p0}, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFilter;->updateRssiFilter()V

    return-void
.end method


# virtual methods
.method public final updateRssiFilter()V
    .locals 3

    iget-boolean v0, p0, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFilter;->mIsDeveloperOptionOn:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFilter;->mContext:Landroid/content/Context;

    sget v1, Lcom/samsung/android/wifitrackerlib/SemWifiUtils;->$r8$clinit:I

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sec_wifi_developer_rssi_level"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    sget-object v1, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFilter;->SETTING_DEVELOPER_RSSI:[I

    aget v1, v1, v0

    iput v1, p0, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFilter;->mWeakSignalRssi:I

    sget-object v1, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFilter;->SETTING_DEVELOPER_RSSI_5G:[I

    aget v0, v1, v0

    iput v0, p0, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFilter;->mWeakSignalRssi5Ghz:I

    goto :goto_0

    :cond_0
    const/16 v0, -0x4e

    iput v0, p0, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFilter;->mWeakSignalRssi:I

    const/16 v0, -0x4b

    iput v0, p0, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFilter;->mWeakSignalRssi5Ghz:I

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mWeakSignalRssi: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFilter;->mWeakSignalRssi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mWeakSignalRssi5Ghz: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFilter;->mWeakSignalRssi5Ghz:I

    const-string v1, "SemWifiEntryFilter"

    invoke-static {p0, v1, v0}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    return-void
.end method
