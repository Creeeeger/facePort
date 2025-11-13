.class public Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "EyeComfortSettings.java"

# interfaces
.implements Lcom/android/settingslib/widget/OnMainSwitchChangeListener;
.implements Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference$onSpinnerItemClickListener;
.implements Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialogFragment$onTimeDialogDismissListener;
.implements Lcom/samsung/android/settings/eyecomfort/EyeComfortRadioButtonPreference$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$SettingsObserver;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

.field private static final TAG:Ljava/lang/String;

.field private static mAnchorView:I

.field private static final mBlueLightFilterScheduleSummaryString:[I


# instance fields
.field private isNightModeAvailable:Z

.field private mAdaptivePreference:Lcom/samsung/android/settings/eyecomfort/EyeComfortRadioButtonPreference;

.field private mColorSeekBarPreference:Lcom/samsung/android/settings/eyecomfort/EyeComfortSeekBarPreference;

.field private mContext:Landroid/content/Context;

.field private mCustomPreference:Lcom/samsung/android/settings/eyecomfort/EyeComfortRadioButtonPreference;

.field private mDivider:Lcom/android/settingslib/widget/LayoutPreference;

.field private mEnhanceComfortDivider:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

.field private mEyeComfortDescPreference:Lcom/samsung/android/settings/widget/SecUnclickablePreference;

.field private mEyeComfortScheduledReceiver:Landroid/content/BroadcastReceiver;

.field private final mHandler:Landroid/os/Handler;

.field private mLocationOnDialog:Landroidx/appcompat/app/AlertDialog;

.field private mNightDimPreference:Lcom/samsung/android/settings/eyecomfort/EyeComfortNightDimPreference;

.field private mOrientation:I

.field private mSetAnchorByView:Z

.field private mSetSchedulePreference:Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference;

.field private final mSettingsObserver:Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$SettingsObserver;

.field private mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

.field private mTimeSettingDialog:Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialogFragment;


# direct methods
.method public static synthetic $r8$lambda$UBQCmsJq-Qe4Hfx2eaaezy_opBk(Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->lambda$onViewCreated$0(Landroid/view/View;IIIIIIII)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmAdaptivePreference(Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;)Lcom/samsung/android/settings/eyecomfort/EyeComfortRadioButtonPreference;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mAdaptivePreference:Lcom/samsung/android/settings/eyecomfort/EyeComfortRadioButtonPreference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmColorSeekBarPreference(Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;)Lcom/samsung/android/settings/eyecomfort/EyeComfortSeekBarPreference;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mColorSeekBarPreference:Lcom/samsung/android/settings/eyecomfort/EyeComfortSeekBarPreference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNightDimPreference(Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;)Lcom/samsung/android/settings/eyecomfort/EyeComfortNightDimPreference;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mNightDimPreference:Lcom/samsung/android/settings/eyecomfort/EyeComfortNightDimPreference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSwitchBar(Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;)Lcom/android/settings/widget/SettingsMainSwitchBar;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmLocationOnDialog(Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;Landroidx/appcompat/app/AlertDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mLocationOnDialog:Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSetAnchorByView(Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mSetAnchorByView:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$misAdaptiveModeAvailable(Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;)Z
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->isAdaptiveModeAvailable()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misEnabled(Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;)Z
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->isEnabled()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mupdateCustomSettingPreference(Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->updateCustomSettingPreference()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateDescriptionPreference(Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->updateDescriptionPreference()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateEnableStatus(Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->updateEnableStatus(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdatePreferenceStatus(Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->updatePreferenceStatus()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 64
    const-class v0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->TAG:Ljava/lang/String;

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 116
    sget v1, Lcom/android/settings/R$string;->sec_eye_comfort_schedule_always_on:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lcom/android/settings/R$string;->sec_eye_comfort_schedule_sunset_to_sunrise:I

    const/4 v2, 0x1

    aput v1, v0, v2

    sget v1, Lcom/android/settings/R$string;->sec_eye_comfort_custom:I

    const/4 v2, 0x2

    aput v1, v0, v2

    sput-object v0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mBlueLightFilterScheduleSummaryString:[I

    .line 691
    new-instance v0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$6;

    sget v1, Lcom/android/settings/R$xml;->sec_eyecomfort_settings:I

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$6;-><init>(I)V

    sput-object v0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 58
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 68
    iput-object v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    const/4 v1, 0x0

    .line 72
    iput-boolean v1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mSetAnchorByView:Z

    .line 74
    iput-object v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mLocationOnDialog:Landroidx/appcompat/app/AlertDialog;

    .line 76
    iput-object v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mTimeSettingDialog:Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialogFragment;

    .line 124
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mHandler:Landroid/os/Handler;

    .line 125
    new-instance v2, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$SettingsObserver;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$SettingsObserver;-><init>(Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mSettingsObserver:Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$SettingsObserver;

    .line 127
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v2, "SEC_FLOATING_FEATURE_LCD_CONFIG_NIGHT_DIM"

    invoke-virtual {v0, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->isNightModeAvailable:Z

    .line 129
    new-instance v0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$1;-><init>(Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mEyeComfortScheduledReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;)Landroid/content/ContentResolver;
    .locals 0

    .line 58
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;)Landroid/content/ContentResolver;
    .locals 0

    .line 58
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1000(Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;)Landroid/content/ContentResolver;
    .locals 0

    .line 58
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1100(Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;)Landroid/content/ContentResolver;
    .locals 0

    .line 58
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1200(Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;)Landroid/content/ContentResolver;
    .locals 0

    .line 58
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1300(Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;)Landroid/content/ContentResolver;
    .locals 0

    .line 58
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1400(Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;)Landroid/content/ContentResolver;
    .locals 0

    .line 58
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1500(Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;)Landroid/content/ContentResolver;
    .locals 0

    .line 58
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1600(Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;)Landroid/content/ContentResolver;
    .locals 0

    .line 58
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1700(Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;)Landroid/content/ContentResolver;
    .locals 0

    .line 58
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;)Landroid/content/ContentResolver;
    .locals 0

    .line 58
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;)Landroid/content/ContentResolver;
    .locals 0

    .line 58
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;)Landroid/content/ContentResolver;
    .locals 0

    .line 58
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;)Landroid/content/ContentResolver;
    .locals 0

    .line 58
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;)Landroid/content/ContentResolver;
    .locals 0

    .line 58
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;)Landroid/content/ContentResolver;
    .locals 0

    .line 58
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;)Landroid/content/ContentResolver;
    .locals 0

    .line 58
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$900(Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;)Landroid/content/ContentResolver;
    .locals 0

    .line 58
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    return-object p0
.end method

.method private getBlueLightFilterTypeIndex(I)I
    .locals 1

    const/4 p0, 0x2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    if-eq p1, p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0

    :cond_1
    return p0
.end method

.method private initEyeComfortSetting()V
    .locals 7

    const-string v0, "eye_comfort_description"

    .line 239
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/widget/SecUnclickablePreference;

    iput-object v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mEyeComfortDescPreference:Lcom/samsung/android/settings/widget/SecUnclickablePreference;

    const/4 v1, 0x1

    .line 240
    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/SecUnclickablePreference;->setPositionMode(I)V

    const-string v0, "eye_comfort_adaptive_mode"

    .line 242
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/eyecomfort/EyeComfortRadioButtonPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mAdaptivePreference:Lcom/samsung/android/settings/eyecomfort/EyeComfortRadioButtonPreference;

    const-string v0, "eye_comfort_custom_mode"

    .line 243
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/eyecomfort/EyeComfortRadioButtonPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mCustomPreference:Lcom/samsung/android/settings/eyecomfort/EyeComfortRadioButtonPreference;

    const-string v0, "divider"

    .line 244
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/LayoutPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mDivider:Lcom/android/settingslib/widget/LayoutPreference;

    const-string v0, "eye_comfort_night_dim"

    .line 245
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/eyecomfort/EyeComfortNightDimPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mNightDimPreference:Lcom/samsung/android/settings/eyecomfort/EyeComfortNightDimPreference;

    .line 247
    iget-boolean v2, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->isNightModeAvailable:Z

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 248
    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_0

    .line 250
    :cond_0
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 251
    iget-object v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mNightDimPreference:Lcom/samsung/android/settings/eyecomfort/EyeComfortNightDimPreference;

    invoke-virtual {v0}, Lcom/samsung/android/settings/eyecomfort/EyeComfortNightDimPreference;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/eyecomfort/EyeComfortNightDimPreference;->setChecked(Z)V

    .line 254
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->isAdaptiveModeAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 255
    iget-object v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mAdaptivePreference:Lcom/samsung/android/settings/eyecomfort/EyeComfortRadioButtonPreference;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/eyecomfort/EyeComfortRadioButtonPreference;->setOnClickListener(Lcom/samsung/android/settings/eyecomfort/EyeComfortRadioButtonPreference$OnClickListener;)V

    .line 256
    iget-object v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mCustomPreference:Lcom/samsung/android/settings/eyecomfort/EyeComfortRadioButtonPreference;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/eyecomfort/EyeComfortRadioButtonPreference;->setOnClickListener(Lcom/samsung/android/settings/eyecomfort/EyeComfortRadioButtonPreference$OnClickListener;)V

    goto :goto_1

    .line 258
    :cond_1
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mAdaptivePreference:Lcom/samsung/android/settings/eyecomfort/EyeComfortRadioButtonPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 259
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mDivider:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 260
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mCustomPreference:Lcom/samsung/android/settings/eyecomfort/EyeComfortRadioButtonPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :goto_1
    const-string v0, "eye_comfort_set_schedule"

    .line 263
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mSetSchedulePreference:Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference;

    const/4 v2, 0x3

    new-array v4, v2, [Ljava/lang/CharSequence;

    .line 264
    iget-object v5, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mContext:Landroid/content/Context;

    sget v6, Lcom/android/settings/R$string;->sec_eye_comfort_schedule_always_on:I

    .line 265
    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    iget-object v5, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mContext:Landroid/content/Context;

    sget v6, Lcom/android/settings/R$string;->sec_eye_comfort_schedule_sunset_to_sunrise:I

    .line 266
    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    iget-object v5, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mContext:Landroid/content/Context;

    sget v6, Lcom/android/settings/R$string;->sec_eye_comfort_custom:I

    .line 267
    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v4, v6

    .line 264
    invoke-virtual {v0, v4}, Landroidx/preference/DropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 270
    iget-object v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mSetSchedulePreference:Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference;

    new-array v2, v2, [Ljava/lang/CharSequence;

    const-string v4, "0"

    aput-object v4, v2, v3

    const-string v3, "1"

    aput-object v3, v2, v1

    const-string v1, "2"

    aput-object v1, v2, v6

    invoke-virtual {v0, v2}, Landroidx/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 271
    iget-object v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mSetSchedulePreference:Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference;->setOnItemClickListener(Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference$onSpinnerItemClickListener;)V

    const-string v0, "eye_comfort_seekbar_color_temperature"

    .line 272
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSeekBarPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mColorSeekBarPreference:Lcom/samsung/android/settings/eyecomfort/EyeComfortSeekBarPreference;

    .line 273
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x5

    const-string v3, "blue_light_filter_opacity"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/eyecomfort/EyeComfortSeekBarPreference;->setProgress(I)V

    const-string v0, "enhance_comfort_divider"

    .line 274
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mEnhanceComfortDivider:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    return-void
.end method

.method private isAdaptiveModeAvailable()Z
    .locals 0

    .line 688
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportBlueLightFilterAdaptiveMode()Z

    move-result p0

    return p0
.end method

.method private isBlueLightFileterNotVailable()Z
    .locals 1

    .line 683
    iget-object v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isDesktopDualMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mContext:Landroid/content/Context;

    .line 684
    invoke-static {p0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->isAccessibilityVisionEnabled(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportBlueLightFilterBySEED()Z

    move-result p0

    if-nez p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isEnabled()Z
    .locals 2

    .line 278
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "blue_light_filter"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private synthetic lambda$onViewCreated$0(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 218
    iget-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_4

    iget p2, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mOrientation:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq p2, p1, :cond_4

    .line 219
    iget-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mLocationOnDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 220
    iget-boolean p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mSetAnchorByView:Z

    if-eqz p1, :cond_0

    .line 221
    iget-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mLocationOnDialog:Landroidx/appcompat/app/AlertDialog;

    iget-object p2, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->semSetAnchor(Landroid/view/View;)V

    goto :goto_1

    .line 223
    :cond_0
    sget p1, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mAnchorView:I

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    iget-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mSetSchedulePreference:Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mCustomPreference:Lcom/samsung/android/settings/eyecomfort/EyeComfortRadioButtonPreference;

    :goto_0
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->setLocationDialogAnchor(Landroidx/preference/Preference;)V

    .line 227
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mTimeSettingDialog:Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialogFragment;

    if-eqz p1, :cond_3

    .line 228
    iget-object p2, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mSetSchedulePreference:Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference;

    invoke-virtual {p1, p2}, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialogFragment;->setDialogAnchor(Landroidx/preference/Preference;)V

    .line 230
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iput p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mOrientation:I

    :cond_4
    return-void
.end method

.method private setLocationDialogAnchor(Landroidx/preference/Preference;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 667
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 668
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->seslGetPreferenceBounds(Landroid/graphics/Rect;)V

    .line 669
    iget p1, v0, Landroid/graphics/Rect;->left:I

    iget v1, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, p1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr p1, v1

    .line 670
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 671
    iget-object p0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mLocationOnDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz p0, :cond_1

    .line 672
    invoke-virtual {p0, p1, v0}, Landroid/app/Dialog;->semSetAnchor(II)V

    :cond_1
    return-void
.end method

.method private showLocationOnDialog(I)V
    .locals 4

    .line 586
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 587
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v2, Lcom/android/settings/R$string;->sec_blue_light_filter_dlg_turn_on_location_title:I

    .line 588
    invoke-virtual {v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v2, Lcom/android/settings/R$string;->sec_blue_light_filter_dlg_turn_on_location:I

    .line 589
    invoke-virtual {v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v2, Lcom/android/settings/R$string;->dlg_cancel:I

    new-instance v3, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$5;

    invoke-direct {v3, p0, p1}, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$5;-><init>(Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;I)V

    .line 590
    invoke-virtual {v0, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v2, Lcom/android/settings/R$string;->sec_dlg_turn_on:I

    new-instance v3, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$4;

    invoke-direct {v3, p0, p1}, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$4;-><init>(Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;I)V

    .line 604
    invoke-virtual {v0, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$3;

    invoke-direct {v2, p0, p1}, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$3;-><init>(Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;I)V

    .line 623
    invoke-virtual {v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$2;

    invoke-direct {v2, p0, p1}, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$2;-><init>(Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;I)V

    .line 637
    invoke-virtual {v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 648
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mLocationOnDialog:Landroidx/appcompat/app/AlertDialog;

    if-nez p1, :cond_0

    .line 651
    iget-object v1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->semSetAnchor(Landroid/view/View;)V

    goto :goto_1

    :cond_0
    if-eq p1, v1, :cond_1

    .line 653
    iget-object v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mSetSchedulePreference:Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mCustomPreference:Lcom/samsung/android/settings/eyecomfort/EyeComfortRadioButtonPreference;

    :goto_0
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->setLocationDialogAnchor(Landroidx/preference/Preference;)V

    .line 656
    :goto_1
    sput p1, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mAnchorView:I

    .line 658
    iget-object p0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mLocationOnDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private showTimePickerDialog()V
    .locals 2

    .line 344
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mSetSchedulePreference:Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference;

    invoke-static {v0}, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialogFragment;->newInstance(Landroidx/preference/Preference;)Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialogFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mTimeSettingDialog:Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialogFragment;

    .line 346
    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialogFragment;->setOnTimeDialogDismissListener(Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialogFragment$onTimeDialogDismissListener;)V

    .line 347
    iget-object v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mTimeSettingDialog:Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialogFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string v1, "EyeComfortTimeSettingDialogFragment"

    invoke-virtual {v0, p0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private updateCustomSettingPreference()V
    .locals 4

    .line 543
    iget-object v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mSetSchedulePreference:Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mColorSeekBarPreference:Lcom/samsung/android/settings/eyecomfort/EyeComfortSeekBarPreference;

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 547
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "blue_light_filter_scheduled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    if-eqz v0, :cond_4

    .line 550
    invoke-direct {p0}, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->isAdaptiveModeAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 551
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mSetSchedulePreference:Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference;

    invoke-virtual {v0, v3}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 552
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mColorSeekBarPreference:Lcom/samsung/android/settings/eyecomfort/EyeComfortSeekBarPreference;

    invoke-virtual {v0, v3}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 553
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mEnhanceComfortDivider:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    invoke-virtual {v0, v3}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 556
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "blue_light_filter_type"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 557
    iget-object v2, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mSetSchedulePreference:Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference;

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->getBlueLightFilterTypeIndex(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference;->setScheduleTypeIndex(I)V

    .line 558
    iget-object v2, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mSetSchedulePreference:Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference;

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->getBlueLightFilterTypeIndex(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/preference/DropDownPreference;->setValueIndex(I)V

    if-ne v0, v1, :cond_3

    .line 561
    invoke-direct {p0}, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->updateTimeSummary()V

    goto :goto_1

    .line 563
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mSetSchedulePreference:Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference;

    sget-object v3, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mBlueLightFilterScheduleSummaryString:[I

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->getBlueLightFilterTypeIndex(I)I

    move-result v0

    aget v0, v3, v0

    invoke-virtual {v2, v0}, Landroidx/preference/Preference;->setSummary(I)V

    .line 565
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mSetSchedulePreference:Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/SecDropDownPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 566
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x5

    const-string v2, "blue_light_filter_opacity"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 567
    iget-object p0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mColorSeekBarPreference:Lcom/samsung/android/settings/eyecomfort/EyeComfortSeekBarPreference;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/eyecomfort/EyeComfortSeekBarPreference;->setProgress(I)V

    goto :goto_2

    .line 569
    :cond_4
    invoke-direct {p0}, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->isAdaptiveModeAvailable()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 570
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mSetSchedulePreference:Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 571
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mColorSeekBarPreference:Lcom/samsung/android/settings/eyecomfort/EyeComfortSeekBarPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_5
    :goto_2
    return-void
.end method

.method private updateDescriptionPreference()V
    .locals 10

    .line 459
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "blue_light_filter_adaptive_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 460
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "blue_light_filter_scheduled"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    .line 462
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "blue_light_filter_type"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v3, :cond_2

    if-nez v4, :cond_2

    move v5, v1

    goto :goto_2

    :cond_2
    move v5, v2

    .line 466
    :goto_2
    invoke-direct {p0}, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_c

    if-nez v0, :cond_c

    if-eqz v3, :cond_c

    if-eqz v5, :cond_3

    goto/16 :goto_4

    .line 471
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-wide/16 v5, 0x474

    const-string v3, "blue_light_filter_on_time"

    const/4 v7, -0x2

    invoke-static {v0, v3, v5, v6, v7}, Landroid/provider/Settings$System;->getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)J

    move-result-wide v5

    .line 472
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-wide/16 v8, 0x1a4

    const-string v3, "blue_light_filter_off_time"

    invoke-static {v0, v3, v8, v9, v7}, Landroid/provider/Settings$System;->getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)J

    move-result-wide v7

    .line 474
    iget-object v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mContext:Landroid/content/Context;

    invoke-static {v0, v5, v6}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getStringFromMillis(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 475
    iget-object v3, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mContext:Landroid/content/Context;

    invoke-static {v3, v7, v8}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getStringFromMillis(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    .line 478
    iget-object v5, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mContext:Landroid/content/Context;

    invoke-static {v5, v4}, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeUtils;->duringScheduleTime(Landroid/content/Context;I)Z

    move-result v5

    const/4 v6, 0x2

    const-string v7, "\u200f"

    if-eqz v5, :cond_7

    if-ne v4, v6, :cond_5

    .line 480
    iget-boolean v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->isNightModeAvailable:Z

    if-eqz v0, :cond_4

    .line 481
    iget-object v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->sec_limit_blue_light_night_after_sunset:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    .line 483
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->sec_eye_comfort_description_auto_during:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    .line 486
    :cond_5
    iget-boolean v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->isNightModeAvailable:Z

    if-eqz v0, :cond_6

    .line 487
    iget-object v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/settings/R$string;->sec_limit_blue_light_night_on_ps_msg:I

    new-array v5, v1, [Ljava/lang/Object;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v2

    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    .line 489
    :cond_6
    iget-object v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/settings/R$string;->sec_eye_comfort_description_custom_during:I

    new-array v5, v1, [Ljava/lang/Object;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v2

    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_7
    if-ne v4, v6, :cond_9

    .line 494
    iget-boolean v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->isNightModeAvailable:Z

    if-eqz v0, :cond_8

    .line 495
    iget-object v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->sec_limit_blue_light_night_before_sunset:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 497
    :cond_8
    iget-object v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->sec_eye_comfort_description_auto_before:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 500
    :cond_9
    iget-boolean v3, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->isNightModeAvailable:Z

    if-eqz v3, :cond_a

    .line 501
    iget-object v3, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/settings/R$string;->sec_limit_blue_light_night_off_ps_msg:I

    new-array v5, v1, [Ljava/lang/Object;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 503
    :cond_a
    iget-object v3, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/settings/R$string;->sec_eye_comfort_description_custom_before:I

    new-array v5, v1, [Ljava/lang/Object;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 508
    :goto_3
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_b

    .line 509
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const-string v3, "\n\n"

    .line 511
    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 512
    new-instance v4, Landroid/text/style/StyleSpan;

    invoke-direct {v4, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    add-int/2addr v3, v6

    .line 513
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x21

    invoke-virtual {v2, v4, v3, v0, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 514
    iget-object p0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mEyeComfortDescPreference:Lcom/samsung/android/settings/widget/SecUnclickablePreference;

    invoke-virtual {p0, v2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    :cond_b
    return-void

    .line 467
    :cond_c
    :goto_4
    iget-object p0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mEyeComfortDescPreference:Lcom/samsung/android/settings/widget/SecUnclickablePreference;

    sget v0, Lcom/android/settings/R$string;->sec_eye_comfort_description:I

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setTitle(I)V

    return-void
.end method

.method private updateEnableStatus(Z)V
    .locals 1

    .line 420
    invoke-direct {p0}, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->isAdaptiveModeAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 421
    iget-object v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mAdaptivePreference:Lcom/samsung/android/settings/eyecomfort/EyeComfortRadioButtonPreference;

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 422
    iget-object v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mCustomPreference:Lcom/samsung/android/settings/eyecomfort/EyeComfortRadioButtonPreference;

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 424
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mSetSchedulePreference:Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference;

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 425
    iget-object v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mColorSeekBarPreference:Lcom/samsung/android/settings/eyecomfort/EyeComfortSeekBarPreference;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/eyecomfort/EyeComfortSeekBarPreference;->setEnabled(Z)V

    .line 426
    iget-object v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mNightDimPreference:Lcom/samsung/android/settings/eyecomfort/EyeComfortNightDimPreference;

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    if-nez p1, :cond_1

    .line 428
    iget-object p0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mTimeSettingDialog:Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialogFragment;

    if-eqz p0, :cond_1

    .line 429
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 430
    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 431
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_1
    return-void
.end method

.method private updateModePreference()V
    .locals 4

    .line 520
    invoke-direct {p0}, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->isAdaptiveModeAvailable()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mAdaptivePreference:Lcom/samsung/android/settings/eyecomfort/EyeComfortRadioButtonPreference;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mCustomPreference:Lcom/samsung/android/settings/eyecomfort/EyeComfortRadioButtonPreference;

    if-nez v0, :cond_0

    goto :goto_2

    .line 524
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "blue_light_filter_adaptive_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    if-eqz v0, :cond_3

    .line 527
    iget-object v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mAdaptivePreference:Lcom/samsung/android/settings/eyecomfort/EyeComfortRadioButtonPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 528
    iget-object v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mCustomPreference:Lcom/samsung/android/settings/eyecomfort/EyeComfortRadioButtonPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 530
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "blue_light_filter_scheduled"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    if-eqz v1, :cond_4

    .line 533
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 534
    sget-object p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->TAG:Ljava/lang/String;

    const-string v0, "updateModePreference : change the scheduled value in an abnormal case"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 537
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mAdaptivePreference:Lcom/samsung/android/settings/eyecomfort/EyeComfortRadioButtonPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 538
    iget-object p0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mCustomPreference:Lcom/samsung/android/settings/eyecomfort/EyeComfortRadioButtonPreference;

    invoke-virtual {p0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_4
    :goto_2
    return-void
.end method

.method private updatePreferenceStatus()V
    .locals 1

    .line 577
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 580
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->updateDescriptionPreference()V

    .line 581
    invoke-direct {p0}, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->updateModePreference()V

    .line 582
    invoke-direct {p0}, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->updateCustomSettingPreference()V

    return-void
.end method

.method private updateTimeSummary()V
    .locals 2

    .line 354
    iget-object v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mSetSchedulePreference:Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference;

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeUtils;->getBlueLightFilterUserTime(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 356
    iget-object v1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mSetSchedulePreference:Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 357
    invoke-direct {p0}, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->updateDescriptionPreference()V

    :cond_0
    return-void
.end method


# virtual methods
.method public getFragmentTitleResId(Landroid/content/Context;)I
    .locals 0

    .line 159
    sget p0, Lcom/android/settings/R$string;->sec_eye_comfort_title:I

    return p0
.end method

.method public getHierarchicalParentFragment(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 154
    const-class p0, Lcom/android/settings/DisplaySettings;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x107e

    return p0
.end method

.method public getTopLevelPreferenceKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const-string p0, "top_level_display"

    return-object p0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .line 164
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 166
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/android/settings/SettingsActivity;

    .line 167
    invoke-virtual {p1}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SettingsMainSwitchBar;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-eqz p1, :cond_0

    .line 170
    invoke-direct {p0}, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->isEnabled()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    .line 171
    invoke-direct {p0}, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->isEnabled()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->updateEnableStatus(Z)V

    .line 172
    iget-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->addOnSwitchChangeListener(Lcom/android/settingslib/widget/OnMainSwitchChangeListener;)V

    .line 173
    iget-object p0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->show()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 189
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 191
    invoke-direct {p0}, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->isAdaptiveModeAvailable()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 192
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->setAnimationAllowed(Z)V

    const/4 p1, 0x0

    .line 193
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->setAutoRemoveInsetCategory(Z)V

    goto :goto_0

    .line 195
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->setAutoRemoveInsetCategory(Z)V

    .line 198
    :goto_0
    sget p1, Lcom/android/settings/R$xml;->sec_eyecomfort_settings:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 200
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mContext:Landroid/content/Context;

    .line 201
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iput p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mOrientation:I

    .line 203
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "com.android.settings.ECS_SCHEDULE_START"

    .line 204
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.android.settings.ECS_SCHEDULE_END"

    .line 205
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mEyeComfortScheduledReceiver:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x0

    const-string v3, "com.samsung.android.permission.SEC_EYECOMFORT_BROADCAST"

    invoke-virtual {v0, v1, p1, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 210
    invoke-direct {p0}, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->initEyeComfortSetting()V

    return-void
.end method

.method public onCustomScheduleSpinnerItemClick(I)V
    .locals 6

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 396
    invoke-direct {p0}, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->showTimePickerDialog()V

    goto :goto_2

    .line 398
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mSetSchedulePreference:Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference;

    sget-object v2, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mBlueLightFilterScheduleSummaryString:[I

    aget v2, v2, p1

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setSummary(I)V

    const-string v1, "blue_light_filter_type"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p1, v2, :cond_3

    .line 400
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "location_mode"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    if-nez v2, :cond_2

    .line 403
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->showLocationOnDialog(I)V

    return-void

    .line 406
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v1, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 409
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 411
    :goto_1
    invoke-direct {p0}, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->updateDescriptionPreference()V

    .line 413
    :goto_2
    iget-object v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mSetSchedulePreference:Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference;

    invoke-virtual {v0, p1}, Landroidx/preference/DropDownPreference;->setValueIndex(I)V

    .line 414
    iget-object v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mSetSchedulePreference:Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference;->setScheduleTypeIndex(I)V

    .line 416
    invoke-virtual {p0}, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->getMetricsCategory()I

    move-result p0

    const/16 v0, 0x1081

    int-to-long v1, p1

    invoke-static {p0, v0, v1, v2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 333
    iget-object v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mEyeComfortScheduledReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 334
    iget-object v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mSettingsObserver:Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$SettingsObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$SettingsObserver;->setListening(Z)V

    .line 335
    iget-object v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mLocationOnDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mLocationOnDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    .line 338
    :cond_0
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 179
    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onDestroyView()V

    .line 181
    iget-object v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-eqz v0, :cond_0

    .line 182
    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->removeOnSwitchChangeListener(Lcom/android/settingslib/widget/OnMainSwitchChangeListener;)V

    .line 183
    iget-object p0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->hide()V

    :cond_0
    return-void
.end method

.method public onRadioButtonClicked(Lcom/samsung/android/settings/eyecomfort/EyeComfortRadioButtonPreference;)V
    .locals 10

    .line 370
    iget-object v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mAdaptivePreference:Lcom/samsung/android/settings/eyecomfort/EyeComfortRadioButtonPreference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-wide/16 v1, 0x0

    const/16 v3, 0x1cf3

    const-wide/16 v4, 0x1

    const v6, 0x9d08

    const/4 v7, 0x1

    if-eqz v0, :cond_0

    .line 371
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "blue_light_filter_adaptive_mode"

    invoke-static {p1, v0, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 373
    invoke-virtual {p0}, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->getMetricsCategory()I

    move-result p1

    invoke-static {p1, v6, v4, v5}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    .line 374
    invoke-virtual {p0}, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->getMetricsCategory()I

    move-result p0

    invoke-static {p0, v3, v1, v2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    goto :goto_1

    .line 376
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mCustomPreference:Lcom/samsung/android/settings/eyecomfort/EyeComfortRadioButtonPreference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 377
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "location_mode"

    const/4 v8, 0x0

    invoke-static {p1, v0, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_1

    move p1, v7

    goto :goto_0

    :cond_1
    move p1, v8

    .line 380
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v9, "blue_light_filter_type"

    invoke-static {v0, v9, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez p1, :cond_2

    const/4 p1, 0x2

    if-ne v0, p1, :cond_2

    .line 383
    invoke-direct {p0, v7}, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->showLocationOnDialog(I)V

    goto :goto_1

    .line 385
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "blue_light_filter_scheduled"

    invoke-static {p1, v0, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 387
    invoke-virtual {p0}, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->getMetricsCategory()I

    move-result p1

    invoke-static {p1, v3, v4, v5}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    .line 388
    invoke-virtual {p0}, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->getMetricsCategory()I

    move-result p0

    invoke-static {p0, v6, v1, v2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    :cond_3
    :goto_1
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 294
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 295
    invoke-direct {p0}, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->isBlueLightFileterNotVailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 296
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 298
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mSettingsObserver:Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$SettingsObserver;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$SettingsObserver;->setListening(Z)V

    .line 299
    invoke-direct {p0}, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->updatePreferenceStatus()V

    return-void
.end method

.method public onStart()V
    .locals 5

    .line 304
    sget-object v0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->TAG:Ljava/lang/String;

    const-string v1, "onStart()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 306
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.samsung.android.bluelightfilter"

    const-string v4, "com.samsung.android.bluelightfilter.BlueLightFilterService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v2, "BLUE_LIGHT_FILTER_SERVICE_TYPE"

    const/16 v3, 0x1f

    .line 307
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 308
    iget-object v2, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 309
    iget-object v1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mTimeSettingDialog:Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialogFragment;

    if-nez v1, :cond_0

    .line 310
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "EyeComfortTimeSettingDialogFragment"

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 312
    check-cast v1, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialogFragment;

    iput-object v1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mTimeSettingDialog:Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialogFragment;

    const-string v1, "EyeComfortTimeSettingDialogFragment found"

    .line 313
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    iget-object v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mTimeSettingDialog:Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialogFragment;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialogFragment;->setOnTimeDialogDismissListener(Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialogFragment$onTimeDialogDismissListener;)V

    .line 317
    :cond_0
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onStart()V

    return-void
.end method

.method public onStop()V
    .locals 4

    .line 323
    sget-object v0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->TAG:Ljava/lang/String;

    const-string v1, "onStop()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 325
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.samsung.android.bluelightfilter"

    const-string v3, "com.samsung.android.bluelightfilter.BlueLightFilterService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "BLUE_LIGHT_FILTER_SERVICE_TYPE"

    const/16 v2, 0x20

    .line 326
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 327
    iget-object v1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 328
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onStop()V

    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 5

    .line 439
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "blue_light_filter_type"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 440
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "blue_light_filter_scheduled"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 441
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "location_mode"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    if-nez v3, :cond_2

    const/4 v3, 0x2

    if-ne p1, v3, :cond_2

    if-eqz v0, :cond_2

    if-eqz p2, :cond_2

    .line 445
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->showLocationOnDialog(I)V

    .line 446
    iput-boolean v2, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mSetAnchorByView:Z

    return-void

    .line 449
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "blue_light_filter"

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 451
    invoke-virtual {p0}, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->getMetricsCategory()I

    move-result p1

    const/16 v0, 0x1cf2

    if-eqz p2, :cond_3

    const-wide/16 v1, 0x1

    goto :goto_2

    :cond_3
    const-wide/16 v1, 0x0

    :goto_2
    invoke-static {p1, v0, v1, v2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    .line 453
    invoke-direct {p0}, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->updateDescriptionPreference()V

    return-void
.end method

.method public onTimeDialogDismiss()V
    .locals 3

    .line 363
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "blue_light_filter_type"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 364
    invoke-direct {p0}, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->updateTimeSummary()V

    const/4 v0, 0x0

    .line 365
    iput-object v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mTimeSettingDialog:Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialogFragment;

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 215
    invoke-super {p0, p1, p2}, Landroidx/preference/PreferenceFragmentCompat;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 217
    new-instance p2, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method
