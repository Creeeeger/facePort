.class public final Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final context:Landroid/content/Context;

.field public final dataStore:Landroidx/datastore/core/DataStore;

.field public final isCloseOnTouchOutside:Lcom/android/systemui/media/mediaoutput/common/DataStoreLabsExt$special$$inlined$map$1;

.field public final isGrayscaleThumbnail:Lcom/android/systemui/media/mediaoutput/common/DataStoreDebugLabsExt$special$$inlined$map$2;

.field public final isGroupSpeakerDefaultExpanded:Lcom/android/systemui/media/mediaoutput/common/DataStoreLabsExt$special$$inlined$map$3;

.field public final isQuickboardInstalled:Lkotlinx/coroutines/flow/SafeFlow;

.field public final isShowLabsMenu:Lcom/android/systemui/media/mediaoutput/common/DataStoreDebugLabsExt$special$$inlined$map$1;

.field public final isSupportDisplayDeviceVolumeControl:Lcom/android/systemui/media/mediaoutput/common/DataStoreDebugLabsExt$special$$inlined$map$5;

.field public final isSupportDisplayOnlyRemoteDevice:Lcom/android/systemui/media/mediaoutput/common/DataStoreDebugLabsExt$special$$inlined$map$9;

.field public final isSupportForTransferDuringRouting:Lcom/android/systemui/media/mediaoutput/common/DataStoreDebugLabsExt$special$$inlined$map$7;

.field public final isSupportForUnsupportedTV:Lcom/android/systemui/media/mediaoutput/common/DataStoreDebugLabsExt$special$$inlined$map$10;

.field public final isSupportMultipleMediaSession:Lcom/android/systemui/media/mediaoutput/common/DataStoreDebugLabsExt$special$$inlined$map$3;

.field public final isSupportSelectableBudsTogether:Lcom/android/systemui/media/mediaoutput/common/DataStoreDebugLabsExt$special$$inlined$map$4;

.field public final isSupportSpotifyChromecast:Lcom/android/systemui/media/mediaoutput/common/DataStoreDebugLabsExt$special$$inlined$map$8;

.field public final isSupportTransferableRoutesWhileConnecting:Lcom/android/systemui/media/mediaoutput/common/DataStoreDebugLabsExt$special$$inlined$map$6;

.field public final isSupportVolumeInteraction:Lcom/android/systemui/media/mediaoutput/common/DataStoreLabsExt$special$$inlined$map$2;

.field public final panelInteractor:Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;Landroidx/datastore/core/DataStore;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;",
            "Landroidx/datastore/core/DataStore;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel;->panelInteractor:Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;

    iput-object p3, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel;->dataStore:Landroidx/datastore/core/DataStore;

    sget-object p1, Lcom/android/systemui/media/mediaoutput/common/DataStoreDebugLabsExt;->INSTANCE:Lcom/android/systemui/media/mediaoutput/common/DataStoreDebugLabsExt;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p3}, Landroidx/datastore/core/DataStore;->getData()Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/media/mediaoutput/common/DataStoreDebugLabsExt$special$$inlined$map$1;

    invoke-direct {p2, p1}, Lcom/android/systemui/media/mediaoutput/common/DataStoreDebugLabsExt$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    iput-object p2, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel;->isShowLabsMenu:Lcom/android/systemui/media/mediaoutput/common/DataStoreDebugLabsExt$special$$inlined$map$1;

    sget-object p1, Lcom/android/systemui/media/mediaoutput/common/DataStoreLabsExt;->INSTANCE:Lcom/android/systemui/media/mediaoutput/common/DataStoreLabsExt;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p3}, Landroidx/datastore/core/DataStore;->getData()Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/media/mediaoutput/common/DataStoreLabsExt$special$$inlined$map$1;

    invoke-direct {p2, p1}, Lcom/android/systemui/media/mediaoutput/common/DataStoreLabsExt$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    iput-object p2, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel;->isCloseOnTouchOutside:Lcom/android/systemui/media/mediaoutput/common/DataStoreLabsExt$special$$inlined$map$1;

    invoke-interface {p3}, Landroidx/datastore/core/DataStore;->getData()Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/media/mediaoutput/common/DataStoreLabsExt$special$$inlined$map$2;

    invoke-direct {p2, p1}, Lcom/android/systemui/media/mediaoutput/common/DataStoreLabsExt$special$$inlined$map$2;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    iput-object p2, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel;->isSupportVolumeInteraction:Lcom/android/systemui/media/mediaoutput/common/DataStoreLabsExt$special$$inlined$map$2;

    invoke-interface {p3}, Landroidx/datastore/core/DataStore;->getData()Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/media/mediaoutput/common/DataStoreLabsExt$special$$inlined$map$3;

    invoke-direct {p2, p1}, Lcom/android/systemui/media/mediaoutput/common/DataStoreLabsExt$special$$inlined$map$3;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    iput-object p2, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel;->isGroupSpeakerDefaultExpanded:Lcom/android/systemui/media/mediaoutput/common/DataStoreLabsExt$special$$inlined$map$3;

    invoke-interface {p3}, Landroidx/datastore/core/DataStore;->getData()Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/media/mediaoutput/common/DataStoreDebugLabsExt$special$$inlined$map$2;

    invoke-direct {p2, p1}, Lcom/android/systemui/media/mediaoutput/common/DataStoreDebugLabsExt$special$$inlined$map$2;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    iput-object p2, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel;->isGrayscaleThumbnail:Lcom/android/systemui/media/mediaoutput/common/DataStoreDebugLabsExt$special$$inlined$map$2;

    invoke-interface {p3}, Landroidx/datastore/core/DataStore;->getData()Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/media/mediaoutput/common/DataStoreDebugLabsExt$special$$inlined$map$3;

    invoke-direct {p2, p1}, Lcom/android/systemui/media/mediaoutput/common/DataStoreDebugLabsExt$special$$inlined$map$3;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    iput-object p2, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel;->isSupportMultipleMediaSession:Lcom/android/systemui/media/mediaoutput/common/DataStoreDebugLabsExt$special$$inlined$map$3;

    invoke-interface {p3}, Landroidx/datastore/core/DataStore;->getData()Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/media/mediaoutput/common/DataStoreDebugLabsExt$special$$inlined$map$4;

    invoke-direct {p2, p1}, Lcom/android/systemui/media/mediaoutput/common/DataStoreDebugLabsExt$special$$inlined$map$4;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    iput-object p2, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel;->isSupportSelectableBudsTogether:Lcom/android/systemui/media/mediaoutput/common/DataStoreDebugLabsExt$special$$inlined$map$4;

    invoke-interface {p3}, Landroidx/datastore/core/DataStore;->getData()Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/media/mediaoutput/common/DataStoreDebugLabsExt$special$$inlined$map$5;

    invoke-direct {p2, p1}, Lcom/android/systemui/media/mediaoutput/common/DataStoreDebugLabsExt$special$$inlined$map$5;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    iput-object p2, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel;->isSupportDisplayDeviceVolumeControl:Lcom/android/systemui/media/mediaoutput/common/DataStoreDebugLabsExt$special$$inlined$map$5;

    invoke-interface {p3}, Landroidx/datastore/core/DataStore;->getData()Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/media/mediaoutput/common/DataStoreDebugLabsExt$special$$inlined$map$6;

    invoke-direct {p2, p1}, Lcom/android/systemui/media/mediaoutput/common/DataStoreDebugLabsExt$special$$inlined$map$6;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    iput-object p2, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel;->isSupportTransferableRoutesWhileConnecting:Lcom/android/systemui/media/mediaoutput/common/DataStoreDebugLabsExt$special$$inlined$map$6;

    invoke-interface {p3}, Landroidx/datastore/core/DataStore;->getData()Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/media/mediaoutput/common/DataStoreDebugLabsExt$special$$inlined$map$7;

    invoke-direct {p2, p1}, Lcom/android/systemui/media/mediaoutput/common/DataStoreDebugLabsExt$special$$inlined$map$7;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    iput-object p2, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel;->isSupportForTransferDuringRouting:Lcom/android/systemui/media/mediaoutput/common/DataStoreDebugLabsExt$special$$inlined$map$7;

    invoke-interface {p3}, Landroidx/datastore/core/DataStore;->getData()Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/media/mediaoutput/common/DataStoreDebugLabsExt$special$$inlined$map$8;

    invoke-direct {p2, p1}, Lcom/android/systemui/media/mediaoutput/common/DataStoreDebugLabsExt$special$$inlined$map$8;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    iput-object p2, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel;->isSupportSpotifyChromecast:Lcom/android/systemui/media/mediaoutput/common/DataStoreDebugLabsExt$special$$inlined$map$8;

    invoke-interface {p3}, Landroidx/datastore/core/DataStore;->getData()Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/media/mediaoutput/common/DataStoreDebugLabsExt$special$$inlined$map$9;

    invoke-direct {p2, p1}, Lcom/android/systemui/media/mediaoutput/common/DataStoreDebugLabsExt$special$$inlined$map$9;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    iput-object p2, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel;->isSupportDisplayOnlyRemoteDevice:Lcom/android/systemui/media/mediaoutput/common/DataStoreDebugLabsExt$special$$inlined$map$9;

    invoke-interface {p3}, Landroidx/datastore/core/DataStore;->getData()Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/media/mediaoutput/common/DataStoreDebugLabsExt$special$$inlined$map$10;

    invoke-direct {p2, p1}, Lcom/android/systemui/media/mediaoutput/common/DataStoreDebugLabsExt$special$$inlined$map$10;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    iput-object p2, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel;->isSupportForUnsupportedTV:Lcom/android/systemui/media/mediaoutput/common/DataStoreDebugLabsExt$special$$inlined$map$10;

    new-instance p1, Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel$isQuickboardInstalled$1;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel$isQuickboardInstalled$1;-><init>(Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel;Lkotlin/coroutines/Continuation;)V

    new-instance p3, Lkotlinx/coroutines/flow/SafeFlow;

    invoke-direct {p3, p1}, Lkotlinx/coroutines/flow/SafeFlow;-><init>(Lkotlin/jvm/functions/Function2;)V

    iput-object p3, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel;->isQuickboardInstalled:Lkotlinx/coroutines/flow/SafeFlow;

    const-string p1, "LabsViewModel"

    const-string p3, "init()"

    invoke-static {p1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object p1

    new-instance p3, Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel$1;

    invoke-direct {p3, p0, p2}, Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel$1;-><init>(Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {p1, p2, p2, p3, p0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method


# virtual methods
.method public final onCleared()V
    .locals 1

    const-string p0, "LabsViewModel"

    const-string v0, "onCleared()"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final openActivity(Z)V
    .locals 3

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel$openActivity$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel$openActivity$1;-><init>(Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel;ZLkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final setCloseOnTouchOutside(Z)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setCloseOnTouchOutside() - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LabsViewModel"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel$setCloseOnTouchOutside$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel$setCloseOnTouchOutside$1;-><init>(Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel;ZLkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final setGrayscaleThumbnail(Z)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setGrayscaleThumbnail() - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LabsViewModel"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel$setGrayscaleThumbnail$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel$setGrayscaleThumbnail$1;-><init>(Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel;ZLkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final setGroupSpeakerDefaultExpanded(Z)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setGroupSpeakerDefaultExpanded() - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LabsViewModel"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel$setGroupSpeakerDefaultExpanded$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel$setGroupSpeakerDefaultExpanded$1;-><init>(Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel;ZLkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final setShowLabsMenu()V
    .locals 3

    const-string v0, "LabsViewModel"

    const-string/jumbo v1, "setShowLabsMenu()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel$setShowLabsMenu$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel$setShowLabsMenu$1;-><init>(Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final setSupportDisplayDeviceVolumeControl(Z)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setSupportDisplayDeviceVolumeControl() - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LabsViewModel"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel$setSupportDisplayDeviceVolumeControl$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel$setSupportDisplayDeviceVolumeControl$1;-><init>(Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel;ZLkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final setSupportDisplayOnlyRemoteDevice(Z)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setSupportDisplayOnlyRemoteDevice() - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LabsViewModel"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel$setSupportDisplayOnlyRemoteDevice$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel$setSupportDisplayOnlyRemoteDevice$1;-><init>(Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel;ZLkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final setSupportForTransferDuringRouting(Z)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setSupportForTransferDuringRouting() - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LabsViewModel"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel$setSupportForTransferDuringRouting$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel$setSupportForTransferDuringRouting$1;-><init>(Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel;ZLkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final setSupportForUnsupportedTV(Z)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setCastingPriority() - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LabsViewModel"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel$setSupportForUnsupportedTV$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel$setSupportForUnsupportedTV$1;-><init>(Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel;ZLkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final setSupportMultipleMediaSession(Z)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setSupportMultipleMediaSession() - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LabsViewModel"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel$setSupportMultipleMediaSession$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel$setSupportMultipleMediaSession$1;-><init>(Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel;ZLkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final setSupportSelectableBudsTogether(Z)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setSupportSelectableBudsTogether() - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LabsViewModel"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel$setSupportSelectableBudsTogether$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel$setSupportSelectableBudsTogether$1;-><init>(Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel;ZLkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final setSupportSpotifyChromecast(Z)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setSupportSpotifyChromecast() - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LabsViewModel"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel$setSupportSpotifyChromecast$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel$setSupportSpotifyChromecast$1;-><init>(Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel;ZLkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final setSupportTransferableRoutesWhileConnecting(Z)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setSupportTransferableRoutesWhileConnecting() - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LabsViewModel"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel$setSupportTransferableRoutesWhileConnecting$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel$setSupportTransferableRoutesWhileConnecting$1;-><init>(Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel;ZLkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final setSupportVolumeInteraction(Z)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setSupportVolumeInteraction() - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LabsViewModel"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel$setSupportVolumeInteraction$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel$setSupportVolumeInteraction$1;-><init>(Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel;ZLkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method
