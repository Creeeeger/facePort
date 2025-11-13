.class public Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "FingerSensorGestureSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mFingerSensorGestureObserver:Landroid/database/ContentObserver;

.field private final mFingerSensorGestureSpayObserver:Landroid/database/ContentObserver;

.field private mNotificationPanel:Landroidx/preference/SecSwitchPreference;

.field private mPreviewPreference:Lcom/android/settingslib/widget/LayoutPreference;

.field private mSamsungPay:Landroidx/preference/SecSwitchPreference;


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNotificationPanel(Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;)Landroidx/preference/SecSwitchPreference;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->mNotificationPanel:Landroidx/preference/SecSwitchPreference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSamsungPay(Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;)Landroidx/preference/SecSwitchPreference;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->mSamsungPay:Landroidx/preference/SecSwitchPreference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smisSamsungPayGestureVisible(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->isSamsungPayGestureVisible(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 260
    new-instance v0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings$4;

    sget v1, Lcom/android/settings/R$xml;->sec_finger_sensor_gesture:I

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings$4;-><init>(I)V

    sput-object v0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 40
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 50
    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->mContext:Landroid/content/Context;

    .line 72
    new-instance v0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings$1;-><init>(Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->mFingerSensorGestureObserver:Landroid/database/ContentObserver;

    .line 83
    new-instance v0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings$2;-><init>(Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->mFingerSensorGestureSpayObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method private createFingerGestureView()V
    .locals 4

    .line 117
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->mPreviewPreference:Lcom/android/settingslib/widget/LayoutPreference;

    if-eqz v0, :cond_0

    .line 118
    sget v1, Lcom/android/settings/R$id;->useful_feature_hub_container:I

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/16 v1, 0xf

    .line 119
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->semSetRoundedCorners(I)V

    .line 120
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$color;->sec_widget_round_and_bgcolor:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->semSetRoundedCornerColor(II)V

    .line 121
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->mPreviewPreference:Lcom/android/settingslib/widget/LayoutPreference;

    sget v1, Lcom/android/settings/R$id;->animation:I

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 122
    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->getFingerSensorGestureImage()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 123
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v1, :cond_0

    .line 125
    new-instance v2, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings$3;

    invoke-direct {v2, p0, v1}, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings$3;-><init>(Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;Landroid/graphics/drawable/AnimationDrawable;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->supportFingerSensorGestureSpay(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0xc

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->isSamsungPayGestureVisible(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 133
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->mSamsungPay:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->seslSetRoundedBg(I)V

    .line 134
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->mSamsungPay:Landroidx/preference/SecSwitchPreference;

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->isSamsungPayGestureEnabled(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 135
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "fingerprint_gesture_spay"

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 136
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->mSamsungPay:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v2, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 137
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->setOpenSamsungPayText(Landroid/content/Context;)V

    goto :goto_1

    :cond_2
    const-string v0, "open_samsung_pay"

    .line 139
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    .line 140
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->mNotificationPanel:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->seslSetRoundedBg(I)V

    .line 142
    :goto_1
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->seslSetLastRoundedCorner(Z)V

    .line 143
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->mNotificationPanel:Landroidx/preference/SecSwitchPreference;

    if-eqz v0, :cond_4

    .line 144
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "fingerprint_gesture_quick"

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    move v1, v3

    :goto_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 145
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->mNotificationPanel:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_4
    return-void
.end method

.method private getFingerSensorGestureImage()Landroid/graphics/drawable/Drawable;
    .locals 4

    const-string v0, "com.samsung.android.biometrics.app.setting"

    const/4 v1, 0x0

    .line 318
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p0

    const-string v2, "finger_sensor_gesture_anim"

    const-string v3, "drawable"

    .line 319
    invoke-virtual {p0, v2, v3, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFingerSensorGestureImage : exception = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "FingerSensorGestureSettings"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method private initPreference()V
    .locals 1

    .line 107
    sget v0, Lcom/android/settings/R$xml;->sec_finger_sensor_gesture:I

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    const/4 v0, 0x0

    .line 108
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->setAutoRemoveInsetCategory(Z)V

    const-string v0, "finger_sensor_gesture_preview"

    .line 109
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/LayoutPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->mPreviewPreference:Lcom/android/settingslib/widget/LayoutPreference;

    const-string v0, "open_notification_panel"

    .line 110
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SecSwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->mNotificationPanel:Landroidx/preference/SecSwitchPreference;

    .line 111
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "open_samsung_pay"

    .line 112
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SecSwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->mSamsungPay:Landroidx/preference/SecSwitchPreference;

    .line 113
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method private static isSamsungPayGestureEnabled(Landroid/content/Context;)Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "content://com.samsung.android.spay.common.share/global"

    .line 187
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 188
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v2, "GET_global"

    const-string v3, "samsung_pay_favorite_cards_on_home"

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    const-string v1, "value"

    .line 190
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 191
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 197
    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 195
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p0

    .line 193
    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :cond_0
    :goto_0
    return v0
.end method

.method private static isSamsungPayGestureVisible(Landroid/content/Context;)Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "content://com.samsung.android.spay.common.share/global"

    .line 205
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 206
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v2, "GET_global"

    const-string v3, "samsung_pay_provisioning_status"

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    const-string v1, "value"

    .line 208
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 209
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 215
    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 213
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p0

    .line 211
    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :cond_0
    :goto_0
    return v0
.end method

.method private setOpenSamsungPayText(Landroid/content/Context;)V
    .locals 9

    const-string v0, "samsung pay title and summary is not read"

    const-string v1, "FingerSensorGestureSettings"

    const-string v2, ""

    .line 221
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->mSamsungPay:Landroidx/preference/SecSwitchPreference;

    if-eqz v3, :cond_6

    const/4 v3, 0x0

    const/4 v4, 0x1

    :try_start_0
    const-string v5, "content://com.samsung.android.spay.common.share/global"

    .line 228
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 229
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v6, "GET_global"

    const-string v7, "samsungwallet_finger_sensor_gesture"

    const/4 v8, 0x0

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    const-string v5, "value"

    .line 230
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_6

    if-ne v5, v4, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    move v5, v3

    :goto_0
    :try_start_1
    const-string v6, "title"

    .line 231
    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_4

    :try_start_2
    const-string v7, "desc"

    .line 232
    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    :try_start_3
    const-string v8, "app_name"

    .line 233
    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_2

    :catch_2
    move-exception p1

    move-object v7, v2

    goto :goto_1

    :catch_3
    move-exception p1

    move-object v7, v2

    goto :goto_2

    :catch_4
    move-exception p1

    move-object v6, v2

    move-object v7, v6

    goto :goto_1

    :catch_5
    move-exception p1

    move-object v6, v2

    move-object v7, v6

    goto :goto_2

    :catch_6
    move-exception p1

    move-object v6, v2

    move-object v7, v6

    move v5, v4

    .line 237
    :goto_1
    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :catch_7
    move-exception p1

    move-object v6, v2

    move-object v7, v6

    move v5, v4

    .line 235
    :goto_2
    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 239
    :goto_3
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_1
    const-string p1, "setOpenSamsungPayText : unable to get title or summary or name from Samsung Wallet"

    .line 240
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/settings/Rune;->supportSpayPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "spaymini"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 242
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->open_samsung_pay_mini_title:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 243
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->samsung_pay_mini_title:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 244
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->open_samsung_pay_mini_summary:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_4

    .line 246
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->open_samsung_pay_title:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 247
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->samsung_pay_title:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 248
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->open_samsung_pay_summary:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 251
    :cond_3
    :goto_4
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "fingerprint_gesture_quick"

    invoke-static {p1, v0, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_4

    move p1, v4

    goto :goto_5

    :cond_4
    move p1, v3

    :goto_5
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 252
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->isSamsungPayGestureEnabled(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 253
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->open_samsung_pay_summary_quick_access:I

    new-array v1, v4, [Ljava/lang/Object;

    aput-object v2, v1, v3

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 255
    :cond_5
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->mSamsungPay:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p1, v5}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 256
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->mSamsungPay:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p1, v6}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 257
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->mSamsungPay:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p0, v7}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_6
    return-void
.end method


# virtual methods
.method public getFragmentTitleResId(Landroid/content/Context;)I
    .locals 0

    .line 59
    sget p0, Lcom/android/settings/R$string;->finger_sensor_gesture_title:I

    return p0
.end method

.method public getHierarchicalParentFragment(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 64
    const-class p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x2041

    return p0
.end method

.method public getTopLevelPreferenceKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const-string p0, "top_level_advanced_features"

    return-object p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 97
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 98
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->mContext:Landroid/content/Context;

    .line 99
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com.samsung.android.spay.quickgesture"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 100
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "fingerprint_gesture_quick"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 101
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "fingerprint_gesture_spay"

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 103
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->initPreference()V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 163
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->mFingerSensorGestureObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 164
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->mFingerSensorGestureSpayObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 165
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 171
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 172
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->mSamsungPay:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "fingerprint_gesture_spay"

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 174
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->mSamsungPay:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p1, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 175
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->getMetricsCategory()I

    move-result p0

    const/16 p1, 0x2043

    invoke-static {p0, p1, p2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIZ)V

    goto :goto_0

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->mNotificationPanel:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 177
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "fingerprint_gesture_quick"

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 178
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->mNotificationPanel:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p1, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 179
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->getMetricsCategory()I

    move-result p0

    const/16 p1, 0x2042

    invoke-static {p0, p1, p2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIZ)V

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public onResume()V
    .locals 4

    .line 152
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 153
    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->createFingerGestureView()V

    .line 155
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "fingerprint_gesture_quick"

    .line 156
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->mFingerSensorGestureObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    .line 155
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 157
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "fingerprint_gesture_spay"

    .line 158
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->mFingerSensorGestureSpayObserver:Landroid/database/ContentObserver;

    .line 157
    invoke-virtual {v0, v1, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method
