.class public final Lcom/android/systemui/volume/panel/component/anc/ui/viewmodel/AncViewModel;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final availabilityCriteria:Lcom/android/systemui/volume/panel/component/anc/domain/AncAvailabilityCriteria;

.field public final buttonSlice:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final interactor:Lcom/android/systemui/volume/panel/component/anc/domain/interactor/AncSliceInteractor;

.field public final popupSlice:Lkotlinx/coroutines/flow/ReadonlyStateFlow;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/volume/panel/component/anc/ui/viewmodel/AncViewModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/volume/panel/component/anc/ui/viewmodel/AncViewModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/volume/panel/component/anc/domain/interactor/AncSliceInteractor;Lcom/android/systemui/volume/panel/component/anc/domain/AncAvailabilityCriteria;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/volume/panel/component/anc/ui/viewmodel/AncViewModel;->interactor:Lcom/android/systemui/volume/panel/component/anc/domain/interactor/AncSliceInteractor;

    iput-object p3, p0, Lcom/android/systemui/volume/panel/component/anc/ui/viewmodel/AncViewModel;->availabilityCriteria:Lcom/android/systemui/volume/panel/component/anc/domain/AncAvailabilityCriteria;

    iget-object p2, p2, Lcom/android/systemui/volume/panel/component/anc/domain/interactor/AncSliceInteractor;->ancSlices:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance p3, Lcom/android/systemui/volume/panel/component/anc/ui/viewmodel/AncViewModel$special$$inlined$filterIsInstance$1;

    invoke-direct {p3, p2}, Lcom/android/systemui/volume/panel/component/anc/ui/viewmodel/AncViewModel$special$$inlined$filterIsInstance$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    new-instance v0, Lcom/android/systemui/volume/panel/component/anc/ui/viewmodel/AncViewModel$special$$inlined$map$1;

    invoke-direct {v0, p3}, Lcom/android/systemui/volume/panel/component/anc/ui/viewmodel/AncViewModel$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    sget-object p3, Lkotlinx/coroutines/flow/SharingStarted;->Companion:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p3, Lkotlinx/coroutines/flow/SharingStarted$Companion;->Eagerly:Lkotlinx/coroutines/flow/StartedEagerly;

    const/4 v1, 0x0

    invoke-static {v0, p1, p3, v1}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/panel/component/anc/ui/viewmodel/AncViewModel;->popupSlice:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance v0, Lcom/android/systemui/volume/panel/component/anc/ui/viewmodel/AncViewModel$special$$inlined$filterIsInstance$2;

    invoke-direct {v0, p2}, Lcom/android/systemui/volume/panel/component/anc/ui/viewmodel/AncViewModel$special$$inlined$filterIsInstance$2;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    new-instance p2, Lcom/android/systemui/volume/panel/component/anc/ui/viewmodel/AncViewModel$special$$inlined$map$2;

    invoke-direct {p2, v0}, Lcom/android/systemui/volume/panel/component/anc/ui/viewmodel/AncViewModel$special$$inlined$map$2;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    invoke-static {p2, p1, p3, v1}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/volume/panel/component/anc/ui/viewmodel/AncViewModel;->buttonSlice:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-void
.end method

.method public static isClickable(Landroidx/slice/Slice;)Z
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    new-instance v0, Lkotlin/collections/ArrayDeque;

    invoke-direct {v0}, Lkotlin/collections/ArrayDeque;-><init>()V

    iget-object p0, p0, Landroidx/slice/Slice;->mItems:[Landroidx/slice/SliceItem;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-virtual {v0, p0}, Lkotlin/collections/ArrayDeque;->addAll(Ljava/util/Collection;)Z

    :cond_1
    :goto_0
    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result p0

    const/4 v1, 0x1

    xor-int/2addr p0, v1

    if-eqz p0, :cond_4

    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/slice/SliceItem;

    iget-object v2, p0, Landroidx/slice/SliceItem;->mFormat:Ljava/lang/String;

    const-string v3, "action"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Landroidx/slice/SliceItem;->getAction()Landroid/app/PendingIntent;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object p0

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    if-eqz p0, :cond_1

    const-string v2, "EXTRA_ANC_ENABLED"

    invoke-virtual {p0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-ne v3, v1, :cond_1

    invoke-virtual {p0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    return p0

    :cond_3
    const-string/jumbo v1, "slice"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object p0

    if-eqz p0, :cond_1

    iget-object p0, p0, Landroidx/slice/Slice;->mItems:[Landroidx/slice/SliceItem;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    check-cast p0, Ljava/util/Collection;

    invoke-virtual {v0, p0}, Lkotlin/collections/ArrayDeque;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_4
    return v1
.end method
