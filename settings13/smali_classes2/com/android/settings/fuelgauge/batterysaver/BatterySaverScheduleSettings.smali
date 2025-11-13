.class public Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings;
.super Lcom/android/settings/widget/RadioButtonPickerFragment;
.source "BatterySaverScheduleSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings$BatterySaverScheduleCandidateInfo;
    }
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field public mRadioButtonController:Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleRadioButtonsController;

.field private mSaverPercentage:I

.field private mSaverScheduleKey:Ljava/lang/String;

.field private mSeekBarController:Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSeekBarController;

.field final mSettingsObserver:Landroid/database/ContentObserver;


# direct methods
.method public static synthetic $r8$lambda$J4-Ub_t9zlP3mICJzsPLRGxi_4Q(Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings;->lambda$onPause$0()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 59
    invoke-direct {p0}, Lcom/android/settings/widget/RadioButtonPickerFragment;-><init>()V

    .line 68
    new-instance v0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings$1;-><init>(Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings;->mSettingsObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method private getSaverPercentage()I
    .locals 2

    .line 201
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "low_power_trigger_level"

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private synthetic lambda$onPause$0()V
    .locals 0

    .line 117
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings;->logPowerSaver()V

    return-void
.end method

.method private logPowerSaver()V
    .locals 6

    .line 186
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings;->getSaverPercentage()I

    move-result v5

    .line 187
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings;->mRadioButtonController:Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleRadioButtonsController;

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleRadioButtonsController;->getDefaultKey()Ljava/lang/String;

    move-result-object v4

    .line 188
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings;->mSaverScheduleKey:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings;->mSaverPercentage:I

    if-ne v0, v5, :cond_0

    return-void

    .line 192
    :cond_0
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v0

    const/16 v1, 0x34

    const/16 v2, 0x6f8

    const/16 v3, 0x6f9

    .line 193
    invoke-virtual/range {v0 .. v5}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(IIILjava/lang/String;I)V

    return-void
.end method


# virtual methods
.method protected addStaticPreferences(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings;->mSeekBarController:Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSeekBarController;

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSeekBarController;->updateSeekBar()V

    .line 167
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings;->mSeekBarController:Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSeekBarController;

    invoke-virtual {p0, p1}, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSeekBarController;->addToScreen(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

.method public bindPreferenceExtra(Lcom/android/settingslib/widget/SelectorWithWidgetPreference;Ljava/lang/String;Lcom/android/settingslib/widget/CandidateInfo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 155
    check-cast p3, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings$BatterySaverScheduleCandidateInfo;

    .line 157
    invoke-virtual {p3}, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings$BatterySaverScheduleCandidateInfo;->getSummary()Ljava/lang/CharSequence;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 159
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const/16 p0, 0x8

    .line 160
    invoke-virtual {p1, p0}, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;->setAppendixVisibility(I)V

    :cond_0
    return-void
.end method

.method protected getCandidates()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/android/settingslib/widget/CandidateInfo;",
            ">;"
        }
    .end annotation

    .line 123
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 124
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 125
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x10402f3

    .line 126
    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 127
    new-instance v2, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings$BatterySaverScheduleCandidateInfo;

    sget v3, Lcom/android/settings/R$string;->battery_saver_auto_no_schedule:I

    .line 128
    invoke-virtual {v0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "key_battery_saver_no_schedule"

    const/4 v6, 0x1

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings$BatterySaverScheduleCandidateInfo;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Z)V

    .line 127
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 134
    new-instance p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings$BatterySaverScheduleCandidateInfo;

    sget v2, Lcom/android/settings/R$string;->battery_saver_auto_routine:I

    .line 135
    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    sget v3, Lcom/android/settings/R$string;->battery_saver_auto_routine_summary:I

    .line 136
    invoke-virtual {v0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    const-string v5, "key_battery_saver_routine"

    invoke-direct {p0, v2, v3, v5, v6}, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings$BatterySaverScheduleCandidateInfo;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Z)V

    .line 134
    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 141
    :cond_0
    invoke-static {v0}, Lcom/android/settingslib/fuelgauge/BatterySaverUtils;->revertScheduleToNoneIfNeeded(Landroid/content/Context;)V

    .line 143
    :goto_0
    new-instance p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings$BatterySaverScheduleCandidateInfo;

    sget v2, Lcom/android/settings/R$string;->battery_saver_auto_percentage:I

    .line 144
    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const-string v2, "key_battery_saver_percentage"

    invoke-direct {p0, v0, v4, v2, v6}, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings$BatterySaverScheduleCandidateInfo;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Z)V

    .line 143
    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method protected getDefaultKey()Ljava/lang/String;
    .locals 0

    .line 172
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings;->mRadioButtonController:Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleRadioButtonsController;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleRadioButtonsController;->getDefaultKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 79
    sget p0, Lcom/android/settings/R$xml;->battery_saver_schedule_settings:I

    return p0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2

    .line 84
    invoke-super {p0, p1}, Lcom/android/settings/widget/RadioButtonPickerFragment;->onAttach(Landroid/content/Context;)V

    .line 85
    new-instance v0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSeekBarController;

    invoke-direct {v0, p1}, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSeekBarController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings;->mSeekBarController:Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSeekBarController;

    .line 86
    new-instance v1, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleRadioButtonsController;

    invoke-direct {v1, p1, v0}, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleRadioButtonsController;-><init>(Landroid/content/Context;Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSeekBarController;)V

    iput-object v1, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings;->mRadioButtonController:Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleRadioButtonsController;

    .line 88
    iput-object p1, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings;->mContext:Landroid/content/Context;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 111
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 116
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 117
    new-instance v0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 118
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 4

    .line 93
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onResume()V

    .line 94
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "low_power_warning_acknowledged"

    .line 95
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings;->mSettingsObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    .line 94
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 98
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings;->mRadioButtonController:Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleRadioButtonsController;

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleRadioButtonsController;->getDefaultKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings;->mSaverScheduleKey:Ljava/lang/String;

    .line 99
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings;->getSaverPercentage()I

    move-result v0

    iput v0, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings;->mSaverPercentage:I

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 104
    invoke-super {p0, p1, p2}, Landroidx/preference/PreferenceFragmentCompat;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 105
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 106
    invoke-virtual {p0, p2}, Landroidx/preference/PreferenceFragmentCompat;->setDividerHeight(I)V

    return-void
.end method

.method protected setDefaultKey(Ljava/lang/String;)Z
    .locals 0

    .line 177
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings;->mRadioButtonController:Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleRadioButtonsController;

    invoke-virtual {p0, p1}, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleRadioButtonsController;->setDefaultKey(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
