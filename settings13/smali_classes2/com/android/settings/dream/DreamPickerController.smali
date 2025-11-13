.class public Lcom/android/settings/dream/DreamPickerController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "DreamPickerController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/dream/DreamPickerController$DreamItem;
    }
.end annotation


# instance fields
.field private mActiveDream:Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

.field private mAdapter:Lcom/android/settings/dream/DreamAdapter;

.field private final mBackend:Lcom/android/settingslib/dream/DreamBackend;

.field private final mDreamInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/dream/DreamBackend$DreamInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;


# direct methods
.method public static synthetic $r8$lambda$-7iSP169cA4sanuRqp3YzwQlDkU(Lcom/android/settings/dream/DreamPickerController;Lcom/android/settingslib/dream/DreamBackend$DreamInfo;)Lcom/android/settings/dream/DreamPickerController$DreamItem;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/dream/DreamPickerController;->lambda$displayPreference$0(Lcom/android/settingslib/dream/DreamBackend$DreamInfo;)Lcom/android/settings/dream/DreamPickerController$DreamItem;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$W-64JGaKDuYx__O3CskaxBG3dak(Lcom/android/settingslib/dream/DreamBackend$DreamInfo;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/settings/dream/DreamPickerController;->lambda$getActiveDreamInfo$1(Lcom/android/settingslib/dream/DreamBackend$DreamInfo;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmActiveDream(Lcom/android/settings/dream/DreamPickerController;)Lcom/android/settingslib/dream/DreamBackend$DreamInfo;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/dream/DreamPickerController;->mActiveDream:Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAdapter(Lcom/android/settings/dream/DreamPickerController;)Lcom/android/settings/dream/DreamAdapter;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/dream/DreamPickerController;->mAdapter:Lcom/android/settings/dream/DreamAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBackend(Lcom/android/settings/dream/DreamPickerController;)Lcom/android/settingslib/dream/DreamBackend;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/dream/DreamPickerController;->mBackend:Lcom/android/settingslib/dream/DreamBackend;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMetricsFeatureProvider(Lcom/android/settings/dream/DreamPickerController;)Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/dream/DreamPickerController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmActiveDream(Lcom/android/settings/dream/DreamPickerController;Lcom/android/settingslib/dream/DreamBackend$DreamInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/dream/DreamPickerController;->mActiveDream:Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 52
    invoke-static {p1}, Lcom/android/settingslib/dream/DreamBackend;->getInstance(Landroid/content/Context;)Lcom/android/settingslib/dream/DreamBackend;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/dream/DreamPickerController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/dream/DreamBackend;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/dream/DreamBackend;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 57
    iput-object p3, p0, Lcom/android/settings/dream/DreamPickerController;->mBackend:Lcom/android/settingslib/dream/DreamBackend;

    .line 58
    invoke-virtual {p3}, Lcom/android/settingslib/dream/DreamBackend;->getDreamInfos()Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/dream/DreamPickerController;->mDreamInfos:Ljava/util/List;

    .line 59
    invoke-static {p2}, Lcom/android/settings/dream/DreamPickerController;->getActiveDreamInfo(Ljava/util/List;)Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/dream/DreamPickerController;->mActiveDream:Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

    .line 60
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/dream/DreamPickerController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/dream/DreamPickerController;)Landroid/content/Context;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private static getActiveDreamInfo(Ljava/util/List;)Lcom/android/settingslib/dream/DreamBackend$DreamInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settingslib/dream/DreamBackend$DreamInfo;",
            ">;)",
            "Lcom/android/settingslib/dream/DreamBackend$DreamInfo;"
        }
    .end annotation

    .line 102
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/settings/dream/DreamPickerController$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/settings/dream/DreamPickerController$$ExternalSyntheticLambda0;-><init>()V

    .line 103
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 104
    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    const/4 v0, 0x0

    .line 105
    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

    return-object p0
.end method

.method private synthetic lambda$displayPreference$0(Lcom/android/settingslib/dream/DreamBackend$DreamInfo;)Lcom/android/settings/dream/DreamPickerController$DreamItem;
    .locals 1

    .line 74
    new-instance v0, Lcom/android/settings/dream/DreamPickerController$DreamItem;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/dream/DreamPickerController$DreamItem;-><init>(Lcom/android/settings/dream/DreamPickerController;Lcom/android/settingslib/dream/DreamBackend$DreamInfo;)V

    return-object v0
.end method

.method private static synthetic lambda$getActiveDreamInfo$1(Lcom/android/settingslib/dream/DreamBackend$DreamInfo;)Z
    .locals 0

    .line 103
    iget-boolean p0, p0, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->isActive:Z

    return p0
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 4

    .line 70
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 72
    new-instance v0, Lcom/android/settings/dream/DreamAdapter;

    sget v1, Lcom/android/settings/R$layout;->dream_preference_layout:I

    iget-object v2, p0, Lcom/android/settings/dream/DreamPickerController;->mDreamInfos:Ljava/util/List;

    .line 73
    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/settings/dream/DreamPickerController$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lcom/android/settings/dream/DreamPickerController$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/dream/DreamPickerController;)V

    .line 74
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    .line 75
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/android/settings/dream/DreamAdapter;-><init>(ILjava/util/List;)V

    iput-object v0, p0, Lcom/android/settings/dream/DreamPickerController;->mAdapter:Lcom/android/settings/dream/DreamAdapter;

    .line 77
    iget-object v1, p0, Lcom/android/settings/dream/DreamPickerController;->mBackend:Lcom/android/settingslib/dream/DreamBackend;

    invoke-virtual {v1}, Lcom/android/settingslib/dream/DreamBackend;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/dream/DreamAdapter;->setEnabled(Z)V

    .line 79
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/widget/LayoutPreference;

    if-nez p1, :cond_0

    return-void

    .line 83
    :cond_0
    sget v0, Lcom/android/settings/R$id;->dream_list:I

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 84
    new-instance v0, Lcom/android/settings/dream/AutoFitGridLayoutManager;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/dream/AutoFitGridLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 85
    new-instance v0, Lcom/android/settings/dream/GridSpacingItemDecoration;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$dimen;->dream_preference_card_padding:I

    invoke-direct {v0, v1, v2}, Lcom/android/settings/dream/GridSpacingItemDecoration;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    const/4 v0, 0x1

    .line 87
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 88
    iget-object p0, p0, Lcom/android/settings/dream/DreamPickerController;->mAdapter:Lcom/android/settings/dream/DreamAdapter;

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/android/settings/dream/DreamPickerController;->mDreamInfos:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    :goto_0
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

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    .line 93
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 94
    iget-object p0, p0, Lcom/android/settings/dream/DreamPickerController;->mAdapter:Lcom/android/settings/dream/DreamAdapter;

    if-eqz p0, :cond_0

    .line 95
    invoke-virtual {p1}, Landroidx/preference/Preference;->isEnabled()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/dream/DreamAdapter;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
