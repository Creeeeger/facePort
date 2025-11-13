.class public Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedClient;
.super Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;
.source "WifiApConnectedClient.java"


# instance fields
.field private customView:Landroid/view/View;

.field dateFormat:Ljava/lang/String;

.field private mConnectedTime:Ljava/lang/Long;

.field private mContext:Landroid/content/Context;

.field private mDataUsage:J

.field private mDeviceName:Ljava/lang/String;

.field private mIp:Ljava/lang/String;

.field private mMac:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedClient;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedClient;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDeviceName(Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedClient;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedClient;->mDeviceName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMac(Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedClient;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedClient;->mMac:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mshowInfoDialog(Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedClient;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedClient;->showInfoDialog()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1

    .line 50
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedClient;->dateFormat:Ljava/lang/String;

    .line 51
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedClient;->mContext:Landroid/content/Context;

    .line 52
    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedClient;->mDeviceName:Ljava/lang/String;

    .line 53
    iput-object p3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedClient;->mMac:Ljava/lang/String;

    .line 54
    iput-object p4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedClient;->mIp:Ljava/lang/String;

    .line 55
    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedClient;->mConnectedTime:Ljava/lang/Long;

    const-wide/16 p1, 0x0

    .line 56
    iput-wide p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedClient;->mDataUsage:J

    .line 57
    invoke-virtual {p0, p3}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 58
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedClient;->mDeviceName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 59
    new-instance p1, Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedClient$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedClient$1;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedClient;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->setSecondaryIconClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedClient;->getSummarytext()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 73
    new-instance p1, Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedClient$2;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedClient$2;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedClient;)V

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method

.method private convertMilsToHHMMSS(J)Ljava/lang/String;
    .locals 7

    const-wide/16 v0, 0x3e8

    .line 124
    div-long/2addr p1, v0

    const-wide/16 v0, 0xe10

    .line 125
    div-long v2, p1, v0

    .line 126
    rem-long/2addr p1, v0

    const-wide/16 v0, 0x3c

    .line 127
    div-long v4, p1, v0

    .line 128
    rem-long/2addr p1, v0

    .line 130
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

    .line 134
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedClient;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedClient;->mConnectedTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 135
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedClient;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedClient;->mConnectedTime:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedClient;->dateFormat:Ljava/lang/String;

    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedClient;->dateFormat:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getSummarytext()Ljava/lang/String;
    .locals 5

    .line 140
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedClient;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedClient;->mConnectedTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 142
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "MMM dd"

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 143
    new-instance v2, Ljava/util/Date;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedClient;->mConnectedTime:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedClient;->dateFormat:Ljava/lang/String;

    .line 144
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedClient;->dateFormat:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedClient;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->comma:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private showInfoDialog()V
    .locals 7

    .line 86
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedClient;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->getDialogTheme()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 87
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 88
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/android/settings/R$layout;->sec_wifi_ap_deviceinfo_dialog:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedClient;->customView:Landroid/view/View;

    .line 89
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedClient;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 90
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedClient;->customView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->tv_ip_addr_text:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedClient;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/settings/R$string;->wifi_ip_address:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\u200f"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedClient;->customView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->wifi_ap_ip:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u200e"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedClient;->mIp:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedClient;->customView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->tv_mac_addr_text:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedClient;->mContext:Landroid/content/Context;

    sget v6, Lcom/android/settings/R$string;->wifi_ap_mac:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedClient;->customView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->wifi_ap_mac:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedClient;->mMac:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 95
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedClient;->customView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->tv_ip_addr_text:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedClient;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$string;->wifi_ip_address:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedClient;->customView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->wifi_ap_ip:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedClient;->mIp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedClient;->customView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->tv_mac_addr_text:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedClient;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$string;->wifi_ap_mac:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedClient;->customView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->wifi_ap_mac:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedClient;->mMac:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedClient;->getFormat()Ljava/lang/String;

    move-result-object v1

    .line 103
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedClient;->customView:Landroid/view/View;

    sget v3, Lcom/android/settings/R$id;->wifi_ap_connection_time:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedClient;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 106
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedClient;->customView:Landroid/view/View;

    sget v4, Lcom/android/settings/R$id;->tv_ip_addr_text:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v4, 0x5

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 107
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedClient;->customView:Landroid/view/View;

    sget v5, Lcom/android/settings/R$id;->tv_mac_addr_text:I

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 108
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedClient;->customView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedClient;->customView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 112
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedClient;->customView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->wifi_ap_connection_duration:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 113
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedClient;->mConnectedTime:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 112
    invoke-direct {p0, v2, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedClient;->convertMilsToHHMMSS(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedClient;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 115
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedClient;->customView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 116
    sget v1, Lcom/android/settings/R$string;->dlg_ok:I

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedClient$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedClient$3;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedClient;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 120
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method
