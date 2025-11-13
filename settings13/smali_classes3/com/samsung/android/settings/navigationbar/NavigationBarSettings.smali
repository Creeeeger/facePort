.class public Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "NavigationBarSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static MODE_BOTTOM_GESTURE:I = 0x0

.field private static MODE_BUTTON:I = 0x0

.field private static MODE_GESTURE:I = 0x1

.field private static MODE_SIDE_AND_BOTTOM_GESTURE:I = 0x1

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

.field public static final STATUS_LOGGING_PROVIDER:Lcom/samsung/android/settings/logging/status/StatusLogger$StatusLoggingProvider;


# instance fields
.field private mBlockGestureWithSPenPreference:Landroidx/preference/SecSwitchPreference;

.field private mButtonOrderCategory:Lcom/samsung/android/settings/widget/SecSubHeaderPreference;

.field private mButtonOrderObserver:Landroid/database/ContentObserver;

.field private mButtonOrderPreference:Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;

.field private mButtonPositionPreference:Landroidx/preference/SecDropDownPreference;

.field private mContext:Landroid/content/Context;

.field private mDetailedSettingPreference:Landroidx/preference/SecPreferenceScreen;

.field private mGestureContainerPreference:Lcom/samsung/android/settings/widget/SecSubHeaderPreference;

.field private mGestureHintPreference:Landroidx/preference/SecSwitchPreference;

.field private mGesturePreference:Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mIsTaskBarEnabled:Z

.field private mLastConfiguration:Landroid/content/res/Configuration;

.field private mNavBarOverlayInteractor:Lcom/samsung/android/settings/navigationbar/NavigationBarOverlayInteractor;

.field private mOverlayChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

.field private mShowButtonToHideKeyboardPreference:Landroidx/preference/SecSwitchPreference;

.field private mSwitchAppsWhenHintHidden:Landroidx/preference/SecSwitchPreference;


# direct methods
.method public static synthetic $r8$lambda$5vXT96_ysipTzfahEFFPQ3Ib49E(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->lambda$addAllPreferenceListeners$2(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$AYbF_R5dxTFYy35ZajfcE2IQzaY(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->lambda$onCreate$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$CLEwJA_bMBI2EZ2AT2_xVbbgU8w(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->lambda$addAllPreferenceListeners$1(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$HZC4D6y78vnv_co88A4EG6Kt-LQ(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->lambda$addAllPreferenceListeners$5(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$TVZ_EG-x2XblMV_ljnHTpttJoOo(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->lambda$addAllPreferenceListeners$4(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$XnqKWS0Ib5W7f7EGoHPm-TDWMHM(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->lambda$addAllPreferenceListeners$3(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmGesturePreference(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mGesturePreference:Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfgetMODE_BUTTON()I
    .locals 1

    sget v0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->MODE_BUTTON:I

    return v0
.end method

.method static bridge synthetic -$$Nest$sfgetMODE_GESTURE()I
    .locals 1

    sget v0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->MODE_GESTURE:I

    return v0
.end method

.method static bridge synthetic -$$Nest$sfgetMODE_SIDE_AND_BOTTOM_GESTURE()I
    .locals 1

    sget v0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->MODE_SIDE_AND_BOTTOM_GESTURE:I

    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 466
    new-instance v0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$3;

    invoke-direct {v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$3;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

    .line 525
    new-instance v0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$4;

    invoke-direct {v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$4;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->STATUS_LOGGING_PROVIDER:Lcom/samsung/android/settings/logging/status/StatusLogger$StatusLoggingProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 48
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 82
    new-instance v0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$1;-><init>(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mButtonOrderObserver:Landroid/database/ContentObserver;

    .line 95
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.OVERLAY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mIntentFilter:Landroid/content/IntentFilter;

    .line 96
    new-instance v0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$2;-><init>(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mOverlayChangedReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)Landroid/content/ContentResolver;
    .locals 0

    .line 48
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    return-object p0
.end method

.method private addAllPreferenceListeners()V
    .locals 2

    .line 343
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mGestureHintPreference:Landroidx/preference/SecSwitchPreference;

    new-instance v1, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 356
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mBlockGestureWithSPenPreference:Landroidx/preference/SecSwitchPreference;

    new-instance v1, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 364
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mShowButtonToHideKeyboardPreference:Landroidx/preference/SecSwitchPreference;

    new-instance v1, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 371
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mButtonPositionPreference:Landroidx/preference/SecDropDownPreference;

    new-instance v1, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$$ExternalSyntheticLambda4;-><init>(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 384
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mSwitchAppsWhenHintHidden:Landroidx/preference/SecSwitchPreference;

    new-instance v1, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$$ExternalSyntheticLambda5;-><init>(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method private initPreferences()V
    .locals 3

    .line 202
    sget v0, Lcom/android/settings/R$xml;->samsung_navigationbar_settings:I

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    const-string v0, "gesture_preview"

    .line 204
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mGesturePreference:Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;

    const-string v0, "button_order_category"

    .line 205
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/widget/SecSubHeaderPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mButtonOrderCategory:Lcom/samsung/android/settings/widget/SecSubHeaderPreference;

    const-string v0, "button_order"

    .line 206
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mButtonOrderPreference:Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;

    const-string v0, "gesture_hint"

    .line 207
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SecSwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mGestureHintPreference:Landroidx/preference/SecSwitchPreference;

    const-string v0, "block_gestures_with_spen"

    .line 208
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SecSwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mBlockGestureWithSPenPreference:Landroidx/preference/SecSwitchPreference;

    const-string v0, "gesture_detailed"

    .line 209
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SecPreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mDetailedSettingPreference:Landroidx/preference/SecPreferenceScreen;

    const-string v0, "show_button_to_hide_keyboard"

    .line 210
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SecSwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mShowButtonToHideKeyboardPreference:Landroidx/preference/SecSwitchPreference;

    const-string v0, "button_position"

    .line 211
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SecDropDownPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mButtonPositionPreference:Landroidx/preference/SecDropDownPreference;

    .line 212
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettingsUtil;->isTaskBarEnabled(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mIsTaskBarEnabled:Z

    if-eqz v0, :cond_0

    .line 214
    invoke-direct {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->modifyTaskBarButtonPosition()V

    :cond_0
    const-string v0, "switch_apps_when_hint_hidden"

    .line 216
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SecSwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mSwitchAppsWhenHintHidden:Landroidx/preference/SecSwitchPreference;

    .line 217
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportNavigationBarForHardKey()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "gesture_container"

    .line 218
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/widget/SecSubHeaderPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mGestureContainerPreference:Lcom/samsung/android/settings/widget/SecSubHeaderPreference;

    .line 221
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mDetailedSettingPreference:Landroidx/preference/SecPreferenceScreen;

    invoke-virtual {v0}, Landroidx/preference/Preference;->getOrder()I

    move-result v0

    .line 222
    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mGestureHintPreference:Landroidx/preference/SecSwitchPreference;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setOrder(I)V

    .line 223
    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mSwitchAppsWhenHintHidden:Landroidx/preference/SecSwitchPreference;

    add-int/lit8 v2, v0, 0x2

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setOrder(I)V

    .line 224
    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mShowButtonToHideKeyboardPreference:Landroidx/preference/SecSwitchPreference;

    add-int/lit8 v2, v0, 0x3

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setOrder(I)V

    .line 225
    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mBlockGestureWithSPenPreference:Landroidx/preference/SecSwitchPreference;

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setOrder(I)V

    .line 227
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mButtonPositionPreference:Landroidx/preference/SecDropDownPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/SecDropDownPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 229
    invoke-direct {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->addAllPreferenceListeners()V

    .line 230
    invoke-direct {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->initRelativeLinkView()V

    return-void
.end method

.method private initRelativeLinkView()V
    .locals 2

    .line 449
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    if-nez v0, :cond_0

    .line 450
    new-instance v0, Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/widget/SecRelativeLinkView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    .line 452
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->updateRelativeLinks()V

    .line 453
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/widget/SecRelativeLinkView;->create(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$addAllPreferenceListeners$1(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .line 344
    iget-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettingsUtil;->getNavBarMode(Landroid/content/Context;)I

    move-result p1

    .line 345
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 346
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "navigation_bar_gesture_hint"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 348
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mGestureHintPreference:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {v0, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 349
    sget v0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->MODE_GESTURE:I

    if-ne p1, v0, :cond_1

    .line 350
    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->getMetricsCategory()I

    move-result p1

    const/16 v0, 0x1d3f

    if-eqz p2, :cond_0

    const-wide/16 v1, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    :goto_0
    invoke-static {p1, v0, v1, v2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    .line 352
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mNavBarOverlayInteractor:Lcom/samsung/android/settings/navigationbar/NavigationBarOverlayInteractor;

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarOverlayInteractor;->setInteractionMode()V

    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$addAllPreferenceListeners$2(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 357
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 358
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v0, "navigation_bar_block_gestures_with_spen"

    invoke-static {p2, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 359
    iget-object p2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mBlockGestureWithSPenPreference:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p2, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 360
    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->getMetricsCategory()I

    move-result p0

    const/16 p2, 0x1d41

    if-eqz p1, :cond_0

    const-wide/16 v0, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    invoke-static {p0, p2, v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$addAllPreferenceListeners$3(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 365
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "navigation_bar_button_to_hide_keyboard"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 366
    iget-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mShowButtonToHideKeyboardPreference:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 367
    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->getMetricsCategory()I

    move-result p0

    const/16 p1, 0x1d40

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    const-wide/16 v0, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    invoke-static {p0, p1, v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$addAllPreferenceListeners$4(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .line 372
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 373
    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->getMetricsCategory()I

    move-result p2

    int-to-long v0, p1

    const v2, 0xb65f9

    invoke-static {p2, v2, v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    .line 374
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    .line 375
    iget-boolean v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mIsTaskBarEnabled:Z

    if-eqz v0, :cond_0

    .line 376
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->updateButtonPositionNumberForTaskBar(I)I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    const-string v1, "navigationbar_key_position"

    .line 374
    invoke-static {p2, v1, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 378
    iget-object p2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mButtonPositionPreference:Landroidx/preference/SecDropDownPreference;

    iget-boolean v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mIsTaskBarEnabled:Z

    if-eqz v0, :cond_1

    .line 379
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->modifyButtonPositionNumberForTaskBar(I)I

    move-result p1

    .line 378
    :cond_1
    invoke-virtual {p2, p1}, Landroidx/preference/DropDownPreference;->setValueIndex(I)V

    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$addAllPreferenceListeners$5(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 385
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 386
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v0, "navigationbar_switch_apps_when_hint_hidden"

    invoke-static {p2, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 387
    iget-object p0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mSwitchAppsWhenHintHidden:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$onCreate$0()V
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mGesturePreference:Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->showOneHandModeDisablePopup()V

    return-void
.end method

.method private modifyButtonPositionNumberForTaskBar(I)I
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private modifyNavigationBarButtonPosition()V
    .locals 2

    .line 242
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mButtonPositionPreference:Landroidx/preference/SecDropDownPreference;

    sget v1, Lcom/android/settings/R$array;->navigationbar_position_entries:I

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setEntries(I)V

    .line 243
    iget-object p0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mButtonPositionPreference:Landroidx/preference/SecDropDownPreference;

    sget v0, Lcom/android/settings/R$array;->navigationbar_position_values:I

    invoke-virtual {p0, v0}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    return-void
.end method

.method private modifyTaskBarButtonPosition()V
    .locals 2

    .line 237
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mButtonPositionPreference:Landroidx/preference/SecDropDownPreference;

    sget v1, Lcom/android/settings/R$array;->taskbar_position_entries:I

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setEntries(I)V

    .line 238
    iget-object p0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mButtonPositionPreference:Landroidx/preference/SecDropDownPreference;

    sget v0, Lcom/android/settings/R$array;->taskbar_position_values:I

    invoke-virtual {p0, v0}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    return-void
.end method

.method private saveLastConfiguration()V
    .locals 1

    .line 197
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mLastConfiguration:Landroid/content/res/Configuration;

    .line 198
    iget-object p0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    return-void
.end method

.method private updateButtonPosition(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 316
    invoke-direct {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->modifyTaskBarButtonPosition()V

    goto :goto_0

    .line 318
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->modifyNavigationBarButtonPosition()V

    :goto_0
    return-void
.end method

.method private updateButtonPositionNumberForTaskBar(I)I
    .locals 0

    if-eqz p1, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    return p1
.end method

.method private updatePreferences()V
    .locals 12

    .line 247
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "NavigationBarSettings"

    if-eqz v0, :cond_0

    const-string v0, "Navigation bar settings can\'t open in DeX mode."

    .line 248
    invoke-static {v1, v0}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettingsUtil;->getNavBarMode(Landroid/content/Context;)I

    move-result v0

    .line 253
    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettingsUtil;->getDetailType(Landroid/content/Context;)I

    move-result v2

    .line 255
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "navigationbar_key_position"

    .line 256
    invoke-static {v4}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettingsUtil;->getDefaultSettingsValue(Ljava/lang/String;)I

    move-result v5

    .line 255
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 257
    iget-object v4, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettingsUtil;->isGestureHintOn(Landroid/content/Context;)Z

    move-result v4

    .line 258
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "navigation_bar_block_gestures_with_spen"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_1

    move v5, v6

    goto :goto_0

    :cond_1
    move v5, v7

    .line 259
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "navigation_bar_button_to_hide_keyboard"

    invoke-static {v8, v9, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_2

    move v8, v6

    goto :goto_1

    :cond_2
    move v8, v7

    .line 260
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "navigationbar_switch_apps_when_hint_hidden"

    invoke-static {v9, v10, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_3

    move v9, v6

    goto :goto_2

    :cond_3
    move v9, v7

    .line 261
    :goto_2
    iget-object v10, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettingsUtil;->getNavBarMode(Landroid/content/Context;)I

    move-result v10

    sget v11, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->MODE_BUTTON:I

    if-eq v10, v11, :cond_4

    move v7, v6

    .line 262
    :cond_4
    iget-object v6, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettingsUtil;->isTaskBarEnabled(Landroid/content/Context;)Z

    move-result v6

    .line 264
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "updatePreferences() : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_5

    const-string v11, "a"

    goto :goto_3

    :cond_5
    const-string v11, "A"

    .line 266
    :goto_3
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v5, :cond_6

    const-string v11, "b"

    goto :goto_4

    :cond_6
    const-string v11, "B"

    .line 267
    :goto_4
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v8, :cond_7

    const-string v11, "c"

    goto :goto_5

    :cond_7
    const-string v11, "C"

    .line 268
    :goto_5
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v7, :cond_8

    const-string v11, "d"

    goto :goto_6

    :cond_8
    const-string v11, "D"

    .line 269
    :goto_6
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v9, :cond_9

    const-string v11, "e"

    goto :goto_7

    :cond_9
    const-string v11, "E"

    .line 270
    :goto_7
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v6, :cond_a

    const-string v11, "f"

    goto :goto_8

    :cond_a
    const-string v11, "F"

    .line 271
    :goto_8
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 264
    invoke-static {v1, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    iget-boolean v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mIsTaskBarEnabled:Z

    if-eq v1, v6, :cond_b

    .line 274
    iput-boolean v6, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mIsTaskBarEnabled:Z

    .line 275
    invoke-direct {p0, v6}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->updateButtonPosition(Z)V

    .line 279
    :cond_b
    invoke-direct {p0, v0, v2, v4}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->updatePreferencesVisibility(IIZ)V

    .line 280
    invoke-direct {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->updateRelativeLinks()V

    .line 283
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mButtonPositionPreference:Landroidx/preference/SecDropDownPreference;

    iget-boolean v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mIsTaskBarEnabled:Z

    if-eqz v1, :cond_c

    .line 284
    invoke-direct {p0, v3}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->modifyButtonPositionNumberForTaskBar(I)I

    move-result v3

    .line 283
    :cond_c
    invoke-virtual {v0, v3}, Landroidx/preference/DropDownPreference;->setValueIndex(I)V

    .line 286
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mGestureHintPreference:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {v0, v4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 287
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mSwitchAppsWhenHintHidden:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {v0, v9}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 288
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mBlockGestureWithSPenPreference:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {v0, v5}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 289
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mShowButtonToHideKeyboardPreference:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {v0, v8}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 290
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mDetailedSettingPreference:Landroidx/preference/SecPreferenceScreen;

    invoke-virtual {v0, v7}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 291
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mGesturePreference:Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;

    invoke-virtual {v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->updateTalkbackDescription()V

    .line 296
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mContext:Landroid/content/Context;

    .line 297
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111018c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_9

    .line 300
    :cond_d
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->navigationbar_show_button_to_hide_keyboard_description:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 301
    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mShowButtonToHideKeyboardPreference:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_a

    .line 298
    :cond_e
    :goto_9
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mShowButtonToHideKeyboardPreference:Landroidx/preference/SecSwitchPreference;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 304
    :goto_a
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mContext:Landroid/content/Context;

    sget v1, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->MODE_SIDE_AND_BOTTOM_GESTURE:I

    if-ne v2, v1, :cond_f

    .line 305
    sget v1, Lcom/android/settings/R$string;->navigationbar_gesture_hint_title:I

    goto :goto_b

    :cond_f
    sget v1, Lcom/android/settings/R$string;->navigationbar_gesture_hints_title:I

    .line 304
    :goto_b
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 306
    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mGestureHintPreference:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 308
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mContext:Landroid/content/Context;

    sget v1, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->MODE_SIDE_AND_BOTTOM_GESTURE:I

    if-ne v2, v1, :cond_10

    .line 309
    sget v1, Lcom/android/settings/R$string;->navigationbar_switch_apps_when_hint_hidden:I

    goto :goto_c

    .line 310
    :cond_10
    sget v1, Lcom/android/settings/R$string;->navigationbar_switch_apps_when_hints_hidden:I

    .line 308
    :goto_c
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 311
    iget-object p0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mSwitchAppsWhenHintHidden:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updatePreferencesVisibility(IIZ)V
    .locals 5

    .line 393
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    .line 395
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportNavigationBarForHardKey()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 396
    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mGestureContainerPreference:Lcom/samsung/android/settings/widget/SecSubHeaderPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 400
    :cond_0
    sget v1, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->MODE_GESTURE:I

    const-string v2, "NavigationBarSettings"

    if-eq p1, v1, :cond_1

    const-string v1, "Remove unnecessary preferences cause navigation bar is not a gestural mode."

    .line 401
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mGestureHintPreference:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 403
    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mShowButtonToHideKeyboardPreference:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    .line 405
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mGestureHintPreference:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 406
    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mShowButtonToHideKeyboardPreference:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 410
    :goto_0
    sget v1, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->MODE_BUTTON:I

    if-eq p1, v1, :cond_3

    .line 411
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const/4 v3, -0x1

    const-string v4, "SEC_FLOATING_FEATURE_FRAMEWORK_CONFIG_SPEN_VERSION"

    invoke-virtual {v1, v4, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-gtz v1, :cond_2

    goto :goto_1

    .line 415
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mBlockGestureWithSPenPreference:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_2

    :cond_3
    :goto_1
    const-string v1, "This device does not support S pen."

    .line 412
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mBlockGestureWithSPenPreference:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 419
    :goto_2
    sget v1, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->MODE_GESTURE:I

    if-ne p1, v1, :cond_4

    sget v1, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->MODE_BOTTOM_GESTURE:I

    if-ne p2, v1, :cond_5

    .line 420
    :cond_4
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportNavigationBarForHardKey()Z

    move-result p2

    if-eqz p2, :cond_6

    :cond_5
    const-string p2, "Navigation bar type does not support button order."

    .line 421
    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    iget-object p2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mButtonOrderCategory:Lcom/samsung/android/settings/widget/SecSubHeaderPreference;

    invoke-virtual {v0, p2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 423
    iget-object p2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mButtonOrderPreference:Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;

    invoke-virtual {v0, p2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_3

    .line 425
    :cond_6
    iget-object p2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mButtonOrderCategory:Lcom/samsung/android/settings/widget/SecSubHeaderPreference;

    invoke-virtual {v0, p2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 426
    iget-object p2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mButtonOrderPreference:Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;

    invoke-virtual {v0, p2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 430
    :goto_3
    sget p2, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->MODE_BUTTON:I

    if-ne p1, p2, :cond_8

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result p2

    if-nez p2, :cond_7

    iget-object p2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mContext:Landroid/content/Context;

    .line 431
    invoke-static {p2}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getDualDisplayStatus(Landroid/content/Context;)I

    move-result p2

    if-nez p2, :cond_8

    .line 432
    :cond_7
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportNavigationBarForHardKey()Z

    move-result p2

    if-nez p2, :cond_8

    .line 433
    iget-object p2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mButtonPositionPreference:Landroidx/preference/SecDropDownPreference;

    invoke-virtual {v0, p2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_4

    :cond_8
    const-string p2, "This device does not support button position"

    .line 435
    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    iget-object p2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mButtonPositionPreference:Landroidx/preference/SecDropDownPreference;

    invoke-virtual {v0, p2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 440
    :goto_4
    sget p2, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->MODE_GESTURE:I

    if-ne p1, p2, :cond_a

    if-eqz p3, :cond_9

    goto :goto_5

    .line 444
    :cond_9
    iget-object p0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mSwitchAppsWhenHintHidden:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_6

    :cond_a
    :goto_5
    const-string p1, "Remove Switch apps when hint hidden preference."

    .line 441
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    iget-object p0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mSwitchAppsWhenHintHidden:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :goto_6
    return-void
.end method

.method private updateRelativeLinks()V
    .locals 5

    .line 457
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    invoke-virtual {v0}, Lcom/samsung/android/settings/widget/SecRelativeLinkView;->resetLinkData()V

    .line 459
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->getMetricsCategory()I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettingsUtil;->getLinkDataList(Landroid/content/Context;I)[Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    move-result-object v0

    .line 461
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 462
    iget-object v4, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    invoke-virtual {v4, v3}, Lcom/samsung/android/settings/widget/SecRelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)Landroid/view/View;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getFragmentTitleResId(Landroid/content/Context;)I
    .locals 0

    .line 182
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportNavigationBarForHardKey()Z

    move-result p0

    if-eqz p0, :cond_0

    sget p0, Lcom/android/settings/R$string;->navigationbar_gesture_category_name:I

    goto :goto_0

    .line 183
    :cond_0
    sget p0, Lcom/android/settings/R$string;->navigationbar_title:I

    :goto_0
    return p0
.end method

.method public getHierarchicalParentFragment(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 188
    const-class p0, Lcom/android/settings/DisplaySettings;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x1d2e

    return p0
.end method

.method public getTopLevelPreferenceKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const-string p0, "top_level_display"

    return-object p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 154
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 156
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mLastConfiguration:Landroid/content/res/Configuration;

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    .line 157
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->setPreferenceScreen(Landroidx/preference/PreferenceScreen;)V

    .line 158
    invoke-direct {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->initPreferences()V

    .line 161
    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettingsUtil;->isForceUpdate()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mLastConfiguration:Landroid/content/res/Configuration;

    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v2, :cond_1

    iget v0, v0, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    iget v1, p1, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    if-eq v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x0

    .line 164
    invoke-static {v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettingsUtil;->setForceUpdateState(Z)V

    .line 165
    invoke-direct {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->updatePreferences()V

    .line 167
    :cond_2
    iget-object p0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mLastConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p0, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "NavigationBarSettings"

    const-string v1, "onCreate()"

    .line 106
    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 108
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mContext:Landroid/content/Context;

    .line 109
    new-instance v1, Lcom/samsung/android/settings/navigationbar/NavigationBarOverlayInteractor;

    invoke-direct {v1, v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarOverlayInteractor;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mNavBarOverlayInteractor:Lcom/samsung/android/settings/navigationbar/NavigationBarOverlayInteractor;

    .line 110
    invoke-direct {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->saveLastConfiguration()V

    .line 111
    invoke-direct {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->initPreferences()V

    if-eqz p1, :cond_0

    const-string v0, "isOnehandModeDialogShown"

    .line 114
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 116
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onResume()V
    .locals 0

    .line 133
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 134
    invoke-direct {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->updatePreferences()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 146
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 147
    iget-object p0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mGesturePreference:Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->isOnehandModeDialogShown()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    const-string v0, "isOnehandModeDialogShown"

    .line 148
    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 10

    .line 123
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onStart()V

    .line 124
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "navigationbar_key_order"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mButtonOrderObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 126
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android"

    invoke-virtual {v0, v1, v3}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 128
    iget-object v4, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mOverlayChangedReceiver:Landroid/content/BroadcastReceiver;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v7, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 139
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onStop()V

    .line 140
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mButtonOrderObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 141
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mOverlayChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
