.class public final Lcom/android/systemui/media/mediaoutput/compose/common/Feature;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/media/mediaoutput/compose/common/MediaOutputState;
.implements Lcom/android/systemui/media/mediaoutput/compose/common/TransitionInfo;
.implements Lcom/android/systemui/media/mediaoutput/compose/common/DismissCallback;


# static fields
.field public static final Companion:Lcom/android/systemui/media/mediaoutput/compose/common/Feature$Companion;


# instance fields
.field public final _state:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public anchorRectCallback:Lkotlin/jvm/functions/Function2;

.field public anchorViewId:I

.field public anchorViewTag:Ljava/lang/String;

.field public defaultScreen:Lcom/android/systemui/media/mediaoutput/compose/Screen;

.field public deviceIds:Ljava/util/List;

.field public dismissCallback:Lkotlin/jvm/functions/Function0;

.field public from:I

.field public fromRect:Landroid/graphics/Rect;

.field public isFullScreen:Z

.field public packageName:Ljava/lang/String;

.field public showMediaController:Z

.field public final state:Landroidx/compose/runtime/ParcelableSnapshotMutableState;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/media/mediaoutput/compose/common/Feature$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/media/mediaoutput/compose/common/Feature$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/media/mediaoutput/compose/common/Feature;->Companion:Lcom/android/systemui/media/mediaoutput/compose/common/Feature$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ZIZZLcom/android/systemui/media/mediaoutput/compose/Screen;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/compose/common/Feature;->packageName:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/android/systemui/media/mediaoutput/compose/common/Feature;->showMediaController:Z

    iput p3, p0, Lcom/android/systemui/media/mediaoutput/compose/common/Feature;->from:I

    iput-boolean p5, p0, Lcom/android/systemui/media/mediaoutput/compose/common/Feature;->isFullScreen:Z

    iput-object p6, p0, Lcom/android/systemui/media/mediaoutput/compose/common/Feature;->defaultScreen:Lcom/android/systemui/media/mediaoutput/compose/Screen;

    sget-object p1, Lcom/android/systemui/media/mediaoutput/compose/common/MediaOutputState$StateInfo;->PreShow:Lcom/android/systemui/media/mediaoutput/compose/common/MediaOutputState$StateInfo;

    sget-object p2, Landroidx/compose/runtime/StructuralEqualityPolicy;->INSTANCE:Landroidx/compose/runtime/StructuralEqualityPolicy;

    invoke-static {p1, p2}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/compose/common/Feature;->_state:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/compose/common/Feature;->state:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/systemui/media/mediaoutput/compose/common/Feature;->anchorViewId:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ZIZZLcom/android/systemui/media/mediaoutput/compose/Screen;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 4

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    const-string p1, ""

    :cond_0
    and-int/lit8 p8, p7, 0x2

    const/4 v0, 0x1

    if-eqz p8, :cond_1

    move p8, v0

    goto :goto_0

    :cond_1
    move p8, p2

    :goto_0
    and-int/lit8 p2, p7, 0x4

    if-eqz p2, :cond_2

    const/4 p3, -0x1

    :cond_2
    move v1, p3

    and-int/lit8 p2, p7, 0x8

    if-eqz p2, :cond_3

    goto :goto_1

    :cond_3
    move v0, p4

    :goto_1
    and-int/lit8 p2, p7, 0x10

    if-eqz p2, :cond_4

    const/4 p5, 0x0

    :cond_4
    move v2, p5

    and-int/lit8 p2, p7, 0x20

    if-eqz p2, :cond_5

    sget-object p6, Lcom/android/systemui/media/mediaoutput/compose/Screen$Phone;->INSTANCE:Lcom/android/systemui/media/mediaoutput/compose/Screen$Phone;

    :cond_5
    move-object v3, p6

    move-object p2, p0

    move-object p3, p1

    move p4, p8

    move p5, v1

    move p6, v0

    move p7, v2

    move-object p8, v3

    invoke-direct/range {p2 .. p8}, Lcom/android/systemui/media/mediaoutput/compose/common/Feature;-><init>(Ljava/lang/String;ZIZZLcom/android/systemui/media/mediaoutput/compose/Screen;)V

    return-void
.end method


# virtual methods
.method public final animateDismiss()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/media/mediaoutput/compose/common/Feature;->anchorRectCallback:Lkotlin/jvm/functions/Function2;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget v2, p0, Lcom/android/systemui/media/mediaoutput/compose/common/Feature;->anchorViewId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/media/mediaoutput/compose/common/Feature;->anchorViewTag:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/android/systemui/media/mediaoutput/compose/common/Feature;->fromRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/systemui/media/mediaoutput/compose/common/MediaOutputState$StateInfo;->Dismissing:Lcom/android/systemui/media/mediaoutput/compose/common/MediaOutputState$StateInfo;

    invoke-virtual {p0, v0}, Lcom/android/systemui/media/mediaoutput/compose/common/Feature;->setState(Lcom/android/systemui/media/mediaoutput/compose/common/MediaOutputState$StateInfo;)V

    sget-object v0, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    sget-object v0, Lkotlinx/coroutines/internal/MainDispatcherLoader;->dispatcher:Lkotlinx/coroutines/MainCoroutineDispatcher;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    move-result-object v0

    new-instance v2, Lcom/android/systemui/media/mediaoutput/compose/common/Feature$animateDismiss$1;

    invoke-direct {v2, p0, v1}, Lcom/android/systemui/media/mediaoutput/compose/common/Feature$animateDismiss$1;-><init>(Lcom/android/systemui/media/mediaoutput/compose/common/Feature;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v1, v1, v2, p0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/media/mediaoutput/compose/common/Feature;->dismissCallback:Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_2
    sget-object v0, Lcom/android/systemui/media/mediaoutput/compose/common/MediaOutputState$StateInfo;->Dismissed:Lcom/android/systemui/media/mediaoutput/compose/common/MediaOutputState$StateInfo;

    invoke-virtual {p0, v0}, Lcom/android/systemui/media/mediaoutput/compose/common/Feature;->setState(Lcom/android/systemui/media/mediaoutput/compose/common/MediaOutputState$StateInfo;)V

    :goto_1
    return-void
.end method

.method public final setAnchorRectCallback(Lkotlin/jvm/functions/Function2;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/media/mediaoutput/compose/common/Feature;->anchorRectCallback:Lkotlin/jvm/functions/Function2;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/compose/common/Feature;->anchorRectCallback:Lkotlin/jvm/functions/Function2;

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/systemui/media/mediaoutput/compose/common/Feature;->anchorViewId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/media/mediaoutput/compose/common/Feature;->anchorViewTag:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/compose/common/Feature;->fromRect:Landroid/graphics/Rect;

    :cond_1
    return-void
.end method

.method public final setState(Lcom/android/systemui/media/mediaoutput/compose/common/MediaOutputState$StateInfo;)V
    .locals 6

    sget-object v0, Lcom/android/systemui/media/mediaoutput/compose/common/Feature$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v0, v1

    iget-object v2, p0, Lcom/android/systemui/media/mediaoutput/compose/common/Feature;->_state:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    const/4 v3, 0x1

    if-eq v1, v3, :cond_6

    const/4 v4, 0x2

    if-eq v1, v4, :cond_4

    const/4 v5, 0x3

    if-eq v1, v5, :cond_3

    const/4 v0, 0x4

    if-eq v1, v0, :cond_1

    const/4 p0, 0x5

    if-ne v1, p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/compose/common/Feature;->fromRect:Landroid/graphics/Rect;

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/android/systemui/media/mediaoutput/compose/common/MediaOutputState$StateInfo;->Dismissed:Lcom/android/systemui/media/mediaoutput/compose/common/MediaOutputState$StateInfo;

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/media/mediaoutput/compose/common/MediaOutputState$StateInfo;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    if-eq p0, v3, :cond_6

    if-eq p0, v4, :cond_6

    return-void

    :cond_4
    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/compose/common/Feature;->fromRect:Landroid/graphics/Rect;

    if-eqz p0, :cond_5

    invoke-virtual {v2}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object p0

    sget-object v0, Lcom/android/systemui/media/mediaoutput/compose/common/MediaOutputState$StateInfo;->PreShow:Lcom/android/systemui/media/mediaoutput/compose/common/MediaOutputState$StateInfo;

    if-ne p0, v0, :cond_5

    goto :goto_0

    :cond_5
    sget-object p1, Lcom/android/systemui/media/mediaoutput/compose/common/MediaOutputState$StateInfo;->Shown:Lcom/android/systemui/media/mediaoutput/compose/common/MediaOutputState$StateInfo;

    :cond_6
    :goto_0
    invoke-virtual {v2, p1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    return-void
.end method
