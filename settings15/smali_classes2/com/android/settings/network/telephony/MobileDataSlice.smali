.class public Lcom/android/settings/network/telephony/MobileDataSlice;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/slices/CustomSliceable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/network/telephony/MobileDataSlice$MobileDataWorker;
    }
.end annotation


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field public final mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/network/telephony/MobileDataSlice;->mContext:Landroid/content/Context;

    const-class v0, Landroid/telephony/SubscriptionManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    iput-object v0, p0, Lcom/android/settings/network/telephony/MobileDataSlice;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/android/settings/network/telephony/MobileDataSlice;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-void
.end method


# virtual methods
.method public final getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    const-class p0, Lcom/android/settings/network/telephony/MobileDataSlice$MobileDataWorker;

    return-object p0
.end method

.method public final getIntent()Landroid/content/Intent;
    .locals 1

    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.settings.NETWORK_OPERATOR_SETTINGS"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.android.settings"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public final getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    const-string p0, "android.intent.action.AIRPLANE_MODE"

    invoke-static {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public final getSlice()Landroidx/slice/Slice;
    .locals 10

    iget-object v0, p0, Lcom/android/settings/network/telephony/MobileDataSlice;->mContext:Landroid/content/Context;

    const v1, 0x7f08053f

    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/IconCompat;->createWithResource(Landroid/content/Context;I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/network/telephony/MobileDataSlice;->mContext:Landroid/content/Context;

    const v2, 0x7f141803

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/network/telephony/MobileDataSlice;->mContext:Landroid/content/Context;

    const v3, 0x1010435

    invoke-static {v2, v3}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/MobileDataSlice;->isAirplaneModeEnabled()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    return-object v4

    :cond_0
    iget-object v3, p0, Lcom/android/settings/network/telephony/MobileDataSlice;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/android/settings/network/SubscriptionUtil;->REGEX_DISPLAY_NAME_SUFFIX_PATTERN:Ljava/util/regex/Pattern;

    invoke-static {v3}, Lcom/android/settings/network/telephony/SubscriptionRepositoryKt;->getSelectableSubscriptionInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/settings/network/telephony/MobileDataSlice;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v3

    if-nez v3, :cond_1

    move-object v3, v4

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/android/settings/network/telephony/MobileDataSlice;->mContext:Landroid/content/Context;

    invoke-static {v5, v3}, Lcom/android/settings/network/SubscriptionUtil;->getUniqueSubscriptionDisplayName(Landroid/content/Context;Landroid/telephony/SubscriptionInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    :goto_0
    iget-object v5, p0, Lcom/android/settings/network/telephony/MobileDataSlice;->mContext:Landroid/content/Context;

    invoke-interface {p0, v5}, Lcom/android/settings/slices/CustomSliceable;->getBroadcastIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/MobileDataSlice;->getIntent()Landroid/content/Intent;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/network/telephony/MobileDataSlice;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    const/high16 v9, 0x4000000

    invoke-static {v7, v8, v6, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-static {v6, v0, v8, v1}, Landroidx/slice/builders/SliceAction;->createDeeplink(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;ILjava/lang/CharSequence;)Landroidx/slice/builders/SliceAction;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/MobileDataSlice;->isMobileDataEnabled()Z

    move-result v6

    new-instance v7, Landroidx/slice/builders/SliceAction;

    invoke-direct {v7, v5, v4, v6}, Landroidx/slice/builders/SliceAction;-><init>(Landroid/app/PendingIntent;Ljava/lang/CharSequence;Z)V

    new-instance v4, Landroidx/slice/builders/ListBuilder$RowBuilder;

    invoke-direct {v4}, Landroidx/slice/builders/ListBuilder$RowBuilder;-><init>()V

    iput-object v1, v4, Landroidx/slice/builders/ListBuilder$RowBuilder;->mTitle:Ljava/lang/CharSequence;

    iput-boolean v8, v4, Landroidx/slice/builders/ListBuilder$RowBuilder;->mTitleLoading:Z

    invoke-virtual {v4, v7}, Landroidx/slice/builders/ListBuilder$RowBuilder;->addEndItem(Landroidx/slice/builders/SliceAction;)V

    iput-object v0, v4, Landroidx/slice/builders/ListBuilder$RowBuilder;->mPrimaryAction:Landroidx/slice/builders/SliceAction;

    iget-object v0, p0, Lcom/android/settings/network/telephony/MobileDataSlice;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isSettingsIntelligence(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v4, v3}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setSubtitle(Ljava/lang/CharSequence;)V

    :cond_2
    new-instance v0, Landroidx/slice/builders/ListBuilder;

    iget-object p0, p0, Lcom/android/settings/network/telephony/MobileDataSlice;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/settings/slices/CustomSliceRegistry;->MOBILE_DATA_SLICE_URI:Landroid/net/Uri;

    invoke-direct {v0, p0, v1}, Landroidx/slice/builders/ListBuilder;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    iget-object p0, v0, Landroidx/slice/builders/ListBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder;

    invoke-interface {p0, v2}, Landroidx/slice/builders/impl/ListBuilder;->setColor(I)V

    invoke-interface {p0, v4}, Landroidx/slice/builders/impl/ListBuilder;->addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)V

    invoke-virtual {v0}, Landroidx/slice/builders/ListBuilder;->build()Landroidx/slice/Slice;

    move-result-object p0

    return-object p0

    :cond_3
    return-object v4
.end method

.method public final getSliceHighlightMenuRes()I
    .locals 0

    const p0, 0x7f1417c9

    return p0
.end method

.method public final getUri$1()Landroid/net/Uri;
    .locals 0

    sget-object p0, Lcom/android/settings/slices/CustomSliceRegistry;->MOBILE_DATA_SLICE_URI:Landroid/net/Uri;

    return-object p0
.end method

.method public isAirplaneModeEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/android/settings/network/telephony/MobileDataSlice;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settingslib/WirelessUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public isMobileDataEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/android/settings/network/telephony/MobileDataSlice;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isDataEnabled()Z

    move-result p0

    return p0
.end method

.method public final onNotifyChange(Landroid/content/Intent;)V
    .locals 3

    const-string v0, "android.app.slice.extra.TOGGLE_STATE"

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/MobileDataSlice;->isMobileDataEnabled()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iget-object v0, p0, Lcom/android/settings/network/telephony/MobileDataSlice;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    :goto_0
    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    const-string v1, "setMobileDataEnabled: "

    const-string v2, "MobileDataSlice"

    invoke-static {v1, v2, p1}, Lcom/android/settings/AirplaneModeEnabler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/android/settings/network/telephony/MobileDataSlice;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->setMobileDataEnabled(ILandroid/content/Context;ZZ)V

    return-void
.end method
