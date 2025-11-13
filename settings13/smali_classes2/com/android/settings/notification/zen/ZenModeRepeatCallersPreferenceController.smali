.class public Lcom/android/settings/notification/zen/ZenModeRepeatCallersPreferenceController;
.super Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;
.source "ZenModeRepeatCallersPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private final mBackend:Lcom/android/settings/notification/zen/ZenModeBackend;

.field private mIsFromDnd:Z

.field private mPreference:Landroidx/preference/Preference;

.field private final mRepeatCallersThreshold:I

.field private mSAHandler:Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;I)V
    .locals 1

    const-string/jumbo v0, "zen_mode_repeat_callers"

    .line 47
    invoke-direct {p0, p1, v0, p2}, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 48
    invoke-static {}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->getInstance()Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/notification/zen/ZenModeRepeatCallersPreferenceController;->mSAHandler:Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;

    .line 49
    invoke-virtual {p2, p0}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->setZenModeRepeatCallersPreferenceController(Lcom/android/settings/notification/zen/ZenModeRepeatCallersPreferenceController;)V

    .line 50
    iput p3, p0, Lcom/android/settings/notification/zen/ZenModeRepeatCallersPreferenceController;->mRepeatCallersThreshold:I

    .line 51
    invoke-static {p1}, Lcom/android/settings/notification/zen/ZenModeBackend;->getInstance(Landroid/content/Context;)Lcom/android/settings/notification/zen/ZenModeBackend;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenModeRepeatCallersPreferenceController;->mBackend:Lcom/android/settings/notification/zen/ZenModeBackend;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;IZ)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/notification/zen/ZenModeRepeatCallersPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;I)V

    .line 58
    iput-boolean p4, p0, Lcom/android/settings/notification/zen/ZenModeRepeatCallersPreferenceController;->mIsFromDnd:Z

    return-void
.end method

.method private setRepeatCallerSummary(Landroidx/preference/Preference;)V
    .locals 4

    .line 129
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->zen_mode_repeat_callers_summary:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget p0, p0, Lcom/android/settings/notification/zen/ZenModeRepeatCallersPreferenceController;->mRepeatCallersThreshold:I

    .line 130
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v3, 0x0

    aput-object p0, v2, v3

    .line 129
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 73
    invoke-super {p0, p1}, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string/jumbo v0, "zen_mode_repeat_callers"

    .line 74
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/notification/zen/ZenModeRepeatCallersPreferenceController;->setRepeatCallerSummary(Landroidx/preference/Preference;)V

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "zen_mode_repeat_callers"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .line 113
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 114
    sget-boolean v0, Lcom/android/settings/notification/zen/ZenModeSettingsBase;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onPrefChange allowRepeatCallers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PrefControllerMixin"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const/16 v2, 0xab

    invoke-virtual {v0, v1, v2, p2}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;IZ)V

    .line 119
    iget-boolean v0, p0, Lcom/android/settings/notification/zen/ZenModeRepeatCallersPreferenceController;->mIsFromDnd:Z

    if-eqz v0, :cond_1

    .line 120
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeRepeatCallersPreferenceController;->mBackend:Lcom/android/settings/notification/zen/ZenModeBackend;

    const/16 p1, 0x10

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/notification/zen/ZenModeBackend;->saveSoundPolicy(IZ)V

    goto :goto_0

    .line 122
    :cond_1
    invoke-static {p2}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->setRepeatedCaller(Z)V

    .line 123
    invoke-virtual {p0, p1}, Lcom/android/settings/notification/zen/ZenModeRepeatCallersPreferenceController;->updateState(Landroidx/preference/Preference;)V

    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public refreshState()V
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeRepeatCallersPreferenceController;->mPreference:Landroidx/preference/Preference;

    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {p0, v0}, Lcom/android/settings/notification/zen/ZenModeRepeatCallersPreferenceController;->updateState(Landroidx/preference/Preference;)V

    :cond_0
    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 4

    .line 79
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 80
    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenModeRepeatCallersPreferenceController;->mPreference:Landroidx/preference/Preference;

    .line 81
    check-cast p1, Landroidx/preference/SwitchPreference;

    .line 82
    invoke-virtual {p0}, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->getZenMode()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    .line 89
    iget-boolean v0, p0, Lcom/android/settings/notification/zen/ZenModeRepeatCallersPreferenceController;->mIsFromDnd:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeRepeatCallersPreferenceController;->mBackend:Lcom/android/settings/notification/zen/ZenModeBackend;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Lcom/android/settings/notification/zen/ZenModeBackend;->isPriorityCategoryEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeRepeatCallersPreferenceController;->mBackend:Lcom/android/settings/notification/zen/ZenModeBackend;

    .line 91
    invoke-virtual {v0}, Lcom/android/settings/notification/zen/ZenModeBackend;->getPriorityCallSenders()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeRepeatCallersPreferenceController;->mSAHandler:Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;

    invoke-virtual {v0}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->getCallOption()F

    move-result v0

    float-to-int v0, v0

    if-nez v0, :cond_1

    :goto_0
    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    if-eqz v0, :cond_2

    .line 94
    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 95
    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_3

    .line 97
    :cond_2
    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 98
    iget-boolean v0, p0, Lcom/android/settings/notification/zen/ZenModeRepeatCallersPreferenceController;->mIsFromDnd:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeRepeatCallersPreferenceController;->mBackend:Lcom/android/settings/notification/zen/ZenModeBackend;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/zen/ZenModeBackend;->isPriorityCategoryEnabled(I)Z

    move-result v0

    goto :goto_2

    .line 99
    :cond_3
    invoke-static {}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->getRepeatedCaller()Z

    move-result v0

    .line 98
    :goto_2
    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 101
    :goto_3
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->setPeoplesummary(Landroid/content/Context;)V

    goto :goto_4

    .line 85
    :cond_4
    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 86
    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :goto_4
    return-void
.end method
