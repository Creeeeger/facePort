.class public final Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mIsInit:Z

.field public final mNearbyScanningObserver:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$1;

.field public final mNearbyScanningSettingsSwitch:Landroidx/preference/SwitchPreferenceCompat;

.field public final mNearbyScanningSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

.field public final mOnCheckedChangeListener:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$2;

.field public final mOnPreferenceChangeListener:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$3;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mNearbyScanningSettingsSwitch:Landroidx/preference/SwitchPreferenceCompat;

    iput-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mNearbyScanningSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mIsInit:Z

    new-instance v0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$1;-><init>(Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mNearbyScanningObserver:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$1;

    new-instance v0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$2;-><init>(Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mOnCheckedChangeListener:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$2;

    new-instance v0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$3;-><init>(Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mOnPreferenceChangeListener:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$3;

    iput-object p1, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mContext:Landroid/content/Context;

    instance-of p1, p2, Landroidx/preference/SwitchPreferenceCompat;

    if-eqz p1, :cond_0

    check-cast p2, Landroidx/preference/SwitchPreferenceCompat;

    iput-object p2, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mNearbyScanningSettingsSwitch:Landroidx/preference/SwitchPreferenceCompat;

    goto :goto_0

    :cond_0
    instance-of p1, p2, Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-eqz p1, :cond_1

    check-cast p2, Lcom/android/settings/widget/SettingsMainSwitchBar;

    iput-object p2, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mNearbyScanningSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final init()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningUtil;->getDBInt(Landroid/content/ContentResolver;)I

    move-result v0

    const-string/jumbo v1, "nsValue value : "

    const-string v2, "NearbyScanningEnabler"

    invoke-static {v0, v1, v2}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mNearbyScanningSettingsSwitch:Landroidx/preference/SwitchPreferenceCompat;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mOnPreferenceChangeListener:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$3;

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    iput-boolean v1, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mIsInit:Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mNearbyScanningSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mOnCheckedChangeListener:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$2;

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->addOnSwitchChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {v0}, Landroidx/appcompat/widget/SeslSwitchBar;->show()V

    iput-boolean v1, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mIsInit:Z

    :cond_1
    :goto_0
    const-string p0, "Switch is null"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onPause()V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mIsInit:Z

    const-string v1, "NearbyScanningEnabler"

    if-nez v0, :cond_0

    const-string p0, "Init is failed"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    const-string p0, "Context is null"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-nez v0, :cond_2

    const-string p0, "ContentResolver is null"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mNearbyScanningObserver:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$1;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public final onResume()V
    .locals 5

    iget-boolean v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mIsInit:Z

    const-string v1, "NearbyScanningEnabler"

    if-nez v0, :cond_0

    const-string p0, "Init is failed"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    const-string p0, "Context is null"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-nez v0, :cond_2

    const-string p0, "ContentResolver is null"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const/4 v2, 0x1

    :try_start_0
    const-string/jumbo v3, "nearby_scanning_enabled"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mNearbyScanningObserver:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$1;

    invoke-virtual {v0, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningUtil;->getDBInt(Landroid/content/ContentResolver;)I

    move-result v0

    iget-object v3, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mNearbyScanningSettingsSwitch:Landroidx/preference/SwitchPreferenceCompat;

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    if-ne v0, v2, :cond_3

    goto :goto_1

    :cond_3
    move v2, v4

    :goto_1
    invoke-virtual {v3, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void

    :cond_4
    iget-object p0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mNearbyScanningSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-eqz p0, :cond_6

    if-ne v0, v2, :cond_5

    goto :goto_2

    :cond_5
    move v2, v4

    :goto_2
    invoke-virtual {p0, v2}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    return-void

    :cond_6
    const-string p0, "Switch is null"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
