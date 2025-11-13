.class public final Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState$FromSplit;
.super Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public cancelState:Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$CancelState;

.field public cancelTransitionToken:Landroid/os/IBinder;

.field public final dragAnimator:Lcom/android/wm/shell/windowdecor/MoveToDesktopAnimator;

.field public draggedTaskChange:Landroid/window/TransitionInfo$Change;

.field public final draggedTaskId:I

.field public homeToken:Landroid/window/WindowContainerToken;

.field public final otherSplitTask:I

.field public splitRootChange:Landroid/window/TransitionInfo$Change;

.field public startAborted:Z

.field public startTransitionFinishCb:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

.field public startTransitionFinishTransaction:Landroid/view/SurfaceControl$Transaction;

.field public final startTransitionToken:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(ILcom/android/wm/shell/windowdecor/MoveToDesktopAnimator;Landroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/view/SurfaceControl$Transaction;Landroid/os/IBinder;Landroid/window/WindowContainerToken;Landroid/window/TransitionInfo$Change;Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$CancelState;ZLandroid/window/TransitionInfo$Change;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput p1, p0, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState$FromSplit;->draggedTaskId:I

    iput-object p2, p0, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState$FromSplit;->dragAnimator:Lcom/android/wm/shell/windowdecor/MoveToDesktopAnimator;

    iput-object p3, p0, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState$FromSplit;->startTransitionToken:Landroid/os/IBinder;

    iput-object p4, p0, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState$FromSplit;->startTransitionFinishCb:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    iput-object p5, p0, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState$FromSplit;->startTransitionFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    iput-object p6, p0, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState$FromSplit;->cancelTransitionToken:Landroid/os/IBinder;

    iput-object p7, p0, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState$FromSplit;->homeToken:Landroid/window/WindowContainerToken;

    iput-object p8, p0, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState$FromSplit;->draggedTaskChange:Landroid/window/TransitionInfo$Change;

    iput-object p9, p0, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState$FromSplit;->cancelState:Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$CancelState;

    iput-boolean p10, p0, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState$FromSplit;->startAborted:Z

    iput-object p11, p0, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState$FromSplit;->splitRootChange:Landroid/window/TransitionInfo$Change;

    iput p12, p0, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState$FromSplit;->otherSplitTask:I

    return-void
.end method

.method public synthetic constructor <init>(ILcom/android/wm/shell/windowdecor/MoveToDesktopAnimator;Landroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/view/SurfaceControl$Transaction;Landroid/os/IBinder;Landroid/window/WindowContainerToken;Landroid/window/TransitionInfo$Change;Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$CancelState;ZLandroid/window/TransitionInfo$Change;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 16

    move/from16 v0, p13

    and-int/lit8 v1, v0, 0x8

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v7, v2

    goto :goto_0

    :cond_0
    move-object/from16 v7, p4

    :goto_0
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_1

    move-object v8, v2

    goto :goto_1

    :cond_1
    move-object/from16 v8, p5

    :goto_1
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_2

    move-object v9, v2

    goto :goto_2

    :cond_2
    move-object/from16 v9, p6

    :goto_2
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_3

    move-object v10, v2

    goto :goto_3

    :cond_3
    move-object/from16 v10, p7

    :goto_3
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_4

    move-object v11, v2

    goto :goto_4

    :cond_4
    move-object/from16 v11, p8

    :goto_4
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_5

    sget-object v1, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$CancelState;->NO_CANCEL:Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$CancelState;

    move-object v12, v1

    goto :goto_5

    :cond_5
    move-object/from16 v12, p9

    :goto_5
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_6

    const/4 v1, 0x0

    move v13, v1

    goto :goto_6

    :cond_6
    move/from16 v13, p10

    :goto_6
    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_7

    move-object v14, v2

    goto :goto_7

    :cond_7
    move-object/from16 v14, p11

    :goto_7
    move-object/from16 v3, p0

    move/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v15, p12

    invoke-direct/range {v3 .. v15}, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState$FromSplit;-><init>(ILcom/android/wm/shell/windowdecor/MoveToDesktopAnimator;Landroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/view/SurfaceControl$Transaction;Landroid/os/IBinder;Landroid/window/WindowContainerToken;Landroid/window/TransitionInfo$Change;Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$CancelState;ZLandroid/window/TransitionInfo$Change;I)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState$FromSplit;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState$FromSplit;

    iget v1, p1, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState$FromSplit;->draggedTaskId:I

    iget v3, p0, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState$FromSplit;->draggedTaskId:I

    if-eq v3, v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState$FromSplit;->dragAnimator:Lcom/android/wm/shell/windowdecor/MoveToDesktopAnimator;

    iget-object v3, p1, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState$FromSplit;->dragAnimator:Lcom/android/wm/shell/windowdecor/MoveToDesktopAnimator;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState$FromSplit;->startTransitionToken:Landroid/os/IBinder;

    iget-object v3, p1, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState$FromSplit;->startTransitionToken:Landroid/os/IBinder;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState$FromSplit;->startTransitionFinishCb:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    iget-object v3, p1, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState$FromSplit;->startTransitionFinishCb:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState$FromSplit;->startTransitionFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v3, p1, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState$FromSplit;->startTransitionFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState$FromSplit;->cancelTransitionToken:Landroid/os/IBinder;

    iget-object v3, p1, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState$FromSplit;->cancelTransitionToken:Landroid/os/IBinder;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState$FromSplit;->homeToken:Landroid/window/WindowContainerToken;

    iget-object v3, p1, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState$FromSplit;->homeToken:Landroid/window/WindowContainerToken;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState$FromSplit;->draggedTaskChange:Landroid/window/TransitionInfo$Change;

    iget-object v3, p1, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState$FromSplit;->draggedTaskChange:Landroid/window/TransitionInfo$Change;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState$FromSplit;->cancelState:Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$CancelState;

    iget-object v3, p1, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState$FromSplit;->cancelState:Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$CancelState;

    if-eq v1, v3, :cond_a

    return v2

    :cond_a
    iget-boolean v1, p0, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState$FromSplit;->startAborted:Z

    iget-boolean v3, p1, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState$FromSplit;->startAborted:Z

    if-eq v1, v3, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState$FromSplit;->splitRootChange:Landroid/window/TransitionInfo$Change;

    iget-object v3, p1, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState$FromSplit;->splitRootChange:Landroid/window/TransitionInfo$Change;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget p0, p0, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState$FromSplit;->otherSplitTask:I

    iget p1, p1, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState$FromSplit;->otherSplitTask:I

    if-eq p0, p1, :cond_d

    return v2

    :cond_d
    return v0
.end method

.method public final getCancelState()Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$CancelState;
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState$FromSplit;->cancelState:Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$CancelState;

    return-object p0
.end method

.method public final getCancelTransitionToken()Landroid/os/IBinder;
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState$FromSplit;->cancelTransitionToken:Landroid/os/IBinder;

    return-object p0
.end method

.method public final getDragAnimator()Lcom/android/wm/shell/windowdecor/MoveToDesktopAnimator;
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState$FromSplit;->dragAnimator:Lcom/android/wm/shell/windowdecor/MoveToDesktopAnimator;

    return-object p0
.end method

.method public final getDraggedTaskChange()Landroid/window/TransitionInfo$Change;
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState$FromSplit;->draggedTaskChange:Landroid/window/TransitionInfo$Change;

    return-object p0
.end method

.method public final getDraggedTaskId()I
    .locals 0

    iget p0, p0, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState$FromSplit;->draggedTaskId:I

    return p0
.end method

.method public final getHomeToken()Landroid/window/WindowContainerToken;
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState$FromSplit;->homeToken:Landroid/window/WindowContainerToken;

    return-object p0
.end method

.method public final getStartAborted()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState$FromSplit;->startAborted:Z

    return p0
.end method

.method public final getStartTransitionFinishCb()Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState$FromSplit;->startTransitionFinishCb:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    return-object p0
.end method

.method public final getStartTransitionFinishTransaction()Landroid/view/SurfaceControl$Transaction;
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState$FromSplit;->startTransitionFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    return-object p0
.end method

.method public final getStartTransitionToken()Landroid/os/IBinder;
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState$FromSplit;->startTransitionToken:Landroid/os/IBinder;

    return-object p0
.end method

.method public final hashCode()I
    .locals 4

    iget v0, p0, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState$FromSplit;->draggedTaskId:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState$FromSplit;->dragAnimator:Lcom/android/wm/shell/windowdecor/MoveToDesktopAnimator;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState$FromSplit;->startTransitionToken:Landroid/os/IBinder;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState$FromSplit;->startTransitionFinishCb:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState$FromSplit;->startTransitionFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Landroid/view/SurfaceControl$Transaction;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState$FromSplit;->cancelTransitionToken:Landroid/os/IBinder;

    if-nez v2, :cond_2

    move v2, v3

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState$FromSplit;->homeToken:Landroid/window/WindowContainerToken;

    if-nez v2, :cond_3

    move v2, v3

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Landroid/window/WindowContainerToken;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState$FromSplit;->draggedTaskChange:Landroid/window/TransitionInfo$Change;

    if-nez v2, :cond_4

    move v2, v3

    goto :goto_4

    :cond_4
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState$FromSplit;->cancelState:Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$CancelState;

    invoke-virtual {v2}, Ljava/lang/Enum;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-boolean v0, p0, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState$FromSplit;->startAborted:Z

    invoke-static {v2, v1, v0}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-object v2, p0, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState$FromSplit;->splitRootChange:Landroid/window/TransitionInfo$Change;

    if-nez v2, :cond_5

    goto :goto_5

    :cond_5
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->hashCode()I

    move-result v3

    :goto_5
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget p0, p0, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState$FromSplit;->otherSplitTask:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final setCancelState(Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$CancelState;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState$FromSplit;->cancelState:Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$CancelState;

    return-void
.end method

.method public final setCancelTransitionToken(Landroid/os/IBinder;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState$FromSplit;->cancelTransitionToken:Landroid/os/IBinder;

    return-void
.end method

.method public final setDraggedTaskChange(Landroid/window/TransitionInfo$Change;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState$FromSplit;->draggedTaskChange:Landroid/window/TransitionInfo$Change;

    return-void
.end method

.method public final setHomeToken(Landroid/window/WindowContainerToken;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState$FromSplit;->homeToken:Landroid/window/WindowContainerToken;

    return-void
.end method

.method public final setStartAborted()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState$FromSplit;->startAborted:Z

    return-void
.end method

.method public final setStartTransitionFinishCb(Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState$FromSplit;->startTransitionFinishCb:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    return-void
.end method

.method public final setStartTransitionFinishTransaction(Landroid/view/SurfaceControl$Transaction;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState$FromSplit;->startTransitionFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 11

    iget-object v0, p0, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState$FromSplit;->startTransitionToken:Landroid/os/IBinder;

    iget-object v1, p0, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState$FromSplit;->startTransitionFinishCb:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    iget-object v2, p0, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState$FromSplit;->startTransitionFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v3, p0, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState$FromSplit;->cancelTransitionToken:Landroid/os/IBinder;

    iget-object v4, p0, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState$FromSplit;->homeToken:Landroid/window/WindowContainerToken;

    iget-object v5, p0, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState$FromSplit;->draggedTaskChange:Landroid/window/TransitionInfo$Change;

    iget-object v6, p0, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState$FromSplit;->cancelState:Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$CancelState;

    iget-boolean v7, p0, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState$FromSplit;->startAborted:Z

    iget-object v8, p0, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState$FromSplit;->splitRootChange:Landroid/window/TransitionInfo$Change;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "FromSplit(draggedTaskId="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v10, p0, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState$FromSplit;->draggedTaskId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", dragAnimator="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState$FromSplit;->dragAnimator:Lcom/android/wm/shell/windowdecor/MoveToDesktopAnimator;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ", startTransitionToken="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", startTransitionFinishCb="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", startTransitionFinishTransaction="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", cancelTransitionToken="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", homeToken="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", draggedTaskChange="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", cancelState="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", startAborted="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", splitRootChange="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", otherSplitTask="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState$FromSplit;->otherSplitTask:I

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
