.class public Lcom/android/settings/dream/DreamPickerController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final PREF_KEY:Ljava/lang/String; = "dream_picker"


# instance fields
.field private mActiveDream:Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

.field private mAdapter:Lcom/android/settings/dream/DreamAdapter;

.field private final mBackend:Lcom/android/settingslib/dream/DreamBackend;

.field private final mCallbacks:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/android/settings/dream/DreamPickerController$Callback;",
            ">;"
        }
    .end annotation
.end field

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
.method public static synthetic $r8$lambda$mZA014SJ-LxGW4OkgiWtg34WtKg(Lcom/android/settingslib/dream/DreamBackend$DreamInfo;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/settings/dream/DreamPickerController;->lambda$getActiveDreamInfo$1(Lcom/android/settingslib/dream/DreamBackend$DreamInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$ykeSawwyT78Yh47vIaEf4Syb9tM(Lcom/android/settings/dream/DreamPickerController;Lcom/android/settingslib/dream/DreamBackend$DreamInfo;)Lcom/android/settings/dream/DreamPickerController$DreamItem;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/dream/DreamPickerController;->lambda$displayPreference$0(Lcom/android/settingslib/dream/DreamBackend$DreamInfo;)Lcom/android/settings/dream/DreamPickerController$DreamItem;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmActiveDream(Lcom/android/settings/dream/DreamPickerController;)Lcom/android/settingslib/dream/DreamBackend$DreamInfo;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/dream/DreamPickerController;->mActiveDream:Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAdapter(Lcom/android/settings/dream/DreamPickerController;)Lcom/android/settings/dream/DreamAdapter;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/dream/DreamPickerController;->mAdapter:Lcom/android/settings/dream/DreamAdapter;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBackend(Lcom/android/settings/dream/DreamPickerController;)Lcom/android/settingslib/dream/DreamBackend;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/dream/DreamPickerController;->mBackend:Lcom/android/settingslib/dream/DreamBackend;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCallbacks(Lcom/android/settings/dream/DreamPickerController;)Ljava/util/HashSet;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/dream/DreamPickerController;->mCallbacks:Ljava/util/HashSet;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmMetricsFeatureProvider(Lcom/android/settings/dream/DreamPickerController;)Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/dream/DreamPickerController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmActiveDream(Lcom/android/settings/dream/DreamPickerController;Lcom/android/settingslib/dream/DreamBackend$DreamInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/dream/DreamPickerController;->mActiveDream:Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-static {p1}, Lcom/android/settingslib/dream/DreamBackend;->getInstance(Landroid/content/Context;)Lcom/android/settingslib/dream/DreamBackend;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/dream/DreamPickerController;-><init>(Landroid/content/Context;Lcom/android/settingslib/dream/DreamBackend;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/dream/DreamBackend;)V
    .locals 1

    const-string v0, "dream_picker"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/android/settings/dream/DreamPickerController;->mCallbacks:Ljava/util/HashSet;

    iput-object p2, p0, Lcom/android/settings/dream/DreamPickerController;->mBackend:Lcom/android/settingslib/dream/DreamBackend;

    invoke-virtual {p2}, Lcom/android/settingslib/dream/DreamBackend;->getDreamInfos()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/dream/DreamPickerController;->mDreamInfos:Ljava/util/List;

    invoke-static {p1}, Lcom/android/settings/dream/DreamPickerController;->getActiveDreamInfo(Ljava/util/List;)Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/dream/DreamPickerController;->mActiveDream:Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

    sget-object p1, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/settings/overlay/FeatureFactoryImpl;->getMetricsFeatureProvider()Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/dream/DreamPickerController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "No feature factory configured"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic access$000(Lcom/android/settings/dream/DreamPickerController;)Landroid/content/Context;
    .locals 0

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

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/settings/dream/DreamPickerController$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

    return-object p0
.end method

.method private synthetic lambda$displayPreference$0(Lcom/android/settingslib/dream/DreamBackend$DreamInfo;)Lcom/android/settings/dream/DreamPickerController$DreamItem;
    .locals 1

    new-instance v0, Lcom/android/settings/dream/DreamPickerController$DreamItem;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/dream/DreamPickerController$DreamItem;-><init>(Lcom/android/settings/dream/DreamPickerController;Lcom/android/settingslib/dream/DreamBackend$DreamInfo;)V

    return-object v0
.end method

.method private static synthetic lambda$getActiveDreamInfo$1(Lcom/android/settingslib/dream/DreamBackend$DreamInfo;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->isActive:Z

    return p0
.end method


# virtual methods
.method public addCallback(Lcom/android/settings/dream/DreamPickerController$Callback;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/dream/DreamPickerController;->mCallbacks:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    new-instance v0, Lcom/android/settings/dream/DreamAdapter;

    iget-object v1, p0, Lcom/android/settings/dream/DreamPickerController;->mDreamInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/settings/dream/DreamPickerController$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/settings/dream/DreamPickerController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/dream/DreamPickerController;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/android/settings/dream/DreamAdapter;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/android/settings/dream/DreamPickerController;->mAdapter:Lcom/android/settings/dream/DreamAdapter;

    iget-object v1, p0, Lcom/android/settings/dream/DreamPickerController;->mBackend:Lcom/android/settingslib/dream/DreamBackend;

    invoke-virtual {v1}, Lcom/android/settingslib/dream/DreamBackend;->isEnabled()Z

    move-result v1

    iget-boolean v2, v0, Lcom/android/settings/dream/DreamAdapter;->mEnabled:Z

    if-eq v2, v1, :cond_0

    iput-boolean v1, v0, Lcom/android/settings/dream/DreamAdapter;->mEnabled:Z

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/widget/LayoutPreference;

    if-nez p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p1, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v0, 0x7f0a0573

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/android/settings/dream/AutoFitGridLayoutManager;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/dream/AutoFitGridLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance v0, Lcom/android/settings/dream/GridSpacingItemDecoration;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/dream/GridSpacingItemDecoration;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    iget-object p0, p0, Lcom/android/settings/dream/DreamPickerController;->mAdapter:Lcom/android/settings/dream/DreamAdapter;

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public getActiveDreamInfo()Lcom/android/settingslib/dream/DreamBackend$DreamInfo;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/dream/DreamPickerController;->mActiveDream:Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

    return-object p0
.end method

.method public getAvailabilityStatus()I
    .locals 0

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

.method public removeCallback(Lcom/android/settings/dream/DreamPickerController$Callback;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/dream/DreamPickerController;->mCallbacks:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

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

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    iget-object p0, p0, Lcom/android/settings/dream/DreamPickerController;->mAdapter:Lcom/android/settings/dream/DreamAdapter;

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroidx/preference/Preference;->isEnabled()Z

    move-result p1

    iget-boolean v0, p0, Lcom/android/settings/dream/DreamAdapter;->mEnabled:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/settings/dream/DreamAdapter;->mEnabled:Z

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
