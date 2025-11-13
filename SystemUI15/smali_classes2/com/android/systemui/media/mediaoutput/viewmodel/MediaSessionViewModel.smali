.class public final Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/media/mediaoutput/viewmodel/MediaInteraction;


# static fields
.field public static final Companion:Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel$Companion;


# instance fields
.field public final _mediaInfo:Landroidx/lifecycle/MediatorLiveData;

.field public final _sessionControllersFlow:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field public final audioManager:Landroid/media/AudioManager;

.field public final context:Landroid/content/Context;

.field public final currentSessionController:Landroidx/lifecycle/MediatorLiveData;

.field public final dataStore:Landroidx/datastore/core/DataStore;

.field public final empty$delegate:Lkotlin/Lazy;

.field public isGrayscaleThumbnail:Z

.field public final mediaInfo:Lkotlinx/coroutines/flow/Flow;

.field public final mediaSessionManager:Landroid/media/session/MediaSessionManager;

.field public final noSessionController$delegate:Lkotlin/Lazy;

.field public final notifCollection:Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;

.field public packageName:Ljava/lang/String;

.field public final sessionControllers:Landroidx/lifecycle/CoroutineLiveData;

.field public final updateMediaInfo:Lkotlinx/coroutines/flow/StateFlowImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel;->Companion:Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;Landroid/media/session/MediaSessionManager;Landroid/media/AudioManager;Lcom/android/systemui/plugins/ActivityStarter;Landroidx/datastore/core/DataStore;Landroidx/lifecycle/SavedStateHandle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;",
            "Landroid/media/session/MediaSessionManager;",
            "Landroid/media/AudioManager;",
            "Lcom/android/systemui/plugins/ActivityStarter;",
            "Landroidx/datastore/core/DataStore;",
            "Landroidx/lifecycle/SavedStateHandle;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel;->notifCollection:Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;

    iput-object p3, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel;->mediaSessionManager:Landroid/media/session/MediaSessionManager;

    iput-object p4, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel;->audioManager:Landroid/media/AudioManager;

    iput-object p5, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    iput-object p6, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel;->dataStore:Landroidx/datastore/core/DataStore;

    sget-object p1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel;->_sessionControllersFlow:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {p1}, Landroidx/lifecycle/FlowLiveDataConversions;->asLiveData$default(Lkotlinx/coroutines/flow/Flow;)Landroidx/lifecycle/CoroutineLiveData;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel;->sessionControllers:Landroidx/lifecycle/CoroutineLiveData;

    new-instance p2, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel$noSessionController$2;

    invoke-direct {p2, p0}, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel$noSessionController$2;-><init>(Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel;)V

    invoke-static {p2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel;->noSessionController$delegate:Lkotlin/Lazy;

    const-wide/16 p2, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {p2}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel;->updateMediaInfo:Lkotlinx/coroutines/flow/StateFlowImpl;

    new-instance p3, Landroidx/lifecycle/MediatorLiveData;

    invoke-virtual {p0}, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel;->getNoSessionController()Lcom/android/systemui/media/mediaoutput/controller/media/NoSessionController;

    move-result-object p4

    invoke-direct {p3, p4}, Landroidx/lifecycle/MediatorLiveData;-><init>(Ljava/lang/Object;)V

    new-instance p4, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel$currentSessionController$1$1;

    invoke-direct {p4, p3, p0}, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel$currentSessionController$1$1;-><init>(Landroidx/lifecycle/MediatorLiveData;Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel;)V

    invoke-virtual {p3, p1, p4}, Landroidx/lifecycle/MediatorLiveData;->addSource(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    invoke-static {p2}, Landroidx/lifecycle/FlowLiveDataConversions;->asLiveData$default(Lkotlinx/coroutines/flow/Flow;)Landroidx/lifecycle/CoroutineLiveData;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel$currentSessionController$1$2;

    invoke-direct {p2, p3, p0}, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel$currentSessionController$1$2;-><init>(Landroidx/lifecycle/MediatorLiveData;Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel;)V

    invoke-virtual {p3, p1, p2}, Landroidx/lifecycle/MediatorLiveData;->addSource(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    iput-object p3, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel;->currentSessionController:Landroidx/lifecycle/MediatorLiveData;

    sget-object p1, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel$empty$2;->INSTANCE:Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel$empty$2;

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel;->empty$delegate:Lkotlin/Lazy;

    new-instance p1, Landroidx/lifecycle/MediatorLiveData;

    invoke-virtual {p0}, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel;->getEmpty()Lcom/android/systemui/media/mediaoutput/entity/MediaInfo;

    move-result-object p2

    invoke-direct {p1, p2}, Landroidx/lifecycle/MediatorLiveData;-><init>(Ljava/lang/Object;)V

    new-instance p2, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel$_mediaInfo$1$1;

    invoke-direct {p2, p1, p0}, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel$_mediaInfo$1$1;-><init>(Landroidx/lifecycle/MediatorLiveData;Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel;)V

    invoke-virtual {p1, p3, p2}, Landroidx/lifecycle/MediatorLiveData;->addSource(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    invoke-virtual {p0}, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel;->getNoSessionController()Lcom/android/systemui/media/mediaoutput/controller/media/NoSessionController;

    move-result-object p2

    iget-object p2, p2, Lcom/android/systemui/media/mediaoutput/controller/media/SessionController;->mediaInfo:Landroidx/lifecycle/MutableLiveData;

    new-instance p3, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel$_mediaInfo$1$2;

    invoke-direct {p3, p0, p1}, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel$_mediaInfo$1$2;-><init>(Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel;Landroidx/lifecycle/MediatorLiveData;)V

    invoke-virtual {p1, p2, p3}, Landroidx/lifecycle/MediatorLiveData;->addSource(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel;->_mediaInfo:Landroidx/lifecycle/MediatorLiveData;

    sget-object p2, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel$mediaInfo$1;->INSTANCE:Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel$mediaInfo$1;

    invoke-static {p1, p2}, Landroidx/lifecycle/Transformations;->map(Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function1;)Landroidx/lifecycle/MediatorLiveData;

    move-result-object p1

    invoke-static {p1}, Landroidx/lifecycle/FlowLiveDataConversions;->asFlow(Landroidx/lifecycle/MediatorLiveData;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel;->mediaInfo:Lkotlinx/coroutines/flow/Flow;

    const-string p1, ""

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel;->packageName:Ljava/lang/String;

    const-string p2, "MediaSessionViewModel"

    const-string p3, "init()"

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x0

    if-eqz p7, :cond_3

    const-string p3, "packageName"

    invoke-virtual {p7, p3}, Landroidx/lifecycle/SavedStateHandle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    if-eqz p3, :cond_3

    invoke-static {p3}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p4

    xor-int/lit8 p4, p4, 0x1

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    move-object p3, p2

    :goto_0
    if-eqz p3, :cond_3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p4

    const/4 p5, 0x5

    if-le p4, p5, :cond_1

    goto :goto_1

    :cond_1
    move-object p3, p2

    :goto_1
    if-nez p3, :cond_2

    goto :goto_2

    :cond_2
    move-object p1, p3

    :cond_3
    :goto_2
    invoke-virtual {p0, p1}, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel;->setPackageName(Ljava/lang/String;)V

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object p1

    new-instance p3, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel$3;

    invoke-direct {p3, p0, p2}, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel$3;-><init>(Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel;Lkotlin/coroutines/Continuation;)V

    const/4 p4, 0x3

    invoke-static {p1, p2, p2, p3, p4}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object p1

    new-instance p3, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel$4;

    invoke-direct {p3, p0, p2}, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel$4;-><init>(Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1, p2, p2, p3, p4}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public static final access$currentSessionController$lambda$4$selectController(Ljava/util/List;Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel;)Lcom/android/systemui/media/mediaoutput/controller/media/SessionController;
    .locals 6

    iget-object v0, p1, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel;->packageName:Ljava/lang/String;

    const-string/jumbo v1, "selectController() - "

    const-string v2, "MediaSessionViewModel"

    invoke-static {v1, v0, v2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_1

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/systemui/media/mediaoutput/controller/media/SessionController;

    iget-boolean v2, v2, Lcom/android/systemui/media/mediaoutput/controller/media/SessionController;->isClosed:Z

    if-nez v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    sget-object v0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    :cond_2
    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/android/systemui/media/mediaoutput/controller/media/SessionController;

    iget-object v4, v4, Lcom/android/systemui/media/mediaoutput/controller/media/SessionController;->mediaInfo:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v4}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/media/mediaoutput/entity/MediaInfo;

    if-eqz v4, :cond_3

    iget-object v5, p1, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel;->packageName:Ljava/lang/String;

    invoke-interface {v4, v5}, Lcom/android/systemui/media/mediaoutput/entity/MediaInfo;->isSame(Ljava/lang/String;)Z

    move-result v4

    if-ne v4, v3, :cond_3

    goto :goto_1

    :cond_4
    move-object v1, v2

    :goto_1
    check-cast v1, Lcom/android/systemui/media/mediaoutput/controller/media/SessionController;

    if-nez v1, :cond_b

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_5
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/android/systemui/media/mediaoutput/controller/media/SessionController;

    iget-object v4, v4, Lcom/android/systemui/media/mediaoutput/controller/media/SessionController;->mediaInfo:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v4}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/media/mediaoutput/entity/MediaInfo;

    if-eqz v4, :cond_5

    sget-object v5, Lcom/android/systemui/media/mediaoutput/entity/MediaInfoExt;->INSTANCE:Lcom/android/systemui/media/mediaoutput/entity/MediaInfoExt;

    invoke-interface {v4}, Lcom/android/systemui/media/mediaoutput/entity/MediaInfo;->getPlaybackState()I

    move-result v4

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, 0x3

    if-eq v4, v5, :cond_7

    const/4 v5, 0x6

    if-eq v4, v5, :cond_7

    goto :goto_2

    :cond_6
    move-object v1, v2

    :cond_7
    check-cast v1, Lcom/android/systemui/media/mediaoutput/controller/media/SessionController;

    if-nez v1, :cond_b

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/media/mediaoutput/controller/media/SessionController;

    iget-object v1, v1, Lcom/android/systemui/media/mediaoutput/controller/media/SessionController;->mediaInfo:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/media/mediaoutput/entity/MediaInfo;

    const/4 v4, 0x0

    if-eqz v1, :cond_9

    invoke-interface {v1}, Lcom/android/systemui/media/mediaoutput/entity/MediaInfo;->getPlaybackState()I

    move-result v1

    const/4 v5, 0x7

    if-ne v1, v5, :cond_9

    move v4, v3

    :cond_9
    xor-int/lit8 v1, v4, 0x1

    if-eqz v1, :cond_8

    move-object v2, v0

    :cond_a
    move-object v1, v2

    check-cast v1, Lcom/android/systemui/media/mediaoutput/controller/media/SessionController;

    if-nez v1, :cond_b

    invoke-virtual {p1}, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel;->getNoSessionController()Lcom/android/systemui/media/mediaoutput/controller/media/NoSessionController;

    move-result-object v1

    :cond_b
    return-object v1
.end method


# virtual methods
.method public final execute(Lcom/android/systemui/media/mediaoutput/entity/MediaInfo;JJ)V
    .locals 4

    const-string v0, "execute() - "

    const-string v1, " : "

    invoke-static {v0, p2, p3, v1}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaSessionViewModel"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1}, Lcom/android/systemui/media/mediaoutput/entity/MediaInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-wide/16 v0, -0x2

    cmp-long v0, p2, v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object p2, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel;->context:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    if-eqz p2, :cond_7

    sget-object p3, Lcom/android/systemui/media/mediaoutput/controller/media/SessionController;->Companion:Lcom/android/systemui/media/mediaoutput/controller/media/SessionController$Companion;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p3, Lcom/android/systemui/media/mediaoutput/controller/media/SessionController;->LAUNCH_BLOCKED_LIST:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    move-object v1, p2

    :cond_0
    if-eqz v1, :cond_7

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_7

    iget-object p2, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel;->context:Landroid/content/Context;

    const/4 p3, 0x0

    const/high16 p4, 0x4000000

    invoke-static {p2, p3, p1, p4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    if-eqz p1, :cond_7

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    const/4 p2, 0x1

    invoke-interface {p0, p1, p2}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/app/PendingIntent;Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel;->sessionControllers:Landroidx/lifecycle/CoroutineLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_4

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/android/systemui/media/mediaoutput/controller/media/SessionController;

    invoke-virtual {v3}, Lcom/android/systemui/media/mediaoutput/controller/media/SessionController;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v1, v2

    :cond_3
    check-cast v1, Lcom/android/systemui/media/mediaoutput/controller/media/SessionController;

    if-nez v1, :cond_5

    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel;->getNoSessionController()Lcom/android/systemui/media/mediaoutput/controller/media/NoSessionController;

    move-result-object v1

    :cond_5
    instance-of v0, v1, Lcom/android/systemui/media/mediaoutput/controller/media/NoSessionController;

    if-eqz v0, :cond_6

    invoke-virtual {p0, p1}, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel;->setPackageName(Ljava/lang/String;)V

    :cond_6
    invoke-virtual {v1, p2, p3, p4, p5}, Lcom/android/systemui/media/mediaoutput/controller/media/SessionController;->execute(JJ)V

    :cond_7
    :goto_0
    return-void
.end method

.method public final getEmpty()Lcom/android/systemui/media/mediaoutput/entity/MediaInfo;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel;->empty$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/media/mediaoutput/entity/MediaInfo;

    return-object p0
.end method

.method public final getMediaInfo()Lkotlinx/coroutines/flow/Flow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel;->mediaInfo:Lkotlinx/coroutines/flow/Flow;

    return-object p0
.end method

.method public final getNoSessionController()Lcom/android/systemui/media/mediaoutput/controller/media/NoSessionController;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel;->noSessionController$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/media/mediaoutput/controller/media/NoSessionController;

    return-object p0
.end method

.method public final onCleared()V
    .locals 5

    const-string v0, "MediaSessionViewModel"

    const-string v1, "onCleared()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel;->sessionControllers:Landroidx/lifecycle/CoroutineLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel;->_mediaInfo:Landroidx/lifecycle/MediatorLiveData;

    if-eqz v0, :cond_1

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/media/mediaoutput/controller/media/SessionController;

    iget-object v3, v2, Lcom/android/systemui/media/mediaoutput/controller/media/SessionController;->mediaInfo:Landroidx/lifecycle/MutableLiveData;

    iget-object v4, v1, Landroidx/lifecycle/MediatorLiveData;->mSources:Landroidx/arch/core/internal/SafeIterableMap;

    invoke-virtual {v4, v3}, Landroidx/arch/core/internal/SafeIterableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/lifecycle/MediatorLiveData$Source;

    if-eqz v3, :cond_0

    iget-object v4, v3, Landroidx/lifecycle/MediatorLiveData$Source;->mLiveData:Landroidx/lifecycle/LiveData;

    invoke-virtual {v4, v3}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    :cond_0
    invoke-virtual {v2}, Lcom/android/systemui/media/mediaoutput/controller/media/SessionController;->close()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel;->getNoSessionController()Lcom/android/systemui/media/mediaoutput/controller/media/NoSessionController;

    move-result-object p0

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/controller/media/SessionController;->mediaInfo:Landroidx/lifecycle/MutableLiveData;

    iget-object v0, v1, Landroidx/lifecycle/MediatorLiveData;->mSources:Landroidx/arch/core/internal/SafeIterableMap;

    invoke-virtual {v0, p0}, Landroidx/arch/core/internal/SafeIterableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/MediatorLiveData$Source;

    if-eqz p0, :cond_2

    iget-object v0, p0, Landroidx/lifecycle/MediatorLiveData$Source;->mLiveData:Landroidx/lifecycle/LiveData;

    invoke-virtual {v0, p0}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    :cond_2
    return-void
.end method

.method public final setPackageName(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel;->packageName:Ljava/lang/String;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel;->packageName:Ljava/lang/String;

    const-string v1, "packageName changed : "

    const-string v2, " -> "

    const-string v3, "MediaSessionViewModel"

    invoke-static {v1, v0, v2, p1, v3}, Lcom/android/systemui/bixby2/controller/MWBixbyController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-nez p1, :cond_1

    const-string p1, "no_session_media_id"

    :cond_1
    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel;->packageName:Ljava/lang/String;

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel$packageName$2;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel$packageName$2;-><init>(Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {p1, v1, v1, v0, p0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    :cond_2
    return-void
.end method
