.class public final Lcom/android/systemui/media/mediaoutput/viewmodel/SettingViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final context:Landroid/content/Context;

.field public final dataStore:Landroidx/datastore/core/DataStore;

.field public final isCastingPriority:Landroidx/lifecycle/CoroutineLiveData;

.field public final isShowMusicShareEnabled:Landroidx/lifecycle/CoroutineLiveData;

.field public final router2Manager$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/media/mediaoutput/viewmodel/SettingViewModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/media/mediaoutput/viewmodel/SettingViewModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/datastore/core/DataStore;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/datastore/core/DataStore;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/SettingViewModel;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/SettingViewModel;->dataStore:Landroidx/datastore/core/DataStore;

    sget-object p1, Lcom/android/systemui/media/mediaoutput/common/DataStoreExt;->INSTANCE:Lcom/android/systemui/media/mediaoutput/common/DataStoreExt;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p2}, Landroidx/datastore/core/DataStore;->getData()Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/media/mediaoutput/common/DataStoreExt$special$$inlined$map$1;

    invoke-direct {v0, p1}, Lcom/android/systemui/media/mediaoutput/common/DataStoreExt$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    new-instance p1, Lcom/android/systemui/media/mediaoutput/common/DataStoreExt$special$$inlined$map$2;

    invoke-direct {p1, v0}, Lcom/android/systemui/media/mediaoutput/common/DataStoreExt$special$$inlined$map$2;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    invoke-static {p1}, Landroidx/lifecycle/FlowLiveDataConversions;->asLiveData$default(Lkotlinx/coroutines/flow/Flow;)Landroidx/lifecycle/CoroutineLiveData;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/SettingViewModel;->isCastingPriority:Landroidx/lifecycle/CoroutineLiveData;

    invoke-interface {p2}, Landroidx/datastore/core/DataStore;->getData()Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/media/mediaoutput/common/DataStoreExt$special$$inlined$map$3;

    invoke-direct {p2, p1}, Lcom/android/systemui/media/mediaoutput/common/DataStoreExt$special$$inlined$map$3;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    new-instance p1, Lcom/android/systemui/media/mediaoutput/common/DataStoreExt$special$$inlined$map$4;

    invoke-direct {p1, p2}, Lcom/android/systemui/media/mediaoutput/common/DataStoreExt$special$$inlined$map$4;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    invoke-static {p1}, Landroidx/lifecycle/FlowLiveDataConversions;->asLiveData$default(Lkotlinx/coroutines/flow/Flow;)Landroidx/lifecycle/CoroutineLiveData;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/SettingViewModel;->isShowMusicShareEnabled:Landroidx/lifecycle/CoroutineLiveData;

    new-instance p1, Lcom/android/systemui/media/mediaoutput/viewmodel/SettingViewModel$router2Manager$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/media/mediaoutput/viewmodel/SettingViewModel$router2Manager$2;-><init>(Lcom/android/systemui/media/mediaoutput/viewmodel/SettingViewModel;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/SettingViewModel;->router2Manager$delegate:Lkotlin/Lazy;

    const-string p1, "SettingViewModel"

    const-string p2, "init()"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/media/mediaoutput/viewmodel/SettingViewModel$1;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/android/systemui/media/mediaoutput/viewmodel/SettingViewModel$1;-><init>(Lcom/android/systemui/media/mediaoutput/viewmodel/SettingViewModel;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {p1, v0, v0, p2, p0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method


# virtual methods
.method public final onCleared()V
    .locals 1

    const-string p0, "SettingViewModel"

    const-string v0, "onCleared()"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final setCastingPriority(Z)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setCastingPriority() - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SettingViewModel"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/media/mediaoutput/viewmodel/SettingViewModel$setCastingPriority$1;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p0, v2}, Lcom/android/systemui/media/mediaoutput/viewmodel/SettingViewModel$setCastingPriority$1;-><init>(ZLcom/android/systemui/media/mediaoutput/viewmodel/SettingViewModel;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final setShowMusicShareEnabled(Z)V
    .locals 4

    const-string/jumbo v0, "setShowMusicShareEnabled() - "

    const-string v1, "SettingViewModel"

    invoke-static {v0, v1, p1}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object v0, Lcom/android/systemui/media/mediaoutput/analytics/MoSaLogging;->INSTANCE:Lcom/android/systemui/media/mediaoutput/analytics/MoSaLogging;

    sget-object v1, Lcom/android/systemui/media/mediaoutput/analytics/SaEvent$ShowMusicShare;->INSTANCE:Lcom/android/systemui/media/mediaoutput/analytics/SaEvent$ShowMusicShare;

    new-instance v2, Lcom/android/systemui/media/mediaoutput/analytics/SaCustom$Value;

    if-eqz p1, :cond_0

    const-string v3, "1"

    goto :goto_0

    :cond_0
    const-string v3, "0"

    :goto_0
    invoke-direct {v2, v3}, Lcom/android/systemui/media/mediaoutput/analytics/SaCustom$Value;-><init>(Ljava/lang/String;)V

    filled-new-array {v2}, [Lcom/android/systemui/media/mediaoutput/analytics/SaCustom;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v2}, Lcom/android/systemui/media/mediaoutput/analytics/MoSaLogging;->send(Lcom/android/systemui/media/mediaoutput/analytics/SaEvent;[Lcom/android/systemui/media/mediaoutput/analytics/SaCustom;)V

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/media/mediaoutput/viewmodel/SettingViewModel$setShowMusicShareEnabled$1;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p0, v2}, Lcom/android/systemui/media/mediaoutput/viewmodel/SettingViewModel$setShowMusicShareEnabled$1;-><init>(ZLcom/android/systemui/media/mediaoutput/viewmodel/SettingViewModel;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method
