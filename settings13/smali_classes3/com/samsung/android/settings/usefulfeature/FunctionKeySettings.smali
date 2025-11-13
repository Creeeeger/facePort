.class public Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "FunctionKeySettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference$OnClickListener;
.implements Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference$OnGearClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings$SettingsObserver;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field private mActivityHistory:Ljava/lang/String;

.field private mAllDisabledDialog:Landroid/app/AlertDialog;

.field private mContext:Landroid/content/Context;

.field private mDoublePressOpenApp:Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;

.field private mDoublePressPaywithSamsungPay:Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;

.field private mDoublePressQuickLaunchCamera:Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;

.field private mDoublePressQuickSwitchSecureFolder:Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;

.field private mFuncKeyDoublePress:Landroidx/preference/SecSwitchPreference;

.field private mFuncKeyLongPress:Landroidx/preference/SecPreference;

.field private final mHandler:Landroid/os/Handler;

.field private mIsQuickSwitchHistoryExists:Z

.field private mLongPressPowerOff:Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;

.field private mLongPressWakeBixby:Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;

.field private final mSettingsObserver:Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings$SettingsObserver;

.field private mShortPressDedicatedApp:Landroidx/preference/SecSwitchPreferenceScreen;

.field private mShortPressDedicatedAppCategory:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

.field private mTipsForPowerOff:Landroidx/preference/SecPreference;


# direct methods
.method static bridge synthetic -$$Nest$fgetmActivityHistory(Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->mActivityHistory:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mdismissAllDialog(Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->dismissAllDialog()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetFuncKeyDoublePress(Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->setFuncKeyDoublePress(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateFuncKeyDoublePressPreferences(Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->updateFuncKeyDoublePressPreferences()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateFuncKeyDoublePressTypePreferences(Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->updateFuncKeyDoublePressTypePreferences()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateFuncKeyLongPressTypePreferences(Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->updateFuncKeyLongPressTypePreferences()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 642
    new-instance v0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings$5;

    invoke-direct {v0}, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings$5;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 61
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 79
    iput-boolean v0, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->mIsQuickSwitchHistoryExists:Z

    .line 102
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->mHandler:Landroid/os/Handler;

    .line 103
    new-instance v1, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings$SettingsObserver;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings$SettingsObserver;-><init>(Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->mSettingsObserver:Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings$SettingsObserver;

    const-string v0, "default"

    .line 109
    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->mActivityHistory:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;)Landroid/content/ContentResolver;
    .locals 0

    .line 61
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;)Landroid/content/ContentResolver;
    .locals 0

    .line 61
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;)Landroid/content/ContentResolver;
    .locals 0

    .line 61
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    return-object p0
.end method

.method private dedicatedAppUpdate(Z)V
    .locals 3

    .line 491
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->mShortPressDedicatedApp:Landroidx/preference/SecSwitchPreferenceScreen;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    .line 493
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x3

    invoke-static {p1, v0}, Lcom/samsung/android/settings/activekey/DedicatedAppInfo;->getDedicatedAppLabel(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    .line 494
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/samsung/android/settings/activekey/DedicatedAppInfo;->getDedicatedApp(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 495
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 496
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->mShortPressDedicatedApp:Landroidx/preference/SecSwitchPreferenceScreen;

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 498
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/samsung/android/settings/activekey/DedicatedAppInfo;->loadAppList(Landroid/content/Context;I)Ljava/util/ArrayList;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 499
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/android/settings/Utils;->getApplicationLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 500
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->mShortPressDedicatedApp:Landroidx/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v2, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 501
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0, p1}, Lcom/samsung/android/settings/activekey/DedicatedAppInfo;->saveDedicatedApp(Landroid/content/Context;ILjava/lang/String;)V

    .line 502
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v0, v1}, Lcom/samsung/android/settings/activekey/DedicatedAppInfo;->saveDedicatedAppLabel(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_0

    .line 505
    :cond_1
    sget p0, Lcom/android/settings/R$string;->switch_off_text:I

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setSummary(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private dismissAllDialog()V
    .locals 1

    .line 550
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->mAllDisabledDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 551
    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    .line 552
    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->mAllDisabledDialog:Landroid/app/AlertDialog;

    :cond_0
    return-void
.end method

.method private getFunctKeyDoublePressSwitch()I
    .locals 2

    .line 395
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "function_key_config_doublepress"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private getFunctKeyDoublePressType()I
    .locals 2

    .line 405
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "function_key_config_doublepress_type"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private getFunctKeyLongPressType()I
    .locals 2

    .line 412
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "function_key_config_longpress_type"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private initUI()V
    .locals 7

    const-string v0, "function_key_double_press"

    .line 159
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SecSwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->mFuncKeyDoublePress:Landroidx/preference/SecSwitchPreference;

    .line 160
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "double_press_quick_launch_camera"

    .line 162
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->mDoublePressQuickLaunchCamera:Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;

    .line 163
    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;->setOnClickListener(Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference$OnClickListener;)V

    .line 164
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->mDoublePressQuickLaunchCamera:Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;->setButtonVisible(Z)V

    .line 165
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->mDoublePressQuickLaunchCamera:Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;->setSummaryVisible(Z)V

    const-string v0, "double_press_pay_with_samsung_pay"

    .line 167
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->mDoublePressPaywithSamsungPay:Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;

    .line 168
    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;->setOnClickListener(Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference$OnClickListener;)V

    .line 169
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->mDoublePressPaywithSamsungPay:Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;->setButtonVisible(Z)V

    .line 170
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->mDoublePressPaywithSamsungPay:Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;->setSummaryVisible(Z)V

    .line 171
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->mDoublePressPaywithSamsungPay:Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->getPaywithSamsungPayTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    const-string v0, "double_press_quick_switch_secure_folder"

    .line 173
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;

    iput-object v2, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->mDoublePressQuickSwitchSecureFolder:Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;

    .line 174
    invoke-virtual {v2, p0}, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;->setOnClickListener(Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference$OnClickListener;)V

    .line 175
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->mDoublePressQuickSwitchSecureFolder:Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;

    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;->setButtonVisible(Z)V

    .line 176
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->mDoublePressQuickSwitchSecureFolder:Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;

    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;->setSummaryVisible(Z)V

    const-string v2, "double_press_open_apps"

    .line 178
    invoke-virtual {p0, v2}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;

    iput-object v2, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->mDoublePressOpenApp:Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;

    .line 179
    invoke-virtual {v2, p0}, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;->setOnClickListener(Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference$OnClickListener;)V

    .line 180
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->mDoublePressOpenApp:Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;

    invoke-virtual {v2, p0}, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;->setOnGearClickListener(Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference$OnGearClickListener;)V

    .line 181
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->mDoublePressOpenApp:Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;->setButtonVisible(Z)V

    .line 182
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->mDoublePressOpenApp:Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;->setSummaryVisible(Z)V

    .line 183
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->mDoublePressOpenApp:Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    const-string v2, "short_press_dedicated_app_category"

    .line 185
    invoke-virtual {p0, v2}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    iput-object v2, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->mShortPressDedicatedAppCategory:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    const-string v2, "short_press_dedicated_app"

    .line 186
    invoke-virtual {p0, v2}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Landroidx/preference/SecSwitchPreferenceScreen;

    iput-object v2, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->mShortPressDedicatedApp:Landroidx/preference/SecSwitchPreferenceScreen;

    .line 187
    invoke-virtual {v2, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 188
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->mShortPressDedicatedApp:Landroidx/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v2, v3}, Landroidx/preference/SecSwitchPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    const-string v2, "function_key_long_press"

    .line 190
    invoke-virtual {p0, v2}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Landroidx/preference/SecPreference;

    iput-object v3, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->mFuncKeyLongPress:Landroidx/preference/SecPreference;

    const-string v3, "long_press_wake_bixby"

    .line 192
    invoke-virtual {p0, v3}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;

    iput-object v4, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->mLongPressWakeBixby:Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;

    .line 193
    invoke-virtual {v4, p0}, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;->setOnClickListener(Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference$OnClickListener;)V

    .line 194
    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->mLongPressWakeBixby:Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;

    invoke-virtual {v4, v1}, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;->setButtonVisible(Z)V

    .line 195
    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->mLongPressWakeBixby:Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;

    invoke-virtual {v4, v1}, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;->setSummaryVisible(Z)V

    const-string v4, "long_press_power_off"

    .line 197
    invoke-virtual {p0, v4}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;

    iput-object v5, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->mLongPressPowerOff:Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;

    .line 198
    invoke-virtual {v5, p0}, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;->setOnClickListener(Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference$OnClickListener;)V

    .line 199
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->mLongPressPowerOff:Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;

    invoke-virtual {v5, v1}, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;->setButtonVisible(Z)V

    .line 200
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->mLongPressPowerOff:Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;

    invoke-virtual {v5, v1}, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;->setSummaryVisible(Z)V

    const-string v1, "tips_for_power_off"

    .line 202
    invoke-virtual {p0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v5

    check-cast v5, Landroidx/preference/SecPreference;

    iput-object v5, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->mTipsForPowerOff:Landroidx/preference/SecPreference;

    .line 203
    new-instance v6, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings$1;

    invoke-direct {v6, p0}, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings$1;-><init>(Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;)V

    invoke-virtual {v5, v6}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 222
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportBixbyClient()Z

    move-result v5

    if-nez v5, :cond_0

    .line 223
    invoke-virtual {p0, v2}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    .line 224
    invoke-virtual {p0, v3}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    .line 225
    invoke-virtual {p0, v4}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    .line 226
    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    const-string v1, "sec_inset_category_1"

    .line 227
    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    .line 230
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->isQuickSwitchToSecureFolderSupported()Z

    move-result v1

    if-nez v1, :cond_1

    .line 231
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    .line 235
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->updateFuncKeyDoublePressPreferences()V

    .line 236
    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->updateFuncKeyDoublePressTypePreferences()V

    .line 237
    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->updateFuncKeyLongPressTypePreferences()V

    return-void
.end method

.method private isQuickSwitchToSecureFolderSupported()Z
    .locals 2

    .line 241
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object p0

    const-string v0, "CscFeature_Common_SupportPrivateMode"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 242
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p0

    if-nez p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private isSecureFolderEnabled()Z
    .locals 7

    .line 246
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/settings/knox/KnoxUtils;->getUserManager(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p0

    .line 247
    invoke-virtual {p0}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v0

    .line 248
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    .line 250
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserHandle;

    .line 251
    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    invoke-virtual {p0}, Landroid/os/UserManager;->getUserHandle()I

    move-result v6

    if-ne v5, v6, :cond_0

    goto :goto_1

    .line 254
    :cond_0
    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 255
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 256
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isSecureFolder()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method private setFuncKeyDoublePress(Z)V
    .locals 3

    .line 511
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "function_key_config_doublepress"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 512
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->mContext:Landroid/content/Context;

    const/4 v1, 0x2

    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->getFunctKeyDoublePressType()I

    move-result v2

    invoke-static {v0, p1, v1, v2}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->setSideKeyCustomizationInfo(Landroid/content/Context;ZII)V

    .line 513
    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->updateFuncKeyDoublePressPreferences()V

    .line 514
    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->updateFuncKeyDoublePressTypePreferences()V

    .line 515
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->getMetricsCategory()I

    move-result p0

    const/16 v0, 0x1dbe

    invoke-static {p0, v0, p1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIZ)V

    return-void
.end method

.method private sideKeyDoublePressEnablePopup()V
    .locals 6

    .line 519
    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->dismissAllDialog()V

    .line 520
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "pwrkey_owner_status"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 521
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/settings/R$string;->turn_off_va_dialog_title:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    .line 522
    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    sget v5, Lcom/android/settings/R$string;->tvmode_quick_access:I

    goto :goto_1

    :cond_1
    sget v5, Lcom/android/settings/R$string;->dark_screen_with_side_key_title:I

    :goto_1
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    .line 521
    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 523
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$string;->sec_function_key_enable_popup_msg:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 524
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 525
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->turn_off_button:I

    new-instance v3, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings$3;

    invoke-direct {v3, p0, v0}, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings$3;-><init>(Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;Z)V

    .line 526
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->cancel:I

    new-instance v2, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings$2;-><init>(Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;)V

    .line 536
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 540
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->mAllDisabledDialog:Landroid/app/AlertDialog;

    .line 541
    new-instance v1, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings$4;-><init>(Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 547
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private updateFuncKeyDoublePressPreferences()V
    .locals 2

    .line 278
    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->getFunctKeyDoublePressSwitch()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 279
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->mFuncKeyDoublePress:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

.method private updateFuncKeyDoublePressTypePreferences()V
    .locals 9

    .line 287
    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->isQuickSwitchToSecureFolderSupported()Z

    move-result v0

    .line 288
    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->getFunctKeyDoublePressSwitch()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1

    .line 289
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->mDoublePressQuickLaunchCamera:Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;

    invoke-virtual {v1, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 290
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->mDoublePressOpenApp:Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;

    invoke-virtual {v1, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->mDoublePressQuickSwitchSecureFolder:Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 294
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->mDoublePressPaywithSamsungPay:Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;

    invoke-virtual {p0, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    goto/16 :goto_6

    .line 296
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->mDoublePressQuickLaunchCamera:Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 297
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->mDoublePressOpenApp:Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    if-eqz v0, :cond_3

    .line 299
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->mDoublePressQuickSwitchSecureFolder:Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 300
    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->isSecureFolderEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 301
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->mDoublePressQuickSwitchSecureFolder:Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;->setSummaryVisible(Z)V

    .line 302
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->mDoublePressQuickSwitchSecureFolder:Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;

    sget v4, Lcom/android/settings/R$string;->sec_function_key_quick_switch_uninstalled_summary:I

    invoke-virtual {v1, v4}, Landroidx/preference/Preference;->setSummary(I)V

    .line 303
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->mDoublePressQuickSwitchSecureFolder:Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;

    invoke-virtual {v1, v3}, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    goto :goto_0

    .line 305
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->mDoublePressQuickSwitchSecureFolder:Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;

    invoke-virtual {v1, v3}, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;->setSummaryVisible(Z)V

    .line 308
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isPayWithSamsungPayVisible(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 309
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->mDoublePressPaywithSamsungPay:Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_1

    .line 311
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->mDoublePressPaywithSamsungPay:Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;

    invoke-virtual {v1, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 313
    :goto_1
    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->getFunctKeyDoublePressType()I

    move-result v1

    if-eqz v0, :cond_5

    .line 315
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->mDoublePressQuickSwitchSecureFolder:Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;

    invoke-virtual {v0, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 317
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isPayWithSamsungPayVisible(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 318
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->mDoublePressPaywithSamsungPay:Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;

    invoke-virtual {v0, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_6
    const/4 v0, 0x2

    if-nez v1, :cond_7

    .line 321
    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->mDoublePressQuickLaunchCamera:Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;

    invoke-virtual {v4, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 322
    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->mDoublePressOpenApp:Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;

    invoke-virtual {v4, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_2

    :cond_7
    const/4 v4, 0x3

    if-ne v1, v4, :cond_8

    .line 324
    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->mDoublePressQuickLaunchCamera:Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;

    invoke-virtual {v4, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 325
    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->mDoublePressQuickSwitchSecureFolder:Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;

    invoke-virtual {v4, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 326
    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->mDoublePressOpenApp:Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;

    invoke-virtual {v4, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_2

    :cond_8
    if-ne v1, v0, :cond_9

    .line 328
    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->mDoublePressQuickLaunchCamera:Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;

    invoke-virtual {v4, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 329
    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->mDoublePressOpenApp:Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;

    invoke-virtual {v4, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_2

    :cond_9
    const/4 v4, 0x4

    if-ne v1, v4, :cond_a

    .line 331
    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->mDoublePressQuickLaunchCamera:Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;

    invoke-virtual {v4, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 332
    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->mDoublePressOpenApp:Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;

    invoke-virtual {v4, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 333
    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->mDoublePressPaywithSamsungPay:Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;

    invoke-virtual {v4, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 336
    :cond_a
    :goto_2
    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->mContext:Landroid/content/Context;

    invoke-static {v4, v0}, Lcom/samsung/android/settings/usefulfeature/FunctionKeyInfo;->getFunctionKeyAppInfo(Landroid/content/Context;I)Lcom/samsung/android/settings/usefulfeature/FunctionKeyInfo$FunctionKeyAppInfo;

    move-result-object v4

    if-eqz v4, :cond_f

    .line 338
    iget-object v5, v4, Lcom/samsung/android/settings/usefulfeature/FunctionKeyInfo$FunctionKeyAppInfo;->mDB:Ljava/lang/String;

    if-eqz v5, :cond_f

    const-string v6, ""

    .line 339
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    goto :goto_4

    .line 342
    :cond_b
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->mDoublePressOpenApp:Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;

    invoke-virtual {v5, v2}, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;->setSummaryVisible(Z)V

    .line 343
    iget-object v5, v4, Lcom/samsung/android/settings/usefulfeature/FunctionKeyInfo$FunctionKeyAppInfo;->mLabel:Ljava/lang/CharSequence;

    if-eqz v5, :cond_e

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    goto :goto_3

    .line 345
    :cond_c
    iget-boolean v5, v4, Lcom/samsung/android/settings/usefulfeature/FunctionKeyInfo$FunctionKeyAppInfo;->mIsEnabled:Z

    if-nez v5, :cond_d

    .line 346
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->mDoublePressOpenApp:Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/android/settings/R$string;->lock_app_shortcut_disabled_app:I

    new-array v8, v2, [Ljava/lang/Object;

    iget-object v4, v4, Lcom/samsung/android/settings/usefulfeature/FunctionKeyInfo$FunctionKeyAppInfo;->mLabel:Ljava/lang/CharSequence;

    aput-object v4, v8, v3

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 349
    :cond_d
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->mDoublePressOpenApp:Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;

    iget-object v4, v4, Lcom/samsung/android/settings/usefulfeature/FunctionKeyInfo$FunctionKeyAppInfo;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {v5, v4}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 344
    :cond_e
    :goto_3
    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->mDoublePressOpenApp:Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;

    sget v5, Lcom/android/settings/R$string;->lock_app_shortcut_deleted_app:I

    invoke-virtual {v4, v5}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_5

    .line 340
    :cond_f
    :goto_4
    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->mDoublePressOpenApp:Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;

    invoke-virtual {v4, v3}, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;->setSummaryVisible(Z)V

    :goto_5
    if-ne v1, v0, :cond_10

    .line 353
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->mDoublePressOpenApp:Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;->setButtonEnabled(Z)V

    goto :goto_6

    .line 355
    :cond_10
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->mDoublePressOpenApp:Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;->setButtonEnabled(Z)V

    :goto_6
    return-void
.end method

.method private updateFuncKeyLongPressTypePreferences()V
    .locals 6

    .line 361
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->hasSideKeyDedicatedAppEnable(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "dedicated_app_side_switch"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    .line 362
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    .line 363
    :goto_0
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->mShortPressDedicatedAppCategory:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    invoke-virtual {v4, v5}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 364
    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->mShortPressDedicatedApp:Landroidx/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v4, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 365
    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->mShortPressDedicatedApp:Landroidx/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v4, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 366
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->dedicatedAppUpdate(Z)V

    goto :goto_1

    .line 368
    :cond_1
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->mShortPressDedicatedAppCategory:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    invoke-virtual {v0, v4}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 369
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->mShortPressDedicatedApp:Landroidx/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 370
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v4, 0x3

    invoke-static {v0, v4}, Lcom/samsung/android/settings/activekey/DedicatedAppInfo;->getDedicatedAppSwitch(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/samsung/android/settings/activekey/DedicatedAppInfo;->getDedicatedAppState(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 371
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v4, v2}, Lcom/samsung/android/settings/activekey/DedicatedAppInfo;->setDedicatedAppSwitch(Landroid/content/Context;IZ)V

    .line 372
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v5, ""

    invoke-static {v0, v4, v5}, Lcom/samsung/android/settings/activekey/DedicatedAppInfo;->saveDedicatedApp(Landroid/content/Context;ILjava/lang/String;)V

    .line 373
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v4, v5}, Lcom/samsung/android/settings/activekey/DedicatedAppInfo;->saveDedicatedAppLabel(Landroid/content/Context;ILjava/lang/String;)V

    .line 376
    :cond_3
    :goto_1
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportBixbyClient()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 377
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_4

    move v0, v3

    goto :goto_2

    :cond_4
    move v0, v2

    .line 378
    :goto_2
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->mFuncKeyLongPress:Landroidx/preference/SecPreference;

    xor-int/lit8 v4, v0, 0x1

    invoke-virtual {v1, v4}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 379
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->mLongPressWakeBixby:Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;

    xor-int/lit8 v4, v0, 0x1

    invoke-virtual {v1, v4}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 380
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->mLongPressPowerOff:Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;

    xor-int/lit8 v4, v0, 0x1

    invoke-virtual {v1, v4}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 381
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->mTipsForPowerOff:Landroidx/preference/SecPreference;

    xor-int/2addr v0, v3

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 383
    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->getFunctKeyLongPressType()I

    move-result v0

    if-nez v0, :cond_5

    .line 385
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->mLongPressWakeBixby:Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;

    invoke-virtual {v0, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 386
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->mLongPressPowerOff:Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;

    invoke-virtual {p0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_3

    :cond_5
    if-ne v0, v3, :cond_6

    .line 388
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->mLongPressWakeBixby:Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 389
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->mLongPressPowerOff:Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;

    invoke-virtual {p0, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_6
    :goto_3
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x1dbd

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 119
    sget p0, Lcom/android/settings/R$xml;->sec_function_key_settings:I

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 124
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 126
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object p1

    new-instance v0, Landroidx/preference/PreferenceManager$SimplePreferenceComparisonCallback;

    invoke-direct {v0}, Landroidx/preference/PreferenceManager$SimplePreferenceComparisonCallback;-><init>()V

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceManager;->setPreferenceComparisonCallback(Landroidx/preference/PreferenceManager$PreferenceComparisonCallback;)V

    .line 129
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->mContext:Landroid/content/Context;

    .line 131
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "type"

    if-eqz p1, :cond_0

    .line 133
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->mActivityHistory:Ljava/lang/String;

    .line 135
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->mActivityHistory:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 136
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v1, "default"

    .line 138
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->mActivityHistory:Ljava/lang/String;

    :cond_1
    const/4 p1, 0x0

    .line 142
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->setAutoRemoveInsetCategory(Z)V

    const/4 p1, 0x1

    .line 143
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->setAnimationAllowed(Z)V

    .line 144
    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->initUI()V

    return-void
.end method

.method public onGearClick(Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;)V
    .locals 2

    .line 601
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "double_press_open_apps"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 602
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "pressed_type"

    const-string v1, "double"

    .line 603
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v1, Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView;

    .line 605
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    .line 606
    invoke-virtual {v0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->sec_open_apps_title:I

    .line 607
    invoke-virtual {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    .line 608
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->getMetricsCategory()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 609
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 0

    .line 446
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    .line 463
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 464
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->mFuncKeyDoublePress:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    if-eqz p2, :cond_4

    .line 466
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "pwrkey_owner_status"

    invoke-static {p1, v0, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v2

    .line 467
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "lcd_curtain"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    move v2, v1

    :cond_1
    if-nez p1, :cond_3

    if-eqz v2, :cond_2

    goto :goto_1

    .line 471
    :cond_2
    invoke-direct {p0, p2}, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->setFuncKeyDoublePress(Z)V

    goto :goto_2

    .line 469
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->sideKeyDoublePressEnablePopup()V

    goto :goto_2

    .line 474
    :cond_4
    invoke-direct {p0, p2}, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->setFuncKeyDoublePress(Z)V

    :goto_2
    return v1

    .line 477
    :cond_5
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "short_press_dedicated_app"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 478
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "dedicated_app_side_switch"

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 479
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->getMetricsCategory()I

    move-result p1

    const v0, 0x10695

    invoke-static {p1, v0, p2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIZ)V

    .line 480
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x3

    invoke-static {p1, v0}, Lcom/samsung/android/settings/activekey/DedicatedAppInfo;->getDedicatedAppState(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 481
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/samsung/android/settings/activekey/DedicatedAppInfo;->getDedicatedApp(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    .line 482
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p2, v0, p1}, Lcom/samsung/android/settings/activekey/DedicatedAppInfo;->setB2BDeltaKeyCustomizationInfo(Landroid/content/Context;ZILjava/lang/String;)V

    .line 484
    :cond_6
    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->updateFuncKeyLongPressTypePreferences()V

    return v1

    :cond_7
    return v2
.end method

.method public onRadioButtonClicked(Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;)V
    .locals 10

    .line 559
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->mDoublePressQuickLaunchCamera:Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x3

    const-string v3, "1"

    const/4 v4, -0x1

    const/16 v5, 0x1dbf

    const/4 v6, 0x0

    const-string v7, "function_key_config_doublepress_type"

    const/4 v8, 0x1

    const/4 v9, 0x2

    if-eqz v0, :cond_0

    .line 560
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v7, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 561
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->getMetricsCategory()I

    move-result p1

    invoke-static {p1, v5, v3}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IILjava/lang/String;)V

    move v1, v6

    :goto_0
    move v4, v9

    goto/16 :goto_3

    .line 564
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->mDoublePressOpenApp:Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 565
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v7, v9}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 566
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->getMetricsCategory()I

    move-result v0

    const-string v1, "3"

    invoke-static {v0, v5, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IILjava/lang/String;)V

    .line 567
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "function_key_config_doublepress_value"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 568
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->mContext:Landroid/content/Context;

    invoke-static {v0, v8, v9, v9}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->setSideKeyCustomizationInfo(Landroid/content/Context;ZII)V

    .line 569
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->onGearClick(Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;)V

    goto/16 :goto_2

    :cond_1
    move v1, v9

    :goto_1
    move v4, v1

    goto/16 :goto_3

    .line 574
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->mDoublePressQuickSwitchSecureFolder:Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 575
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v7, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 576
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->getMetricsCategory()I

    move-result p1

    const-string v0, "4"

    invoke-static {p1, v5, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IILjava/lang/String;)V

    move v1, v2

    goto :goto_0

    .line 579
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->mDoublePressPaywithSamsungPay:Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 580
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v7, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 581
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->getMetricsCategory()I

    move-result p1

    const-string v0, "5"

    invoke-static {p1, v5, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IILjava/lang/String;)V

    goto :goto_0

    .line 584
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->mLongPressWakeBixby:Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x1dc1

    const-string v2, "function_key_config_longpress_type"

    if-eqz v0, :cond_5

    .line 585
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v2, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 586
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->getMetricsCategory()I

    move-result p1

    invoke-static {p1, v1, v3}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IILjava/lang/String;)V

    move v1, v6

    move v4, v8

    goto :goto_3

    .line 589
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->mLongPressPowerOff:Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 590
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v2, v8}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 591
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->getMetricsCategory()I

    move-result p1

    const-string v0, "2"

    invoke-static {p1, v1, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IILjava/lang/String;)V

    move v1, v8

    goto :goto_1

    :cond_6
    :goto_2
    move v1, v4

    .line 595
    :goto_3
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->mContext:Landroid/content/Context;

    invoke-static {p1, v8, v4, v1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->setSideKeyCustomizationInfo(Landroid/content/Context;ZII)V

    .line 596
    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->updateFuncKeyDoublePressTypePreferences()V

    .line 597
    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->updateFuncKeyLongPressTypePreferences()V

    return-void
.end method

.method public onResume()V
    .locals 4

    .line 417
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 418
    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->updateFuncKeyDoublePressPreferences()V

    .line 419
    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->updateFuncKeyDoublePressTypePreferences()V

    .line 420
    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->updateFuncKeyLongPressTypePreferences()V

    .line 422
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isGuestUser(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isGuestMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 424
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->mFuncKeyDoublePress:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    xor-int/2addr v3, v1

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 425
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->mDoublePressQuickLaunchCamera:Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    xor-int/2addr v3, v1

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;->setEnabled(Z)V

    .line 427
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->mDoublePressOpenApp:Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    xor-int/2addr v3, v1

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;->setEnabled(Z)V

    .line 428
    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->isQuickSwitchToSecureFolderSupported()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 429
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->mDoublePressQuickSwitchSecureFolder:Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    xor-int/2addr v3, v1

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;->setEnabled(Z)V

    .line 431
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isPayWithSamsungPayVisible(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 432
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->mDoublePressPaywithSamsungPay:Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    xor-int/2addr v3, v1

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;->setEnabled(Z)V

    .line 434
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->mFuncKeyLongPress:Landroidx/preference/SecPreference;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    xor-int/2addr v3, v1

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 435
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->mLongPressWakeBixby:Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    xor-int/2addr v3, v1

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;->setEnabled(Z)V

    .line 436
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->mShortPressDedicatedApp:Landroidx/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    xor-int/2addr v3, v1

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 437
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->mLongPressPowerOff:Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-virtual {v2, v0}, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;->setEnabled(Z)V

    .line 440
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->setApplicationRestrictionsForKnox()V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 451
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onStart()V

    .line 452
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->mSettingsObserver:Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings$SettingsObserver;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings$SettingsObserver;->setListening(Z)V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 457
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onStop()V

    .line 458
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->mSettingsObserver:Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings$SettingsObserver;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings$SettingsObserver;->setListening(Z)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6

    .line 149
    invoke-super {p0, p1, p2}, Landroidx/preference/PreferenceFragmentCompat;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 150
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 151
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/settings/R$dimen;->sec_widget_list_with_checkbox_margin_start:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    .line 152
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/android/settings/R$dimen;->sec_widget_list_with_checkbox_size:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    add-float/2addr p1, p2

    .line 153
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/android/settings/R$dimen;->sec_widget_list_with_checkbox_margin_end:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    add-float/2addr p1, p2

    float-to-int v3, p1

    .line 154
    new-instance p1, Lcom/samsung/android/settings/widget/SecCustomDividerItemDecorator;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/android/settings/R$drawable;->sec_top_level_list_divider:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->mContext:Landroid/content/Context;

    const v4, 0x1020018

    const v5, 0x1020001

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/widget/SecCustomDividerItemDecorator;-><init>(Landroid/graphics/drawable/Drawable;Landroid/content/Context;III)V

    .line 155
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    return-void
.end method

.method protected setApplicationRestrictionsForKnox()V
    .locals 5

    .line 698
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->mContext:Landroid/content/Context;

    const-string v1, "function_key_double_press"

    const-string v2, "hide"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/knox/KnoxUtils;->isApplicationRestricted(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const-string v3, "grayout"

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    .line 699
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->mFuncKeyDoublePress:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {v0, v4}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_0

    .line 700
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, v3}, Lcom/samsung/android/settings/knox/KnoxUtils;->isApplicationRestricted(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 701
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->mFuncKeyDoublePress:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {v0, v4}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 704
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->mContext:Landroid/content/Context;

    const-string v1, "double_press_quick_launch_camera"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/knox/KnoxUtils;->isApplicationRestricted(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 705
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->mDoublePressQuickLaunchCamera:Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;

    invoke-virtual {v0, v4}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_1

    .line 706
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, v3}, Lcom/samsung/android/settings/knox/KnoxUtils;->isApplicationRestricted(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 707
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->mDoublePressQuickLaunchCamera:Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;

    invoke-virtual {v0, v4}, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;->setEnabled(Z)V

    .line 710
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->mContext:Landroid/content/Context;

    const-string v1, "double_press_open_apps"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/knox/KnoxUtils;->isApplicationRestricted(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 711
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->mDoublePressOpenApp:Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;

    invoke-virtual {v0, v4}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_2

    .line 712
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, v3}, Lcom/samsung/android/settings/knox/KnoxUtils;->isApplicationRestricted(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 713
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->mDoublePressOpenApp:Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;

    invoke-virtual {v0, v4}, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;->setEnabled(Z)V

    .line 716
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->mContext:Landroid/content/Context;

    const-string v1, "double_press_pay_with_samsung_pay"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/knox/KnoxUtils;->isApplicationRestricted(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 717
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->mDoublePressPaywithSamsungPay:Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;

    invoke-virtual {v0, v4}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_3

    .line 718
    :cond_6
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, v3}, Lcom/samsung/android/settings/knox/KnoxUtils;->isApplicationRestricted(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 719
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->mDoublePressPaywithSamsungPay:Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;

    invoke-virtual {v0, v4}, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;->setEnabled(Z)V

    .line 722
    :cond_7
    :goto_3
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->mContext:Landroid/content/Context;

    const-string v1, "function_key_long_press"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/knox/KnoxUtils;->isApplicationRestricted(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 723
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->mFuncKeyLongPress:Landroidx/preference/SecPreference;

    invoke-virtual {v0, v4}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_4

    .line 724
    :cond_8
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, v3}, Lcom/samsung/android/settings/knox/KnoxUtils;->isApplicationRestricted(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 725
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->mFuncKeyLongPress:Landroidx/preference/SecPreference;

    invoke-virtual {v0, v4}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 728
    :cond_9
    :goto_4
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->mContext:Landroid/content/Context;

    const-string v1, "long_press_wake_bixby"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/knox/KnoxUtils;->isApplicationRestricted(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 729
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->mLongPressWakeBixby:Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;

    invoke-virtual {v0, v4}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_5

    .line 730
    :cond_a
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, v3}, Lcom/samsung/android/settings/knox/KnoxUtils;->isApplicationRestricted(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 731
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->mLongPressWakeBixby:Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;

    invoke-virtual {v0, v4}, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;->setEnabled(Z)V

    .line 734
    :cond_b
    :goto_5
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->mContext:Landroid/content/Context;

    const-string v1, "short_press_dedicated_app"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/knox/KnoxUtils;->isApplicationRestricted(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 735
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->mShortPressDedicatedApp:Landroidx/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v0, v4}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_6

    .line 736
    :cond_c
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, v3}, Lcom/samsung/android/settings/knox/KnoxUtils;->isApplicationRestricted(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 737
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->mShortPressDedicatedApp:Landroidx/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v0, v4}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 740
    :cond_d
    :goto_6
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->mContext:Landroid/content/Context;

    const-string v1, "long_press_power_off"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/knox/KnoxUtils;->isApplicationRestricted(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 741
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->mLongPressPowerOff:Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;

    invoke-virtual {p0, v4}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_7

    .line 742
    :cond_e
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, v3}, Lcom/samsung/android/settings/knox/KnoxUtils;->isApplicationRestricted(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 743
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->mLongPressPowerOff:Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;->setEnabled(Z)V

    :cond_f
    :goto_7
    return-void
.end method
