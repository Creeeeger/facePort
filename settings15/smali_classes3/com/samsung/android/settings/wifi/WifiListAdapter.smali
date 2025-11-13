.class public abstract Lcom/samsung/android/settings/wifi/WifiListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final DBG:Z

.field public static final STATE_NONE:[I

.field public static final STATE_SECURED:[I

.field public static final STATE_WIFI5_NONE:[I

.field public static final STATE_WIFI5_SECURED:[I

.field public static final STATE_WIFI6E_NONE:[I

.field public static final STATE_WIFI6E_SECURED:[I

.field public static final STATE_WIFI6_NONE:[I

.field public static final STATE_WIFI6_SECURED:[I

.field public static final mDefaultIconResId:I


# instance fields
.field public final TAG:Ljava/lang/String;

.field public final mContext:Landroid/content/Context;

.field public final mHideLeftRightPadding:Z

.field public final mInSetupWizardActivity:Z

.field public mIsMaxSummaryLineOn:Z

.field public final mIsSupportWifiTips:Z

.field public final mParentView:Landroidx/recyclerview/widget/RecyclerView;

.field public final mSAScreenId:Ljava/lang/String;

.field public mWifiEntries:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->DBG:Z

    const v0, 0x7f0806a2

    sput v0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mDefaultIconResId:I

    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->STATE_NONE:[I

    const v0, 0x7f0405dd

    filled-new-array {v0}, [I

    move-result-object v1

    sput-object v1, Lcom/samsung/android/settings/wifi/WifiListAdapter;->STATE_SECURED:[I

    const v1, 0x7f0405e6

    filled-new-array {v1}, [I

    move-result-object v2

    sput-object v2, Lcom/samsung/android/settings/wifi/WifiListAdapter;->STATE_WIFI5_NONE:[I

    filled-new-array {v1, v0}, [I

    move-result-object v1

    sput-object v1, Lcom/samsung/android/settings/wifi/WifiListAdapter;->STATE_WIFI5_SECURED:[I

    const v1, 0x7f0405e7

    filled-new-array {v1}, [I

    move-result-object v2

    sput-object v2, Lcom/samsung/android/settings/wifi/WifiListAdapter;->STATE_WIFI6_NONE:[I

    filled-new-array {v1, v0}, [I

    move-result-object v1

    sput-object v1, Lcom/samsung/android/settings/wifi/WifiListAdapter;->STATE_WIFI6_SECURED:[I

    const v1, 0x7f0405e8

    filled-new-array {v1}, [I

    move-result-object v2

    sput-object v2, Lcom/samsung/android/settings/wifi/WifiListAdapter;->STATE_WIFI6E_NONE:[I

    filled-new-array {v1, v0}, [I

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->STATE_WIFI6E_SECURED:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;Ljava/util/ArrayList;ZLjava/lang/String;Z)V
    .locals 1

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiListAdapter;->getLogTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->TAG:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mParentView:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p3, p0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mWifiEntries:Ljava/util/List;

    iput-boolean p4, p0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mHideLeftRightPadding:Z

    iput-object p5, p0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mSAScreenId:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mInSetupWizardActivity:Z

    sget-object p2, Lcom/samsung/android/wifitrackerlib/SemWifiUtils;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string/jumbo p3, "sem_wifi_developer_option_visible"

    const/4 p4, 0x0

    invoke-static {p2, p3, p4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string/jumbo p5, "sec_wifi_developer_max_summary_line"

    invoke-static {p2, p5, p4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    if-ne p2, p3, :cond_0

    move p4, p3

    :cond_0
    iput-boolean p4, p0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mIsMaxSummaryLineOn:Z

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/WifiTipsUtils;->isSupportWifiTips(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mIsSupportWifiTips:Z

    return-void
.end method


# virtual methods
.method public final deleteItem(I)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->TAG:Ljava/lang/String;

    if-ltz p1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mWifiEntries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt p1, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mWifiEntries:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    sget-boolean p0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->DBG:Z

    if-eqz p0, :cond_1

    const-string p0, "delete_"

    const-string v2, ": "

    invoke-static {p1, p0, v2}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v1}, Lcom/android/wifitrackerlib/WifiEntry;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    :goto_0
    const-string v1, "deleteItem with abnormal index "

    const-string v2, " / "

    invoke-static {p1, v1, v2}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public abstract getLogTag()Ljava/lang/String;
.end method

.method public final launchFragment(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "launch "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ". "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiListAdapter;->notifyOnLaunchActivityIfNeeded()V

    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    iget-object v1, v0, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iput-object p1, v1, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mDestinationName:Ljava/lang/String;

    iput-object p2, v1, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mArguments:Landroid/os/Bundle;

    const/16 p1, 0x67

    iput p1, v1, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mSourceMetricsCategory:I

    iput-object p3, v1, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiListAdapter;->notifyOnLaunchActivityFinishedIfNeeded()V

    return-void
.end method

.method public abstract notifyOnLaunchActivityFinishedIfNeeded()V
.end method

.method public abstract notifyOnLaunchActivityIfNeeded()V
.end method

.method public final removeAll()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mWifiEntries:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public final updateIcon(Landroid/widget/ImageView;Landroid/graphics/drawable/StateListDrawable;Lcom/android/wifitrackerlib/WifiEntry;)V
    .locals 8

    if-eqz p2, :cond_13

    sget-object v0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->STATE_NONE:[I

    if-nez p3, :cond_0

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    const/4 p3, -0x1

    goto/16 :goto_8

    :cond_0
    instance-of v1, p3, Lcom/android/wifitrackerlib/HotspotNetworkEntry;

    sget-object v2, Lcom/samsung/android/settings/wifi/WifiListAdapter;->STATE_SECURED:[I

    if-eqz v1, :cond_8

    check-cast p3, Lcom/android/wifitrackerlib/HotspotNetworkEntry;

    invoke-virtual {p3}, Lcom/android/wifitrackerlib/HotspotNetworkEntry;->getUpstreamConnectionStrength()I

    move-result v1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p3, Lcom/android/wifitrackerlib/HotspotNetworkEntry;->mHotspotNetworkData:Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;

    if-eqz v4, :cond_1

    new-instance v3, Ljava/util/ArrayList;

    iget-object p3, p3, Lcom/android/wifitrackerlib/HotspotNetworkEntry;->mHotspotNetworkData:Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;

    invoke-virtual {p3}, Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;->getHotspotSecurityTypes()Ljava/util/Set;

    move-result-object p3

    invoke-direct {v3, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p3

    const/4 v4, 0x0

    if-nez p3, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p3

    const/4 v5, 0x6

    const/4 v6, 0x1

    if-ne p3, v6, :cond_3

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-eqz p3, :cond_5

    if-eq p3, v5, :cond_5

    goto :goto_0

    :cond_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p3

    const/4 v7, 0x2

    if-ne p3, v7, :cond_4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {v3, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {v3, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    goto :goto_1

    :cond_4
    :goto_0
    move v4, v6

    :cond_5
    :goto_1
    if-nez v4, :cond_6

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    goto :goto_2

    :cond_6
    invoke-virtual {p2, v2}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    :goto_2
    sget-boolean p3, Lcom/samsung/android/settings/wifi/WifiListAdapter;->DBG:Z

    if-eqz p3, :cond_7

    const-string p3, "IH secure_icon "

    const-string v0, ",level "

    invoke-static {v4, v1, p3, v0}, Landroidx/compose/foundation/text/HeightInLinesModifierKt$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->TAG:Ljava/lang/String;

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    move p3, v1

    goto/16 :goto_8

    :cond_8
    iget-object v1, p3, Lcom/android/wifitrackerlib/WifiEntry;->mSemFlags:Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Lcom/android/wifitrackerlib/WifiEntry;->semIsWifi6ENetwork()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {p3}, Lcom/android/wifitrackerlib/WifiEntry;->getSecurity$1()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/wifitrackerlib/SemWifiUtils;->isSecured(I)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->STATE_WIFI6E_SECURED:[I

    goto :goto_3

    :cond_9
    sget-object v0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->STATE_WIFI6E_NONE:[I

    :goto_3
    invoke-virtual {p2, v0}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    goto :goto_7

    :cond_a
    invoke-virtual {p3}, Lcom/android/wifitrackerlib/WifiEntry;->semIsWifi6Network()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-virtual {p3}, Lcom/android/wifitrackerlib/WifiEntry;->getSecurity$1()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/wifitrackerlib/SemWifiUtils;->isSecured(I)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->STATE_WIFI6_SECURED:[I

    goto :goto_4

    :cond_b
    sget-object v0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->STATE_WIFI6_NONE:[I

    :goto_4
    invoke-virtual {p2, v0}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    goto :goto_7

    :cond_c
    iget-object v3, p3, Lcom/android/wifitrackerlib/WifiEntry;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    const/4 v4, 0x5

    if-eqz v3, :cond_d

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getWifiStandard()I

    move-result v1

    if-ne v1, v4, :cond_f

    goto :goto_5

    :cond_d
    iget v1, v1, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;->wifiStandard:I

    if-lt v1, v4, :cond_f

    :goto_5
    invoke-virtual {p3}, Lcom/android/wifitrackerlib/WifiEntry;->getSecurity$1()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/wifitrackerlib/SemWifiUtils;->isSecured(I)Z

    move-result v0

    if-eqz v0, :cond_e

    sget-object v0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->STATE_WIFI5_SECURED:[I

    goto :goto_6

    :cond_e
    sget-object v0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->STATE_WIFI5_NONE:[I

    :goto_6
    invoke-virtual {p2, v0}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    goto :goto_7

    :cond_f
    invoke-virtual {p3}, Lcom/android/wifitrackerlib/WifiEntry;->getSecurity$1()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/wifitrackerlib/SemWifiUtils;->isSecured(I)Z

    move-result v1

    if-eqz v1, :cond_10

    move-object v0, v2

    :cond_10
    invoke-virtual {p2, v0}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    :goto_7
    invoke-virtual {p3}, Lcom/android/wifitrackerlib/WifiEntry;->getLevel()I

    move-result p3

    :goto_8
    invoke-virtual {p2}, Landroid/graphics/drawable/StateListDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_11

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto :goto_9

    :cond_11
    sget p2, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mDefaultIconResId:I

    if-eqz p2, :cond_12

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_9

    :cond_12
    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_13
    :goto_9
    return-void
.end method
