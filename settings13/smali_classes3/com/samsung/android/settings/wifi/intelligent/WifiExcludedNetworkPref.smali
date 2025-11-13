.class public Lcom/samsung/android/settings/wifi/intelligent/WifiExcludedNetworkPref;
.super Landroidx/preference/Preference;
.source "WifiExcludedNetworkPref.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

.field private mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;


# direct methods
.method static bridge synthetic -$$Nest$msetSkipInternetCheck(Lcom/samsung/android/settings/wifi/intelligent/WifiExcludedNetworkPref;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/wifi/intelligent/WifiExcludedNetworkPref;->setSkipInternetCheck(IZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 51
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiExcludedNetworkPref;->mContext:Landroid/content/Context;

    .line 52
    iput-object p2, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiExcludedNetworkPref;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    .line 53
    sget p1, Lcom/android/settings/R$layout;->sec_preference_wifi_excluded_network:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method

.method private removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 86
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v0, 0x1

    if-le p0, v0, :cond_1

    const/4 v1, 0x0

    .line 88
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x22

    if-ne v1, v2, :cond_1

    sub-int/2addr p0, v0

    .line 89
    invoke-virtual {p1, p0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_1

    .line 90
    invoke-virtual {p1, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method private setSkipInternetCheck(IZ)V
    .locals 1

    .line 79
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setSkipInternetCheck(), networkId :  "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "WifiExcludedNetworkPref"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiExcludedNetworkPref;->mContext:Landroid/content/Context;

    const-string v0, "sem_wifi"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/wifi/SemWifiManager;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiExcludedNetworkPref;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    .line 81
    invoke-virtual {p2, p1}, Lcom/samsung/android/wifi/SemWifiManager;->removeExcludedNetwork(I)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 4

    .line 58
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 60
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiExcludedNetworkPref;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 61
    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 62
    sget v2, Lcom/android/settings/R$id;->network_ssid:I

    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 63
    sget v3, Lcom/android/settings/R$id;->button_img:I

    invoke-virtual {p1, v3}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 65
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/wifi/intelligent/WifiExcludedNetworkPref;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    sget v1, Lcom/android/settings/R$drawable;->sec_display_ic_minus_mtrl:I

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 67
    new-instance v1, Lcom/samsung/android/settings/wifi/intelligent/WifiExcludedNetworkPref$1;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/settings/wifi/intelligent/WifiExcludedNetworkPref$1;-><init>(Lcom/samsung/android/settings/wifi/intelligent/WifiExcludedNetworkPref;I)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
