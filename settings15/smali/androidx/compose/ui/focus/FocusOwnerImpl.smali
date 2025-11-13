.class public final Landroidx/compose/ui/focus/FocusOwnerImpl;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/compose/ui/focus/FocusManager;


# instance fields
.field public final focusInvalidationManager:Landroidx/compose/ui/focus/FocusInvalidationManager;

.field public final focusTransactionManager:Landroidx/compose/ui/focus/FocusTransactionManager;

.field public keysCurrentlyDown:Landroidx/collection/MutableLongSet;

.field public final modifier:Landroidx/compose/ui/Modifier;

.field public final onClearFocusForOwner:Lkotlin/jvm/functions/Function0;

.field public final onFocusRectInterop:Lkotlin/jvm/functions/Function0;

.field public final onLayoutDirection:Lkotlin/jvm/functions/Function0;

.field public final onMoveFocusInterop:Lkotlin/jvm/functions/Function1;

.field public final onRequestFocusForOwner:Lkotlin/jvm/functions/Function2;

.field public final rootFocusNode:Landroidx/compose/ui/focus/FocusTargetNode;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->onRequestFocusForOwner:Lkotlin/jvm/functions/Function2;

    iput-object p3, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->onMoveFocusInterop:Lkotlin/jvm/functions/Function1;

    iput-object p4, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->onClearFocusForOwner:Lkotlin/jvm/functions/Function0;

    iput-object p5, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->onFocusRectInterop:Lkotlin/jvm/functions/Function0;

    iput-object p6, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->onLayoutDirection:Lkotlin/jvm/functions/Function0;

    new-instance p2, Landroidx/compose/ui/focus/FocusTargetNode;

    invoke-direct {p2}, Landroidx/compose/ui/Modifier$Node;-><init>()V

    iput-object p2, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->rootFocusNode:Landroidx/compose/ui/focus/FocusTargetNode;

    new-instance p2, Landroidx/compose/ui/focus/FocusInvalidationManager;

    new-instance p3, Landroidx/compose/ui/focus/FocusOwnerImpl$focusInvalidationManager$1;

    const-class v3, Landroidx/compose/ui/focus/FocusOwnerImpl;

    const-string v4, "invalidateOwnerFocusState"

    const/4 v1, 0x0

    const-string v5, "invalidateOwnerFocusState()V"

    const/4 v6, 0x0

    move-object v0, p3

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReference;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {p2, p3, p1}, Landroidx/compose/ui/focus/FocusInvalidationManager;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V

    iput-object p2, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->focusInvalidationManager:Landroidx/compose/ui/focus/FocusInvalidationManager;

    new-instance p1, Landroidx/compose/ui/focus/FocusTransactionManager;

    invoke-direct {p1}, Landroidx/compose/ui/focus/FocusTransactionManager;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->focusTransactionManager:Landroidx/compose/ui/focus/FocusTransactionManager;

    sget-object p1, Landroidx/compose/ui/focus/FocusOwnerImpl$modifier$1;->INSTANCE:Landroidx/compose/ui/focus/FocusOwnerImpl$modifier$1;

    new-instance p2, Landroidx/compose/ui/focus/FocusPropertiesElement;

    new-instance p3, Landroidx/compose/ui/focus/FocusPropertiesKt$sam$androidx_compose_ui_focus_FocusPropertiesScope$0;

    invoke-direct {p3, p1}, Landroidx/compose/ui/focus/FocusPropertiesKt$sam$androidx_compose_ui_focus_FocusPropertiesScope$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-direct {p2, p3}, Landroidx/compose/ui/focus/FocusPropertiesElement;-><init>(Landroidx/compose/ui/focus/FocusPropertiesKt$sam$androidx_compose_ui_focus_FocusPropertiesScope$0;)V

    new-instance p1, Landroidx/compose/ui/focus/FocusOwnerImpl$modifier$2;

    invoke-direct {p1, p0}, Landroidx/compose/ui/focus/FocusOwnerImpl$modifier$2;-><init>(Landroidx/compose/ui/focus/FocusOwnerImpl;)V

    invoke-interface {p2, p1}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->modifier:Landroidx/compose/ui/Modifier;

    return-void
.end method

.method public static synthetic dispatchKeyEvent-YhN2O0w$default(Landroidx/compose/ui/focus/FocusOwnerImpl;Landroid/view/KeyEvent;)Z
    .locals 1

    sget-object v0, Landroidx/compose/ui/focus/FocusOwner$dispatchKeyEvent$1;->INSTANCE:Landroidx/compose/ui/focus/FocusOwner$dispatchKeyEvent$1;

    invoke-virtual {p0, p1, v0}, Landroidx/compose/ui/focus/FocusOwnerImpl;->dispatchKeyEvent-YhN2O0w(Landroid/view/KeyEvent;Lkotlin/jvm/functions/Function0;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final clearFocus-I7lrPNg(IZZ)Z
    .locals 4

    iget-object v0, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->focusTransactionManager:Landroidx/compose/ui/focus/FocusTransactionManager;

    sget-object v1, Landroidx/compose/ui/focus/FocusOwnerImpl$clearFocus$clearedFocusSuccessfully$1;->INSTANCE:Landroidx/compose/ui/focus/FocusOwnerImpl$clearFocus$clearedFocusSuccessfully$1;

    :try_start_0
    iget-boolean v2, v0, Landroidx/compose/ui/focus/FocusTransactionManager;->ongoingTransaction:Z

    if-eqz v2, :cond_0

    invoke-static {v0}, Landroidx/compose/ui/focus/FocusTransactionManager;->access$cancelTransaction(Landroidx/compose/ui/focus/FocusTransactionManager;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_0
    :goto_0
    const/4 v2, 0x1

    iput-boolean v2, v0, Landroidx/compose/ui/focus/FocusTransactionManager;->ongoingTransaction:Z

    if-eqz v1, :cond_1

    iget-object v3, v0, Landroidx/compose/ui/focus/FocusTransactionManager;->cancellationListener:Landroidx/compose/runtime/collection/MutableVector;

    invoke-virtual {v3, v1}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iget-object v1, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->rootFocusNode:Landroidx/compose/ui/focus/FocusTargetNode;

    if-nez p2, :cond_3

    :try_start_1
    invoke-static {v1, p1}, Landroidx/compose/ui/focus/FocusTransactionsKt;->performCustomClearFocus-Mxy_nc0(Landroidx/compose/ui/focus/FocusTargetNode;I)Landroidx/compose/ui/focus/CustomDestinationResult;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eq p1, v2, :cond_2

    const/4 v3, 0x2

    if-eq p1, v3, :cond_2

    const/4 v3, 0x3

    if-eq p1, v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    invoke-static {v1, p2, v2}, Landroidx/compose/ui/focus/FocusTransactionsKt;->clearFocus(Landroidx/compose/ui/focus/FocusTargetNode;ZZ)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    invoke-static {v0}, Landroidx/compose/ui/focus/FocusTransactionManager;->access$commitTransaction(Landroidx/compose/ui/focus/FocusTransactionManager;)V

    if-eqz p1, :cond_4

    if-eqz p3, :cond_4

    iget-object p0, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->onClearFocusForOwner:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_4
    return p1

    :goto_3
    invoke-static {v0}, Landroidx/compose/ui/focus/FocusTransactionManager;->access$commitTransaction(Landroidx/compose/ui/focus/FocusTransactionManager;)V

    throw p0
.end method

.method public final dispatchKeyEvent-YhN2O0w(Landroid/view/KeyEvent;Lkotlin/jvm/functions/Function0;)Z
    .locals 35

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Landroidx/compose/ui/focus/FocusOwnerImpl;->focusInvalidationManager:Landroidx/compose/ui/focus/FocusInvalidationManager;

    invoke-virtual {v2}, Landroidx/compose/ui/focus/FocusInvalidationManager;->hasPendingInvalidation()Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    if-eqz v2, :cond_49

    invoke-static/range {p1 .. p1}, Landroidx/compose/ui/input/key/KeyEvent_androidKt;->getKey-ZmokQxo(Landroid/view/KeyEvent;)J

    move-result-wide v4

    invoke-static/range {p1 .. p1}, Landroidx/compose/ui/input/key/KeyEvent_androidKt;->getType-ZmokQxo(Landroid/view/KeyEvent;)I

    move-result v2

    const/4 v6, 0x2

    invoke-static {v2, v6}, Landroidx/compose/ui/input/key/KeyEventType;->equals-impl0(II)Z

    move-result v6

    const/4 v8, 0x3

    const/4 v15, 0x6

    const-wide/16 v16, 0x1

    const-wide/16 v18, 0x0

    const-wide v20, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    const-wide v22, 0x101010101010101L

    const/16 v24, 0x3f

    const v25, -0x3361d2af    # -8.293031E7f

    if-eqz v6, :cond_8

    iget-object v2, v0, Landroidx/compose/ui/focus/FocusOwnerImpl;->keysCurrentlyDown:Landroidx/collection/MutableLongSet;

    if-nez v2, :cond_0

    new-instance v2, Landroidx/collection/MutableLongSet;

    invoke-direct {v2, v8}, Landroidx/collection/MutableLongSet;-><init>(I)V

    iput-object v2, v0, Landroidx/compose/ui/focus/FocusOwnerImpl;->keysCurrentlyDown:Landroidx/collection/MutableLongSet;

    :cond_0
    move-object v6, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    mul-int v2, v2, v25

    shl-int/lit8 v25, v2, 0x10

    xor-int v2, v2, v25

    ushr-int/lit8 v7, v2, 0x7

    and-int/lit8 v2, v2, 0x7f

    iget v9, v6, Landroidx/collection/MutableLongSet;->_capacity:I

    and-int v25, v7, v9

    const/16 v26, 0x0

    :goto_0
    iget-object v14, v6, Landroidx/collection/MutableLongSet;->metadata:[J

    shr-int/lit8 v27, v25, 0x3

    and-int/lit8 v28, v25, 0x7

    shl-int/lit8 v10, v28, 0x3

    aget-wide v29, v14, v27

    ushr-long v29, v29, v10

    add-int/lit8 v27, v27, 0x1

    aget-wide v27, v14, v27

    rsub-int/lit8 v11, v10, 0x40

    shl-long v27, v27, v11

    int-to-long v10, v10

    neg-long v10, v10

    shr-long v10, v10, v24

    and-long v10, v27, v10

    or-long v10, v29, v10

    int-to-long v12, v2

    mul-long v29, v12, v22

    move-wide/from16 v31, v4

    xor-long v3, v10, v29

    sub-long v29, v3, v22

    not-long v3, v3

    and-long v3, v29, v3

    and-long v3, v3, v20

    :goto_1
    cmp-long v5, v3, v18

    if-eqz v5, :cond_2

    invoke-static {v3, v4}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v5

    shr-int/2addr v5, v8

    add-int v5, v25, v5

    and-int/2addr v5, v9

    iget-object v14, v6, Landroidx/collection/MutableLongSet;->elements:[J

    aget-wide v33, v14, v5

    cmp-long v14, v33, v31

    if-nez v14, :cond_1

    goto/16 :goto_5

    :cond_1
    sub-long v33, v3, v16

    and-long v3, v3, v33

    goto :goto_1

    :cond_2
    not-long v3, v10

    shl-long/2addr v3, v15

    and-long/2addr v3, v10

    and-long v3, v3, v20

    cmp-long v3, v3, v18

    if-eqz v3, :cond_7

    invoke-virtual {v6, v7}, Landroidx/collection/MutableLongSet;->findFirstAvailableSlot(I)I

    move-result v2

    iget v3, v6, Landroidx/collection/MutableLongSet;->growthLimit:I

    if-nez v3, :cond_5

    iget-object v3, v6, Landroidx/collection/MutableLongSet;->metadata:[J

    shr-int/lit8 v4, v2, 0x3

    aget-wide v3, v3, v4

    and-int/lit8 v5, v2, 0x7

    shl-int/2addr v5, v8

    shr-long/2addr v3, v5

    const-wide/16 v9, 0xff

    and-long/2addr v3, v9

    const-wide/16 v9, 0xfe

    cmp-long v3, v3, v9

    if-nez v3, :cond_3

    goto :goto_3

    :cond_3
    iget v2, v6, Landroidx/collection/MutableLongSet;->_capacity:I

    const/16 v3, 0x8

    if-le v2, v3, :cond_4

    iget v3, v6, Landroidx/collection/MutableLongSet;->_size:I

    int-to-long v3, v3

    const-wide/16 v9, 0x20

    mul-long/2addr v3, v9

    int-to-long v9, v2

    const-wide/16 v14, 0x19

    mul-long/2addr v9, v14

    invoke-static {v3, v4, v9, v10}, Ljava/lang/Long;->compareUnsigned(JJ)I

    move-result v2

    if-gtz v2, :cond_4

    iget v2, v6, Landroidx/collection/MutableLongSet;->_capacity:I

    invoke-static {v2}, Landroidx/collection/ScatterMapKt;->nextCapacity(I)I

    move-result v2

    invoke-virtual {v6, v2}, Landroidx/collection/MutableLongSet;->resizeStorage(I)V

    goto :goto_2

    :cond_4
    iget v2, v6, Landroidx/collection/MutableLongSet;->_capacity:I

    invoke-static {v2}, Landroidx/collection/ScatterMapKt;->nextCapacity(I)I

    move-result v2

    invoke-virtual {v6, v2}, Landroidx/collection/MutableLongSet;->resizeStorage(I)V

    :goto_2
    invoke-virtual {v6, v7}, Landroidx/collection/MutableLongSet;->findFirstAvailableSlot(I)I

    move-result v2

    :cond_5
    :goto_3
    move v5, v2

    iget v2, v6, Landroidx/collection/MutableLongSet;->_size:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, v6, Landroidx/collection/MutableLongSet;->_size:I

    iget v2, v6, Landroidx/collection/MutableLongSet;->growthLimit:I

    iget-object v3, v6, Landroidx/collection/MutableLongSet;->metadata:[J

    shr-int/lit8 v4, v5, 0x3

    aget-wide v9, v3, v4

    and-int/lit8 v7, v5, 0x7

    shl-int/2addr v7, v8

    shr-long v15, v9, v7

    const-wide/16 v17, 0xff

    and-long v15, v15, v17

    const-wide/16 v19, 0x80

    cmp-long v11, v15, v19

    if-nez v11, :cond_6

    const/4 v11, 0x1

    goto :goto_4

    :cond_6
    const/4 v11, 0x0

    :goto_4
    sub-int/2addr v2, v11

    iput v2, v6, Landroidx/collection/MutableLongSet;->growthLimit:I

    shl-long v14, v17, v7

    not-long v14, v14

    and-long/2addr v9, v14

    shl-long v14, v12, v7

    or-long/2addr v9, v14

    aput-wide v9, v3, v4

    iget v2, v6, Landroidx/collection/MutableLongSet;->_capacity:I

    add-int/lit8 v4, v5, -0x7

    and-int/2addr v4, v2

    and-int/lit8 v2, v2, 0x7

    add-int/2addr v4, v2

    shr-int/lit8 v2, v4, 0x3

    and-int/lit8 v4, v4, 0x7

    shl-int/2addr v4, v8

    aget-wide v7, v3, v2

    const-wide/16 v9, 0xff

    shl-long/2addr v9, v4

    not-long v9, v9

    and-long/2addr v7, v9

    shl-long v9, v12, v4

    or-long/2addr v7, v9

    aput-wide v7, v3, v2

    :goto_5
    iget-object v2, v6, Landroidx/collection/MutableLongSet;->elements:[J

    aput-wide v31, v2, v5

    goto/16 :goto_9

    :cond_7
    const/16 v3, 0x8

    add-int/lit8 v26, v26, 0x8

    add-int v25, v25, v26

    and-int v25, v25, v9

    move-wide/from16 v4, v31

    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_8
    move-wide/from16 v31, v4

    invoke-static {v2, v3}, Landroidx/compose/ui/input/key/KeyEventType;->equals-impl0(II)Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v2, v0, Landroidx/compose/ui/focus/FocusOwnerImpl;->keysCurrentlyDown:Landroidx/collection/MutableLongSet;

    if-eqz v2, :cond_c

    move-wide/from16 v4, v31

    invoke-virtual {v2, v4, v5}, Landroidx/collection/MutableLongSet;->contains(J)Z

    move-result v2

    if-ne v2, v3, :cond_c

    iget-object v2, v0, Landroidx/compose/ui/focus/FocusOwnerImpl;->keysCurrentlyDown:Landroidx/collection/MutableLongSet;

    if-eqz v2, :cond_d

    invoke-static {v4, v5}, Ljava/lang/Long;->hashCode(J)I

    move-result v3

    mul-int v3, v3, v25

    shl-int/lit8 v6, v3, 0x10

    xor-int/2addr v3, v6

    and-int/lit8 v6, v3, 0x7f

    iget v7, v2, Landroidx/collection/MutableLongSet;->_capacity:I

    ushr-int/lit8 v3, v3, 0x7

    and-int/2addr v3, v7

    const/4 v9, 0x0

    :goto_6
    iget-object v10, v2, Landroidx/collection/MutableLongSet;->metadata:[J

    shr-int/lit8 v11, v3, 0x3

    and-int/lit8 v12, v3, 0x7

    shl-int/2addr v12, v8

    aget-wide v29, v10, v11

    ushr-long v29, v29, v12

    const/4 v13, 0x1

    add-int/2addr v11, v13

    aget-wide v10, v10, v11

    rsub-int/lit8 v13, v12, 0x40

    shl-long/2addr v10, v13

    int-to-long v12, v12

    neg-long v12, v12

    shr-long v12, v12, v24

    and-long/2addr v10, v12

    or-long v10, v29, v10

    int-to-long v12, v6

    mul-long v12, v12, v22

    xor-long/2addr v12, v10

    sub-long v29, v12, v22

    not-long v12, v12

    and-long v12, v29, v12

    and-long v12, v12, v20

    :goto_7
    cmp-long v25, v12, v18

    if-eqz v25, :cond_a

    invoke-static {v12, v13}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v25

    shr-int/lit8 v25, v25, 0x3

    add-int v25, v3, v25

    and-int v25, v25, v7

    iget-object v14, v2, Landroidx/collection/MutableLongSet;->elements:[J

    aget-wide v30, v14, v25

    cmp-long v14, v30, v4

    if-nez v14, :cond_9

    goto :goto_8

    :cond_9
    sub-long v30, v12, v16

    and-long v12, v12, v30

    goto :goto_7

    :cond_a
    not-long v12, v10

    shl-long/2addr v12, v15

    and-long/2addr v10, v12

    and-long v10, v10, v20

    cmp-long v10, v10, v18

    if-eqz v10, :cond_b

    const/16 v25, -0x1

    :goto_8
    if-ltz v25, :cond_d

    iget v3, v2, Landroidx/collection/MutableLongSet;->_size:I

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    iput v3, v2, Landroidx/collection/MutableLongSet;->_size:I

    iget-object v3, v2, Landroidx/collection/MutableLongSet;->metadata:[J

    shr-int/lit8 v4, v25, 0x3

    and-int/lit8 v5, v25, 0x7

    shl-int/2addr v5, v8

    aget-wide v6, v3, v4

    const-wide/16 v9, 0xff

    shl-long v11, v9, v5

    not-long v9, v11

    and-long/2addr v6, v9

    const-wide/16 v9, 0xfe

    shl-long v11, v9, v5

    or-long v5, v6, v11

    aput-wide v5, v3, v4

    iget v2, v2, Landroidx/collection/MutableLongSet;->_capacity:I

    add-int/lit8 v25, v25, -0x7

    and-int v4, v25, v2

    and-int/lit8 v2, v2, 0x7

    add-int/2addr v4, v2

    shr-int/lit8 v2, v4, 0x3

    and-int/lit8 v4, v4, 0x7

    shl-int/2addr v4, v8

    aget-wide v5, v3, v2

    const-wide/16 v10, 0xff

    shl-long v7, v10, v4

    not-long v7, v7

    and-long/2addr v5, v7

    const-wide/16 v12, 0xfe

    shl-long v7, v12, v4

    or-long v4, v5, v7

    aput-wide v4, v3, v2

    goto :goto_9

    :cond_b
    const-wide/16 v10, 0xff

    const-wide/16 v12, 0xfe

    const/16 v25, 0x8

    add-int/lit8 v9, v9, 0x8

    add-int/2addr v3, v9

    and-int/2addr v3, v7

    goto/16 :goto_6

    :cond_c
    const/4 v0, 0x0

    return v0

    :cond_d
    :goto_9
    iget-object v0, v0, Landroidx/compose/ui/focus/FocusOwnerImpl;->rootFocusNode:Landroidx/compose/ui/focus/FocusTargetNode;

    invoke-static {v0}, Landroidx/compose/ui/focus/FocusTraversalKt;->findActiveFocusNode(Landroidx/compose/ui/focus/FocusTargetNode;)Landroidx/compose/ui/focus/FocusTargetNode;

    move-result-object v0

    const/4 v2, 0x0

    const/16 v3, 0x10

    const-string/jumbo v4, "visitAncestors called on an unattached node"

    if-eqz v0, :cond_13

    iget-object v5, v0, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    iget-boolean v6, v5, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    if-eqz v6, :cond_12

    iget v6, v5, Landroidx/compose/ui/Modifier$Node;->aggregateChildKindSet:I

    and-int/lit16 v6, v6, 0x2400

    if-eqz v6, :cond_10

    iget-object v5, v5, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    move-object v6, v2

    :goto_a
    if-eqz v5, :cond_11

    iget v7, v5, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/lit16 v8, v7, 0x2400

    if-eqz v8, :cond_f

    and-int/lit16 v7, v7, 0x400

    if-eqz v7, :cond_e

    goto :goto_b

    :cond_e
    move-object v6, v5

    :cond_f
    iget-object v5, v5, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    goto :goto_a

    :cond_10
    move-object v6, v2

    :cond_11
    :goto_b
    if-nez v6, :cond_22

    goto :goto_c

    :cond_12
    const-string/jumbo v0, "visitLocalDescendants called on an unattached node"

    invoke-static {v0}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    throw v2

    :cond_13
    :goto_c
    if-eqz v0, :cond_21

    iget-object v5, v0, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    iget-boolean v6, v5, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    if-eqz v6, :cond_20

    invoke-static {v0}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    :goto_d
    if-eqz v0, :cond_1f

    iget-object v6, v0, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    iget-object v6, v6, Landroidx/compose/ui/node/NodeChain;->head:Landroidx/compose/ui/Modifier$Node;

    iget v6, v6, Landroidx/compose/ui/Modifier$Node;->aggregateChildKindSet:I

    and-int/lit16 v6, v6, 0x2000

    if-eqz v6, :cond_1d

    :goto_e
    if-eqz v5, :cond_1d

    iget v6, v5, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/lit16 v6, v6, 0x2000

    if-eqz v6, :cond_1c

    move-object v7, v2

    move-object v6, v5

    :goto_f
    if-eqz v6, :cond_1c

    instance-of v8, v6, Landroidx/compose/ui/input/key/KeyInputModifierNode;

    if-eqz v8, :cond_14

    goto/16 :goto_12

    :cond_14
    iget v8, v6, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/lit16 v8, v8, 0x2000

    if-eqz v8, :cond_1b

    instance-of v8, v6, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v8, :cond_1b

    move-object v8, v6

    check-cast v8, Landroidx/compose/ui/node/DelegatingNode;

    iget-object v8, v8, Landroidx/compose/ui/node/DelegatingNode;->delegate:Landroidx/compose/ui/Modifier$Node;

    move-object v9, v8

    move-object v8, v7

    move-object v7, v6

    const/4 v6, 0x0

    :goto_10
    if-eqz v9, :cond_19

    iget v10, v9, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/lit16 v10, v10, 0x2000

    if-eqz v10, :cond_18

    add-int/lit8 v6, v6, 0x1

    const/4 v10, 0x1

    if-ne v6, v10, :cond_15

    move-object v7, v9

    goto :goto_11

    :cond_15
    if-nez v8, :cond_16

    new-instance v8, Landroidx/compose/runtime/collection/MutableVector;

    new-array v10, v3, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v8, v10}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    :cond_16
    if-eqz v7, :cond_17

    invoke-virtual {v8, v7}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    move-object v7, v2

    :cond_17
    invoke-virtual {v8, v9}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    :cond_18
    :goto_11
    iget-object v9, v9, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    goto :goto_10

    :cond_19
    const/4 v9, 0x1

    if-ne v6, v9, :cond_1a

    move-object v6, v7

    move-object v7, v8

    goto :goto_f

    :cond_1a
    move-object v7, v8

    :cond_1b
    invoke-static {v7}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v6

    goto :goto_f

    :cond_1c
    iget-object v5, v5, Landroidx/compose/ui/Modifier$Node;->parent:Landroidx/compose/ui/Modifier$Node;

    goto :goto_e

    :cond_1d
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui_release()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    if-eqz v0, :cond_1e

    iget-object v5, v0, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    if-eqz v5, :cond_1e

    iget-object v5, v5, Landroidx/compose/ui/node/NodeChain;->tail:Landroidx/compose/ui/node/TailModifierNode;

    goto :goto_d

    :cond_1e
    move-object v5, v2

    goto :goto_d

    :cond_1f
    move-object v6, v2

    :goto_12
    check-cast v6, Landroidx/compose/ui/input/key/KeyInputModifierNode;

    if-eqz v6, :cond_21

    check-cast v6, Landroidx/compose/ui/Modifier$Node;

    iget-object v6, v6, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    goto :goto_13

    :cond_20
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_21
    move-object v6, v2

    :cond_22
    :goto_13
    if-eqz v6, :cond_47

    iget-object v0, v6, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    iget-boolean v5, v0, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    if-eqz v5, :cond_48

    iget-object v0, v0, Landroidx/compose/ui/Modifier$Node;->parent:Landroidx/compose/ui/Modifier$Node;

    invoke-static {v6}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v4

    move-object v5, v2

    :goto_14
    if-eqz v4, :cond_2f

    iget-object v7, v4, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    iget-object v7, v7, Landroidx/compose/ui/node/NodeChain;->head:Landroidx/compose/ui/Modifier$Node;

    iget v7, v7, Landroidx/compose/ui/Modifier$Node;->aggregateChildKindSet:I

    and-int/lit16 v7, v7, 0x2000

    if-eqz v7, :cond_2d

    :goto_15
    if-eqz v0, :cond_2d

    iget v7, v0, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/lit16 v7, v7, 0x2000

    if-eqz v7, :cond_2c

    move-object v7, v0

    move-object v8, v2

    :goto_16
    if-eqz v7, :cond_2c

    instance-of v9, v7, Landroidx/compose/ui/input/key/KeyInputModifierNode;

    if-eqz v9, :cond_24

    if-nez v5, :cond_23

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    :cond_23
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_19

    :cond_24
    iget v9, v7, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/lit16 v9, v9, 0x2000

    if-eqz v9, :cond_2b

    instance-of v9, v7, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v9, :cond_2b

    move-object v9, v7

    check-cast v9, Landroidx/compose/ui/node/DelegatingNode;

    iget-object v9, v9, Landroidx/compose/ui/node/DelegatingNode;->delegate:Landroidx/compose/ui/Modifier$Node;

    move-object v10, v9

    move-object v9, v8

    move-object v8, v7

    const/4 v7, 0x0

    :goto_17
    if-eqz v10, :cond_29

    iget v11, v10, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/lit16 v11, v11, 0x2000

    if-eqz v11, :cond_28

    add-int/lit8 v7, v7, 0x1

    const/4 v11, 0x1

    if-ne v7, v11, :cond_25

    move-object v8, v10

    goto :goto_18

    :cond_25
    if-nez v9, :cond_26

    new-instance v9, Landroidx/compose/runtime/collection/MutableVector;

    new-array v11, v3, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v9, v11}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    :cond_26
    if-eqz v8, :cond_27

    invoke-virtual {v9, v8}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    move-object v8, v2

    :cond_27
    invoke-virtual {v9, v10}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    :cond_28
    :goto_18
    iget-object v10, v10, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    goto :goto_17

    :cond_29
    const/4 v10, 0x1

    if-ne v7, v10, :cond_2a

    move-object v7, v8

    move-object v8, v9

    goto :goto_16

    :cond_2a
    move-object v8, v9

    :cond_2b
    :goto_19
    invoke-static {v8}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v7

    goto :goto_16

    :cond_2c
    iget-object v0, v0, Landroidx/compose/ui/Modifier$Node;->parent:Landroidx/compose/ui/Modifier$Node;

    goto :goto_15

    :cond_2d
    invoke-virtual {v4}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui_release()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v4

    if-eqz v4, :cond_2e

    iget-object v0, v4, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    if-eqz v0, :cond_2e

    iget-object v0, v0, Landroidx/compose/ui/node/NodeChain;->tail:Landroidx/compose/ui/node/TailModifierNode;

    goto :goto_14

    :cond_2e
    move-object v0, v2

    goto :goto_14

    :cond_2f
    if-eqz v5, :cond_32

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    const/4 v4, -0x1

    add-int/2addr v0, v4

    if-ltz v0, :cond_32

    :goto_1a
    add-int/lit8 v4, v0, -0x1

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/input/key/KeyInputModifierNode;

    invoke-interface {v0, v1}, Landroidx/compose/ui/input/key/KeyInputModifierNode;->onPreKeyEvent-ZmokQxo(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_30

    const/4 v0, 0x1

    return v0

    :cond_30
    if-gez v4, :cond_31

    goto :goto_1b

    :cond_31
    move v0, v4

    goto :goto_1a

    :cond_32
    :goto_1b
    iget-object v0, v6, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    move-object v4, v2

    :goto_1c
    if-eqz v0, :cond_3b

    instance-of v7, v0, Landroidx/compose/ui/input/key/KeyInputModifierNode;

    if-eqz v7, :cond_33

    check-cast v0, Landroidx/compose/ui/input/key/KeyInputModifierNode;

    invoke-interface {v0, v1}, Landroidx/compose/ui/input/key/KeyInputModifierNode;->onPreKeyEvent-ZmokQxo(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_3a

    const/4 v0, 0x1

    return v0

    :cond_33
    iget v7, v0, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/lit16 v7, v7, 0x2000

    if-eqz v7, :cond_3a

    instance-of v7, v0, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v7, :cond_3a

    move-object v7, v0

    check-cast v7, Landroidx/compose/ui/node/DelegatingNode;

    iget-object v7, v7, Landroidx/compose/ui/node/DelegatingNode;->delegate:Landroidx/compose/ui/Modifier$Node;

    move-object v8, v7

    move-object v7, v4

    move-object v4, v0

    const/4 v0, 0x0

    :goto_1d
    if-eqz v8, :cond_38

    iget v9, v8, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/lit16 v9, v9, 0x2000

    if-eqz v9, :cond_37

    add-int/lit8 v0, v0, 0x1

    const/4 v9, 0x1

    if-ne v0, v9, :cond_34

    move-object v4, v8

    goto :goto_1e

    :cond_34
    if-nez v7, :cond_35

    new-instance v7, Landroidx/compose/runtime/collection/MutableVector;

    new-array v9, v3, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v7, v9}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    :cond_35
    if-eqz v4, :cond_36

    invoke-virtual {v7, v4}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    move-object v4, v2

    :cond_36
    invoke-virtual {v7, v8}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    :cond_37
    :goto_1e
    iget-object v8, v8, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    goto :goto_1d

    :cond_38
    const/4 v8, 0x1

    if-ne v0, v8, :cond_39

    move-object v0, v4

    move-object v4, v7

    goto :goto_1c

    :cond_39
    move-object v4, v7

    :cond_3a
    invoke-static {v4}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    goto :goto_1c

    :cond_3b
    invoke-interface/range {p2 .. p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3c

    const/4 v0, 0x1

    return v0

    :cond_3c
    const/4 v0, 0x1

    iget-object v4, v6, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    move-object v6, v2

    :goto_1f
    if-eqz v4, :cond_45

    instance-of v7, v4, Landroidx/compose/ui/input/key/KeyInputModifierNode;

    if-eqz v7, :cond_3d

    check-cast v4, Landroidx/compose/ui/input/key/KeyInputModifierNode;

    invoke-interface {v4, v1}, Landroidx/compose/ui/input/key/KeyInputModifierNode;->onKeyEvent-ZmokQxo(Landroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_44

    return v0

    :cond_3d
    iget v0, v4, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_44

    instance-of v0, v4, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v0, :cond_44

    move-object v0, v4

    check-cast v0, Landroidx/compose/ui/node/DelegatingNode;

    iget-object v0, v0, Landroidx/compose/ui/node/DelegatingNode;->delegate:Landroidx/compose/ui/Modifier$Node;

    move-object v7, v6

    move-object v6, v4

    const/4 v4, 0x0

    :goto_20
    if-eqz v0, :cond_42

    iget v8, v0, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/lit16 v8, v8, 0x2000

    if-eqz v8, :cond_41

    add-int/lit8 v4, v4, 0x1

    const/4 v8, 0x1

    if-ne v4, v8, :cond_3e

    move-object v6, v0

    goto :goto_21

    :cond_3e
    if-nez v7, :cond_3f

    new-instance v7, Landroidx/compose/runtime/collection/MutableVector;

    new-array v8, v3, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v7, v8}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    :cond_3f
    if-eqz v6, :cond_40

    invoke-virtual {v7, v6}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    move-object v6, v2

    :cond_40
    invoke-virtual {v7, v0}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    :cond_41
    :goto_21
    iget-object v0, v0, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    goto :goto_20

    :cond_42
    const/4 v0, 0x1

    if-ne v4, v0, :cond_43

    move-object v4, v6

    move-object v6, v7

    goto :goto_1f

    :cond_43
    move-object v6, v7

    :cond_44
    invoke-static {v6}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v4

    const/4 v0, 0x1

    goto :goto_1f

    :cond_45
    if-eqz v5, :cond_47

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_22
    if-ge v2, v0, :cond_47

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/input/key/KeyInputModifierNode;

    invoke-interface {v3, v1}, Landroidx/compose/ui/input/key/KeyInputModifierNode;->onKeyEvent-ZmokQxo(Landroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_46

    const/4 v3, 0x1

    return v3

    :cond_46
    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    :cond_47
    const/4 v0, 0x0

    goto :goto_23

    :cond_48
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_23
    return v0

    :cond_49
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Dispatching key event while focus system is invalidated."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final focusSearch-ULY8qGw(ILandroidx/compose/ui/geometry/Rect;Lkotlin/jvm/functions/Function1;)Ljava/lang/Boolean;
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    iget-object v4, v0, Landroidx/compose/ui/focus/FocusOwnerImpl;->rootFocusNode:Landroidx/compose/ui/focus/FocusTargetNode;

    invoke-static {v4}, Landroidx/compose/ui/focus/FocusTraversalKt;->findActiveFocusNode(Landroidx/compose/ui/focus/FocusTargetNode;)Landroidx/compose/ui/focus/FocusTargetNode;

    move-result-object v5

    const/16 v6, 0x8

    const/4 v7, 0x7

    const/4 v8, 0x4

    const/4 v9, 0x3

    const/4 v10, 0x6

    const/4 v11, 0x5

    const/4 v12, 0x2

    iget-object v13, v0, Landroidx/compose/ui/focus/FocusOwnerImpl;->onLayoutDirection:Lkotlin/jvm/functions/Function0;

    const/4 v14, 0x1

    if-eqz v5, :cond_10

    invoke-interface {v13}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroidx/compose/ui/unit/LayoutDirection;

    invoke-virtual {v5}, Landroidx/compose/ui/focus/FocusTargetNode;->fetchFocusProperties$ui_release()Landroidx/compose/ui/focus/FocusPropertiesImpl;

    move-result-object v15

    invoke-static {v1, v14}, Landroidx/compose/ui/focus/FocusDirection;->equals-impl0(II)Z

    move-result v17

    if-eqz v17, :cond_0

    iget-object v15, v15, Landroidx/compose/ui/focus/FocusPropertiesImpl;->next:Landroidx/compose/ui/focus/FocusRequester;

    goto/16 :goto_2

    :cond_0
    invoke-static {v1, v12}, Landroidx/compose/ui/focus/FocusDirection;->equals-impl0(II)Z

    move-result v17

    if-eqz v17, :cond_1

    iget-object v15, v15, Landroidx/compose/ui/focus/FocusPropertiesImpl;->previous:Landroidx/compose/ui/focus/FocusRequester;

    goto/16 :goto_2

    :cond_1
    invoke-static {v1, v11}, Landroidx/compose/ui/focus/FocusDirection;->equals-impl0(II)Z

    move-result v17

    if-eqz v17, :cond_2

    iget-object v15, v15, Landroidx/compose/ui/focus/FocusPropertiesImpl;->up:Landroidx/compose/ui/focus/FocusRequester;

    goto/16 :goto_2

    :cond_2
    invoke-static {v1, v10}, Landroidx/compose/ui/focus/FocusDirection;->equals-impl0(II)Z

    move-result v17

    if-eqz v17, :cond_3

    iget-object v15, v15, Landroidx/compose/ui/focus/FocusPropertiesImpl;->down:Landroidx/compose/ui/focus/FocusRequester;

    goto/16 :goto_2

    :cond_3
    invoke-static {v1, v9}, Landroidx/compose/ui/focus/FocusDirection;->equals-impl0(II)Z

    move-result v17

    if-eqz v17, :cond_8

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    if-eqz v10, :cond_5

    if-ne v10, v14, :cond_4

    iget-object v10, v15, Landroidx/compose/ui/focus/FocusPropertiesImpl;->end:Landroidx/compose/ui/focus/FocusRequester;

    goto :goto_0

    :cond_4
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :cond_5
    iget-object v10, v15, Landroidx/compose/ui/focus/FocusPropertiesImpl;->start:Landroidx/compose/ui/focus/FocusRequester;

    :goto_0
    sget-object v11, Landroidx/compose/ui/focus/FocusRequester;->Default:Landroidx/compose/ui/focus/FocusRequester;

    if-ne v10, v11, :cond_6

    const/4 v10, 0x0

    :cond_6
    if-nez v10, :cond_7

    iget-object v15, v15, Landroidx/compose/ui/focus/FocusPropertiesImpl;->left:Landroidx/compose/ui/focus/FocusRequester;

    goto :goto_2

    :cond_7
    move-object v15, v10

    goto :goto_2

    :cond_8
    invoke-static {v1, v8}, Landroidx/compose/ui/focus/FocusDirection;->equals-impl0(II)Z

    move-result v10

    if-eqz v10, :cond_c

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    if-eqz v10, :cond_a

    if-ne v10, v14, :cond_9

    iget-object v10, v15, Landroidx/compose/ui/focus/FocusPropertiesImpl;->start:Landroidx/compose/ui/focus/FocusRequester;

    goto :goto_1

    :cond_9
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :cond_a
    iget-object v10, v15, Landroidx/compose/ui/focus/FocusPropertiesImpl;->end:Landroidx/compose/ui/focus/FocusRequester;

    :goto_1
    sget-object v11, Landroidx/compose/ui/focus/FocusRequester;->Default:Landroidx/compose/ui/focus/FocusRequester;

    if-ne v10, v11, :cond_b

    const/4 v10, 0x0

    :cond_b
    if-nez v10, :cond_7

    iget-object v15, v15, Landroidx/compose/ui/focus/FocusPropertiesImpl;->right:Landroidx/compose/ui/focus/FocusRequester;

    goto :goto_2

    :cond_c
    invoke-static {v1, v7}, Landroidx/compose/ui/focus/FocusDirection;->equals-impl0(II)Z

    move-result v10

    if-eqz v10, :cond_d

    iget-object v10, v15, Landroidx/compose/ui/focus/FocusPropertiesImpl;->enter:Lkotlin/jvm/functions/Function1;

    check-cast v10, Landroidx/compose/ui/focus/FocusPropertiesImpl$enter$1;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v15, Landroidx/compose/ui/focus/FocusRequester;->Default:Landroidx/compose/ui/focus/FocusRequester;

    goto :goto_2

    :cond_d
    invoke-static {v1, v6}, Landroidx/compose/ui/focus/FocusDirection;->equals-impl0(II)Z

    move-result v10

    if-eqz v10, :cond_f

    iget-object v10, v15, Landroidx/compose/ui/focus/FocusPropertiesImpl;->exit:Lkotlin/jvm/functions/Function1;

    check-cast v10, Landroidx/compose/ui/focus/FocusPropertiesImpl$exit$1;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v15, Landroidx/compose/ui/focus/FocusRequester;->Default:Landroidx/compose/ui/focus/FocusRequester;

    :goto_2
    sget-object v10, Landroidx/compose/ui/focus/FocusRequester;->Cancel:Landroidx/compose/ui/focus/FocusRequester;

    invoke-static {v15, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e

    const/4 v10, 0x0

    return-object v10

    :cond_e
    const/4 v10, 0x0

    sget-object v11, Landroidx/compose/ui/focus/FocusRequester;->Default:Landroidx/compose/ui/focus/FocusRequester;

    invoke-static {v15, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_11

    invoke-virtual {v15, v3}, Landroidx/compose/ui/focus/FocusRequester;->findFocusTargetNode$ui_release(Lkotlin/jvm/functions/Function1;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "invalid FocusDirection"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    const/4 v10, 0x0

    move-object v5, v10

    :cond_11
    invoke-interface {v13}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/compose/ui/unit/LayoutDirection;

    new-instance v13, Landroidx/compose/ui/focus/FocusOwnerImpl$focusSearch$1;

    invoke-direct {v13, v5, v0, v3}, Landroidx/compose/ui/focus/FocusOwnerImpl$focusSearch$1;-><init>(Landroidx/compose/ui/focus/FocusTargetNode;Landroidx/compose/ui/focus/FocusOwnerImpl;Lkotlin/jvm/functions/Function1;)V

    invoke-static {v1, v14}, Landroidx/compose/ui/focus/FocusDirection;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_12

    move v0, v14

    goto :goto_3

    :cond_12
    invoke-static {v1, v12}, Landroidx/compose/ui/focus/FocusDirection;->equals-impl0(II)Z

    move-result v0

    :goto_3
    if-eqz v0, :cond_15

    invoke-static {v1, v14}, Landroidx/compose/ui/focus/FocusDirection;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-static {v4, v13}, Landroidx/compose/ui/focus/OneDimensionalFocusSearchKt;->forwardFocusSearch(Landroidx/compose/ui/focus/FocusTargetNode;Lkotlin/jvm/functions/Function1;)Z

    move-result v0

    goto :goto_4

    :cond_13
    invoke-static {v1, v12}, Landroidx/compose/ui/focus/FocusDirection;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-static {v4, v13}, Landroidx/compose/ui/focus/OneDimensionalFocusSearchKt;->backwardFocusSearch(Landroidx/compose/ui/focus/FocusTargetNode;Lkotlin/jvm/functions/Function1;)Z

    move-result v0

    :goto_4
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    goto/16 :goto_10

    :cond_14
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This function should only be used for 1-D focus search"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    invoke-static {v1, v9}, Landroidx/compose/ui/focus/FocusDirection;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_16

    move v0, v14

    goto :goto_5

    :cond_16
    invoke-static {v1, v8}, Landroidx/compose/ui/focus/FocusDirection;->equals-impl0(II)Z

    move-result v0

    :goto_5
    if-eqz v0, :cond_17

    move v0, v14

    goto :goto_6

    :cond_17
    const/4 v0, 0x5

    invoke-static {v1, v0}, Landroidx/compose/ui/focus/FocusDirection;->equals-impl0(II)Z

    move-result v0

    :goto_6
    if-eqz v0, :cond_18

    move v0, v14

    goto :goto_7

    :cond_18
    const/4 v0, 0x6

    invoke-static {v1, v0}, Landroidx/compose/ui/focus/FocusDirection;->equals-impl0(II)Z

    move-result v0

    :goto_7
    if-eqz v0, :cond_19

    invoke-static {v1, v4, v2, v13}, Landroidx/compose/ui/focus/TwoDimensionalFocusSearchKt;->twoDimensionalFocusSearch-sMXa3k8(ILandroidx/compose/ui/focus/FocusTargetNode;Landroidx/compose/ui/geometry/Rect;Lkotlin/jvm/functions/Function1;)Ljava/lang/Boolean;

    move-result-object v15

    goto/16 :goto_10

    :cond_19
    invoke-static {v1, v7}, Landroidx/compose/ui/focus/FocusDirection;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_1b

    if-ne v0, v14, :cond_1a

    move v8, v9

    goto :goto_8

    :cond_1a
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :cond_1b
    :goto_8
    invoke-static {v4}, Landroidx/compose/ui/focus/FocusTraversalKt;->findActiveFocusNode(Landroidx/compose/ui/focus/FocusTargetNode;)Landroidx/compose/ui/focus/FocusTargetNode;

    move-result-object v0

    if-eqz v0, :cond_1c

    invoke-static {v8, v0, v2, v13}, Landroidx/compose/ui/focus/TwoDimensionalFocusSearchKt;->twoDimensionalFocusSearch-sMXa3k8(ILandroidx/compose/ui/focus/FocusTargetNode;Landroidx/compose/ui/geometry/Rect;Lkotlin/jvm/functions/Function1;)Ljava/lang/Boolean;

    move-result-object v15

    goto/16 :goto_10

    :cond_1c
    move-object v15, v10

    goto/16 :goto_10

    :cond_1d
    invoke-static {v1, v6}, Landroidx/compose/ui/focus/FocusDirection;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-static {v4}, Landroidx/compose/ui/focus/FocusTraversalKt;->findActiveFocusNode(Landroidx/compose/ui/focus/FocusTargetNode;)Landroidx/compose/ui/focus/FocusTargetNode;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_29

    iget-object v2, v0, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    iget-boolean v3, v2, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    if-eqz v3, :cond_28

    iget-object v2, v2, Landroidx/compose/ui/Modifier$Node;->parent:Landroidx/compose/ui/Modifier$Node;

    invoke-static {v0}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    :goto_9
    if-eqz v0, :cond_29

    iget-object v3, v0, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    iget-object v3, v3, Landroidx/compose/ui/node/NodeChain;->head:Landroidx/compose/ui/Modifier$Node;

    iget v3, v3, Landroidx/compose/ui/Modifier$Node;->aggregateChildKindSet:I

    and-int/lit16 v3, v3, 0x400

    if-eqz v3, :cond_26

    :goto_a
    if-eqz v2, :cond_26

    iget v3, v2, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/lit16 v3, v3, 0x400

    if-eqz v3, :cond_25

    move-object v3, v2

    move-object v5, v10

    :goto_b
    if-eqz v3, :cond_25

    instance-of v6, v3, Landroidx/compose/ui/focus/FocusTargetNode;

    if-eqz v6, :cond_1e

    check-cast v3, Landroidx/compose/ui/focus/FocusTargetNode;

    invoke-virtual {v3}, Landroidx/compose/ui/focus/FocusTargetNode;->fetchFocusProperties$ui_release()Landroidx/compose/ui/focus/FocusPropertiesImpl;

    move-result-object v6

    iget-boolean v6, v6, Landroidx/compose/ui/focus/FocusPropertiesImpl;->canFocus:Z

    if-eqz v6, :cond_24

    move-object v15, v3

    goto/16 :goto_e

    :cond_1e
    iget v6, v3, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/lit16 v6, v6, 0x400

    if-eqz v6, :cond_24

    instance-of v6, v3, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v6, :cond_24

    move-object v6, v3

    check-cast v6, Landroidx/compose/ui/node/DelegatingNode;

    iget-object v6, v6, Landroidx/compose/ui/node/DelegatingNode;->delegate:Landroidx/compose/ui/Modifier$Node;

    move v7, v1

    :goto_c
    if-eqz v6, :cond_23

    iget v8, v6, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/lit16 v8, v8, 0x400

    if-eqz v8, :cond_22

    add-int/lit8 v7, v7, 0x1

    if-ne v7, v14, :cond_1f

    move-object v3, v6

    goto :goto_d

    :cond_1f
    if-nez v5, :cond_20

    new-instance v5, Landroidx/compose/runtime/collection/MutableVector;

    const/16 v8, 0x10

    new-array v8, v8, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v5, v8}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    :cond_20
    if-eqz v3, :cond_21

    invoke-virtual {v5, v3}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    move-object v3, v10

    :cond_21
    invoke-virtual {v5, v6}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    :cond_22
    :goto_d
    iget-object v6, v6, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    goto :goto_c

    :cond_23
    if-ne v7, v14, :cond_24

    goto :goto_b

    :cond_24
    invoke-static {v5}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v3

    goto :goto_b

    :cond_25
    iget-object v2, v2, Landroidx/compose/ui/Modifier$Node;->parent:Landroidx/compose/ui/Modifier$Node;

    goto :goto_a

    :cond_26
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui_release()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    if-eqz v0, :cond_27

    iget-object v2, v0, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    if-eqz v2, :cond_27

    iget-object v2, v2, Landroidx/compose/ui/node/NodeChain;->tail:Landroidx/compose/ui/node/TailModifierNode;

    goto :goto_9

    :cond_27
    move-object v2, v10

    goto :goto_9

    :cond_28
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "visitAncestors called on an unattached node"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_29
    move-object v15, v10

    :goto_e
    if-eqz v15, :cond_2b

    invoke-virtual {v15, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    goto :goto_f

    :cond_2a
    invoke-virtual {v13, v15}, Landroidx/compose/ui/focus/FocusOwnerImpl$focusSearch$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :cond_2b
    :goto_f
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    :goto_10
    return-object v15

    :cond_2c
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Focus search invoked with invalid FocusDirection "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Landroidx/compose/ui/focus/FocusDirection;->toString-impl(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final moveFocus-3ESFkO8(I)Z
    .locals 5

    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    iget-object v1, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->onFocusRectInterop:Lkotlin/jvm/functions/Function0;

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/geometry/Rect;

    new-instance v2, Landroidx/compose/ui/focus/FocusOwnerImpl$moveFocus$focusSearchSuccess$1;

    invoke-direct {v2, v0, p1}, Landroidx/compose/ui/focus/FocusOwnerImpl$moveFocus$focusSearchSuccess$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;I)V

    invoke-virtual {p0, p1, v1, v2}, Landroidx/compose/ui/focus/FocusOwnerImpl;->focusSearch-ULY8qGw(ILandroidx/compose/ui/geometry/Rect;Lkotlin/jvm/functions/Function1;)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    iget-object v3, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-nez v3, :cond_0

    goto :goto_2

    :cond_0
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v4

    :cond_1
    invoke-static {p1, v4}, Landroidx/compose/ui/focus/FocusDirection;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v4

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    invoke-static {p1, v0}, Landroidx/compose/ui/focus/FocusDirection;->equals-impl0(II)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_5

    invoke-virtual {p0, p1, v2, v2}, Landroidx/compose/ui/focus/FocusOwnerImpl;->clearFocus-I7lrPNg(IZZ)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Landroidx/compose/ui/focus/FocusOwnerImpl$takeFocus$1;

    invoke-direct {v0, p1}, Landroidx/compose/ui/focus/FocusOwnerImpl$takeFocus$1;-><init>(I)V

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Landroidx/compose/ui/focus/FocusOwnerImpl;->focusSearch-ULY8qGw(ILandroidx/compose/ui/geometry/Rect;Lkotlin/jvm/functions/Function1;)Ljava/lang/Boolean;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_1

    :cond_3
    move p0, v2

    :goto_1
    if-eqz p0, :cond_4

    move v2, v4

    :cond_4
    return v2

    :cond_5
    new-instance v0, Landroidx/compose/ui/focus/FocusDirection;

    invoke-direct {v0, p1}, Landroidx/compose/ui/focus/FocusDirection;-><init>(I)V

    iget-object p0, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->onMoveFocusInterop:Lkotlin/jvm/functions/Function1;

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_6
    :goto_2
    return v2
.end method
