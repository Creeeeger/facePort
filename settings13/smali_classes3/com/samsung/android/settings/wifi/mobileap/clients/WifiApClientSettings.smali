.class public Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "WifiApClientSettings.java"


# static fields
.field private static final INTENT_FILTER:Landroid/content/IntentFilter;

.field private static final TAG:Ljava/lang/String;

.field private static final XML_PREFERENCE_SCREEN:I


# instance fields
.field private customView:Landroid/view/View;

.field dateFormat:Ljava/lang/String;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mClientDataUsagePreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;

.field private mClientDataUsageProgressBar:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApStackedProgressBarPreference;

.field private mConnectedTime:Ljava/lang/Long;

.field private mContext:Landroid/content/Context;

.field private mDeviceName:Ljava/lang/String;

.field private mIp:Ljava/lang/String;

.field private mMacAddress:Ljava/lang/String;

.field private mPreferenceScreen:Landroidx/preference/PreferenceScreen;

.field private mRefreshHandler:Landroid/os/Handler;

.field private mRefreshRunnable:Ljava/lang/Runnable;

.field private mSetDataLimitPreferenceController:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitPreferenceController;

.field private mSetTimeLimitPreferenceController:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetTimeLimitPreferenceController;

.field private mThisMenuItem:Landroid/view/MenuItem;

.field private mWifiApClientSettingsBottomView:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettingsBottomView;


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMacAddress(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mMacAddress:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRefreshHandler(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mRefreshHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 48
    const-class v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->TAG:Ljava/lang/String;

    .line 51
    sget v0, Lcom/android/settings/R$xml;->sec_wifi_ap_connected_device_detail_view:I

    sput v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->XML_PREFERENCE_SCREEN:I

    .line 78
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.samsung.android.net.wifi.WIFI_AP_STA_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->INTENT_FILTER:Landroid/content/IntentFilter;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 47
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    const-string v0, ""

    .line 57
    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mIp:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 58
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mConnectedTime:Ljava/lang/Long;

    const/4 v0, 0x0

    .line 60
    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->dateFormat:Ljava/lang/String;

    .line 67
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mRefreshHandler:Landroid/os/Handler;

    .line 68
    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings$1;-><init>(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mRefreshRunnable:Ljava/lang/Runnable;

    .line 81
    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings$2;-><init>(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private convertMilsToHHMMSS(J)Ljava/lang/String;
    .locals 7

    const-wide/16 v0, 0x3e8

    .line 281
    div-long/2addr p1, v0

    const-wide/16 v0, 0xe10

    .line 282
    div-long v2, p1, v0

    .line 283
    rem-long/2addr p1, v0

    const-wide/16 v0, 0x3c

    .line 284
    div-long v4, p1, v0

    .line 285
    rem-long/2addr p1, v0

    .line 287
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "%02d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v6, v0, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v6, v3

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v0, v3

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getFormat()Ljava/lang/String;
    .locals 5

    .line 291
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mConnectedTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 292
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mConnectedTime:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->dateFormat:Ljava/lang/String;

    .line 293
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->dateFormat:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private registerHandler()V
    .locals 3

    .line 224
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mRefreshHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mRefreshRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private showInfoDialog()V
    .locals 7

    .line 244
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->getDialogTheme()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 245
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 246
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/android/settings/R$layout;->sec_wifi_ap_deviceinfo_dialog:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->customView:Landroid/view/View;

    .line 247
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 248
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->customView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->tv_ip_addr_text:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/settings/R$string;->wifi_ip_address:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\u200f"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 249
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->customView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->wifi_ap_ip:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u200e"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mIp:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 250
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->customView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->tv_mac_addr_text:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mContext:Landroid/content/Context;

    sget v6, Lcom/android/settings/R$string;->wifi_ap_mac:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 251
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->customView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->wifi_ap_mac:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mMacAddress:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 253
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->customView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->tv_ip_addr_text:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$string;->wifi_ip_address:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->customView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->wifi_ap_ip:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mIp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 255
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->customView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->tv_mac_addr_text:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$string;->wifi_ap_mac:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->customView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->wifi_ap_mac:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mMacAddress:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->getFormat()Ljava/lang/String;

    move-result-object v1

    .line 261
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->customView:Landroid/view/View;

    sget v3, Lcom/android/settings/R$id;->wifi_ap_connection_time:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 263
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 264
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->customView:Landroid/view/View;

    sget v4, Lcom/android/settings/R$id;->tv_ip_addr_text:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v4, 0x5

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 265
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->customView:Landroid/view/View;

    sget v5, Lcom/android/settings/R$id;->tv_mac_addr_text:I

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 266
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->customView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 267
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->customView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 270
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->customView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->wifi_ap_connection_duration:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mConnectedTime:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->convertMilsToHHMMSS(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 271
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 272
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->customView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 273
    sget v1, Lcom/android/settings/R$string;->dlg_ok:I

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings$3;-><init>(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 277
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private unRegisterHandler()V
    .locals 2

    .line 219
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mRefreshHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mRefreshRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mRefreshHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mRefreshRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected getLogTag()Ljava/lang/String;
    .locals 0

    .line 304
    sget-object p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public getMacAddress()Ljava/lang/String;
    .locals 0

    .line 313
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mMacAddress:Ljava/lang/String;

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0xd48

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 299
    sget p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->XML_PREFERENCE_SCREEN:I

    return p0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 171
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 172
    new-instance p1, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettingsBottomView;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettingsBottomView;-><init>(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;)V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mWifiApClientSettingsBottomView:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettingsBottomView;

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 4

    .line 98
    const-class v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetTimeLimitPreferenceController;

    const-class v1, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitPreferenceController;

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    .line 99
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mContext:Landroid/content/Context;

    .line 100
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v2, "intent_key_connected_client_mac_detail"

    .line 102
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "intent_key_connected_client_name_detail"

    .line 103
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mDeviceName:Ljava/lang/String;

    .line 105
    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 106
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mMacAddress:Ljava/lang/String;

    goto :goto_0

    .line 109
    :cond_1
    sget-object p1, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->TAG:Ljava/lang/String;

    const-string v2, "MAC details not found"

    invoke-static {p1, v2}, Lcom/samsung/android/settings/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_2
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitPreferenceController;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mMacAddress:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitPreferenceController;->setMacDetail(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0, v1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitPreferenceController;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mSetDataLimitPreferenceController:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitPreferenceController;

    .line 113
    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitPreferenceController;->setHost(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;)V

    .line 115
    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetTimeLimitPreferenceController;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mMacAddress:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetTimeLimitPreferenceController;->setMacDetail(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetTimeLimitPreferenceController;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mSetTimeLimitPreferenceController:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetTimeLimitPreferenceController;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 122
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 123
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mContext:Landroid/content/Context;

    .line 124
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    .line 125
    sget-object p1, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mDeviceName/mMacAddress "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mMacAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/settings/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mDeviceName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 127
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mMacAddress:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApConnectedDeviceUtils;->getWifiApClientDetails(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/wifi/SemWifiApClientDetails;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 129
    invoke-virtual {p1}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getClientRecentConnectionTimeStamp()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mConnectedTime:Ljava/lang/Long;

    .line 130
    invoke-virtual {p1}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getClientIpAddress()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mIp:Ljava/lang/String;

    .line 132
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    const-string v0, "client_data_usage_preference"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mClientDataUsagePreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;

    .line 133
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    const-string v0, "progress_bar_preference"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApStackedProgressBarPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mClientDataUsageProgressBar:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApStackedProgressBarPreference;

    .line 134
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mClientDataUsagePreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->setIsNonWhiteBackgroundRequired(Z)V

    .line 135
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mClientDataUsageProgressBar:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApStackedProgressBarPreference;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApStackedProgressBarPreference;->setIsNonWhiteBackgroundRequired(Z)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4

    .line 177
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 179
    instance-of v1, v0, Landroidx/appcompat/app/AppCompatActivity;

    if-eqz v1, :cond_0

    .line 180
    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    const-string v2, "Info"

    .line 183
    invoke-interface {p1, v0, v1, v0, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mThisMenuItem:Landroid/view/MenuItem;

    const/4 v3, 0x2

    .line 184
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 185
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mThisMenuItem:Landroid/view/MenuItem;

    sget v3, Lcom/android/settings/R$drawable;->sec_ic_wifi_ap_info:I

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 186
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mThisMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setTooltipText(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 188
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mThisMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 189
    invoke-super {p0, p1, p2}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 235
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 240
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0

    .line 237
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->showInfoDialog()V

    return v1
.end method

.method public onPause()V
    .locals 0

    .line 207
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->unRegisterHandler()V

    .line 208
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0

    .line 230
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 200
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    .line 201
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->refreshConnectedPreferences()V

    .line 202
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->registerHandler()V

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 194
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStart()V

    .line 195
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v1, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->INTENT_FILTER:Landroid/content/IntentFilter;

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 213
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 214
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStop()V

    return-void
.end method

.method public refreshConnectedPreferences()V
    .locals 11

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 143
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mMacAddress:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApConnectedDeviceUtils;->getWifiApClientMobileDataConsumedDetail(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;

    move-result-object v1

    .line 144
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mMacAddress:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApConnectedDeviceUtils;->getWifiApClientDataLimitDetail(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;

    move-result-object v2

    .line 145
    new-instance v3, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/StackedProgressBarEntry;

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;->getUsageValueInMB()D

    move-result-wide v4

    double-to-float v4, v4

    sget-object v5, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApStackedProgressBarPreference;->PROGRESS_COLORS:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    const-string v7, "mDeviceName"

    invoke-direct {v3, v7, v4, v5}, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/StackedProgressBarEntry;-><init>(Ljava/lang/String;FI)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;->getUsageValueInBytes()D

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->convertDataSizeToLocaleString(D)Ljava/lang/String;

    move-result-object v3

    .line 148
    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;->getUsageValueInBytes()D

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->convertDataSizeToLocaleString(D)Ljava/lang/String;

    move-result-object v4

    .line 150
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 151
    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;->getUsageValueInBytes()D

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmpl-double v7, v7, v9

    if-lez v7, :cond_0

    const-string v7, "/"

    .line 152
    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 153
    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 154
    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;->getUsageValueInMB()D

    move-result-wide v7

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;->getUsageValueInMB()D

    move-result-wide v1

    sub-double/2addr v7, v1

    double-to-float v1, v7

    .line 155
    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/StackedProgressBarEntry;

    sget v4, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApStackedProgressBarPreference;->UNUSED_LIGHT_COLOR:I

    const-string v7, "unused_data_name"

    invoke-direct {v2, v7, v1, v4}, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/StackedProgressBarEntry;-><init>(Ljava/lang/String;FI)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    :cond_0
    new-instance v1, Landroid/text/SpannableString;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 158
    new-instance v2, Landroid/text/style/RelativeSizeSpan;

    const/high16 v4, 0x3fc00000    # 1.5f

    invoke-direct {v2, v4}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x0

    const/16 v7, 0x21

    invoke-virtual {v1, v2, v5, v4, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 159
    new-instance v2, Landroid/text/style/StyleSpan;

    invoke-direct {v2, v6}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v2, v5, v4, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 160
    new-instance v2, Landroid/text/style/RelativeSizeSpan;

    const v4, 0x3f4ccccd    # 0.8f

    invoke-direct {v2, v4}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 161
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mClientDataUsagePreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;

    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->setSpannableTitle(Landroid/text/SpannableString;)V

    .line 162
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mClientDataUsageProgressBar:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApStackedProgressBarPreference;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApStackedProgressBarPreference;->setProgressBarEntries(Ljava/util/ArrayList;)V

    .line 163
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mClientDataUsageProgressBar:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApStackedProgressBarPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mMacAddress:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApConnectedDeviceUtils;->isWifiApClientDataPausedSet(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApStackedProgressBarPreference;->setDisabledProgressBar(Z)V

    .line 164
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mClientDataUsageProgressBar:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApStackedProgressBarPreference;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApStackedProgressBarPreference;->updateProgressBar()V

    .line 165
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mSetDataLimitPreferenceController:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitPreferenceController;

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 166
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mSetTimeLimitPreferenceController:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetTimeLimitPreferenceController;

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetTimeLimitPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method
