.class public Lcom/samsung/android/settings/usefulfeature/motionandgestures/fingersensorgesture/FingerSensorGestureSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field public mContext:Landroid/content/Context;

.field public final mFingerSensorGestureObserver:Lcom/samsung/android/settings/usefulfeature/motionandgestures/fingersensorgesture/FingerSensorGestureSettings$1;

.field public final mFingerSensorGestureSpayObserver:Lcom/samsung/android/settings/usefulfeature/motionandgestures/fingersensorgesture/FingerSensorGestureSettings$1;

.field public mNotificationPanel:Landroidx/preference/SecSwitchPreference;

.field public mPreviewPreference:Lcom/android/settingslib/widget/LayoutPreference;

.field public mSamsungPay:Landroidx/preference/SecSwitchPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/motionandgestures/fingersensorgesture/FingerSensorGestureSettings$4;

    const v1, 0x7f170196

    invoke-direct {v0, v1}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>(I)V

    sput-object v0, Lcom/samsung/android/settings/usefulfeature/motionandgestures/fingersensorgesture/FingerSensorGestureSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/motionandgestures/fingersensorgesture/FingerSensorGestureSettings;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/motionandgestures/fingersensorgesture/FingerSensorGestureSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/samsung/android/settings/usefulfeature/motionandgestures/fingersensorgesture/FingerSensorGestureSettings$1;-><init>(Lcom/samsung/android/settings/usefulfeature/motionandgestures/fingersensorgesture/FingerSensorGestureSettings;Landroid/os/Handler;I)V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/motionandgestures/fingersensorgesture/FingerSensorGestureSettings;->mFingerSensorGestureObserver:Lcom/samsung/android/settings/usefulfeature/motionandgestures/fingersensorgesture/FingerSensorGestureSettings$1;

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/motionandgestures/fingersensorgesture/FingerSensorGestureSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/samsung/android/settings/usefulfeature/motionandgestures/fingersensorgesture/FingerSensorGestureSettings$1;-><init>(Lcom/samsung/android/settings/usefulfeature/motionandgestures/fingersensorgesture/FingerSensorGestureSettings;Landroid/os/Handler;I)V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/motionandgestures/fingersensorgesture/FingerSensorGestureSettings;->mFingerSensorGestureSpayObserver:Lcom/samsung/android/settings/usefulfeature/motionandgestures/fingersensorgesture/FingerSensorGestureSettings$1;

    return-void
.end method

.method public static isSamsungPayGestureEnabled(Landroid/content/Context;)Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "content://com.samsung.android.spay.common.share/global"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v2, "GET_global"

    const-string/jumbo v3, "samsung_pay_favorite_cards_on_home"

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    const-string/jumbo v1, "value"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    move v0, v1

    goto :goto_3

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :catch_2
    move-exception p0

    goto :goto_2

    :goto_0
    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_3

    :goto_1
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_3

    :goto_2
    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :cond_0
    :goto_3
    return v0
.end method

.method public static isSamsungPayGestureVisible(Landroid/content/Context;)Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "content://com.samsung.android.spay.common.share/global"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v2, "GET_global"

    const-string/jumbo v3, "samsung_pay_provisioning_status"

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    const-string/jumbo v1, "value"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    move v0, v1

    goto :goto_3

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :catch_2
    move-exception p0

    goto :goto_2

    :goto_0
    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_3

    :goto_1
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_3

    :goto_2
    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :cond_0
    :goto_3
    return v0
.end method


# virtual methods
.method public final getFragmentTitleResId(Landroid/content/Context;)I
    .locals 0

    const p0, 0x7f140f96

    return p0
.end method

.method public final getHierarchicalParentFragment(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const-class p0, Lcom/samsung/android/settings/usefulfeature/motionandgestures/MotionAndGestureSettings;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x2041

    return p0
.end method

.method public final getTopLevelPreferenceKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "top_level_advanced_features"

    return-object p0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/motionandgestures/fingersensorgesture/FingerSensorGestureSettings;->mContext:Landroid/content/Context;

    const p1, 0x7f170196

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->setAutoRemoveInsetCategory(Z)V

    const-string p1, "finger_sensor_gesture_preview"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/widget/LayoutPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/motionandgestures/fingersensorgesture/FingerSensorGestureSettings;->mPreviewPreference:Lcom/android/settingslib/widget/LayoutPreference;

    const-string p1, "open_notification_panel"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SecSwitchPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/motionandgestures/fingersensorgesture/FingerSensorGestureSettings;->mNotificationPanel:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string p1, "open_samsung_pay"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SecSwitchPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/motionandgestures/fingersensorgesture/FingerSensorGestureSettings;->mSamsungPay:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method public final onPause()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/motionandgestures/fingersensorgesture/FingerSensorGestureSettings;->mFingerSensorGestureObserver:Lcom/samsung/android/settings/usefulfeature/motionandgestures/fingersensorgesture/FingerSensorGestureSettings$1;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/motionandgestures/fingersensorgesture/FingerSensorGestureSettings;->mFingerSensorGestureSpayObserver:Lcom/samsung/android/settings/usefulfeature/motionandgestures/fingersensorgesture/FingerSensorGestureSettings$1;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    return-void
.end method

.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/motionandgestures/fingersensorgesture/FingerSensorGestureSettings;->mSamsungPay:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x2041

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "fingerprint_gesture_spay"

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/motionandgestures/fingersensorgesture/FingerSensorGestureSettings;->mSamsungPay:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p0, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    const/16 p0, 0x2043

    invoke-static {v1, p0, p2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIZ)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/motionandgestures/fingersensorgesture/FingerSensorGestureSettings;->mNotificationPanel:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "fingerprint_gesture_quick"

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/motionandgestures/fingersensorgesture/FingerSensorGestureSettings;->mNotificationPanel:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p0, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    const/16 p0, 0x2042

    invoke-static {v1, p0, p2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIZ)V

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final onResume()V
    .locals 12

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/motionandgestures/fingersensorgesture/FingerSensorGestureSettings;->mPreviewPreference:Lcom/android/settingslib/widget/LayoutPreference;

    const/4 v1, 0x1

    const-string v2, "FingerSensorGestureSettings"

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v5, 0x7f0a10d1

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/16 v5, 0xf

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->semSetRoundedCorners(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f060738

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/widget/LinearLayout;->semSetRoundedCornerColor(II)V

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/motionandgestures/fingersensorgesture/FingerSensorGestureSettings;->mPreviewPreference:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v0, v0, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v5, 0x7f0a00f0

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const-string v5, "com.samsung.android.biometrics.app.setting"

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v6

    const-string v7, "finger_sensor_gesture_anim"

    const-string v8, "drawable"

    invoke-virtual {v6, v7, v8, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v6, v5, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v5
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "getFingerSensorGestureImage : exception = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v3

    :goto_0
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/AnimationDrawable;

    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/motionandgestures/fingersensorgesture/FingerSensorGestureSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "remove_animations"

    invoke-static {v6, v7, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v1, :cond_0

    move v6, v1

    goto :goto_1

    :cond_0
    move v6, v4

    :goto_1
    if-eqz v5, :cond_1

    if-nez v6, :cond_1

    new-instance v6, Lcom/samsung/android/settings/usefulfeature/motionandgestures/fingersensorgesture/FingerSensorGestureSettings$3;

    invoke-direct {v6, v5}, Lcom/samsung/android/settings/usefulfeature/motionandgestures/fingersensorgesture/FingerSensorGestureSettings$3;-><init>(Landroid/graphics/drawable/AnimationDrawable;)V

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/motionandgestures/fingersensorgesture/FingerSensorGestureSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->supportFingerSensorGestureSpay(Landroid/content/Context;)Z

    move-result v0

    const-string v5, "fingerprint_gesture_spay"

    const-string v6, "fingerprint_gesture_quick"

    const/16 v7, 0xc

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/motionandgestures/fingersensorgesture/FingerSensorGestureSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/motionandgestures/fingersensorgesture/FingerSensorGestureSettings;->isSamsungPayGestureVisible(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/motionandgestures/fingersensorgesture/FingerSensorGestureSettings;->mSamsungPay:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {v0, v7}, Landroidx/preference/Preference;->seslSetRoundedBg(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/motionandgestures/fingersensorgesture/FingerSensorGestureSettings;->mSamsungPay:Landroidx/preference/SecSwitchPreference;

    iget-object v7, p0, Lcom/samsung/android/settings/usefulfeature/motionandgestures/fingersensorgesture/FingerSensorGestureSettings;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/samsung/android/settings/usefulfeature/motionandgestures/fingersensorgesture/FingerSensorGestureSettings;->isSamsungPayGestureEnabled(Landroid/content/Context;)Z

    move-result v7

    invoke-virtual {v0, v7}, Landroidx/preference/Preference;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_2

    :cond_2
    move v0, v4

    :goto_2
    iget-object v7, p0, Lcom/samsung/android/settings/usefulfeature/motionandgestures/fingersensorgesture/FingerSensorGestureSettings;->mSamsungPay:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {v7, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/motionandgestures/fingersensorgesture/FingerSensorGestureSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "samsung pay title and summary is not read"

    const-string v8, ""

    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/motionandgestures/fingersensorgesture/FingerSensorGestureSettings;->mSamsungPay:Landroidx/preference/SecSwitchPreference;

    if-eqz v9, :cond_a

    :try_start_1
    const-string v9, "content://com.samsung.android.spay.common.share/global"

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v10, "GET_global"

    const-string/jumbo v11, "samsungwallet_finger_sensor_gesture"

    invoke-virtual {v0, v9, v10, v11, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v3, "value"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_7

    if-ne v3, v1, :cond_3

    move v3, v1

    goto :goto_3

    :cond_3
    move v3, v4

    :goto_3
    :try_start_2
    const-string/jumbo v9, "title"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_5

    :try_start_3
    const-string v10, "desc"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3

    :try_start_4
    const-string v11, "app_name"

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_8

    :catch_1
    move-exception v0

    goto :goto_6

    :catch_2
    move-exception v0

    goto :goto_7

    :catch_3
    move-exception v0

    move-object v10, v8

    goto :goto_6

    :catch_4
    move-exception v0

    move-object v10, v8

    goto :goto_7

    :catch_5
    move-exception v0

    :goto_4
    move-object v9, v8

    move-object v10, v9

    goto :goto_6

    :catch_6
    move-exception v0

    :goto_5
    move-object v9, v8

    move-object v10, v9

    goto :goto_7

    :catch_7
    move-exception v0

    move v3, v1

    goto :goto_4

    :catch_8
    move-exception v0

    move v3, v1

    goto :goto_5

    :goto_6
    invoke-static {v2, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    :goto_7
    invoke-static {v2, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_8
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_4
    const-string/jumbo v0, "setOpenSamsungPayText : unable to get title or summary or name from Samsung Wallet"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/motionandgestures/fingersensorgesture/FingerSensorGestureSettings;->mContext:Landroid/content/Context;

    const-string v2, "com.samsung.android.spay"

    invoke-static {v0, v2}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v2, "com.samsung.android.spaymini"

    :cond_5
    const-string/jumbo v0, "spaymini"

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/motionandgestures/fingersensorgesture/FingerSensorGestureSettings;->mContext:Landroid/content/Context;

    const v2, 0x7f141b7b

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/motionandgestures/fingersensorgesture/FingerSensorGestureSettings;->mContext:Landroid/content/Context;

    const v2, 0x7f141f96

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/motionandgestures/fingersensorgesture/FingerSensorGestureSettings;->mContext:Landroid/content/Context;

    const v2, 0x7f141b7a

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_9

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/motionandgestures/fingersensorgesture/FingerSensorGestureSettings;->mContext:Landroid/content/Context;

    const v2, 0x7f141b7e

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/motionandgestures/fingersensorgesture/FingerSensorGestureSettings;->mContext:Landroid/content/Context;

    const v2, 0x7f141f97

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/motionandgestures/fingersensorgesture/FingerSensorGestureSettings;->mContext:Landroid/content/Context;

    const v2, 0x7f141b7c

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    :cond_7
    :goto_9
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/motionandgestures/fingersensorgesture/FingerSensorGestureSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/motionandgestures/fingersensorgesture/FingerSensorGestureSettings;->isSamsungPayGestureEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/motionandgestures/fingersensorgesture/FingerSensorGestureSettings;->mContext:Landroid/content/Context;

    const v2, 0x7f141b7d

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v0, v2, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    :cond_8
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/motionandgestures/fingersensorgesture/FingerSensorGestureSettings;->mSamsungPay:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/motionandgestures/fingersensorgesture/FingerSensorGestureSettings;->mSamsungPay:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {v0, v9}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/motionandgestures/fingersensorgesture/FingerSensorGestureSettings;->mSamsungPay:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {v0, v10}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_a

    :cond_9
    const-string v0, "open_samsung_pay"

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/motionandgestures/fingersensorgesture/FingerSensorGestureSettings;->mNotificationPanel:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {v0, v7}, Landroidx/preference/Preference;->seslSetRoundedBg(I)V

    :cond_a
    :goto_a
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    iput-boolean v4, v0, Landroidx/recyclerview/widget/RecyclerView;->mDrawLastRoundedCorner:Z

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/motionandgestures/fingersensorgesture/FingerSensorGestureSettings;->mNotificationPanel:Landroidx/preference/SecSwitchPreference;

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_b

    move v4, v1

    :cond_b
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/motionandgestures/fingersensorgesture/FingerSensorGestureSettings;->mNotificationPanel:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {v0, v4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_c
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v6}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/motionandgestures/fingersensorgesture/FingerSensorGestureSettings;->mFingerSensorGestureObserver:Lcom/samsung/android/settings/usefulfeature/motionandgestures/fingersensorgesture/FingerSensorGestureSettings$1;

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/motionandgestures/fingersensorgesture/FingerSensorGestureSettings;->mFingerSensorGestureSpayObserver:Lcom/samsung/android/settings/usefulfeature/motionandgestures/fingersensorgesture/FingerSensorGestureSettings$1;

    invoke-virtual {v0, v2, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method
