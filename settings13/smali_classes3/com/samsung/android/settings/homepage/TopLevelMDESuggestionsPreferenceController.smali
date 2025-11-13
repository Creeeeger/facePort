.class public Lcom/samsung/android/settings/homepage/TopLevelMDESuggestionsPreferenceController;
.super Lcom/samsung/android/settings/homepage/TopLevelPreferenceController;
.source "TopLevelMDESuggestionsPreferenceController.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;


# static fields
.field private static final TAG:Ljava/lang/String; = "TopLevelMDESuggestionsPreferenceController"

.field private static final TOP_INSET_CATEGORY_KEY:Ljava/lang/String; = "top_level_mde_suggestions_top_inset_category"

.field private static final TOP_LEVEL_SAMSUNG_ACCOUNT_KEY:Ljava/lang/String; = "top_level_samsung_account"


# instance fields
.field private mDependencyPreference:Landroidx/preference/Preference;

.field private mMDEServiceBindingManager:Lcom/samsung/android/settings/mde/MDEServiceBindingManager;

.field private final mMDEServiceBindingManagerCallback:Lcom/samsung/android/settings/mde/MDEServiceBindingManager$Callback;

.field private mPreference:Landroidx/preference/Preference;

.field private mShortcuts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mTopInsetCategoryPreference:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;


# direct methods
.method static bridge synthetic -$$Nest$fgetmMDEServiceBindingManager(Lcom/samsung/android/settings/homepage/TopLevelMDESuggestionsPreferenceController;)Lcom/samsung/android/settings/mde/MDEServiceBindingManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/homepage/TopLevelMDESuggestionsPreferenceController;->mMDEServiceBindingManager:Lcom/samsung/android/settings/mde/MDEServiceBindingManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmShortcuts(Lcom/samsung/android/settings/homepage/TopLevelMDESuggestionsPreferenceController;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/homepage/TopLevelMDESuggestionsPreferenceController;->mShortcuts:Ljava/util/List;

    return-void
.end method

.method static bridge synthetic -$$Nest$mrefreshMenu(Lcom/samsung/android/settings/homepage/TopLevelMDESuggestionsPreferenceController;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/homepage/TopLevelMDESuggestionsPreferenceController;->refreshMenu()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/homepage/TopLevelPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 33
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/settings/homepage/TopLevelMDESuggestionsPreferenceController;->mShortcuts:Ljava/util/List;

    .line 48
    new-instance p2, Lcom/samsung/android/settings/homepage/TopLevelMDESuggestionsPreferenceController$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/homepage/TopLevelMDESuggestionsPreferenceController$1;-><init>(Lcom/samsung/android/settings/homepage/TopLevelMDESuggestionsPreferenceController;)V

    iput-object p2, p0, Lcom/samsung/android/settings/homepage/TopLevelMDESuggestionsPreferenceController;->mMDEServiceBindingManagerCallback:Lcom/samsung/android/settings/mde/MDEServiceBindingManager$Callback;

    .line 43
    sget-boolean p2, Lcom/samsung/android/settings/Rune;->FEATURE_MDE_SUGGESTION:Z

    if-eqz p2, :cond_0

    .line 44
    new-instance p2, Lcom/samsung/android/settings/mde/MDEServiceBindingManager;

    invoke-direct {p2, p1}, Lcom/samsung/android/settings/mde/MDEServiceBindingManager;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/samsung/android/settings/homepage/TopLevelMDESuggestionsPreferenceController;->mMDEServiceBindingManager:Lcom/samsung/android/settings/mde/MDEServiceBindingManager;

    :cond_0
    return-void
.end method

.method private refreshMenu()V
    .locals 9

    .line 75
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v0

    .line 76
    iget-object v1, p0, Lcom/samsung/android/settings/homepage/TopLevelMDESuggestionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    if-eqz v1, :cond_1

    .line 77
    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    if-eqz v0, :cond_1

    .line 79
    iget-object v1, p0, Lcom/samsung/android/settings/homepage/TopLevelMDESuggestionsPreferenceController;->mShortcuts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 80
    iget-object v1, p0, Lcom/samsung/android/settings/homepage/TopLevelMDESuggestionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    iget-object v2, p0, Lcom/samsung/android/settings/homepage/TopLevelMDESuggestionsPreferenceController;->mShortcuts:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getShortLabel()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v1, p0, Lcom/samsung/android/settings/homepage/TopLevelMDESuggestionsPreferenceController;->mShortcuts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 82
    iget-object v1, p0, Lcom/samsung/android/settings/homepage/TopLevelMDESuggestionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    iget-object v4, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/settings/R$plurals;->sec_mde_suggestions_summary:I

    iget-object v6, p0, Lcom/samsung/android/settings/homepage/TopLevelMDESuggestionsPreferenceController;->mShortcuts:Ljava/util/List;

    .line 84
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v2

    new-array v7, v2, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/samsung/android/settings/homepage/TopLevelMDESuggestionsPreferenceController;->mShortcuts:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v3

    .line 83
    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 82
    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 86
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/homepage/TopLevelMDESuggestionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 92
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/homepage/TopLevelMDESuggestionsPreferenceController;->mTopInsetCategoryPreference:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    if-eqz v1, :cond_2

    .line 93
    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 96
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/homepage/TopLevelMDESuggestionsPreferenceController;->updateFromGoodSettings()V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    .line 124
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/homepage/TopLevelMDESuggestionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_0
    const-string v0, "top_level_mde_suggestions_top_inset_category"

    .line 129
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/homepage/TopLevelMDESuggestionsPreferenceController;->mTopInsetCategoryPreference:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    if-eqz v0, :cond_1

    .line 131
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 134
    :cond_1
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->supportGoodSettings(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "top_level_samsung_account"

    .line 135
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/homepage/TopLevelMDESuggestionsPreferenceController;->mDependencyPreference:Landroidx/preference/Preference;

    :cond_2
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    .line 67
    sget-boolean v0, Lcom/samsung/android/settings/Rune;->FEATURE_MDE_SUGGESTION:Z

    if-eqz v0, :cond_1

    .line 68
    iget-object p0, p0, Lcom/samsung/android/settings/homepage/TopLevelMDESuggestionsPreferenceController;->mShortcuts:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    :goto_0
    return p0

    :cond_1
    const/4 p0, 0x3

    return p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getBackgroundWorkerClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getBackupKeys()Ljava/util/List;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getBackupKeys()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getLaunchIntent()Landroid/content/Intent;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getLaunchIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getSliceHighlightMenuRes()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getStatusText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getValue()Lcom/samsung/android/settings/cube/ControlValue;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getValue()Lcom/samsung/android/settings/cube/ControlValue;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic ignoreUserInteraction()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->ignoreUserInteraction()V

    return-void
.end method

.method public bridge synthetic isControllable()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->isControllable()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isPublicSlice()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isSliceable()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/cube/Controllable;->needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    move-result-object p0

    return-object p0
.end method

.method public onStart()V
    .locals 2
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 141
    iget-object v0, p0, Lcom/samsung/android/settings/homepage/TopLevelMDESuggestionsPreferenceController;->mMDEServiceBindingManager:Lcom/samsung/android/settings/mde/MDEServiceBindingManager;

    if-eqz v0, :cond_0

    .line 142
    iget-object v1, p0, Lcom/samsung/android/settings/homepage/TopLevelMDESuggestionsPreferenceController;->mMDEServiceBindingManagerCallback:Lcom/samsung/android/settings/mde/MDEServiceBindingManager$Callback;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/mde/MDEServiceBindingManager;->registerCallback(Lcom/samsung/android/settings/mde/MDEServiceBindingManager$Callback;)V

    .line 143
    iget-object p0, p0, Lcom/samsung/android/settings/homepage/TopLevelMDESuggestionsPreferenceController;->mMDEServiceBindingManager:Lcom/samsung/android/settings/mde/MDEServiceBindingManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/mde/MDEServiceBindingManager;->startServiceBind()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 149
    iget-object v0, p0, Lcom/samsung/android/settings/homepage/TopLevelMDESuggestionsPreferenceController;->mMDEServiceBindingManager:Lcom/samsung/android/settings/mde/MDEServiceBindingManager;

    if-eqz v0, :cond_0

    .line 150
    invoke-virtual {v0}, Lcom/samsung/android/settings/mde/MDEServiceBindingManager;->stopServiceBind()V

    .line 151
    iget-object v0, p0, Lcom/samsung/android/settings/homepage/TopLevelMDESuggestionsPreferenceController;->mMDEServiceBindingManager:Lcom/samsung/android/settings/mde/MDEServiceBindingManager;

    iget-object p0, p0, Lcom/samsung/android/settings/homepage/TopLevelMDESuggestionsPreferenceController;->mMDEServiceBindingManagerCallback:Lcom/samsung/android/settings/mde/MDEServiceBindingManager$Callback;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/mde/MDEServiceBindingManager;->unregisterCallback(Lcom/samsung/android/settings/mde/MDEServiceBindingManager$Callback;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/cube/Controllable;->setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;

    move-result-object p0

    return-object p0
.end method

.method public updateFromGoodSettings()V
    .locals 7

    .line 100
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->supportGoodSettings(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 104
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v0

    .line 105
    iget-object v1, p0, Lcom/samsung/android/settings/homepage/TopLevelMDESuggestionsPreferenceController;->mDependencyPreference:Landroidx/preference/Preference;

    instance-of v2, v1, Lcom/android/settings/widget/HomepagePreference;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/settings/homepage/TopLevelMDESuggestionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    instance-of v2, v2, Lcom/android/settings/widget/HomepagePreference;

    if-eqz v2, :cond_3

    .line 107
    check-cast v1, Lcom/android/settings/widget/HomepagePreference;

    .line 108
    invoke-virtual {v1}, Lcom/android/settings/widget/HomepagePreference;->getPreferenceHelper()Lcom/samsung/android/settings/widget/HomepagePreferenceHelper;

    move-result-object v1

    .line 109
    invoke-virtual {v1}, Lcom/samsung/android/settings/widget/HomepagePreferenceHelper;->isVisible()Z

    move-result v2

    .line 110
    invoke-virtual {v1}, Lcom/samsung/android/settings/widget/HomepagePreferenceHelper;->getOrder()I

    move-result v1

    .line 112
    iget-object v3, p0, Lcom/samsung/android/settings/homepage/TopLevelMDESuggestionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    check-cast v3, Lcom/android/settings/widget/HomepagePreference;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    move v6, v5

    goto :goto_0

    :cond_1
    move v6, v4

    :goto_0
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/android/settings/widget/HomepagePreference;->setVisibleByGoodSettings(Ljava/lang/Boolean;)V

    .line 113
    iget-object v3, p0, Lcom/samsung/android/settings/homepage/TopLevelMDESuggestionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    check-cast v3, Lcom/android/settings/widget/HomepagePreference;

    add-int/lit8 v6, v1, 0x2

    invoke-virtual {v3, v6}, Lcom/android/settings/widget/HomepagePreference;->setOrderByGoodSettings(I)V

    .line 115
    iget-object v3, p0, Lcom/samsung/android/settings/homepage/TopLevelMDESuggestionsPreferenceController;->mTopInsetCategoryPreference:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    if-eqz v3, :cond_3

    if-eqz v0, :cond_2

    if-eqz v2, :cond_2

    move v4, v5

    .line 116
    :cond_2
    invoke-virtual {v3, v4}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 117
    iget-object p0, p0, Lcom/samsung/android/settings/homepage/TopLevelMDESuggestionsPreferenceController;->mTopInsetCategoryPreference:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    add-int/2addr v1, v5

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setOrder(I)V

    :cond_3
    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
