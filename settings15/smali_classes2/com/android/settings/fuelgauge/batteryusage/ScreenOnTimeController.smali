.class public Lcom/android/settings/fuelgauge/batteryusage/ScreenOnTimeController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field private static final IW_LOCALE:Ljava/util/Locale;

.field private static final NUMBER_PATTERN:Ljava/util/regex/Pattern;

.field private static final ROOT_PREFERENCE_KEY:Ljava/lang/String; = "screen_on_time_category"

.field private static final SCREEN_ON_TIME_TEXT_PREFERENCE_KEY:Ljava/lang/String; = "screen_on_time_text"

.field private static final TAG:Ljava/lang/String; = "ScreenOnTimeController"


# instance fields
.field mPrefContext:Landroid/content/Context;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field mRootPreference:Landroidx/preference/PreferenceCategory;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field mScreenOnTimeTextPreference:Lcom/android/settings/fuelgauge/batteryusage/TextViewPreference;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field mScreenTimeCategoryLastFullChargeText:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "[\\d]*[\\.,]?[\\d]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/settings/fuelgauge/batteryusage/ScreenOnTimeController;->NUMBER_PATTERN:Ljava/util/regex/Pattern;

    new-instance v0, Ljava/util/Locale;

    const-string v1, "iw"

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/fuelgauge/batteryusage/ScreenOnTimeController;->IW_LOCALE:Ljava/util/Locale;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "screen_on_time_category"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static enlargeFontOfNumberIfNeeded(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object p0

    if-eqz p0, :cond_1

    sget-object v0, Lcom/android/settings/fuelgauge/batteryusage/ScreenOnTimeController;->IW_LOCALE:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    return-object p1

    :cond_1
    new-instance p0, Landroid/text/SpannableString;

    invoke-direct {p0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/android/settings/fuelgauge/batteryusage/ScreenOnTimeController;->NUMBER_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    :goto_0
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v1, 0x24

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    const/16 v3, 0x21

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    :cond_2
    return-object p0
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/ScreenOnTimeController;->mPrefContext:Landroid/content/Context;

    const-string v0, "screen_on_time_category"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/ScreenOnTimeController;->mRootPreference:Landroidx/preference/PreferenceCategory;

    const-string v0, "screen_on_time_text"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/fuelgauge/batteryusage/TextViewPreference;

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/ScreenOnTimeController;->mScreenOnTimeTextPreference:Lcom/android/settings/fuelgauge/batteryusage/TextViewPreference;

    iget-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/ScreenOnTimeController;->mPrefContext:Landroid/content/Context;

    const v0, 0x7f142014

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/ScreenOnTimeController;->mScreenTimeCategoryLastFullChargeText:Ljava/lang/String;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getBackupKeys()Ljava/util/List;
    .locals 0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getLaunchIntent()Landroid/content/Intent;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getValue()Lcom/samsung/android/settings/cube/ControlValue;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public handleScreenOnTimeUpdated(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/ScreenOnTimeController;->mRootPreference:Landroidx/preference/PreferenceCategory;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/ScreenOnTimeController;->mScreenOnTimeTextPreference:Lcom/android/settings/fuelgauge/batteryusage/TextViewPreference;

    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void

    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/android/settings/fuelgauge/batteryusage/ScreenOnTimeController;->showCategoryTitle(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/settings/fuelgauge/batteryusage/ScreenOnTimeController;->showScreenOnTimeText(Ljava/lang/Long;)V

    return-void
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic ignoreUserInteraction()V
    .locals 0

    return-void
.end method

.method public bridge synthetic isControllable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    sget-object p0, Lcom/samsung/android/settings/cube/Controllable$ControllableType;->NO_INTERACTION:Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    return-object p0
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public showCategoryTitle(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const v0, 0x7f142013

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/ScreenOnTimeController;->mScreenTimeCategoryLastFullChargeText:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/ScreenOnTimeController;->mPrefContext:Landroid/content/Context;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/android/settings/fuelgauge/batteryusage/ScreenOnTimeController;->mScreenTimeCategoryLastFullChargeText:Ljava/lang/String;

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/ScreenOnTimeController;->mPrefContext:Landroid/content/Context;

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v1, v0, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    :goto_1
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/ScreenOnTimeController;->mRootPreference:Landroidx/preference/PreferenceCategory;

    invoke-static {p2, p1}, Lcom/android/settings/Utils;->createAccessibleSequence(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/ScreenOnTimeController;->mRootPreference:Landroidx/preference/PreferenceCategory;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method public showScreenOnTimeText(Ljava/lang/Long;)V
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/ScreenOnTimeController;->mPrefContext:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    long-to-double v1, v1

    const/4 p1, 0x0

    invoke-static {v0, v1, v2, p1, p1}, Lcom/android/settingslib/utils/StringUtil;->formatElapsedTime(Landroid/content/Context;DZZ)Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, ","

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/ScreenOnTimeController;->mScreenOnTimeTextPreference:Lcom/android/settings/fuelgauge/batteryusage/TextViewPreference;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/ScreenOnTimeController;->mPrefContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/android/settings/fuelgauge/batteryusage/ScreenOnTimeController;->enlargeFontOfNumberIfNeeded(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/android/settings/fuelgauge/batteryusage/TextViewPreference;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Landroidx/preference/Preference;->notifyChanged()V

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/ScreenOnTimeController;->mScreenOnTimeTextPreference:Lcom/android/settings/fuelgauge/batteryusage/TextViewPreference;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
