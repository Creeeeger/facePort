.class public final Landroidx/compose/ui/focus/FocusOwnerImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

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
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1;",
            "Lkotlin/jvm/functions/Function2;",
            "Lkotlin/jvm/functions/Function1;",
            "Lkotlin/jvm/functions/Function0;",
            "Lkotlin/jvm/functions/Function0;",
            "Lkotlin/jvm/functions/Function0;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->onRequestFocusForOwner:Lkotlin/jvm/functions/Function2;

    iput-object p3, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->onMoveFocusInterop:Lkotlin/jvm/functions/Function1;

    iput-object p4, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->onClearFocusForOwner:Lkotlin/jvm/functions/Function0;

    iput-object p5, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->onFocusRectInterop:Lkotlin/jvm/functions/Function0;

    iput-object p6, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->onLayoutDirection:Lkotlin/jvm/functions/Function0;

    new-instance p2, Landroidx/compose/ui/focus/FocusTargetNode;

    invoke-direct {p2}, Landroidx/compose/ui/focus/FocusTargetNode;-><init>()V

    iput-object p2, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->rootFocusNode:Landroidx/compose/ui/focus/FocusTargetNode;

    new-instance p2, Landroidx/compose/ui/focus/FocusInvalidationManager;

    new-instance p3, Landroidx/compose/ui/focus/FocusOwnerImpl$focusInvalidationManager$1;

    invoke-direct {p3, p0}, Landroidx/compose/ui/focus/FocusOwnerImpl$focusInvalidationManager$1;-><init>(Ljava/lang/Object;)V

    invoke-direct {p2, p1, p3}, Landroidx/compose/ui/focus/FocusInvalidationManager;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V

    iput-object p2, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->focusInvalidationManager:Landroidx/compose/ui/focus/FocusInvalidationManager;

    new-instance p1, Landroidx/compose/ui/focus/FocusTransactionManager;

    invoke-direct {p1}, Landroidx/compose/ui/focus/FocusTransactionManager;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->focusTransactionManager:Landroidx/compose/ui/focus/FocusTransactionManager;

    sget-object p1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    sget-object p2, Landroidx/compose/ui/focus/FocusOwnerImpl$modifier$1;->INSTANCE:Landroidx/compose/ui/focus/FocusOwnerImpl$modifier$1;

    new-instance p3, Landroidx/compose/ui/focus/FocusPropertiesElement;

    new-instance p4, Landroidx/compose/ui/focus/FocusPropertiesKt$sam$androidx_compose_ui_focus_FocusPropertiesScope$0;

    invoke-direct {p4, p2}, Landroidx/compose/ui/focus/FocusPropertiesKt$sam$androidx_compose_ui_focus_FocusPropertiesScope$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-direct {p3, p4}, Landroidx/compose/ui/focus/FocusPropertiesElement;-><init>(Landroidx/compose/ui/focus/FocusPropertiesScope;)V

    invoke-interface {p1, p3}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    new-instance p1, Landroidx/compose/ui/focus/FocusOwnerImpl$modifier$2;

    invoke-direct {p1, p0}, Landroidx/compose/ui/focus/FocusOwnerImpl$modifier$2;-><init>(Landroidx/compose/ui/focus/FocusOwnerImpl;)V

    invoke-interface {p3, p1}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

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

    sget-object v3, Landroidx/compose/ui/focus/FocusOwnerImpl$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v3, p1

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
    .locals 34

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/16 v3, 0x10

    const/4 v4, 0x1

    const/4 v5, 0x3

    iget-object v6, v0, Landroidx/compose/ui/focus/FocusOwnerImpl;->focusInvalidationManager:Landroidx/compose/ui/focus/FocusInvalidationManager;

    invoke-virtual {v6}, Landroidx/compose/ui/focus/FocusInvalidationManager;->hasPendingInvalidation()Z

    move-result v6

    xor-int/2addr v6, v4

    if-eqz v6, :cond_47

    invoke-static/range {p1 .. p1}, Landroidx/compose/ui/input/key/KeyEvent_androidKt;->getKey-ZmokQxo(Landroid/view/KeyEvent;)J

    move-result-wide v6

    invoke-static/range {p1 .. p1}, Landroidx/compose/ui/input/key/KeyEvent_androidKt;->getType-ZmokQxo(Landroid/view/KeyEvent;)I

    move-result v8

    sget-object v9, Landroidx/compose/ui/input/key/KeyEventType;->Companion:Landroidx/compose/ui/input/key/KeyEventType$Companion;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v9, Landroidx/compose/ui/input/key/KeyEventType;->KeyDown:I

    invoke-static {v8, v9}, Landroidx/compose/ui/input/key/KeyEventType;->equals-impl0(II)Z

    move-result v9

    const/16 v16, 0x6

    const-wide/16 v17, 0x1

    const-wide/16 v19, 0x0

    const-wide v21, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    const-wide v23, 0x101010101010101L

    const/16 v25, 0x3f

    const v26, -0x3361d2af    # -8.293031E7f

    if-eqz v9, :cond_9

    iget-object v8, v0, Landroidx/compose/ui/focus/FocusOwnerImpl;->keysCurrentlyDown:Landroidx/collection/MutableLongSet;

    if-nez v8, :cond_0

    new-instance v8, Landroidx/collection/MutableLongSet;

    invoke-direct {v8, v5}, Landroidx/collection/MutableLongSet;-><init>(I)V

    iput-object v8, v0, Landroidx/compose/ui/focus/FocusOwnerImpl;->keysCurrentlyDown:Landroidx/collection/MutableLongSet;

    :cond_0
    move-object v9, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->hashCode(J)I

    move-result v8

    mul-int v8, v8, v26

    shl-int/lit8 v26, v8, 0x10

    xor-int v8, v8, v26

    ushr-int/lit8 v2, v8, 0x7

    and-int/lit8 v8, v8, 0x7f

    iget v10, v9, Landroidx/collection/LongSet;->_capacity:I

    and-int v26, v2, v10

    const/16 v27, 0x0

    :goto_0
    iget-object v3, v9, Landroidx/collection/LongSet;->metadata:[J

    shr-int/lit8 v28, v26, 0x3

    and-int/lit8 v29, v26, 0x7

    shl-int/lit8 v15, v29, 0x3

    aget-wide v30, v3, v28

    ushr-long v30, v30, v15

    add-int/lit8 v28, v28, 0x1

    aget-wide v28, v3, v28

    rsub-int/lit8 v3, v15, 0x40

    shl-long v28, v28, v3

    int-to-long v11, v15

    neg-long v11, v11

    shr-long v11, v11, v25

    and-long v11, v28, v11

    or-long v11, v30, v11

    int-to-long v13, v8

    mul-long v30, v13, v23

    xor-long v4, v11, v30

    sub-long v30, v4, v23

    not-long v4, v4

    and-long v4, v30, v4

    and-long v4, v4, v21

    :goto_1
    cmp-long v30, v4, v19

    if-eqz v30, :cond_2

    invoke-static {v4, v5}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v30

    const/4 v15, 0x3

    shr-int/lit8 v30, v30, 0x3

    add-int v30, v26, v30

    and-int v30, v30, v10

    iget-object v3, v9, Landroidx/collection/LongSet;->elements:[J

    aget-wide v32, v3, v30

    cmp-long v3, v32, v6

    if-nez v3, :cond_1

    goto/16 :goto_6

    :cond_1
    sub-long v32, v4, v17

    and-long v4, v4, v32

    goto :goto_1

    :cond_2
    not-long v3, v11

    shl-long v3, v3, v16

    and-long/2addr v3, v11

    and-long v3, v3, v21

    cmp-long v3, v3, v19

    if-eqz v3, :cond_8

    invoke-virtual {v9, v2}, Landroidx/collection/MutableLongSet;->findFirstAvailableSlot(I)I

    move-result v3

    iget v4, v9, Landroidx/collection/MutableLongSet;->growthLimit:I

    if-nez v4, :cond_5

    iget-object v4, v9, Landroidx/collection/LongSet;->metadata:[J

    const/4 v5, 0x3

    shr-int/lit8 v8, v3, 0x3

    aget-wide v10, v4, v8

    and-int/lit8 v4, v3, 0x7

    shl-int/2addr v4, v5

    shr-long v4, v10, v4

    const-wide/16 v10, 0xff

    and-long/2addr v4, v10

    const-wide/16 v10, 0xfe

    cmp-long v4, v4, v10

    if-nez v4, :cond_3

    goto :goto_3

    :cond_3
    iget v3, v9, Landroidx/collection/LongSet;->_capacity:I

    const/16 v4, 0x8

    if-le v3, v4, :cond_4

    iget v4, v9, Landroidx/collection/LongSet;->_size:I

    int-to-long v4, v4

    sget v8, Lkotlin/ULong;->$r8$clinit:I

    const-wide/16 v10, 0x20

    mul-long/2addr v4, v10

    int-to-long v10, v3

    const-wide/16 v16, 0x19

    mul-long v10, v10, v16

    invoke-static {v4, v5, v10, v11}, Ljava/lang/Long;->compareUnsigned(JJ)I

    move-result v3

    if-gtz v3, :cond_4

    iget v3, v9, Landroidx/collection/LongSet;->_capacity:I

    invoke-static {v3}, Landroidx/collection/ScatterMapKt;->nextCapacity(I)I

    move-result v3

    invoke-virtual {v9, v3}, Landroidx/collection/MutableLongSet;->resizeStorage(I)V

    goto :goto_2

    :cond_4
    iget v3, v9, Landroidx/collection/LongSet;->_capacity:I

    invoke-static {v3}, Landroidx/collection/ScatterMapKt;->nextCapacity(I)I

    move-result v3

    invoke-virtual {v9, v3}, Landroidx/collection/MutableLongSet;->resizeStorage(I)V

    :goto_2
    invoke-virtual {v9, v2}, Landroidx/collection/MutableLongSet;->findFirstAvailableSlot(I)I

    move-result v2

    move/from16 v30, v2

    goto :goto_4

    :cond_5
    :goto_3
    move/from16 v30, v3

    :goto_4
    iget v2, v9, Landroidx/collection/LongSet;->_size:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, v9, Landroidx/collection/LongSet;->_size:I

    iget v2, v9, Landroidx/collection/MutableLongSet;->growthLimit:I

    iget-object v4, v9, Landroidx/collection/LongSet;->metadata:[J

    const/4 v5, 0x3

    shr-int/lit8 v8, v30, 0x3

    aget-wide v10, v4, v8

    and-int/lit8 v12, v30, 0x7

    shl-int/2addr v12, v5

    shr-long v16, v10, v12

    const-wide/16 v18, 0xff

    and-long v16, v16, v18

    const-wide/16 v20, 0x80

    cmp-long v5, v16, v20

    if-nez v5, :cond_6

    const/4 v5, 0x1

    goto :goto_5

    :cond_6
    const/4 v5, 0x0

    :goto_5
    sub-int/2addr v2, v5

    iput v2, v9, Landroidx/collection/MutableLongSet;->growthLimit:I

    move-object v2, v4

    shl-long v3, v18, v12

    not-long v3, v3

    and-long/2addr v3, v10

    shl-long v10, v13, v12

    or-long/2addr v3, v10

    aput-wide v3, v2, v8

    iget v3, v9, Landroidx/collection/LongSet;->_capacity:I

    add-int/lit8 v4, v30, -0x7

    and-int/2addr v4, v3

    and-int/lit8 v3, v3, 0x7

    add-int/2addr v4, v3

    const/4 v3, 0x3

    shr-int/lit8 v5, v4, 0x3

    and-int/lit8 v4, v4, 0x7

    shl-int/lit8 v3, v4, 0x3

    aget-wide v10, v2, v5

    const-wide/16 v15, 0xff

    shl-long v0, v15, v3

    not-long v0, v0

    and-long/2addr v0, v10

    shl-long v3, v13, v3

    or-long/2addr v0, v3

    aput-wide v0, v2, v5

    :goto_6
    iget-object v0, v9, Landroidx/collection/LongSet;->elements:[J

    aput-wide v6, v0, v30

    :cond_7
    move-object/from16 v0, p0

    goto/16 :goto_a

    :cond_8
    const/16 v0, 0x8

    add-int/lit8 v27, v27, 0x8

    add-int v26, v26, v27

    and-int v26, v26, v10

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v4, 0x1

    const/4 v5, 0x3

    goto/16 :goto_0

    :cond_9
    sget v0, Landroidx/compose/ui/input/key/KeyEventType;->KeyUp:I

    invoke-static {v8, v0}, Landroidx/compose/ui/input/key/KeyEventType;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/compose/ui/focus/FocusOwnerImpl;->keysCurrentlyDown:Landroidx/collection/MutableLongSet;

    if-eqz v1, :cond_d

    invoke-virtual {v1, v6, v7}, Landroidx/collection/LongSet;->contains(J)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_d

    iget-object v1, v0, Landroidx/compose/ui/focus/FocusOwnerImpl;->keysCurrentlyDown:Landroidx/collection/MutableLongSet;

    if-eqz v1, :cond_e

    invoke-static {v6, v7}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    mul-int v2, v2, v26

    const/16 v4, 0x10

    shl-int/lit8 v5, v2, 0x10

    xor-int/2addr v2, v5

    and-int/lit8 v4, v2, 0x7f

    iget v5, v1, Landroidx/collection/LongSet;->_capacity:I

    ushr-int/lit8 v2, v2, 0x7

    and-int/2addr v2, v5

    const/4 v8, 0x0

    :goto_7
    iget-object v9, v1, Landroidx/collection/LongSet;->metadata:[J

    const/4 v10, 0x3

    shr-int/lit8 v11, v2, 0x3

    and-int/lit8 v12, v2, 0x7

    shl-int/2addr v12, v10

    aget-wide v13, v9, v11

    ushr-long/2addr v13, v12

    const/4 v3, 0x1

    add-int/2addr v11, v3

    aget-wide v9, v9, v11

    rsub-int/lit8 v11, v12, 0x40

    shl-long/2addr v9, v11

    int-to-long v11, v12

    neg-long v11, v11

    shr-long v11, v11, v25

    and-long/2addr v9, v11

    or-long/2addr v9, v13

    int-to-long v11, v4

    mul-long v11, v11, v23

    xor-long/2addr v11, v9

    sub-long v13, v11, v23

    not-long v11, v11

    and-long/2addr v11, v13

    and-long v11, v11, v21

    :goto_8
    cmp-long v13, v11, v19

    if-eqz v13, :cond_b

    invoke-static {v11, v12}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v13

    const/4 v14, 0x3

    shr-int/2addr v13, v14

    add-int/2addr v13, v2

    and-int/2addr v13, v5

    iget-object v14, v1, Landroidx/collection/LongSet;->elements:[J

    aget-wide v30, v14, v13

    cmp-long v14, v30, v6

    if-nez v14, :cond_a

    goto :goto_9

    :cond_a
    sub-long v13, v11, v17

    and-long/2addr v11, v13

    goto :goto_8

    :cond_b
    not-long v11, v9

    shl-long v11, v11, v16

    and-long/2addr v9, v11

    and-long v9, v9, v21

    cmp-long v9, v9, v19

    if-eqz v9, :cond_c

    const/4 v13, -0x1

    :goto_9
    if-ltz v13, :cond_e

    iget v2, v1, Landroidx/collection/LongSet;->_size:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    iput v2, v1, Landroidx/collection/LongSet;->_size:I

    iget-object v2, v1, Landroidx/collection/LongSet;->metadata:[J

    const/4 v4, 0x3

    shr-int/lit8 v5, v13, 0x3

    and-int/lit8 v6, v13, 0x7

    shl-int/2addr v6, v4

    aget-wide v7, v2, v5

    const-wide/16 v9, 0xff

    shl-long v11, v9, v6

    not-long v9, v11

    and-long/2addr v7, v9

    const-wide/16 v9, 0xfe

    shl-long v11, v9, v6

    or-long v6, v7, v11

    aput-wide v6, v2, v5

    iget v1, v1, Landroidx/collection/LongSet;->_capacity:I

    add-int/lit8 v13, v13, -0x7

    and-int v4, v13, v1

    and-int/lit8 v1, v1, 0x7

    add-int/2addr v4, v1

    const/4 v9, 0x3

    shr-int/lit8 v1, v4, 0x3

    and-int/lit8 v4, v4, 0x7

    shl-int/2addr v4, v9

    aget-wide v5, v2, v1

    const-wide/16 v10, 0xff

    shl-long v7, v10, v4

    not-long v7, v7

    and-long/2addr v5, v7

    const-wide/16 v12, 0xfe

    shl-long v7, v12, v4

    or-long v4, v5, v7

    aput-wide v4, v2, v1

    goto :goto_a

    :cond_c
    const/4 v9, 0x3

    const-wide/16 v10, 0xff

    const-wide/16 v12, 0xfe

    const/16 v14, 0x8

    add-int/2addr v8, v14

    add-int/2addr v2, v8

    and-int/2addr v2, v5

    goto/16 :goto_7

    :cond_d
    const/4 v0, 0x0

    return v0

    :cond_e
    :goto_a
    iget-object v0, v0, Landroidx/compose/ui/focus/FocusOwnerImpl;->rootFocusNode:Landroidx/compose/ui/focus/FocusTargetNode;

    invoke-static {v0}, Landroidx/compose/ui/focus/FocusTraversalKt;->findActiveFocusNode(Landroidx/compose/ui/focus/FocusTargetNode;)Landroidx/compose/ui/focus/FocusTargetNode;

    move-result-object v0

    const/4 v1, 0x0

    const-string/jumbo v2, "visitAncestors called on an unattached node"

    if-eqz v0, :cond_14

    iget-object v4, v0, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    iget-boolean v5, v4, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    if-eqz v5, :cond_13

    iget v5, v4, Landroidx/compose/ui/Modifier$Node;->aggregateChildKindSet:I

    and-int/lit16 v5, v5, 0x2400

    if-eqz v5, :cond_11

    iget-object v4, v4, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    move-object v5, v1

    :goto_b
    if-eqz v4, :cond_12

    iget v6, v4, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/lit16 v7, v6, 0x2400

    if-eqz v7, :cond_10

    and-int/lit16 v6, v6, 0x400

    if-eqz v6, :cond_f

    goto :goto_c

    :cond_f
    move-object v5, v4

    :cond_10
    iget-object v4, v4, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    goto :goto_b

    :cond_11
    move-object v5, v1

    :cond_12
    :goto_c
    if-nez v5, :cond_22

    goto :goto_d

    :cond_13
    const-string/jumbo v0, "visitLocalDescendants called on an unattached node"

    invoke-static {v0}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    throw v1

    :cond_14
    :goto_d
    if-eqz v0, :cond_21

    iget-object v4, v0, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    iget-boolean v5, v4, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    if-eqz v5, :cond_20

    invoke-static {v0}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    :goto_e
    if-eqz v0, :cond_1f

    iget-object v5, v0, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    iget-object v5, v5, Landroidx/compose/ui/node/NodeChain;->head:Landroidx/compose/ui/Modifier$Node;

    iget v5, v5, Landroidx/compose/ui/Modifier$Node;->aggregateChildKindSet:I

    and-int/lit16 v5, v5, 0x2000

    if-eqz v5, :cond_1d

    :goto_f
    if-eqz v4, :cond_1d

    iget v5, v4, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/lit16 v5, v5, 0x2000

    if-eqz v5, :cond_1c

    move-object v6, v1

    move-object v5, v4

    :goto_10
    if-eqz v5, :cond_1c

    instance-of v7, v5, Landroidx/compose/ui/input/key/KeyInputModifierNode;

    if-eqz v7, :cond_15

    goto :goto_13

    :cond_15
    iget v7, v5, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/lit16 v7, v7, 0x2000

    if-eqz v7, :cond_1b

    instance-of v7, v5, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v7, :cond_1b

    move-object v7, v5

    check-cast v7, Landroidx/compose/ui/node/DelegatingNode;

    iget-object v7, v7, Landroidx/compose/ui/node/DelegatingNode;->delegate:Landroidx/compose/ui/Modifier$Node;

    const/4 v8, 0x0

    :goto_11
    if-eqz v7, :cond_1a

    iget v9, v7, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/lit16 v9, v9, 0x2000

    if-eqz v9, :cond_19

    const/4 v3, 0x1

    add-int/2addr v8, v3

    if-ne v8, v3, :cond_16

    move-object v5, v7

    goto :goto_12

    :cond_16
    if-nez v6, :cond_17

    new-instance v6, Landroidx/compose/runtime/collection/MutableVector;

    const/16 v9, 0x10

    new-array v10, v9, [Landroidx/compose/ui/Modifier$Node;

    const/4 v9, 0x0

    invoke-direct {v6, v10, v9}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    :cond_17
    if-eqz v5, :cond_18

    invoke-virtual {v6, v5}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    move-object v5, v1

    :cond_18
    invoke-virtual {v6, v7}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    :cond_19
    :goto_12
    iget-object v7, v7, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    goto :goto_11

    :cond_1a
    const/4 v3, 0x1

    if-ne v8, v3, :cond_1b

    goto :goto_10

    :cond_1b
    invoke-static {v6}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v5

    goto :goto_10

    :cond_1c
    iget-object v4, v4, Landroidx/compose/ui/Modifier$Node;->parent:Landroidx/compose/ui/Modifier$Node;

    goto :goto_f

    :cond_1d
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui_release()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    if-eqz v0, :cond_1e

    iget-object v4, v0, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    if-eqz v4, :cond_1e

    iget-object v4, v4, Landroidx/compose/ui/node/NodeChain;->tail:Landroidx/compose/ui/node/TailModifierNode;

    goto :goto_e

    :cond_1e
    move-object v4, v1

    goto :goto_e

    :cond_1f
    move-object v5, v1

    :goto_13
    check-cast v5, Landroidx/compose/ui/input/key/KeyInputModifierNode;

    if-eqz v5, :cond_21

    check-cast v5, Landroidx/compose/ui/Modifier$Node;

    iget-object v5, v5, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    goto :goto_14

    :cond_20
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_21
    move-object v5, v1

    :cond_22
    :goto_14
    if-eqz v5, :cond_45

    iget-object v0, v5, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    iget-boolean v4, v0, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    if-eqz v4, :cond_46

    iget-object v0, v0, Landroidx/compose/ui/Modifier$Node;->parent:Landroidx/compose/ui/Modifier$Node;

    invoke-static {v5}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v2

    move-object v4, v1

    :goto_15
    if-eqz v2, :cond_2e

    iget-object v6, v2, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    iget-object v6, v6, Landroidx/compose/ui/node/NodeChain;->head:Landroidx/compose/ui/Modifier$Node;

    iget v6, v6, Landroidx/compose/ui/Modifier$Node;->aggregateChildKindSet:I

    and-int/lit16 v6, v6, 0x2000

    if-eqz v6, :cond_2c

    :goto_16
    if-eqz v0, :cond_2c

    iget v6, v0, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/lit16 v6, v6, 0x2000

    if-eqz v6, :cond_2b

    move-object v6, v0

    move-object v7, v1

    :goto_17
    if-eqz v6, :cond_2b

    instance-of v8, v6, Landroidx/compose/ui/input/key/KeyInputModifierNode;

    if-eqz v8, :cond_24

    if-nez v4, :cond_23

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :cond_23
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    :cond_24
    iget v8, v6, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/lit16 v8, v8, 0x2000

    if-eqz v8, :cond_2a

    instance-of v8, v6, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v8, :cond_2a

    move-object v8, v6

    check-cast v8, Landroidx/compose/ui/node/DelegatingNode;

    iget-object v8, v8, Landroidx/compose/ui/node/DelegatingNode;->delegate:Landroidx/compose/ui/Modifier$Node;

    const/4 v9, 0x0

    :goto_18
    if-eqz v8, :cond_29

    iget v10, v8, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/lit16 v10, v10, 0x2000

    if-eqz v10, :cond_28

    const/4 v3, 0x1

    add-int/2addr v9, v3

    if-ne v9, v3, :cond_25

    move-object v6, v8

    goto :goto_19

    :cond_25
    if-nez v7, :cond_26

    new-instance v7, Landroidx/compose/runtime/collection/MutableVector;

    const/16 v10, 0x10

    new-array v11, v10, [Landroidx/compose/ui/Modifier$Node;

    const/4 v10, 0x0

    invoke-direct {v7, v11, v10}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    :cond_26
    if-eqz v6, :cond_27

    invoke-virtual {v7, v6}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    move-object v6, v1

    :cond_27
    invoke-virtual {v7, v8}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    :cond_28
    :goto_19
    iget-object v8, v8, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    goto :goto_18

    :cond_29
    const/4 v3, 0x1

    if-ne v9, v3, :cond_2a

    goto :goto_17

    :cond_2a
    :goto_1a
    invoke-static {v7}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v6

    goto :goto_17

    :cond_2b
    iget-object v0, v0, Landroidx/compose/ui/Modifier$Node;->parent:Landroidx/compose/ui/Modifier$Node;

    goto :goto_16

    :cond_2c
    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui_release()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v2

    if-eqz v2, :cond_2d

    iget-object v0, v2, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    if-eqz v0, :cond_2d

    iget-object v0, v0, Landroidx/compose/ui/node/NodeChain;->tail:Landroidx/compose/ui/node/TailModifierNode;

    goto :goto_15

    :cond_2d
    move-object v0, v1

    goto :goto_15

    :cond_2e
    if-eqz v4, :cond_31

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, -0x1

    add-int/2addr v0, v2

    if-ltz v0, :cond_31

    :goto_1b
    add-int/lit8 v6, v0, -0x1

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/input/key/KeyInputModifierNode;

    move-object/from16 v7, p1

    invoke-interface {v0, v7}, Landroidx/compose/ui/input/key/KeyInputModifierNode;->onPreKeyEvent-ZmokQxo(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_2f

    const/4 v0, 0x1

    return v0

    :cond_2f
    if-gez v6, :cond_30

    goto :goto_1c

    :cond_30
    move v0, v6

    goto :goto_1b

    :cond_31
    move-object/from16 v7, p1

    :goto_1c
    iget-object v0, v5, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    move-object v2, v1

    :goto_1d
    if-eqz v0, :cond_39

    instance-of v6, v0, Landroidx/compose/ui/input/key/KeyInputModifierNode;

    if-eqz v6, :cond_32

    check-cast v0, Landroidx/compose/ui/input/key/KeyInputModifierNode;

    invoke-interface {v0, v7}, Landroidx/compose/ui/input/key/KeyInputModifierNode;->onPreKeyEvent-ZmokQxo(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_38

    const/4 v0, 0x1

    return v0

    :cond_32
    iget v6, v0, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/lit16 v6, v6, 0x2000

    if-eqz v6, :cond_38

    instance-of v6, v0, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v6, :cond_38

    move-object v6, v0

    check-cast v6, Landroidx/compose/ui/node/DelegatingNode;

    iget-object v6, v6, Landroidx/compose/ui/node/DelegatingNode;->delegate:Landroidx/compose/ui/Modifier$Node;

    const/4 v8, 0x0

    :goto_1e
    if-eqz v6, :cond_37

    iget v9, v6, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/lit16 v9, v9, 0x2000

    if-eqz v9, :cond_36

    const/4 v3, 0x1

    add-int/2addr v8, v3

    if-ne v8, v3, :cond_33

    move-object v0, v6

    goto :goto_1f

    :cond_33
    if-nez v2, :cond_34

    new-instance v2, Landroidx/compose/runtime/collection/MutableVector;

    const/16 v9, 0x10

    new-array v10, v9, [Landroidx/compose/ui/Modifier$Node;

    const/4 v9, 0x0

    invoke-direct {v2, v10, v9}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    :cond_34
    if-eqz v0, :cond_35

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    move-object v0, v1

    :cond_35
    invoke-virtual {v2, v6}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    :cond_36
    :goto_1f
    iget-object v6, v6, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    goto :goto_1e

    :cond_37
    const/4 v3, 0x1

    if-ne v8, v3, :cond_38

    goto :goto_1d

    :cond_38
    invoke-static {v2}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    goto :goto_1d

    :cond_39
    invoke-interface/range {p2 .. p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3a

    const/4 v0, 0x1

    return v0

    :cond_3a
    const/4 v0, 0x1

    iget-object v2, v5, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    move-object v5, v1

    :goto_20
    if-eqz v2, :cond_43

    instance-of v3, v2, Landroidx/compose/ui/input/key/KeyInputModifierNode;

    if-eqz v3, :cond_3c

    check-cast v2, Landroidx/compose/ui/input/key/KeyInputModifierNode;

    invoke-interface {v2, v7}, Landroidx/compose/ui/input/key/KeyInputModifierNode;->onKeyEvent-ZmokQxo(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_3b

    return v0

    :cond_3b
    const/16 v8, 0x10

    goto :goto_24

    :cond_3c
    iget v0, v2, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_3b

    instance-of v0, v2, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v0, :cond_3b

    move-object v0, v2

    check-cast v0, Landroidx/compose/ui/node/DelegatingNode;

    iget-object v0, v0, Landroidx/compose/ui/node/DelegatingNode;->delegate:Landroidx/compose/ui/Modifier$Node;

    move-object v6, v5

    move-object v5, v2

    const/4 v2, 0x0

    :goto_21
    if-eqz v0, :cond_41

    iget v8, v0, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/lit16 v8, v8, 0x2000

    if-eqz v8, :cond_3d

    const/4 v3, 0x1

    add-int/2addr v2, v3

    if-ne v2, v3, :cond_3e

    move-object v5, v0

    :cond_3d
    const/16 v8, 0x10

    goto :goto_23

    :cond_3e
    if-nez v6, :cond_3f

    new-instance v6, Landroidx/compose/runtime/collection/MutableVector;

    const/16 v8, 0x10

    new-array v9, v8, [Landroidx/compose/ui/Modifier$Node;

    const/4 v10, 0x0

    invoke-direct {v6, v9, v10}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    goto :goto_22

    :cond_3f
    const/16 v8, 0x10

    :goto_22
    if-eqz v5, :cond_40

    invoke-virtual {v6, v5}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    move-object v5, v1

    :cond_40
    invoke-virtual {v6, v0}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    :goto_23
    iget-object v0, v0, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    goto :goto_21

    :cond_41
    const/4 v0, 0x1

    const/16 v8, 0x10

    if-ne v2, v0, :cond_42

    move-object v2, v5

    move-object v5, v6

    goto :goto_20

    :cond_42
    move-object v5, v6

    :goto_24
    invoke-static {v5}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v2

    const/4 v0, 0x1

    goto :goto_20

    :cond_43
    if-eqz v4, :cond_45

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_25
    if-ge v1, v0, :cond_45

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/input/key/KeyInputModifierNode;

    invoke-interface {v2, v7}, Landroidx/compose/ui/input/key/KeyInputModifierNode;->onKeyEvent-ZmokQxo(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_44

    const/4 v2, 0x1

    return v2

    :cond_44
    const/4 v2, 0x1

    add-int/2addr v1, v2

    goto :goto_25

    :cond_45
    const/4 v0, 0x0

    goto :goto_26

    :cond_46
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_26
    return v0

    :cond_47
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Dispatching key event while focus system is invalidated."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final focusSearch-ULY8qGw(ILandroidx/compose/ui/geometry/Rect;Lkotlin/jvm/functions/Function1;)Ljava/lang/Boolean;
    .locals 9

    iget-object v0, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->rootFocusNode:Landroidx/compose/ui/focus/FocusTargetNode;

    invoke-static {v0}, Landroidx/compose/ui/focus/FocusTraversalKt;->findActiveFocusNode(Landroidx/compose/ui/focus/FocusTargetNode;)Landroidx/compose/ui/focus/FocusTargetNode;

    move-result-object v1

    const/4 v2, 0x2

    iget-object v3, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->onLayoutDirection:Lkotlin/jvm/functions/Function0;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_10

    invoke-interface {v3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/ui/unit/LayoutDirection;

    invoke-virtual {v1}, Landroidx/compose/ui/focus/FocusTargetNode;->fetchFocusProperties$ui_release()Landroidx/compose/ui/focus/FocusPropertiesImpl;

    move-result-object v7

    sget-object v8, Landroidx/compose/ui/focus/FocusDirection;->Companion:Landroidx/compose/ui/focus/FocusDirection$Companion;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v8, Landroidx/compose/ui/focus/FocusDirection;->Next:I

    invoke-static {p1, v8}, Landroidx/compose/ui/focus/FocusDirection;->equals-impl0(II)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v6, v7, Landroidx/compose/ui/focus/FocusPropertiesImpl;->next:Landroidx/compose/ui/focus/FocusRequester;

    goto/16 :goto_2

    :cond_0
    sget v8, Landroidx/compose/ui/focus/FocusDirection;->Previous:I

    invoke-static {p1, v8}, Landroidx/compose/ui/focus/FocusDirection;->equals-impl0(II)Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v6, v7, Landroidx/compose/ui/focus/FocusPropertiesImpl;->previous:Landroidx/compose/ui/focus/FocusRequester;

    goto/16 :goto_2

    :cond_1
    sget v8, Landroidx/compose/ui/focus/FocusDirection;->Up:I

    invoke-static {p1, v8}, Landroidx/compose/ui/focus/FocusDirection;->equals-impl0(II)Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v6, v7, Landroidx/compose/ui/focus/FocusPropertiesImpl;->up:Landroidx/compose/ui/focus/FocusRequester;

    goto/16 :goto_2

    :cond_2
    sget v8, Landroidx/compose/ui/focus/FocusDirection;->Down:I

    invoke-static {p1, v8}, Landroidx/compose/ui/focus/FocusDirection;->equals-impl0(II)Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v6, v7, Landroidx/compose/ui/focus/FocusPropertiesImpl;->down:Landroidx/compose/ui/focus/FocusRequester;

    goto/16 :goto_2

    :cond_3
    sget v8, Landroidx/compose/ui/focus/FocusDirection;->Left:I

    invoke-static {p1, v8}, Landroidx/compose/ui/focus/FocusDirection;->equals-impl0(II)Z

    move-result v8

    if-eqz v8, :cond_7

    sget-object v8, Landroidx/compose/ui/focus/FocusTraversalKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v6, v8, v6

    if-eq v6, v4, :cond_5

    if-ne v6, v2, :cond_4

    iget-object v6, v7, Landroidx/compose/ui/focus/FocusPropertiesImpl;->end:Landroidx/compose/ui/focus/FocusRequester;

    goto :goto_0

    :cond_4
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_5
    iget-object v6, v7, Landroidx/compose/ui/focus/FocusPropertiesImpl;->start:Landroidx/compose/ui/focus/FocusRequester;

    :goto_0
    sget-object v8, Landroidx/compose/ui/focus/FocusRequester;->Companion:Landroidx/compose/ui/focus/FocusRequester$Companion;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v8, Landroidx/compose/ui/focus/FocusRequester;->Default:Landroidx/compose/ui/focus/FocusRequester;

    if-ne v6, v8, :cond_6

    move-object v6, v5

    :cond_6
    if-nez v6, :cond_d

    iget-object v6, v7, Landroidx/compose/ui/focus/FocusPropertiesImpl;->left:Landroidx/compose/ui/focus/FocusRequester;

    goto :goto_2

    :cond_7
    sget v8, Landroidx/compose/ui/focus/FocusDirection;->Right:I

    invoke-static {p1, v8}, Landroidx/compose/ui/focus/FocusDirection;->equals-impl0(II)Z

    move-result v8

    if-eqz v8, :cond_b

    sget-object v8, Landroidx/compose/ui/focus/FocusTraversalKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v6, v8, v6

    if-eq v6, v4, :cond_9

    if-ne v6, v2, :cond_8

    iget-object v6, v7, Landroidx/compose/ui/focus/FocusPropertiesImpl;->start:Landroidx/compose/ui/focus/FocusRequester;

    goto :goto_1

    :cond_8
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_9
    iget-object v6, v7, Landroidx/compose/ui/focus/FocusPropertiesImpl;->end:Landroidx/compose/ui/focus/FocusRequester;

    :goto_1
    sget-object v8, Landroidx/compose/ui/focus/FocusRequester;->Companion:Landroidx/compose/ui/focus/FocusRequester$Companion;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v8, Landroidx/compose/ui/focus/FocusRequester;->Default:Landroidx/compose/ui/focus/FocusRequester;

    if-ne v6, v8, :cond_a

    move-object v6, v5

    :cond_a
    if-nez v6, :cond_d

    iget-object v6, v7, Landroidx/compose/ui/focus/FocusPropertiesImpl;->right:Landroidx/compose/ui/focus/FocusRequester;

    goto :goto_2

    :cond_b
    sget v6, Landroidx/compose/ui/focus/FocusDirection;->Enter:I

    invoke-static {p1, v6}, Landroidx/compose/ui/focus/FocusDirection;->equals-impl0(II)Z

    move-result v6

    if-eqz v6, :cond_c

    iget-object v6, v7, Landroidx/compose/ui/focus/FocusPropertiesImpl;->enter:Lkotlin/jvm/functions/Function1;

    invoke-static {p1}, Landroidx/compose/ui/focus/FocusDirection;->box-impl(I)Landroidx/compose/ui/focus/FocusDirection;

    move-result-object v7

    invoke-interface {v6, v7}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/ui/focus/FocusRequester;

    goto :goto_2

    :cond_c
    sget v6, Landroidx/compose/ui/focus/FocusDirection;->Exit:I

    invoke-static {p1, v6}, Landroidx/compose/ui/focus/FocusDirection;->equals-impl0(II)Z

    move-result v6

    if-eqz v6, :cond_f

    iget-object v6, v7, Landroidx/compose/ui/focus/FocusPropertiesImpl;->exit:Lkotlin/jvm/functions/Function1;

    invoke-static {p1}, Landroidx/compose/ui/focus/FocusDirection;->box-impl(I)Landroidx/compose/ui/focus/FocusDirection;

    move-result-object v7

    invoke-interface {v6, v7}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/ui/focus/FocusRequester;

    :cond_d
    :goto_2
    sget-object v7, Landroidx/compose/ui/focus/FocusRequester;->Companion:Landroidx/compose/ui/focus/FocusRequester$Companion;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Landroidx/compose/ui/focus/FocusRequester;->Cancel:Landroidx/compose/ui/focus/FocusRequester;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    return-object v5

    :cond_e
    sget-object v7, Landroidx/compose/ui/focus/FocusRequester;->Default:Landroidx/compose/ui/focus/FocusRequester;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_11

    invoke-virtual {v6, p3}, Landroidx/compose/ui/focus/FocusRequester;->findFocusTargetNode$ui_release(Lkotlin/jvm/functions/Function1;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_f
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "invalid FocusDirection"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_10
    move-object v1, v5

    :cond_11
    invoke-interface {v3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/unit/LayoutDirection;

    new-instance v6, Landroidx/compose/ui/focus/FocusOwnerImpl$focusSearch$1;

    invoke-direct {v6, v1, p0, p3}, Landroidx/compose/ui/focus/FocusOwnerImpl$focusSearch$1;-><init>(Landroidx/compose/ui/focus/FocusTargetNode;Landroidx/compose/ui/focus/FocusOwnerImpl;Lkotlin/jvm/functions/Function1;)V

    sget-object p0, Landroidx/compose/ui/focus/FocusDirection;->Companion:Landroidx/compose/ui/focus/FocusDirection$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget p0, Landroidx/compose/ui/focus/FocusDirection;->Next:I

    invoke-static {p1, p0}, Landroidx/compose/ui/focus/FocusDirection;->equals-impl0(II)Z

    move-result p3

    if-eqz p3, :cond_12

    move p3, v4

    goto :goto_3

    :cond_12
    sget p3, Landroidx/compose/ui/focus/FocusDirection;->Previous:I

    invoke-static {p1, p3}, Landroidx/compose/ui/focus/FocusDirection;->equals-impl0(II)Z

    move-result p3

    :goto_3
    if-eqz p3, :cond_15

    invoke-static {p1, p0}, Landroidx/compose/ui/focus/FocusDirection;->equals-impl0(II)Z

    move-result p0

    if-eqz p0, :cond_13

    invoke-static {v0, v6}, Landroidx/compose/ui/focus/OneDimensionalFocusSearchKt;->forwardFocusSearch(Landroidx/compose/ui/focus/FocusTargetNode;Lkotlin/jvm/functions/Function1;)Z

    move-result p0

    goto :goto_4

    :cond_13
    sget p0, Landroidx/compose/ui/focus/FocusDirection;->Previous:I

    invoke-static {p1, p0}, Landroidx/compose/ui/focus/FocusDirection;->equals-impl0(II)Z

    move-result p0

    if-eqz p0, :cond_14

    invoke-static {v0, v6}, Landroidx/compose/ui/focus/OneDimensionalFocusSearchKt;->backwardFocusSearch(Landroidx/compose/ui/focus/FocusTargetNode;Lkotlin/jvm/functions/Function1;)Z

    move-result p0

    :goto_4
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    goto/16 :goto_10

    :cond_14
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "This function should only be used for 1-D focus search"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_15
    sget p0, Landroidx/compose/ui/focus/FocusDirection;->Left:I

    invoke-static {p1, p0}, Landroidx/compose/ui/focus/FocusDirection;->equals-impl0(II)Z

    move-result p3

    if-eqz p3, :cond_16

    move p3, v4

    goto :goto_5

    :cond_16
    sget p3, Landroidx/compose/ui/focus/FocusDirection;->Right:I

    invoke-static {p1, p3}, Landroidx/compose/ui/focus/FocusDirection;->equals-impl0(II)Z

    move-result p3

    :goto_5
    if-eqz p3, :cond_17

    move p3, v4

    goto :goto_6

    :cond_17
    sget p3, Landroidx/compose/ui/focus/FocusDirection;->Up:I

    invoke-static {p1, p3}, Landroidx/compose/ui/focus/FocusDirection;->equals-impl0(II)Z

    move-result p3

    :goto_6
    if-eqz p3, :cond_18

    move p3, v4

    goto :goto_7

    :cond_18
    sget p3, Landroidx/compose/ui/focus/FocusDirection;->Down:I

    invoke-static {p1, p3}, Landroidx/compose/ui/focus/FocusDirection;->equals-impl0(II)Z

    move-result p3

    :goto_7
    if-eqz p3, :cond_19

    invoke-static {v0, p2, p1, v6}, Landroidx/compose/ui/focus/TwoDimensionalFocusSearchKt;->twoDimensionalFocusSearch-sMXa3k8(Landroidx/compose/ui/focus/FocusTargetNode;Landroidx/compose/ui/geometry/Rect;ILkotlin/jvm/functions/Function1;)Ljava/lang/Boolean;

    move-result-object v5

    goto/16 :goto_10

    :cond_19
    sget p3, Landroidx/compose/ui/focus/FocusDirection;->Enter:I

    invoke-static {p1, p3}, Landroidx/compose/ui/focus/FocusDirection;->equals-impl0(II)Z

    move-result p3

    if-eqz p3, :cond_1c

    sget-object p1, Landroidx/compose/ui/focus/FocusTraversalKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p1, p1, p3

    if-eq p1, v4, :cond_1b

    if-ne p1, v2, :cond_1a

    goto :goto_8

    :cond_1a
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_1b
    sget p0, Landroidx/compose/ui/focus/FocusDirection;->Right:I

    :goto_8
    invoke-static {v0}, Landroidx/compose/ui/focus/FocusTraversalKt;->findActiveFocusNode(Landroidx/compose/ui/focus/FocusTargetNode;)Landroidx/compose/ui/focus/FocusTargetNode;

    move-result-object p1

    if-eqz p1, :cond_2b

    invoke-static {p1, p2, p0, v6}, Landroidx/compose/ui/focus/TwoDimensionalFocusSearchKt;->twoDimensionalFocusSearch-sMXa3k8(Landroidx/compose/ui/focus/FocusTargetNode;Landroidx/compose/ui/geometry/Rect;ILkotlin/jvm/functions/Function1;)Ljava/lang/Boolean;

    move-result-object v5

    goto/16 :goto_10

    :cond_1c
    sget p0, Landroidx/compose/ui/focus/FocusDirection;->Exit:I

    invoke-static {p1, p0}, Landroidx/compose/ui/focus/FocusDirection;->equals-impl0(II)Z

    move-result p0

    if-eqz p0, :cond_2c

    invoke-static {v0}, Landroidx/compose/ui/focus/FocusTraversalKt;->findActiveFocusNode(Landroidx/compose/ui/focus/FocusTargetNode;)Landroidx/compose/ui/focus/FocusTargetNode;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_28

    iget-object p2, p0, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    iget-boolean p3, p2, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    if-eqz p3, :cond_27

    iget-object p2, p2, Landroidx/compose/ui/Modifier$Node;->parent:Landroidx/compose/ui/Modifier$Node;

    invoke-static {p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object p0

    :goto_9
    if-eqz p0, :cond_28

    iget-object p3, p0, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    iget-object p3, p3, Landroidx/compose/ui/node/NodeChain;->head:Landroidx/compose/ui/Modifier$Node;

    iget p3, p3, Landroidx/compose/ui/Modifier$Node;->aggregateChildKindSet:I

    and-int/lit16 p3, p3, 0x400

    if-eqz p3, :cond_25

    :goto_a
    if-eqz p2, :cond_25

    iget p3, p2, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/lit16 p3, p3, 0x400

    if-eqz p3, :cond_24

    move-object p3, p2

    move-object v1, v5

    :goto_b
    if-eqz p3, :cond_24

    instance-of v2, p3, Landroidx/compose/ui/focus/FocusTargetNode;

    if-eqz v2, :cond_1d

    check-cast p3, Landroidx/compose/ui/focus/FocusTargetNode;

    invoke-virtual {p3}, Landroidx/compose/ui/focus/FocusTargetNode;->fetchFocusProperties$ui_release()Landroidx/compose/ui/focus/FocusPropertiesImpl;

    move-result-object v2

    iget-boolean v2, v2, Landroidx/compose/ui/focus/FocusPropertiesImpl;->canFocus:Z

    if-eqz v2, :cond_23

    move-object v5, p3

    goto :goto_e

    :cond_1d
    iget v2, p3, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/lit16 v2, v2, 0x400

    if-eqz v2, :cond_23

    instance-of v2, p3, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v2, :cond_23

    move-object v2, p3

    check-cast v2, Landroidx/compose/ui/node/DelegatingNode;

    iget-object v2, v2, Landroidx/compose/ui/node/DelegatingNode;->delegate:Landroidx/compose/ui/Modifier$Node;

    move v3, p1

    :goto_c
    if-eqz v2, :cond_22

    iget v7, v2, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/lit16 v7, v7, 0x400

    if-eqz v7, :cond_21

    add-int/lit8 v3, v3, 0x1

    if-ne v3, v4, :cond_1e

    move-object p3, v2

    goto :goto_d

    :cond_1e
    if-nez v1, :cond_1f

    new-instance v1, Landroidx/compose/runtime/collection/MutableVector;

    const/16 v7, 0x10

    new-array v7, v7, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v1, v7, p1}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    :cond_1f
    if-eqz p3, :cond_20

    invoke-virtual {v1, p3}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    move-object p3, v5

    :cond_20
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    :cond_21
    :goto_d
    iget-object v2, v2, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    goto :goto_c

    :cond_22
    if-ne v3, v4, :cond_23

    goto :goto_b

    :cond_23
    invoke-static {v1}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object p3

    goto :goto_b

    :cond_24
    iget-object p2, p2, Landroidx/compose/ui/Modifier$Node;->parent:Landroidx/compose/ui/Modifier$Node;

    goto :goto_a

    :cond_25
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui_release()Landroidx/compose/ui/node/LayoutNode;

    move-result-object p0

    if-eqz p0, :cond_26

    iget-object p2, p0, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    if-eqz p2, :cond_26

    iget-object p2, p2, Landroidx/compose/ui/node/NodeChain;->tail:Landroidx/compose/ui/node/TailModifierNode;

    goto :goto_9

    :cond_26
    move-object p2, v5

    goto :goto_9

    :cond_27
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo p1, "visitAncestors called on an unattached node"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_28
    :goto_e
    if-eqz v5, :cond_2a

    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_29

    goto :goto_f

    :cond_29
    invoke-virtual {v6, v5}, Landroidx/compose/ui/focus/FocusOwnerImpl$focusSearch$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    :cond_2a
    :goto_f
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    :cond_2b
    :goto_10
    return-object v5

    :cond_2c
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Focus search invoked with invalid FocusDirection "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroidx/compose/ui/focus/FocusDirection;->toString-impl(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
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
    sget-object v0, Landroidx/compose/ui/focus/FocusDirection;->Companion:Landroidx/compose/ui/focus/FocusDirection$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v0, Landroidx/compose/ui/focus/FocusDirection;->Next:I

    invoke-static {p1, v0}, Landroidx/compose/ui/focus/FocusDirection;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v4

    goto :goto_0

    :cond_2
    sget v0, Landroidx/compose/ui/focus/FocusDirection;->Previous:I

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
    invoke-static {p1}, Landroidx/compose/ui/focus/FocusDirection;->box-impl(I)Landroidx/compose/ui/focus/FocusDirection;

    move-result-object p1

    iget-object p0, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->onMoveFocusInterop:Lkotlin/jvm/functions/Function1;

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_6
    :goto_2
    return v2
.end method
