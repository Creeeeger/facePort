.class public final Lcom/android/settings/network/telephony/Enhanced4gLteSliceHelper;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/network/telephony/Enhanced4gLteSliceHelper;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final createEnhanced4gLteSlice(Landroid/net/Uri;)Landroidx/slice/Slice;
    .locals 6

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubscriptionId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "Enhanced4gLteSlice"

    if-nez v1, :cond_0

    const-string p0, "Invalid subscription Id"

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_0
    iget-object v1, p0, Lcom/android/settings/network/telephony/Enhanced4gLteSliceHelper;->mContext:Landroid/content/Context;

    const-class v4, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CarrierConfigManager;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    const/4 v4, 0x0

    if-eqz v1, :cond_2

    const-string v5, "hide_enhanced_4g_lte_bool"

    invoke-virtual {v1, v5, v4}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    :cond_2
    if-nez v4, :cond_7

    iget-object v1, p0, Lcom/android/settings/network/telephony/Enhanced4gLteSliceHelper;->mContext:Landroid/content/Context;

    const-class v4, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CarrierConfigManager;

    if-eqz v1, :cond_3

    invoke-virtual {v1, v0}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v1

    goto :goto_1

    :cond_3
    move-object v1, v2

    :goto_1
    const/4 v4, 0x1

    if-eqz v1, :cond_4

    const-string v5, "editable_enhanced_4g_lte_bool"

    invoke-virtual {v1, v5, v4}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    :cond_4
    if-nez v4, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {p0, v0}, Lcom/android/settings/network/telephony/Enhanced4gLteSliceHelper;->queryImsState(I)Lcom/android/settings/network/ims/VolteQueryImsState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/network/ims/VolteQueryImsState;->isVoLteProvisioned()Z

    move-result v4

    if-nez v4, :cond_6

    const-string p0, "Setting is either not provisioned or not enabled by Platform"

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_6
    :try_start_0
    invoke-virtual {v1}, Lcom/android/settings/network/ims/VolteQueryImsState;->isEnabledByUser()Z

    move-result v1

    invoke-virtual {p0, v1, p1, v0}, Lcom/android/settings/network/telephony/Enhanced4gLteSliceHelper;->getEnhanced4gLteSlice(ZLandroid/net/Uri;I)Landroidx/slice/Slice;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "Unable to read the current Enhanced 4g LTE status"

    invoke-static {v3, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v2

    :cond_7
    :goto_2
    const-string p0, "Setting is either hidden or not editable"

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method public final getEnhanced4gLteSlice(ZLandroid/net/Uri;I)Landroidx/slice/Slice;
    .locals 6

    iget-object v0, p0, Lcom/android/settings/network/telephony/Enhanced4gLteSliceHelper;->mContext:Landroid/content/Context;

    const v1, 0x7f08046f

    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/IconCompat;->createWithResource(Landroid/content/Context;I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v0

    new-instance v1, Landroidx/slice/builders/ListBuilder;

    iget-object v2, p0, Lcom/android/settings/network/telephony/Enhanced4gLteSliceHelper;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p2}, Landroidx/slice/builders/ListBuilder;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    iget-object p2, p0, Lcom/android/settings/network/telephony/Enhanced4gLteSliceHelper;->mContext:Landroid/content/Context;

    const v2, 0x1010435

    invoke-static {p2, v2}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result p2

    iget-object v2, v1, Landroidx/slice/builders/ListBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder;

    invoke-interface {v2, p2}, Landroidx/slice/builders/impl/ListBuilder;->setColor(I)V

    new-instance p2, Landroidx/slice/builders/ListBuilder$RowBuilder;

    invoke-direct {p2}, Landroidx/slice/builders/ListBuilder$RowBuilder;-><init>()V

    invoke-virtual {p0, p3}, Lcom/android/settings/network/telephony/Enhanced4gLteSliceHelper;->getEnhanced4glteModeTitle(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p2, Landroidx/slice/builders/ListBuilder$RowBuilder;->mTitle:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    iput-boolean v2, p2, Landroidx/slice/builders/ListBuilder$RowBuilder;->mTitleLoading:Z

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.android.settings.mobilenetwork.action.ENHANCED_4G_LTE_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/settings/network/telephony/Enhanced4gLteSliceHelper;->mContext:Landroid/content/Context;

    const-class v5, Lcom/android/settings/slices/SliceBroadcastReceiver;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/settings/network/telephony/Enhanced4gLteSliceHelper;->mContext:Landroid/content/Context;

    const/high16 v5, 0x14000000

    invoke-static {v4, v2, v3, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    new-instance v4, Landroidx/slice/builders/SliceAction;

    const/4 v5, 0x0

    invoke-direct {v4, v3, v5, p1}, Landroidx/slice/builders/SliceAction;-><init>(Landroid/app/PendingIntent;Ljava/lang/CharSequence;Z)V

    invoke-virtual {p2, v4}, Landroidx/slice/builders/ListBuilder$RowBuilder;->addEndItem(Landroidx/slice/builders/SliceAction;)V

    new-instance p1, Landroid/content/Intent;

    const-string v3, "android.settings.NETWORK_OPERATOR_SETTINGS"

    invoke-direct {p1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.android.settings"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v3, 0x10000000

    invoke-virtual {p1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/settings/network/telephony/Enhanced4gLteSliceHelper;->mContext:Landroid/content/Context;

    const/high16 v4, 0x4000000

    invoke-static {v3, v2, p1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    invoke-virtual {p0, p3}, Lcom/android/settings/network/telephony/Enhanced4gLteSliceHelper;->getEnhanced4glteModeTitle(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {p1, v0, v2, p0}, Landroidx/slice/builders/SliceAction;->createDeeplink(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;ILjava/lang/CharSequence;)Landroidx/slice/builders/SliceAction;

    move-result-object p0

    iput-object p0, p2, Landroidx/slice/builders/ListBuilder$RowBuilder;->mPrimaryAction:Landroidx/slice/builders/SliceAction;

    iget-object p0, v1, Landroidx/slice/builders/ListBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder;

    invoke-interface {p0, p2}, Landroidx/slice/builders/impl/ListBuilder;->addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)V

    invoke-virtual {v1}, Landroidx/slice/builders/ListBuilder;->build()Landroidx/slice/Slice;

    move-result-object p0

    return-object p0
.end method

.method public final getEnhanced4glteModeTitle(I)Ljava/lang/CharSequence;
    .locals 5

    iget-object v0, p0, Lcom/android/settings/network/telephony/Enhanced4gLteSliceHelper;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const-string v3, "enhanced_4g_lte_title_variant_int"

    invoke-virtual {v0, v3, v2}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    iget-object v3, p0, Lcom/android/settings/network/telephony/Enhanced4gLteSliceHelper;->mContext:Landroid/content/Context;

    const-class v4, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/CarrierConfigManager;

    if-eqz v3, :cond_2

    invoke-virtual {v3, p1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v1

    :cond_2
    if-eqz v1, :cond_3

    const-string p1, "show_4g_for_lte_data_icon_bool"

    invoke-virtual {v1, p1, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    goto :goto_2

    :cond_3
    move p1, v2

    :goto_2
    iget-object p0, p0, Lcom/android/settings/network/telephony/Enhanced4gLteSliceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f0300de

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    if-eqz p1, :cond_4

    const/4 v2, 0x2

    :cond_4
    move v1, v2

    :cond_5
    aget-object p0, p0, v1

    return-object p0
.end method

.method public queryImsState(I)Lcom/android/settings/network/ims/VolteQueryImsState;
    .locals 1

    new-instance v0, Lcom/android/settings/network/ims/VolteQueryImsState;

    iget-object p0, p0, Lcom/android/settings/network/telephony/Enhanced4gLteSliceHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/network/ims/VolteQueryImsState;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public setEnhanced4gLteModeSetting(IZ)V
    .locals 2

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Landroid/telephony/ims/ImsMmTelManager;->createForSubscriptionId(I)Landroid/telephony/ims/ImsMmTelManager;

    move-result-object p0

    if-nez p0, :cond_1

    return-void

    :cond_1
    :try_start_0
    invoke-virtual {p0, p2}, Landroid/telephony/ims/ImsMmTelManager;->setAdvancedCallingSettingEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unable to change the Enhanced 4g LTE to "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ". subId="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Enhanced4gLteSlice"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
