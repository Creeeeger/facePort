.class public Lcom/android/settings/display/ContrastSelectorPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;
.implements Landroid/app/UiModeManager$ContrastChangeListener;


# static fields
.field private static final KEY_COLOR_CONTRAST_SELECTOR:Ljava/lang/String; = "color_contrast_selector"


# instance fields
.field private mContrastButtons:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/widget/LinearLayout;",
            ">;"
        }
    .end annotation
.end field

.field private final mMainExecutor:Ljava/util/concurrent/Executor;

.field private final mUiModeManager:Landroid/app/UiModeManager;


# direct methods
.method public static synthetic $r8$lambda$0BPPQp-8eyksGCf8m5Wa7wc1a6I(Lcom/android/settings/display/ContrastSelectorPreferenceController;Ljava/lang/Integer;Landroid/widget/LinearLayout;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/display/ContrastSelectorPreferenceController;->lambda$displayPreference$0(Ljava/lang/Integer;Landroid/widget/LinearLayout;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Al5yIg_XFsMCmUyg0NiQ8nGMeGo(ILjava/lang/Integer;Landroid/widget/LinearLayout;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/settings/display/ContrastSelectorPreferenceController;->lambda$highlightContrast$1(ILjava/lang/Integer;Landroid/widget/LinearLayout;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/settings/display/ContrastSelectorPreferenceController;->mContrastButtons:Ljava/util/Map;

    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/display/ContrastSelectorPreferenceController;->mMainExecutor:Ljava/util/concurrent/Executor;

    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-class p2, Landroid/app/UiModeManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/UiModeManager;

    iput-object p1, p0, Lcom/android/settings/display/ContrastSelectorPreferenceController;->mUiModeManager:Landroid/app/UiModeManager;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/settings/display/ContrastSelectorPreferenceController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private highlightContrast(I)V
    .locals 1

    iget-object p0, p0, Lcom/android/settings/display/ContrastSelectorPreferenceController;->mContrastButtons:Ljava/util/Map;

    new-instance v0, Lcom/android/settings/display/ContrastSelectorPreferenceController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/android/settings/display/ContrastSelectorPreferenceController$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {p0, v0}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method private synthetic lambda$displayPreference$0(Ljava/lang/Integer;Landroid/widget/LinearLayout;)V
    .locals 1

    new-instance v0, Lcom/android/settings/display/ContrastSelectorPreferenceController$1;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/display/ContrastSelectorPreferenceController$1;-><init>(Lcom/android/settings/display/ContrastSelectorPreferenceController;Ljava/lang/Integer;)V

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static synthetic lambda$highlightContrast$1(ILjava/lang/Integer;Landroid/widget/LinearLayout;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p2, p0}, Landroid/widget/LinearLayout;->setSelected(Z)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "color_contrast_selector"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/widget/LayoutPreference;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/util/Map$Entry;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p1, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v4, 0x7f0a042e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-static {v2, v3}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p1, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v4, 0x7f0a0430

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-static {v2, v3}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object p1, p1, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v3, 0x7f0a042f

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    invoke-static {v2, p1}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-static {v0}, Ljava/util/Map;->ofEntries([Ljava/util/Map$Entry;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/display/ContrastSelectorPreferenceController;->mContrastButtons:Ljava/util/Map;

    new-instance v0, Lcom/android/settings/display/ContrastSelectorPreferenceController$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/settings/display/ContrastSelectorPreferenceController$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/display/ContrastSelectorPreferenceController;)V

    invoke-interface {p1, v0}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    iget-object p1, p0, Lcom/android/settings/display/ContrastSelectorPreferenceController;->mUiModeManager:Landroid/app/UiModeManager;

    invoke-virtual {p1}, Landroid/app/UiModeManager;->getContrast()F

    move-result p1

    invoke-static {p1}, Landroid/app/UiModeManager$ContrastUtils;->toContrastLevel(F)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/settings/display/ContrastSelectorPreferenceController;->highlightContrast(I)V

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

.method public onContrastChanged(F)V
    .locals 0

    invoke-static {p1}, Landroid/app/UiModeManager$ContrastUtils;->toContrastLevel(F)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/settings/display/ContrastSelectorPreferenceController;->highlightContrast(I)V

    return-void
.end method

.method public onStart()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/display/ContrastSelectorPreferenceController;->mUiModeManager:Landroid/app/UiModeManager;

    iget-object v1, p0, Lcom/android/settings/display/ContrastSelectorPreferenceController;->mMainExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, p0}, Landroid/app/UiModeManager;->addContrastChangeListener(Ljava/util/concurrent/Executor;Landroid/app/UiModeManager$ContrastChangeListener;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/display/ContrastSelectorPreferenceController;->mUiModeManager:Landroid/app/UiModeManager;

    invoke-virtual {v0, p0}, Landroid/app/UiModeManager;->removeContrastChangeListener(Landroid/app/UiModeManager$ContrastChangeListener;)V

    return-void
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

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
