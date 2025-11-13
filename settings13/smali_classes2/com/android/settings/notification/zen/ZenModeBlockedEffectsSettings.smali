.class public Lcom/android/settings/notification/zen/ZenModeBlockedEffectsSettings;
.super Lcom/android/settings/notification/zen/ZenModeSettingsBase;
.source "ZenModeBlockedEffectsSettings.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

.field public static final STATUS_LOGGING_PROVIDER:Lcom/samsung/android/settings/logging/status/StatusLogger$StatusLoggingProvider;


# instance fields
.field private mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;


# direct methods
.method public static synthetic $r8$lambda$OpokKLcMixlyWiK8drz50b-MayU(Lcom/android/settings/notification/zen/ZenModeBlockedEffectsSettings;Landroid/widget/Switch;Z)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/notification/zen/ZenModeBlockedEffectsSettings;->lambda$onActivityCreated$0(Landroid/widget/Switch;Z)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smbuildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/notification/zen/ZenModeBlockedEffectsSettings;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 181
    new-instance v0, Lcom/android/settings/notification/zen/ZenModeBlockedEffectsSettings$1;

    invoke-direct {v0}, Lcom/android/settings/notification/zen/ZenModeBlockedEffectsSettings$1;-><init>()V

    sput-object v0, Lcom/android/settings/notification/zen/ZenModeBlockedEffectsSettings;->STATUS_LOGGING_PROVIDER:Lcom/samsung/android/settings/logging/status/StatusLogger$StatusLoggingProvider;

    .line 236
    new-instance v0, Lcom/android/settings/notification/zen/ZenModeBlockedEffectsSettings$2;

    sget v1, Lcom/android/settings/R$xml;->zen_mode_block_settings:I

    invoke-direct {v0, v1}, Lcom/android/settings/notification/zen/ZenModeBlockedEffectsSettings$2;-><init>(I)V

    sput-object v0, Lcom/android/settings/notification/zen/ZenModeBlockedEffectsSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/android/settings/notification/zen/ZenModeSettingsBase;-><init>()V

    return-void
.end method

.method private static buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/settingslib/core/lifecycle/Lifecycle;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 134
    new-instance v8, Lcom/android/settings/notification/zen/ZenModeVisEffectPreferenceController;

    const-string/jumbo v4, "zen_effect_intent"

    const/4 v5, 0x4

    const/16 v6, 0x534

    const/4 v7, 0x0

    move-object v1, v8

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/settings/notification/zen/ZenModeVisEffectPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;II[I)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    new-instance v1, Lcom/android/settings/notification/zen/ZenModeVisEffectPreferenceController;

    const-string/jumbo v12, "zen_effect_light"

    const/16 v13, 0x8

    const/16 v14, 0x535

    const/4 v15, 0x0

    move-object v9, v1

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    invoke-direct/range {v9 .. v15}, Lcom/android/settings/notification/zen/ZenModeVisEffectPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;II[I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    new-instance v1, Lcom/android/settings/notification/zen/ZenModeVisEffectPreferenceController;

    const/4 v9, 0x1

    new-array v8, v9, [I

    const/4 v10, 0x0

    const/16 v11, 0x100

    aput v11, v8, v10

    const-string/jumbo v5, "zen_effect_peek"

    const/16 v6, 0x10

    const/16 v7, 0x536

    move-object v2, v1

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/settings/notification/zen/ZenModeVisEffectPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;II[I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    new-instance v1, Lcom/android/settings/notification/zen/ZenModeVisEffectPreferenceController;

    new-array v2, v9, [I

    aput v11, v2, v10

    const-string/jumbo v15, "zen_effect_status"

    const/16 v16, 0x20

    const/16 v17, 0x537

    move-object v12, v1

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move-object/from16 v18, v2

    invoke-direct/range {v12 .. v18}, Lcom/android/settings/notification/zen/ZenModeVisEffectPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;II[I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    new-instance v1, Lcom/android/settings/notification/zen/ZenModeVisEffectPreferenceController;

    const-string/jumbo v6, "zen_effect_badge"

    const/16 v7, 0x40

    const/16 v8, 0x538

    const/4 v9, 0x0

    move-object v3, v1

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-direct/range {v3 .. v9}, Lcom/android/settings/notification/zen/ZenModeVisEffectPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;II[I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    new-instance v1, Lcom/android/settings/notification/zen/ZenModeVisEffectPreferenceController;

    const-string/jumbo v13, "zen_effect_list"

    const/16 v14, 0x100

    const/16 v15, 0x53a

    const/16 v16, 0x0

    move-object v10, v1

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    invoke-direct/range {v10 .. v16}, Lcom/android/settings/notification/zen/ZenModeVisEffectPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;II[I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    new-instance v1, Lcom/android/settings/notification/zen/ZenFooterPreferenceController;

    const-string/jumbo v2, "zen_mode_block_footer"

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct {v1, v3, v4, v2}, Lcom/android/settings/notification/zen/ZenFooterPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private synthetic lambda$onActivityCreated$0(Landroid/widget/Switch;Z)Z
    .locals 1

    .line 100
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onBeforeCheckedChanged Blocked="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ZenModeBlockedEffectsSettings"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeSettingsBase;->mBackend:Lcom/android/settings/notification/zen/ZenModeBackend;

    const/16 p1, 0x1ff

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/notification/zen/ZenModeBackend;->saveVisualEffectsPolicy(IZ)V

    const/4 p0, 0x1

    return p0
.end method

.method private updateSwitchBarState()V
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeSettingsBase;->mBackend:Lcom/android/settings/notification/zen/ZenModeBackend;

    iget-object v0, v0, Lcom/android/settings/notification/zen/ZenModeBackend;->mPolicy:Landroid/app/NotificationManager$Policy;

    iget v0, v0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    .line 123
    invoke-static {v0}, Landroid/app/NotificationManager$Policy;->secAreAllVisualEffectsSuppressed(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeBlockedEffectsSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setCheckedInternal(Z)V

    goto :goto_0

    .line 126
    :cond_0
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeBlockedEffectsSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setCheckedInternal(Z)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 83
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/settings/notification/zen/ZenModeBlockedEffectsSettings;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const p0, 0x8cc7

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 164
    sget p0, Lcom/android/settings/R$xml;->zen_mode_block_settings:I

    return p0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5

    .line 89
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 90
    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SettingsMainSwitchBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/zen/ZenModeBlockedEffectsSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    .line 91
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 92
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 93
    iget-object v1, p0, Lcom/android/settings/notification/zen/ZenModeBlockedEffectsSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    invoke-direct {p0}, Lcom/android/settings/notification/zen/ZenModeBlockedEffectsSettings;->updateSwitchBarState()V

    .line 95
    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeBlockedEffectsSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {v0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->show()V

    .line 96
    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeBlockedEffectsSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    sget v1, Lcom/android/settings/R$string;->zen_block_all_effects:I

    invoke-virtual {v0, v1, v1}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->setSwitchBarText(II)V

    .line 99
    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeBlockedEffectsSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    new-instance v1, Lcom/android/settings/notification/zen/ZenModeBlockedEffectsSettings$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/zen/ZenModeBlockedEffectsSettings$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/notification/zen/ZenModeBlockedEffectsSettings;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setOnBeforeCheckedChangeListener(Lcom/android/settings/widget/SettingsMainSwitchBar$OnBeforeCheckedChangeListener;)V

    .line 107
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 78
    invoke-super {p0, p1}, Lcom/android/settings/notification/zen/ZenModeSettingsBase;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onDestroyView()V
    .locals 0

    .line 112
    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onDestroyView()V

    .line 113
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeBlockedEffectsSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->hide()V

    return-void
.end method

.method protected onZenModeConfigChanged()V
    .locals 0

    .line 118
    invoke-direct {p0}, Lcom/android/settings/notification/zen/ZenModeBlockedEffectsSettings;->updateSwitchBarState()V

    return-void
.end method
