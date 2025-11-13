.class public Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "NavigationBarGestureDetailedSettings.java"


# instance fields
.field private mBackGesturePref:Lcom/samsung/android/settings/navigationbar/NavigationBarBackGesturePreference;

.field private mBackGestureSensitivityObserver:Landroid/database/ContentObserver;

.field private mContext:Landroid/content/Context;

.field private mDetailedGestureDefaultType:I

.field private mDetailedTypePref:Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;

.field private mHandler:Landroid/os/Handler;

.field private mIndicatorView:Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorView;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mLastConfiguration:Landroid/content/res/Configuration;

.field private mOverlayChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mOverlayInteractor:Lcom/samsung/android/settings/navigationbar/NavigationBarOverlayInteractor;

.field private mRotationWatcher:Landroid/view/IRotationWatcher$Stub;

.field private mSwipeToOpenAssistantApp:Landroidx/preference/SecSwitchPreference;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public static synthetic $r8$lambda$APXhzmy4RqAMSpVI5Tagqacydm0(Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->lambda$updatePreferences$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$tfKApbt6l9g3mA7UELMSq_kLL3U(Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->lambda$addPreferenceListener$0(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmBackGesturePref(Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;)Lcom/samsung/android/settings/navigationbar/NavigationBarBackGesturePreference;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mBackGesturePref:Lcom/samsung/android/settings/navigationbar/NavigationBarBackGesturePreference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIndicatorView(Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;)Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mIndicatorView:Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorView;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 3

    .line 29
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 42
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    .line 45
    iput v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mDetailedGestureDefaultType:I

    .line 47
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.OVERLAY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mIntentFilter:Landroid/content/IntentFilter;

    .line 48
    new-instance v0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings$1;-><init>(Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mOverlayChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 55
    new-instance v0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings$2;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings$2;-><init>(Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mBackGestureSensitivityObserver:Landroid/database/ContentObserver;

    .line 62
    new-instance v0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings$3;-><init>(Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mRotationWatcher:Landroid/view/IRotationWatcher$Stub;

    return-void
.end method

.method private addPreferenceListener()V
    .locals 2

    .line 203
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mSwipeToOpenAssistantApp:Landroidx/preference/SecSwitchPreference;

    new-instance v1, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method private initPreferences()V
    .locals 2

    .line 186
    sget v0, Lcom/android/settings/R$xml;->samsung_navigationbar_settings_gesture_detailed:I

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    const-string v0, "detailed_type"

    .line 188
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mDetailedTypePref:Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;

    const-string v0, "back_gesture"

    .line 189
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGesturePreference;

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mBackGesturePref:Lcom/samsung/android/settings/navigationbar/NavigationBarBackGesturePreference;

    const-string v0, "swipe_to_open_assistant_app"

    .line 190
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SecSwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mSwipeToOpenAssistantApp:Landroidx/preference/SecSwitchPreference;

    .line 192
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mDetailedTypePref:Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;

    invoke-virtual {v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;->registerAnimationListener()V

    .line 194
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mBackGesturePref:Lcom/samsung/android/settings/navigationbar/NavigationBarBackGesturePreference;

    if-eqz v0, :cond_0

    .line 195
    invoke-virtual {v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGesturePreference;->getProgress()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SeekBarPreference;->setSeekBarContentDescription(Ljava/lang/CharSequence;)V

    .line 196
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mBackGesturePref:Lcom/samsung/android/settings/navigationbar/NavigationBarBackGesturePreference;

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mIndicatorView:Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorView;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGesturePreference;->setIndicatorView(Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorView;)V

    .line 199
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->addPreferenceListener()V

    return-void
.end method

.method private synthetic lambda$addPreferenceListener$0(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 204
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 205
    iget-object p2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v0, "assist_touch_gesture_enabled"

    invoke-static {p2, v0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 207
    iget-object p0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mSwipeToOpenAssistantApp:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$updatePreferences$1()V
    .locals 0

    .line 244
    iget-object p0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mDetailedTypePref:Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;->playAnimation()V

    return-void
.end method

.method private saveLastConfiguration()V
    .locals 1

    .line 248
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mLastConfiguration:Landroid/content/res/Configuration;

    .line 249
    iget-object p0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    return-void
.end method

.method private updatePreferences()V
    .locals 8

    .line 213
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "NavigationBarGestureDetailedSettings"

    const-string v1, "Navigation bar settings can\'t open in DeX mode."

    .line 214
    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    .line 218
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mDetailedGestureDefaultType:I

    const-string v2, "navigation_bar_gesture_detail_type"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 219
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "navigation_bar_gesture_hint"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    .line 220
    :goto_0
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x111018a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v3

    goto :goto_1

    :cond_2
    move v4, v2

    .line 222
    :goto_1
    iget-object v5, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mSwipeToOpenAssistantApp:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {v5}, Landroidx/preference/Preference;->getOrder()I

    move-result v5

    .line 223
    iget-object v6, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mBackGesturePref:Lcom/samsung/android/settings/navigationbar/NavigationBarBackGesturePreference;

    add-int/2addr v5, v3

    invoke-virtual {v6, v5}, Landroidx/preference/Preference;->setOrder(I)V

    if-ne v0, v3, :cond_4

    .line 225
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettingsUtil;->isDefaultDigitalAssistantAppSet(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 226
    iget-object v5, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 228
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x111002e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    const-string v7, "assist_touch_gesture_enabled"

    .line 226
    invoke-static {v5, v7, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_3

    move v2, v3

    .line 231
    :cond_3
    iget-object v5, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mSwipeToOpenAssistantApp:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {v5, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 232
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    iget-object v5, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mSwipeToOpenAssistantApp:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {v2, v5}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_2

    .line 234
    :cond_4
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    iget-object v5, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mSwipeToOpenAssistantApp:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {v2, v5}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :goto_2
    if-eqz v1, :cond_6

    if-ne v0, v3, :cond_5

    goto :goto_3

    .line 242
    :cond_5
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mBackGesturePref:Lcom/samsung/android/settings/navigationbar/NavigationBarBackGesturePreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_4

    .line 238
    :cond_6
    :goto_3
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mBackGesturePref:Lcom/samsung/android/settings/navigationbar/NavigationBarBackGesturePreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 239
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mBackGesturePref:Lcom/samsung/android/settings/navigationbar/NavigationBarBackGesturePreference;

    invoke-virtual {v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGesturePreference;->updateDetailInfo()V

    .line 240
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mIndicatorView:Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorView;

    invoke-virtual {v0, v4}, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorView;->setNavBarCanMove(Z)V

    .line 244
    :goto_4
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public getFragmentTitleResId(Landroid/content/Context;)I
    .locals 0

    .line 172
    sget p0, Lcom/android/settings/R$string;->navigationbar_full_screen_gestures:I

    return p0
.end method

.method public getHelpResource()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getHierarchicalParentFragment(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 177
    const-class p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getTopLevelPreferenceKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const-string p0, "top_level_display"

    return-object p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 155
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 157
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mLastConfiguration:Landroid/content/res/Configuration;

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    .line 158
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->setPreferenceScreen(Landroidx/preference/PreferenceScreen;)V

    .line 159
    invoke-direct {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->initPreferences()V

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mOverlayInteractor:Lcom/samsung/android/settings/navigationbar/NavigationBarOverlayInteractor;

    invoke-virtual {v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarOverlayInteractor;->getInteractionMode()I

    move-result v0

    if-nez v0, :cond_1

    .line 163
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    .line 166
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mLastConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 167
    invoke-direct {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->updatePreferences()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 83
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 85
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mContext:Landroid/content/Context;

    .line 86
    new-instance v0, Lcom/samsung/android/settings/navigationbar/NavigationBarOverlayInteractor;

    invoke-direct {v0, p1}, Lcom/samsung/android/settings/navigationbar/NavigationBarOverlayInteractor;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mOverlayInteractor:Lcom/samsung/android/settings/navigationbar/NavigationBarOverlayInteractor;

    .line 88
    new-instance p1, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mIndicatorView:Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorView;

    .line 89
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mWindowManager:Landroid/view/WindowManager;

    .line 91
    iget-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget-object p1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result p1

    .line 92
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mIndicatorView:Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorView;->setRotation(I)V

    .line 94
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mRotationWatcher:Landroid/view/IRotationWatcher$Stub;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/view/IWindowManager;->watchRotation(Landroid/view/IRotationWatcher;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 96
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    const/4 p1, 0x1

    .line 100
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->setAnimationAllowed(Z)V

    .line 101
    invoke-direct {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->saveLastConfiguration()V

    .line 102
    invoke-direct {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->initPreferences()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 147
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onDestroy()V

    .line 148
    iget-object p0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mDetailedTypePref:Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;

    if-eqz p0, :cond_0

    .line 149
    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;->unregisterAnimationListener()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 126
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    .line 127
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mWindowManager:Landroid/view/WindowManager;

    iget-object p0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mIndicatorView:Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorView;

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 118
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 120
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mIndicatorView:Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorView;

    invoke-virtual {v1}, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorView;->getLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    invoke-direct {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->updatePreferences()V

    return-void
.end method

.method public onStart()V
    .locals 9

    .line 107
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onStart()V

    const-string v0, "navigation_bar_gesture_detail_type"

    .line 108
    invoke-static {v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettingsUtil;->getDefaultSettingsValue(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mDetailedGestureDefaultType:I

    .line 109
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 111
    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mOverlayChangedReceiver:Landroid/content/BroadcastReceiver;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v6, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 112
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "navigation_bar_back_gesture_sensitivity"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mBackGestureSensitivityObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 132
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onStop()V

    .line 134
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mOverlayChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 135
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mBackGestureSensitivityObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 138
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mRotationWatcher:Landroid/view/IRotationWatcher$Stub;

    invoke-interface {v0, p0}, Landroid/view/IWindowManager;->removeRotationWatcher(Landroid/view/IRotationWatcher;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 140
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method
