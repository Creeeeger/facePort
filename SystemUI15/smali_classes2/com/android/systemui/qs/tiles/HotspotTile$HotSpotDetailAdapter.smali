.class public final Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/plugins/qs/DetailAdapter;
.implements Lcom/android/systemui/qs/QSDetailItems$Callback;


# instance fields
.field public deviceCount:I

.field public mApLayout:Landroid/widget/LinearLayout;

.field public mConnectedDevices:Ljava/util/List;

.field public mConnectedListContainer:Landroid/view/View;

.field public mItems:Lcom/android/systemui/qs/QSDetailItems;

.field public mMobileApName:Landroid/widget/TextView;

.field public mPassWord:Ljava/lang/String;

.field public mPassWordLayout:Landroid/widget/LinearLayout;

.field public mPassword:Landroid/widget/TextView;

.field public mWifiManager:Landroid/net/wifi/WifiManager;

.field public final synthetic this$0:Lcom/android/systemui/qs/tiles/HotspotTile;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/HotspotTile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->deviceCount:I

    return-void
.end method


# virtual methods
.method public final createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "createDetailView convertView="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_0

    move p2, v2

    goto :goto_0

    :cond_0
    move p2, v1

    :goto_0
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " mState.value "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    iget-object v3, p2, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v3, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v3, v3, Lcom/android/systemui/plugins/qs/QSTile$AdapterState;->value:Z

    const-string v4, "HotspotTile"

    invoke-static {v0, v3, v4}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mWifiManager:Landroid/net/wifi/WifiManager;

    const-string/jumbo v3, "wifi"

    if-nez v0, :cond_1

    iget-object v0, p2, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mWifiManager:Landroid/net/wifi/WifiManager;

    :cond_1
    iget-object v0, p2, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v5, 0x7f0d02f9

    invoke-virtual {v0, v5, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    const v0, 0x7f0a00e5

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mApLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f0a08ca

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mPassWordLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f0a00e6

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mMobileApName:Landroid/widget/TextView;

    const v0, 0x7f0a02c7

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mConnectedListContainer:Landroid/view/View;

    const v0, 0x7f0a00e8

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mPassword:Landroid/widget/TextView;

    const v0, 0x7f0a02c3

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {p1, v0}, Lcom/android/systemui/qs/QSDetailItems;->convertOrInflate(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/android/systemui/qs/QSDetailItems;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    const-string v5, "HotSpot"

    invoke-virtual {p1, v5}, Lcom/android/systemui/qs/QSDetailItems;->setTagSuffix(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/QSDetailItems;->setCallback(Lcom/android/systemui/qs/QSDetailItems$Callback;)V

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const-string/jumbo p1, "updateHotSpotApInfo"

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez p1, :cond_2

    iget-object p1, p2, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mWifiManager:Landroid/net/wifi/WifiManager;

    :cond_2
    invoke-virtual {p2}, Lcom/android/systemui/qs/tiles/HotspotTile;->getSemWifiManager()Lcom/samsung/android/wifi/SemWifiManager;

    move-result-object p1

    if-nez p1, :cond_3

    const-string p1, " updateHotSpotApInfo SemWifiManager is null"

    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_3
    iget-object p1, p2, Lcom/android/systemui/qs/tiles/HotspotTile;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {p1}, Lcom/samsung/android/wifi/SemWifiManager;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->getPassphrase()Ljava/lang/String;

    move-result-object v0

    iget-boolean v3, p2, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->DEBUG:Z

    if-eqz v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "mobileAp Name = "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->getSsid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mMobileApName:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->getSsid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mPassword:Landroid/widget/TextView;

    const v0, 0x7f1301c5

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_4

    :cond_5
    const-string p1, "\tUSER#DEFINED#PWD#\n"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p2, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "wifi_ap_random_password"

    invoke-static {p1, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_7

    const-string v3, ""

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_1

    :cond_6
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mPassword:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    :cond_7
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    new-instance v5, Ljava/util/Random;

    invoke-direct {v5, v3, v4}, Ljava/util/Random;-><init>(J)V

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    :goto_2
    const/4 v4, 0x4

    if-ge v1, v4, :cond_8

    const/16 v4, 0x1a

    invoke-virtual {v5, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    const-string v6, "abcdefghijklmnopqrstuvwxyz"

    invoke-virtual {v6, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_8
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1, v3, v4}, Ljava/util/Random;-><init>(J)V

    const/16 v3, 0xa

    move v4, v2

    move v5, v3

    :goto_3
    const/4 v6, 0x3

    if-ge v4, v6, :cond_9

    mul-int/lit8 v5, v5, 0xa

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_9
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    sub-int/2addr v5, v2

    invoke-virtual {v1, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%03d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    new-instance v4, Ljava/util/Random;

    invoke-direct {v4, v1, v2}, Ljava/util/Random;-><init>(J)V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    const-string v3, "!@#$/^&*()"

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p2, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v0, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mPassword:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_a
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mPassword:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_4
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mMobileApName:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mApLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mPassword:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mPassWord:Ljava/lang/String;

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mPassWordLayout:Landroid/widget/LinearLayout;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p2, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f130c3e

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mPassWord:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_5
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->updateConnectedDeviceList()V

    return-object p3
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x460

    return p0
.end method

.method public final getSettingsIntent()Landroid/content/Intent;
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->isDataSaverEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.settings.WIFI_AP_SETTINGS"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public final getTitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const v0, 0x7f130c3f

    invoke-static {v0}, Lcom/android/systemui/CvOperator;->getHotspotStringID(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getToggleEnabled()Z
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " getToggleEnabled - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v1, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->isTransient:Z

    const-string v2, "HotspotTile"

    invoke-static {v0, v1, v2}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean p0, p0, Lcom/android/systemui/plugins/qs/QSTile$State;->isTransient:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final getToggleState()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean p0, p0, Lcom/android/systemui/plugins/qs/QSTile$AdapterState;->value:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public final onDetailItemClick(Lcom/android/systemui/qs/QSDetailItems$Item;)V
    .locals 0

    return-void
.end method

.method public final setToggleState(Z)V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/HotspotTile;->getSemWifiManager()Lcom/samsung/android/wifi/SemWifiManager;

    move-result-object v1

    const-string v2, "HotspotTile"

    if-nez v1, :cond_0

    const-string p1, "getSemWifiManager is null"

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->getToggleState()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/tileimpl/SQSTileImpl;->fireToggleStateChanged(Z)V

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/HotspotTile;->getSemWifiManager()Lcom/samsung/android/wifi/SemWifiManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/wifi/SemWifiManager;->getWifiApState()I

    move-result v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "setToggleState:state,"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ",apiState:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0xe

    if-eqz p1, :cond_1

    const/16 v4, 0xb

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->getToggleState()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/tileimpl/SQSTileImpl;->fireToggleStateChanged(Z)V

    return-void

    :cond_1
    const/16 v4, 0xd

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->getToggleState()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/tileimpl/SQSTileImpl;->fireToggleStateChanged(Z)V

    return-void

    :cond_2
    iget-object v1, v0, Lcom/android/systemui/qs/tiles/HotspotTile;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    check-cast v1, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {v1}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->isWifiHotspotTileBlocked()Z

    move-result v1

    if-nez v1, :cond_d

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/HotspotTile;->isBlockedByEASPolicy()Z

    move-result v1

    if-eqz v1, :cond_3

    goto/16 :goto_3

    :cond_3
    iget-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/HotspotTile;->isSatelliteModeOn(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->getToggleState()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/tileimpl/SQSTileImpl;->fireToggleStateChanged(Z)V

    return-void

    :cond_4
    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/HotspotTile;->isWifiApBlocked()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->showItPolicyToast()V

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->getToggleState()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/tileimpl/SQSTileImpl;->fireToggleStateChanged(Z)V

    return-void

    :cond_5
    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/HotspotTile;->isDataSaverEnabled()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/HotspotTile;->showDataSaverToast()V

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->getToggleState()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/tileimpl/SQSTileImpl;->fireToggleStateChanged(Z)V

    return-void

    :cond_6
    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/HotspotTile;->isSatModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->getToggleState()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/tileimpl/SQSTileImpl;->fireToggleStateChanged(Z)V

    return-void

    :cond_7
    iget-object v1, v0, Lcom/android/systemui/qs/tiles/HotspotTile;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardVisible()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isSecure()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    move-result v3

    if-nez v3, :cond_8

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/HotspotTile;->-$$Nest$fgetmSettingsHelper(Lcom/android/systemui/qs/tiles/HotspotTile;)Lcom/android/systemui/util/SettingsHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/util/SettingsHelper;->isLockFunctionsEnabled()Z

    move-result v3

    if-eqz v3, :cond_8

    new-instance p1, Lcom/android/systemui/qs/tiles/HotspotTile$$ExternalSyntheticLambda1;

    const/4 v1, 0x1

    invoke-direct {p1, p0, v1}, Lcom/android/systemui/qs/tiles/HotspotTile$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;I)V

    iget-object v1, v0, Lcom/android/systemui/qs/tiles/HotspotTile;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    invoke-interface {v1, p1}, Lcom/android/systemui/plugins/ActivityStarter;->postQSRunnableDismissingKeyguard(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->getToggleState()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/tileimpl/SQSTileImpl;->fireToggleStateChanged(Z)V

    return-void

    :cond_8
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "isShowing() = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardVisible()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", isSecure() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isSecure()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", canSkipBouncer() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isLockFunctionsEnabled() = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/HotspotTile;->-$$Nest$fgetmSettingsHelper(Lcom/android/systemui/qs/tiles/HotspotTile;)Lcom/android/systemui/util/SettingsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isLockFunctionsEnabled()Z

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_9

    sget-object v1, Lcom/android/systemui/qs/tileimpl/SQSTileImpl;->ARG_SHOW_TRANSIENT_ENABLING:Ljava/lang/Object;

    goto :goto_0

    :cond_9
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/tiles/HotspotTile;->setHotspotEnabled(Z)V

    iget-object p1, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean p1, p1, Lcom/android/systemui/plugins/qs/QSTile$AdapterState;->value:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mConnectedDevices:Ljava/util/List;

    if-eqz p1, :cond_a

    const/4 p1, 0x1

    goto :goto_1

    :cond_a
    move p1, v0

    :goto_1
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mConnectedListContainer:Landroid/view/View;

    if-eqz p0, :cond_c

    if-eqz p1, :cond_b

    goto :goto_2

    :cond_b
    const/16 v0, 0x8

    :goto_2
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_c
    return-void

    :cond_d
    :goto_3
    invoke-virtual {v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->showItPolicyToast()V

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->getToggleState()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/tileimpl/SQSTileImpl;->fireToggleStateChanged(Z)V

    return-void
.end method

.method public final updateConnectedDeviceList()V
    .locals 11

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/HotspotTile;->getSemWifiManager()Lcom/samsung/android/wifi/SemWifiManager;

    move-result-object v1

    const-string v2, "HotspotTile"

    if-nez v1, :cond_0

    const-string p0, " updateConnectedDeviceList SemWifiManager is null"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, v0, Lcom/android/systemui/qs/tiles/HotspotTile;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v1}, Lcom/samsung/android/wifi/SemWifiManager;->getWifiApStaListDetail()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mConnectedDevices:Ljava/util/List;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->deviceCount:I

    :cond_1
    const-string/jumbo v1, "updateItems"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    const/4 v3, 0x0

    if-nez v1, :cond_2

    goto/16 :goto_1

    :cond_2
    iget v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->deviceCount:I

    new-array v4, v1, [Lcom/android/systemui/qs/QSDetailItems$Item;

    if-eqz v1, :cond_4

    move v1, v3

    :goto_0
    iget v5, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->deviceCount:I

    if-ge v1, v5, :cond_4

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mConnectedDevices:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    aget-object v6, v5, v6

    const/4 v7, 0x3

    aget-object v5, v5, v7

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    iget-object v5, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v5

    new-instance v9, Ljava/util/Date;

    invoke-direct {v9, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v9}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    const-string v9, "MMM dd"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v10

    invoke-static {v10, v9}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/util/Date;

    invoke-direct {v10, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-static {v9, v10}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroidx/compose/ui/text/input/EditProcessor$generateBatchErrorMessage$1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const v9, 0x7f1303cb

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lcom/android/systemui/qs/QSDetailItems$Item;

    invoke-direct {v7}, Lcom/android/systemui/qs/QSDetailItems$Item;-><init>()V

    const-string v8, "(null)"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v6, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const v8, 0x7f130c3a

    invoke-virtual {v6, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    :cond_3
    iput-boolean v3, v7, Lcom/android/systemui/qs/QSDetailItems$Item;->iconVisibility:Z

    iget-object v8, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0718a9

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, v7, Lcom/android/systemui/qs/QSDetailItems$Item;->itemPaddingAboveBelow:I

    iget-object v8, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0718ab

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    int-to-float v8, v8

    iput v8, v7, Lcom/android/systemui/qs/QSDetailItems$Item;->line1textSize:F

    iget-object v8, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0718aa

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    int-to-float v8, v8

    iput v8, v7, Lcom/android/systemui/qs/QSDetailItems$Item;->line2textSize:F

    iput-object v6, v7, Lcom/android/systemui/qs/QSDetailItems$Item;->line1:Ljava/lang/CharSequence;

    iput-object v5, v7, Lcom/android/systemui/qs/QSDetailItems$Item;->line2:Ljava/lang/CharSequence;

    iput-boolean v3, v7, Lcom/android/systemui/qs/QSDetailItems$Item;->isClickable:Z

    aput-object v7, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    invoke-virtual {v1, v4}, Lcom/android/systemui/qs/QSDetailItems;->setItems([Lcom/android/systemui/qs/QSDetailItems$Item;)V

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, " updateConnectedDeviceList mConnectedDevices = "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mConnectedDevices:Ljava/util/List;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$AdapterState;->value:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mConnectedDevices:Ljava/util/List;

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    goto :goto_2

    :cond_5
    move v0, v3

    :goto_2
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mConnectedListContainer:Landroid/view/View;

    if-eqz p0, :cond_7

    if-eqz v0, :cond_6

    goto :goto_3

    :cond_6
    const/16 v3, 0x8

    :goto_3
    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    return-void
.end method
