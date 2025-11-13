.class public final Lcom/samsung/android/settings/wifi/develop/details/WifiNetworkDetailPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/wifitrackerlib/WifiEntry$WifiEntryCallback;


# instance fields
.field public final mConnectedViewer:Lcom/samsung/android/settings/wifi/develop/details/WifiNetworkDetailPreferenceController$ConnectedViewer;

.field public mConnectionInfoButton:Lcom/android/settingslib/widget/LayoutPreference;

.field public final mConnectivityManager:Landroid/net/ConnectivityManager;

.field public mConntionView:Lcom/android/settingslib/widget/LayoutPreference;

.field public final mContext:Landroid/content/Context;

.field public mCreationView:Lcom/android/settingslib/widget/LayoutPreference;

.field public final mDisconnectedViewer:Lcom/samsung/android/settings/wifi/develop/details/WifiNetworkDetailPreferenceController$ConnectedViewer;

.field public mEntityHeaderController:Lcom/android/settings/widget/EntityHeaderController;

.field public final mFragment:Landroidx/preference/PreferenceFragmentCompat;

.field public mHeaderInsetPref:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

.field public mHeaderInsetPref2:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

.field public mHeaderInsetPref3:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

.field public final mIconInjector:Lcom/samsung/android/settings/wifi/develop/details/WifiNetworkDetailPreferenceController$IconInjector;

.field public mLinkProperties:Landroid/net/LinkProperties;

.field public mMloInfoView:Lcom/android/settingslib/widget/LayoutPreference;

.field public mRssiSignalLevel:I

.field public final mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

.field public mViewer:Lcom/samsung/android/settings/wifi/develop/details/WifiNetworkDetailPreferenceController$ConnectedViewer;

.field public final mWifiConfigFromEntry:Landroid/net/wifi/WifiConfiguration;

.field public final mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

.field public final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;Lcom/android/wifitrackerlib/WifiEntry;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/settings/wifi/develop/details/WifiNetworkDetailPreferenceController;->mRssiSignalLevel:I

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/details/WifiNetworkDetailPreferenceController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/develop/details/WifiNetworkDetailPreferenceController;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    new-instance p2, Lcom/samsung/android/settings/wifi/develop/details/WifiNetworkDetailPreferenceController$ConnectedViewer;

    const/4 v0, 0x1

    invoke-direct {p2, p0, v0}, Lcom/samsung/android/settings/wifi/develop/details/WifiNetworkDetailPreferenceController$ConnectedViewer;-><init>(Lcom/samsung/android/settings/wifi/develop/details/WifiNetworkDetailPreferenceController;I)V

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/develop/details/WifiNetworkDetailPreferenceController;->mDisconnectedViewer:Lcom/samsung/android/settings/wifi/develop/details/WifiNetworkDetailPreferenceController$ConnectedViewer;

    new-instance v0, Lcom/samsung/android/settings/wifi/develop/details/WifiNetworkDetailPreferenceController$ConnectedViewer;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/wifi/develop/details/WifiNetworkDetailPreferenceController$ConnectedViewer;-><init>(Lcom/samsung/android/settings/wifi/develop/details/WifiNetworkDetailPreferenceController;I)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/details/WifiNetworkDetailPreferenceController;->mConnectedViewer:Lcom/samsung/android/settings/wifi/develop/details/WifiNetworkDetailPreferenceController$ConnectedViewer;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/develop/details/WifiNetworkDetailPreferenceController;->mViewer:Lcom/samsung/android/settings/wifi/develop/details/WifiNetworkDetailPreferenceController$ConnectedViewer;

    iput-object p3, p0, Lcom/samsung/android/settings/wifi/develop/details/WifiNetworkDetailPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {p3, p0}, Lcom/android/wifitrackerlib/WifiEntry;->setListener(Lcom/android/wifitrackerlib/WifiEntry$WifiEntryCallback;)V

    invoke-virtual {p3}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/develop/details/WifiNetworkDetailPreferenceController;->mWifiConfigFromEntry:Landroid/net/wifi/WifiConfiguration;

    new-instance p2, Lcom/samsung/android/settings/wifi/develop/details/WifiNetworkDetailPreferenceController$IconInjector;

    invoke-direct {p2, p1}, Lcom/samsung/android/settings/wifi/develop/details/WifiNetworkDetailPreferenceController$IconInjector;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/develop/details/WifiNetworkDetailPreferenceController;->mIconInjector:Lcom/samsung/android/settings/wifi/develop/details/WifiNetworkDetailPreferenceController$IconInjector;

    const-string/jumbo p2, "wifi"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/wifi/WifiManager;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/develop/details/WifiNetworkDetailPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    const-string/jumbo p2, "sem_wifi"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/wifi/SemWifiManager;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/develop/details/WifiNetworkDetailPreferenceController;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    const-string p2, "connectivity"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/details/WifiNetworkDetailPreferenceController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-void
.end method


# virtual methods
.method public final displayConnectionView()V
    .locals 16

    move-object/from16 v0, p0

    const/16 v1, 0x8

    const/16 v2, 0x20

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    iget-object v6, v0, Lcom/samsung/android/settings/wifi/develop/details/WifiNetworkDetailPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v6}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result v7

    if-nez v7, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-object v9, v0, Lcom/samsung/android/settings/wifi/develop/details/WifiNetworkDetailPreferenceController;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v9}, Lcom/samsung/android/wifi/SemWifiManager;->getCurrentStateAndEnterTime()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    const-string v11, " "

    if-nez v10, :cond_1

    invoke-virtual {v9, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    array-length v10, v9

    if-lt v10, v3, :cond_1

    aget-object v10, v9, v4

    const-string v12, "Connected"

    invoke-static {v10, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    aget-object v7, v9, v5

    invoke-static {v7}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    :cond_1
    invoke-static {v7, v8}, Lcom/samsung/android/settings/wifi/develop/WifiDevelopUtils;->convertTimeToSimpleDateFormat(J)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/util/Date;

    invoke-direct {v10, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v8, 0xb

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    const/16 v10, 0xc

    invoke-virtual {v7, v10}, Ljava/util/Calendar;->get(I)I

    move-result v7

    iget-object v10, v0, Lcom/samsung/android/settings/wifi/develop/details/WifiNetworkDetailPreferenceController;->mConntionView:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v10, v10, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v12, 0x7f0a040a

    invoke-virtual {v10, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    invoke-static {v9}, Landroidx/compose/ui/text/input/EditProcessor$generateBatchErrorMessage$1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v12, 0xa

    if-ge v8, v12, :cond_2

    const-string v11, " 0"

    :cond_2
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ":"

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ""

    if-ge v7, v12, :cond_3

    const-string v11, "0"

    goto :goto_0

    :cond_3
    move-object v11, v8

    :goto_0
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v7, v0, Lcom/samsung/android/settings/wifi/develop/details/WifiNetworkDetailPreferenceController;->mConntionView:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v7, v7, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v9, 0x7f0a10a6

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v6}, Lcom/android/wifitrackerlib/WifiEntry;->getStandardString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, v0, Lcom/samsung/android/settings/wifi/develop/details/WifiNetworkDetailPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v6

    if-eqz v6, :cond_7

    iget-object v7, v0, Lcom/samsung/android/settings/wifi/develop/details/WifiNetworkDetailPreferenceController;->mConntionView:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v7, v7, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v9, 0x7f0a0190

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v9

    const/16 v10, 0x960

    if-lt v9, v10, :cond_4

    const/16 v10, 0x9c4

    if-ge v9, v10, :cond_4

    iget-object v9, v0, Lcom/samsung/android/settings/wifi/develop/details/WifiNetworkDetailPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f14377e

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    :cond_4
    const/16 v10, 0x1324

    if-lt v9, v10, :cond_5

    const/16 v10, 0x170c

    if-ge v9, v10, :cond_5

    iget-object v9, v0, Lcom/samsung/android/settings/wifi/develop/details/WifiNetworkDetailPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f14377f

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    :cond_5
    const/16 v10, 0x1725

    if-lt v9, v10, :cond_6

    const/16 v10, 0x1bd5

    if-ge v9, v10, :cond_6

    iget-object v9, v0, Lcom/samsung/android/settings/wifi/develop/details/WifiNetworkDetailPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f143781

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    :cond_6
    iget-object v9, v0, Lcom/samsung/android/settings/wifi/develop/details/WifiNetworkDetailPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f143782

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    :goto_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " MHz ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " band)"

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v7, v0, Lcom/samsung/android/settings/wifi/develop/details/WifiNetworkDetailPreferenceController;->mConntionView:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v7, v7, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v9, 0x7f0a02f7

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v9

    invoke-static {v9}, Landroid/net/wifi/ScanResult;->convertFrequencyMhzToChannelIfSupported(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v7, v0, Lcom/samsung/android/settings/wifi/develop/details/WifiNetworkDetailPreferenceController;->mConntionView:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v7, v7, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v9, 0x7f0a0cdd

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " dBm"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v7, v0, Lcom/samsung/android/settings/wifi/develop/details/WifiNetworkDetailPreferenceController;->mConntionView:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v7, v7, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v9, 0x7f0a00fa

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_7
    iget-object v6, v0, Lcom/samsung/android/settings/wifi/develop/details/WifiNetworkDetailPreferenceController;->mConntionView:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v6, v6, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v7, 0x7f0a0816

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iget-object v7, v0, Lcom/samsung/android/settings/wifi/develop/details/WifiNetworkDetailPreferenceController;->mConntionView:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v7, v7, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v9, 0x7f0a0f39

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "\n"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v0, Lcom/samsung/android/settings/wifi/develop/details/WifiNetworkDetailPreferenceController;->mLinkProperties:Landroid/net/LinkProperties;

    if-eqz v11, :cond_d

    invoke-virtual {v11}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    const/4 v13, 0x0

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_c

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/net/LinkAddress;

    invoke-virtual {v14}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v15

    instance-of v15, v15, Ljava/net/Inet4Address;

    if-eqz v15, :cond_a

    invoke-virtual {v14}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v8

    invoke-virtual {v8}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v14}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v13

    :try_start_0
    sget-object v14, Lcom/samsung/android/wifitrackerlib/SemWifiUtils;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    if-ltz v13, :cond_9

    if-gt v13, v2, :cond_9

    if-nez v13, :cond_8

    move v13, v4

    goto :goto_3

    :cond_8
    rsub-int/lit8 v13, v13, 0x20

    const/4 v14, -0x1

    shl-int v13, v14, v13

    :goto_3
    shr-int/lit8 v14, v13, 0x18

    and-int/lit16 v14, v14, 0xff

    int-to-byte v14, v14

    shr-int/lit8 v15, v13, 0x10

    and-int/lit16 v15, v15, 0xff

    int-to-byte v15, v15

    shr-int/lit8 v2, v13, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    and-int/lit16 v13, v13, 0xff

    int-to-byte v13, v13

    const/4 v12, 0x4

    new-array v12, v12, [B

    aput-byte v14, v12, v4

    aput-byte v15, v12, v5

    aput-byte v2, v12, v3

    const/4 v2, 0x3

    aput-byte v13, v12, v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {v12}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v2

    check-cast v2, Ljava/net/Inet4Address;
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    invoke-virtual {v2}, Ljava/net/Inet4Address;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    move-object v13, v2

    goto :goto_4

    :catch_0
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_9
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v12, "Invalid prefix length (0 <= prefix <= 32)"

    invoke-direct {v2, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    const/4 v13, 0x0

    goto :goto_4

    :cond_a
    invoke-virtual {v14}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    instance-of v2, v2, Ljava/net/Inet6Address;

    if-eqz v2, :cond_b

    invoke-virtual {v14}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    :goto_4
    const/16 v2, 0x20

    goto/16 :goto_2

    :cond_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v7, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_d
    iget-object v2, v0, Lcom/samsung/android/settings/wifi/develop/details/WifiNetworkDetailPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v2

    iget-object v3, v0, Lcom/samsung/android/settings/wifi/develop/details/WifiNetworkDetailPreferenceController;->mConntionView:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v3, v3, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v4, 0x7f0a06c6

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget v4, v2, Landroid/net/DhcpInfo;->gateway:I

    invoke-static {v4}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v0, Lcom/samsung/android/settings/wifi/develop/details/WifiNetworkDetailPreferenceController;->mWifiConfigFromEntry:Landroid/net/wifi/WifiConfiguration;

    if-eqz v3, :cond_e

    iget-object v4, v0, Lcom/samsung/android/settings/wifi/develop/details/WifiNetworkDetailPreferenceController;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/samsung/android/wifi/SemWifiManager;->getWifiRouterInfo(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    goto :goto_5

    :cond_e
    const/4 v3, 0x0

    :goto_5
    if-eqz v3, :cond_f

    iget-object v4, v0, Lcom/samsung/android/settings/wifi/develop/details/WifiNetworkDetailPreferenceController;->mConntionView:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v4, v4, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v6, 0x7f0a0ccd

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const-string v6, "gatewayMac"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_f
    iget-object v3, v0, Lcom/samsung/android/settings/wifi/develop/details/WifiNetworkDetailPreferenceController;->mConntionView:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v3, v3, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v4, 0x7f0a0555

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget v2, v2, Landroid/net/DhcpInfo;->dns1:I

    invoke-static {v2}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/develop/details/WifiNetworkDetailPreferenceController;->mConntionView:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v2, v2, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v3, 0x7f0a0ccb

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, v0, Lcom/samsung/android/settings/wifi/develop/details/WifiNetworkDetailPreferenceController;->mWifiConfigFromEntry:Landroid/net/wifi/WifiConfiguration;

    if-eqz v3, :cond_10

    iget-object v4, v0, Lcom/samsung/android/settings/wifi/develop/details/WifiNetworkDetailPreferenceController;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/samsung/android/wifi/SemWifiManager;->getWifiRouterInfoPresentable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto :goto_6

    :cond_10
    const/4 v12, 0x0

    :goto_6
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_11

    iget-object v3, v0, Lcom/samsung/android/settings/wifi/develop/details/WifiNetworkDetailPreferenceController;->mConntionView:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v3, v3, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v4, 0x7f0a0cca

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_7

    :cond_11
    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_7
    iget-object v1, v0, Lcom/samsung/android/settings/wifi/develop/details/WifiNetworkDetailPreferenceController;->mConntionView:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v1, v1, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v2, 0x7f0a0811

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/develop/details/WifiNetworkDetailPreferenceController;->mWifiConfigFromEntry:Landroid/net/wifi/WifiConfiguration;

    if-eqz v2, :cond_13

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration;->hasNoInternetAccess()Z

    move-result v2

    if-eqz v2, :cond_12

    const-string v2, "Unavailable"

    goto :goto_8

    :cond_12
    const-string v2, "Available"

    :goto_8
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_13
    iget-object v0, v0, Lcom/samsung/android/settings/wifi/develop/details/WifiNetworkDetailPreferenceController;->mConntionView:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {v0, v5}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method public final displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 8

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string/jumbo v0, "wifi_detail_header_for_labs"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/details/WifiNetworkDetailPreferenceController;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    iget-object v0, v0, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v3, 0x7f0a05c5

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v3, Lcom/android/settings/widget/EntityHeaderController;

    invoke-direct {v3, v2, v1, v0}, Lcom/android/settings/widget/EntityHeaderController;-><init>(Landroidx/fragment/app/FragmentActivity;Landroidx/fragment/app/Fragment;Landroid/view/View;)V

    iput-object v3, p0, Lcom/samsung/android/settings/wifi/develop/details/WifiNetworkDetailPreferenceController;->mEntityHeaderController:Lcom/android/settings/widget/EntityHeaderController;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/details/WifiNetworkDetailPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/details/WifiNetworkDetailPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getCurrentNetwork()Landroid/net/Network;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/develop/details/WifiNetworkDetailPreferenceController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v3, v1}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/develop/details/WifiNetworkDetailPreferenceController;->mLinkProperties:Landroid/net/LinkProperties;

    :cond_0
    const-string v1, "connection_info_inset"

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/develop/details/WifiNetworkDetailPreferenceController;->mHeaderInsetPref:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    const-string v1, "mlo_info_inset"

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/develop/details/WifiNetworkDetailPreferenceController;->mHeaderInsetPref2:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    const-string/jumbo v1, "router_history_inset"

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/develop/details/WifiNetworkDetailPreferenceController;->mHeaderInsetPref3:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    const-string/jumbo v1, "wifi_detail_creation_info"

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/widget/LayoutPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/develop/details/WifiNetworkDetailPreferenceController;->mCreationView:Lcom/android/settingslib/widget/LayoutPreference;

    const-string/jumbo v1, "wifi_detail_connection_info"

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/widget/LayoutPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/develop/details/WifiNetworkDetailPreferenceController;->mConntionView:Lcom/android/settingslib/widget/LayoutPreference;

    const-string/jumbo v1, "wifi_detail_mlo_info"

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/widget/LayoutPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/develop/details/WifiNetworkDetailPreferenceController;->mMloInfoView:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/details/WifiNetworkDetailPreferenceController;->mCreationView:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v1, v1, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v3, 0x7f0a044b

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/develop/details/WifiNetworkDetailPreferenceController;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "sem_wifi"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v3}, Lcom/samsung/android/wifi/SemWifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v5

    if-nez v5, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/wifi/SemWifiConfiguration;

    iget-object v7, v6, Lcom/samsung/android/wifi/SemWifiConfiguration;->configKey:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    move-object v4, v6

    :cond_4
    :goto_0
    if-nez v4, :cond_5

    const-string v3, ""

    goto :goto_1

    :cond_5
    iget-wide v3, v4, Lcom/samsung/android/wifi/SemWifiConfiguration;->creationTime:J

    invoke-static {v3, v4}, Lcom/samsung/android/settings/wifi/develop/WifiDevelopUtils;->convertTimeToSimpleDateFormat(J)Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/details/WifiNetworkDetailPreferenceController;->mCreationView:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v1, v1, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v3, 0x7f0a0d8d

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/android/wifitrackerlib/WifiEntry;->getSecurityString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/details/WifiNetworkDetailPreferenceController;->mWifiConfigFromEntry:Landroid/net/wifi/WifiConfiguration;

    if-eqz v1, :cond_6

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/develop/details/WifiNetworkDetailPreferenceController;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/samsung/android/wifi/SemWifiManager;->getNetworkUsageInfo(Ljava/lang/String;)[J

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/develop/details/WifiNetworkDetailPreferenceController;->mCreationView:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v3, v3, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v4, 0x7f0a10a2

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/develop/details/WifiNetworkDetailPreferenceController;->mContext:Landroid/content/Context;

    aget-wide v5, v1, v2

    invoke-static {v4, v5, v6}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/develop/details/WifiNetworkDetailPreferenceController;->mCreationView:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v2, v2, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v3, 0x7f0a0ce2

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/develop/details/WifiNetworkDetailPreferenceController;->mContext:Landroid/content/Context;

    const/4 v4, 0x3

    aget-wide v4, v1, v4

    invoke-static {v3, v4, v5}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/details/WifiNetworkDetailPreferenceController;->mCreationView:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v1, v1, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v2, 0x7f0a0b50

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getMacAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/details/WifiNetworkDetailPreferenceController;->mCreationView:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v1, v1, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v2, 0x7f0a0bee

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/develop/details/WifiNetworkDetailPreferenceController;->mWifiConfigFromEntry:Landroid/net/wifi/WifiConfiguration;

    if-eqz v3, :cond_7

    iget-boolean v3, v3, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    if-eqz v3, :cond_7

    const-string v3, "Hidden/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    iget-object v3, v0, Lcom/android/wifitrackerlib/WifiEntry;->mSemFlags:Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;

    iget-boolean v3, v3, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;->isCaptivePortal:Z

    if-eqz v3, :cond_8

    const-string v3, "CaptivePortal/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->isMetered()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "Metered"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/details/WifiNetworkDetailPreferenceController;->mCreationView:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v0, v0, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v2, 0x7f0a0bed

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    :cond_a
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/details/WifiNetworkDetailPreferenceController;->mCreationView:Lcom/android/settingslib/widget/LayoutPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/develop/details/WifiNetworkDetailPreferenceController;->displayConnectionView()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/develop/details/WifiNetworkDetailPreferenceController;->setMloView()V

    const-string v0, "goto_connection_info"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/widget/LayoutPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/details/WifiNetworkDetailPreferenceController;->mConnectionInfoButton:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object p1, p1, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v0, 0x7f0a028a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string v0, "More"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/samsung/android/settings/wifi/develop/details/WifiNetworkDetailPreferenceController$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/develop/details/WifiNetworkDetailPreferenceController$1;-><init>(Lcom/samsung/android/settings/wifi/develop/details/WifiNetworkDetailPreferenceController;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final getPreferenceKey()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final isAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final onUpdated()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/details/WifiNetworkDetailPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/details/WifiNetworkDetailPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getCurrentNetwork()Landroid/net/Network;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/develop/details/WifiNetworkDetailPreferenceController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v2, v0}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/details/WifiNetworkDetailPreferenceController;->mLinkProperties:Landroid/net/LinkProperties;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/details/WifiNetworkDetailPreferenceController;->mConnectedViewer:Lcom/samsung/android/settings/wifi/develop/details/WifiNetworkDetailPreferenceController$ConnectedViewer;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/details/WifiNetworkDetailPreferenceController;->mViewer:Lcom/samsung/android/settings/wifi/develop/details/WifiNetworkDetailPreferenceController$ConnectedViewer;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/develop/details/WifiNetworkDetailPreferenceController;->displayConnectionView()V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/details/WifiNetworkDetailPreferenceController;->mConntionView:Lcom/android/settingslib/widget/LayoutPreference;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/details/WifiNetworkDetailPreferenceController;->mConnectionInfoButton:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/details/WifiNetworkDetailPreferenceController;->mHeaderInsetPref:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/details/WifiNetworkDetailPreferenceController;->mHeaderInsetPref2:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/details/WifiNetworkDetailPreferenceController;->mHeaderInsetPref3:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/develop/details/WifiNetworkDetailPreferenceController;->setMloView()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/details/WifiNetworkDetailPreferenceController;->mLinkProperties:Landroid/net/LinkProperties;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/details/WifiNetworkDetailPreferenceController;->mDisconnectedViewer:Lcom/samsung/android/settings/wifi/develop/details/WifiNetworkDetailPreferenceController$ConnectedViewer;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/details/WifiNetworkDetailPreferenceController;->mViewer:Lcom/samsung/android/settings/wifi/develop/details/WifiNetworkDetailPreferenceController$ConnectedViewer;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/details/WifiNetworkDetailPreferenceController;->mConntionView:Lcom/android/settingslib/widget/LayoutPreference;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/details/WifiNetworkDetailPreferenceController;->mConnectionInfoButton:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/details/WifiNetworkDetailPreferenceController;->mMloInfoView:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/details/WifiNetworkDetailPreferenceController;->mViewer:Lcom/samsung/android/settings/wifi/develop/details/WifiNetworkDetailPreferenceController$ConnectedViewer;

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/develop/details/WifiNetworkDetailPreferenceController$ConnectedViewer;->this$0$1:Lcom/samsung/android/settings/wifi/develop/details/WifiNetworkDetailPreferenceController;

    iget-object v3, v2, Lcom/samsung/android/settings/wifi/develop/details/WifiNetworkDetailPreferenceController;->mEntityHeaderController:Lcom/android/settings/widget/EntityHeaderController;

    iget-object v4, v2, Lcom/samsung/android/settings/wifi/develop/details/WifiNetworkDetailPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v4}, Lcom/android/wifitrackerlib/WifiEntry;->getTitle()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/android/settings/widget/EntityHeaderController;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {v4}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result v4

    if-ne v4, v1, :cond_1

    const-string v1, "Connected"

    goto :goto_1

    :cond_1
    const-string v1, "Disconnected"

    :goto_1
    iput-object v1, v3, Lcom/android/settings/widget/EntityHeaderController;->mSummary:Ljava/lang/CharSequence;

    iget-object v1, v2, Lcom/samsung/android/settings/wifi/develop/details/WifiNetworkDetailPreferenceController;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/android/settings/widget/EntityHeaderController;->done(Landroid/content/Context;)Lcom/android/settingslib/widget/LayoutPreference;

    iget v1, v0, Lcom/samsung/android/settings/wifi/develop/details/WifiNetworkDetailPreferenceController$ConnectedViewer;->$r8$classId:I

    packed-switch v1, :pswitch_data_0

    iget-object v1, v0, Lcom/samsung/android/settings/wifi/develop/details/WifiNetworkDetailPreferenceController$ConnectedViewer;->this$0:Lcom/samsung/android/settings/wifi/develop/details/WifiNetworkDetailPreferenceController;

    const/4 v2, -0x1

    iput v2, v1, Lcom/samsung/android/settings/wifi/develop/details/WifiNetworkDetailPreferenceController;->mRssiSignalLevel:I

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/develop/details/WifiNetworkDetailPreferenceController$ConnectedViewer;->refreshRssiViews$com$samsung$android$settings$wifi$develop$details$WifiNetworkDetailPreferenceController$Viewer()V

    goto :goto_2

    :pswitch_0
    iget-object v1, v0, Lcom/samsung/android/settings/wifi/develop/details/WifiNetworkDetailPreferenceController$ConnectedViewer;->this$0:Lcom/samsung/android/settings/wifi/develop/details/WifiNetworkDetailPreferenceController;

    iget-object v2, v1, Lcom/samsung/android/settings/wifi/develop/details/WifiNetworkDetailPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v2}, Lcom/android/wifitrackerlib/WifiEntry;->getLevel()I

    move-result v2

    iget v3, v1, Lcom/samsung/android/settings/wifi/develop/details/WifiNetworkDetailPreferenceController;->mRssiSignalLevel:I

    if-ne v2, v3, :cond_2

    goto :goto_2

    :cond_2
    iput v2, v1, Lcom/samsung/android/settings/wifi/develop/details/WifiNetworkDetailPreferenceController;->mRssiSignalLevel:I

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/develop/details/WifiNetworkDetailPreferenceController$ConnectedViewer;->refreshRssiViews$com$samsung$android$settings$wifi$develop$details$WifiNetworkDetailPreferenceController$Viewer()V

    :goto_2
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/details/WifiNetworkDetailPreferenceController;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    check-cast p0, Lcom/samsung/android/settings/wifi/develop/details/WifiNetworkDetailsFragmentForLabs;

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->updatePreferenceStates()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final setMloView()V
    .locals 13

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/details/WifiNetworkDetailPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getAssociatedMloLinks()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/develop/details/WifiNetworkDetailPreferenceController;->mMloInfoView:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v2, v2, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v3, 0x7f0a08c7

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/develop/details/WifiNetworkDetailPreferenceController;->mMloInfoView:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v2, v2, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v5, 0x7f0a08c8

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/develop/details/WifiNetworkDetailPreferenceController;->mMloInfoView:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v2, v2, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v6, 0x7f0a08c9

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/develop/details/WifiNetworkDetailPreferenceController;->mMloInfoView:Lcom/android/settingslib/widget/LayoutPreference;

    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Landroidx/preference/Preference;->setVisible(Z)V

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/develop/details/WifiNetworkDetailPreferenceController;->mConntionView:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v2, v2, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v8, 0x7f0a0cdb

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/develop/details/WifiNetworkDetailPreferenceController;->mConntionView:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v2, v2, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v8, 0x7f0a018e

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/develop/details/WifiNetworkDetailPreferenceController;->mConntionView:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v2, v2, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v8, 0x7f0a018d

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/develop/details/WifiNetworkDetailPreferenceController;->mConntionView:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v2, v2, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v8, 0x7f0a00f8

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/develop/details/WifiNetworkDetailPreferenceController;->mMloInfoView:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v2, v2, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v8, 0x7f0a097e

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getApMldMacAddress()Landroid/net/MacAddress;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/MacAddress;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/MloLink;

    invoke-virtual {v1}, Landroid/net/wifi/MloLink;->getLinkId()I

    move-result v8

    if-eqz v8, :cond_4

    if-eq v8, v2, :cond_3

    const/4 v2, 0x2

    if-eq v8, v2, :cond_2

    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/develop/details/WifiNetworkDetailPreferenceController;->mMloInfoView:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v2, v2, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/develop/details/WifiNetworkDetailPreferenceController;->mMloInfoView:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v2, v2, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/develop/details/WifiNetworkDetailPreferenceController;->mMloInfoView:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v2, v2, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    :goto_1
    if-nez v2, :cond_5

    goto :goto_0

    :cond_5
    invoke-virtual {v1}, Landroid/net/wifi/MloLink;->getRssi()I

    move-result v9

    const/16 v10, -0x7f

    if-ne v9, v10, :cond_6

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_6
    const v10, 0x7f0a08cc

    invoke-virtual {v2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "MLO link "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Landroid/net/wifi/MloLink;->getChannel()I

    move-result v8

    invoke-virtual {v1}, Landroid/net/wifi/MloLink;->getBand()I

    move-result v10

    invoke-static {v8, v10}, Landroid/net/wifi/ScanResult;->convertChannelToFrequencyMhzIfSupported(II)I

    move-result v8

    const v10, 0x7f0a0190

    invoke-virtual {v2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " MHz ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v12, 0x960

    if-lt v8, v12, :cond_7

    const/16 v12, 0x9c4

    if-ge v8, v12, :cond_7

    iget-object v8, p0, Lcom/samsung/android/settings/wifi/develop/details/WifiNetworkDetailPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v12, 0x7f14377e

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    :cond_7
    const/16 v12, 0x1324

    if-lt v8, v12, :cond_8

    const/16 v12, 0x170c

    if-ge v8, v12, :cond_8

    iget-object v8, p0, Lcom/samsung/android/settings/wifi/develop/details/WifiNetworkDetailPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v12, 0x7f14377f

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    :cond_8
    const/16 v12, 0x1725

    if-lt v8, v12, :cond_9

    const/16 v12, 0x1bd5

    if-ge v8, v12, :cond_9

    iget-object v8, p0, Lcom/samsung/android/settings/wifi/develop/details/WifiNetworkDetailPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v12, 0x7f143781

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    :cond_9
    iget-object v8, p0, Lcom/samsung/android/settings/wifi/develop/details/WifiNetworkDetailPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v12, 0x7f143782

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    :goto_2
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " band)"

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v8, 0x7f0a02f7

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/net/wifi/MloLink;->getChannel()I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v8, 0x7f0a0cdd

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " dBm"

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v8, 0x7f0a00fa

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/net/wifi/MloLink;->getApMacAddress()Landroid/net/MacAddress;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/MacAddress;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v8, 0x7f0a0ee1

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/net/wifi/MloLink;->getStaMacAddress()Landroid/net/MacAddress;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/MacAddress;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_a
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/details/WifiNetworkDetailPreferenceController;->mMloInfoView:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {p0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method
