.class public final Lcom/android/systemui/communal/ui/compose/DragAndDropTargetStateKt$dragAndDropTarget$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/compose/ui/draganddrop/DragAndDropTarget;


# instance fields
.field public final synthetic $state$delegate:Landroidx/compose/runtime/State;


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/State;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/communal/ui/compose/DragAndDropTargetStateKt$dragAndDropTarget$2;->$state$delegate:Landroidx/compose/runtime/State;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDrop(Landroidx/compose/ui/draganddrop/DragAndDropEvent;)Z
    .locals 6

    iget-object p0, p0, Lcom/android/systemui/communal/ui/compose/DragAndDropTargetStateKt$dragAndDropTarget$2;->$state$delegate:Landroidx/compose/runtime/State;

    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/communal/ui/compose/DragAndDropTargetState;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/communal/ui/compose/DragAndDropTargetState;->autoScrollSpeed:Landroidx/compose/runtime/MutableState;

    invoke-interface {v1, v0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/android/systemui/communal/ui/compose/DragAndDropTargetState;->isOnRemoveButton:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/communal/ui/compose/DragAndDropTargetState;->placeHolderIndex:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iget-object p1, p1, Landroidx/compose/ui/draganddrop/DragAndDropEvent;->dragEvent:Landroid/view/DragEvent;

    invoke-virtual {p1}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move-object p1, v3

    :goto_0
    if-eqz p1, :cond_2

    invoke-virtual {p1, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_2

    sget-object v2, Lcom/android/systemui/communal/util/WidgetPickerIntentUtils;->INSTANCE:Lcom/android/systemui/communal/util/WidgetPickerIntentUtils;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/systemui/communal/util/WidgetPickerIntentUtils$WidgetExtra;

    const-string v2, "android.intent.extra.COMPONENT_NAME"

    const-class v4, Landroid/content/ComponentName;

    invoke-virtual {p1, v2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    const-string v4, "android.intent.extra.USER"

    const-class v5, Landroid/os/UserHandle;

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserHandle;

    invoke-direct {v3, v2, p1}, Lcom/android/systemui/communal/util/WidgetPickerIntentUtils$WidgetExtra;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    :cond_2
    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    iget-object p1, v3, Lcom/android/systemui/communal/util/WidgetPickerIntentUtils$WidgetExtra;->componentName:Landroid/content/ComponentName;

    iget-object v2, v3, Lcom/android/systemui/communal/util/WidgetPickerIntentUtils$WidgetExtra;->user:Landroid/os/UserHandle;

    if-eqz p1, :cond_4

    if-eqz v2, :cond_4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/communal/ui/compose/DragAndDropTargetState;->contentListState:Lcom/android/systemui/communal/ui/compose/ContentListState;

    invoke-virtual {p0, p1, v2, v0}, Lcom/android/systemui/communal/ui/compose/ContentListState;->onSaveList(Landroid/content/ComponentName;Landroid/os/UserHandle;Ljava/lang/Integer;)V

    const/4 v1, 0x1

    :cond_4
    :goto_1
    return v1
.end method

.method public final onEnded(Landroidx/compose/ui/draganddrop/DragAndDropEvent;)V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/communal/ui/compose/DragAndDropTargetStateKt$dragAndDropTarget$2;->$state$delegate:Landroidx/compose/runtime/State;

    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/communal/ui/compose/DragAndDropTargetState;

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/communal/ui/compose/DragAndDropTargetState;->autoScrollSpeed:Landroidx/compose/runtime/MutableState;

    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/communal/ui/compose/DragAndDropTargetState;->placeHolderIndex:Ljava/lang/Integer;

    iget-object p1, p0, Lcom/android/systemui/communal/ui/compose/DragAndDropTargetState;->contentListState:Lcom/android/systemui/communal/ui/compose/ContentListState;

    iget-object p1, p1, Lcom/android/systemui/communal/ui/compose/ContentListState;->list:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    iget-object v0, p0, Lcom/android/systemui/communal/ui/compose/DragAndDropTargetState;->placeHolder:Lcom/android/systemui/communal/domain/model/CommunalContentModel$WidgetPlaceholder;

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->remove(Ljava/lang/Object;)Z

    sget-object p1, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/communal/ui/compose/DragAndDropTargetState;->updateDragPositionForRemove:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/communal/ui/compose/DragAndDropTargetState;->isOnRemoveButton:Z

    return-void
.end method

.method public final onMoved(Landroidx/compose/ui/draganddrop/DragAndDropEvent;)V
    .locals 15

    move-object v0, p0

    iget-object v0, v0, Lcom/android/systemui/communal/ui/compose/DragAndDropTargetStateKt$dragAndDropTarget$2;->$state$delegate:Landroidx/compose/runtime/State;

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/communal/ui/compose/DragAndDropTargetState;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v1, p1

    iget-object v1, v1, Landroidx/compose/ui/draganddrop/DragAndDropEvent;->dragEvent:Landroid/view/DragEvent;

    invoke-virtual {v1}, Landroid/view/DragEvent;->getX()F

    move-result v2

    invoke-virtual {v1}, Landroid/view/DragEvent;->getY()F

    move-result v3

    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v2

    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    move-result-object v2

    iget-object v3, v0, Lcom/android/systemui/communal/ui/compose/DragAndDropTargetState;->updateDragPositionForRemove:Lkotlin/jvm/functions/Function1;

    invoke-interface {v3, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/systemui/communal/ui/compose/DragAndDropTargetState;->isOnRemoveButton:Z

    if-nez v2, :cond_a

    iget-object v2, v0, Lcom/android/systemui/communal/ui/compose/DragAndDropTargetState;->state:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->getLayoutInfo()Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;

    move-result-object v3

    iget-object v3, v3, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->visibleItemsInfo:Ljava/util/List;

    check-cast v3, Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-wide v5, 0xffffffffL

    const/16 v7, 0x20

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v9, v4

    check-cast v9, Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;

    check-cast v9, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    iget-wide v10, v9, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->offset:J

    sget-object v12, Landroidx/compose/ui/unit/IntOffset;->Companion:Landroidx/compose/ui/unit/IntOffset$Companion;

    shr-long v12, v10, v7

    long-to-int v12, v12

    sget-object v13, Landroidx/compose/ui/unit/IntSize;->Companion:Landroidx/compose/ui/unit/IntSize$Companion;

    iget-wide v13, v9, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->size:J

    move-object/from16 p1, v9

    shr-long v8, v13, v7

    long-to-int v8, v8

    add-int v9, v12, v8

    and-long/2addr v10, v5

    long-to-int v10, v10

    and-long/2addr v13, v5

    long-to-int v11, v13

    add-int/2addr v10, v11

    invoke-static {v9, v10}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide v9

    shr-long/2addr v9, v7

    long-to-int v9, v9

    invoke-virtual {v1}, Landroid/view/DragEvent;->getX()F

    move-result v10

    float-to-int v10, v10

    if-gt v12, v10, :cond_0

    if-gt v10, v9, :cond_0

    move-object/from16 v9, p1

    iget-wide v9, v9, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->offset:J

    and-long v12, v9, v5

    long-to-int v12, v12

    shr-long/2addr v9, v7

    long-to-int v9, v9

    add-int/2addr v9, v8

    add-int/2addr v11, v12

    invoke-static {v9, v11}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide v8

    and-long/2addr v8, v5

    long-to-int v8, v8

    invoke-virtual {v1}, Landroid/view/DragEvent;->getY()F

    move-result v9

    float-to-int v9, v9

    if-gt v12, v9, :cond_0

    if-gt v9, v8, :cond_0

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    check-cast v4, Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;

    if-eqz v4, :cond_a

    new-instance v3, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-instance v8, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v8}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iget-object v9, v0, Lcom/android/systemui/communal/ui/compose/DragAndDropTargetState;->placeHolderIndex:Ljava/lang/Integer;

    iget-object v10, v2, Landroidx/compose/foundation/lazy/grid/LazyGridState;->scrollPosition:Landroidx/compose/foundation/lazy/grid/LazyGridScrollPosition;

    iget-object v11, v10, Landroidx/compose/foundation/lazy/grid/LazyGridScrollPosition;->index$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    invoke-virtual {v11}, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;->getIntValue()I

    move-result v11

    if-nez v9, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ne v9, v11, :cond_3

    iget-object v9, v0, Lcom/android/systemui/communal/ui/compose/DragAndDropTargetState;->placeHolderIndex:Ljava/lang/Integer;

    iput-object v9, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    iget-object v9, v10, Landroidx/compose/foundation/lazy/grid/LazyGridScrollPosition;->scrollOffset$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    invoke-virtual {v9}, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;->getIntValue()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iput-object v9, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    :cond_3
    :goto_1
    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->getLayoutInfo()Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;

    move-result-object v9

    iget-object v9, v9, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    sget-object v10, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    if-ne v9, v10, :cond_4

    invoke-virtual {v1}, Landroid/view/DragEvent;->getX()F

    move-result v11

    goto :goto_2

    :cond_4
    invoke-virtual {v1}, Landroid/view/DragEvent;->getY()F

    move-result v11

    :goto_2
    if-ne v9, v10, :cond_5

    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->getLayoutInfo()Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;

    move-result-object v2

    iget-object v2, v2, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->$$delegate_0:Landroidx/compose/ui/layout/MeasureResult;

    invoke-interface {v2}, Landroidx/compose/ui/layout/MeasureResult;->getWidth()I

    move-result v5

    invoke-interface {v2}, Landroidx/compose/ui/layout/MeasureResult;->getHeight()I

    move-result v2

    invoke-static {v5, v2}, Landroidx/compose/ui/unit/IntSizeKt;->IntSize(II)J

    move-result-wide v5

    sget-object v2, Landroidx/compose/ui/unit/IntSize;->Companion:Landroidx/compose/ui/unit/IntSize$Companion;

    shr-long/2addr v5, v7

    long-to-int v2, v5

    int-to-float v2, v2

    invoke-virtual {v1}, Landroid/view/DragEvent;->getX()F

    move-result v1

    :goto_3
    sub-float/2addr v2, v1

    goto :goto_4

    :cond_5
    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->getLayoutInfo()Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;

    move-result-object v2

    iget-object v2, v2, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->$$delegate_0:Landroidx/compose/ui/layout/MeasureResult;

    invoke-interface {v2}, Landroidx/compose/ui/layout/MeasureResult;->getWidth()I

    move-result v7

    invoke-interface {v2}, Landroidx/compose/ui/layout/MeasureResult;->getHeight()I

    move-result v2

    invoke-static {v7, v2}, Landroidx/compose/ui/unit/IntSizeKt;->IntSize(II)J

    move-result-wide v9

    sget-object v2, Landroidx/compose/ui/unit/IntSize;->Companion:Landroidx/compose/ui/unit/IntSize$Companion;

    and-long/2addr v5, v9

    long-to-int v2, v5

    int-to-float v2, v2

    invoke-virtual {v1}, Landroid/view/DragEvent;->getY()F

    move-result v1

    goto :goto_3

    :goto_4
    iget v1, v0, Lcom/android/systemui/communal/ui/compose/DragAndDropTargetState;->autoScrollThreshold:F

    cmpg-float v5, v2, v1

    if-gez v5, :cond_6

    sub-float/2addr v1, v2

    goto :goto_5

    :cond_6
    cmpg-float v2, v11, v1

    if-gez v2, :cond_7

    sub-float/2addr v1, v11

    neg-float v1, v1

    goto :goto_5

    :cond_7
    const/4 v1, 0x0

    :goto_5
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/communal/ui/compose/DragAndDropTargetState;->autoScrollSpeed:Landroidx/compose/runtime/MutableState;

    invoke-interface {v2, v1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    check-cast v4, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    iget-object v1, v0, Lcom/android/systemui/communal/ui/compose/DragAndDropTargetState;->contentListState:Lcom/android/systemui/communal/ui/compose/ContentListState;

    iget-object v2, v1, Lcom/android/systemui/communal/ui/compose/ContentListState;->list:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    iget v4, v4, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->index:I

    invoke-virtual {v2, v4}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/communal/domain/model/CommunalContentModel;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v2, v2, Lcom/android/systemui/communal/domain/model/CommunalContentModel$WidgetContent;

    if-eqz v2, :cond_9

    iget-object v2, v0, Lcom/android/systemui/communal/ui/compose/DragAndDropTargetState;->placeHolder:Lcom/android/systemui/communal/domain/model/CommunalContentModel$WidgetPlaceholder;

    iget-object v5, v1, Lcom/android/systemui/communal/ui/compose/ContentListState;->list:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    invoke-virtual {v5, v2}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-eq v2, v4, :cond_8

    iget-object v1, v1, Lcom/android/systemui/communal/ui/compose/ContentListState;->list:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->add(ILjava/lang/Object;)V

    :cond_8
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/communal/ui/compose/DragAndDropTargetState;->placeHolderIndex:Ljava/lang/Integer;

    :cond_9
    iget-object v1, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-eqz v1, :cond_a

    iget-object v1, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-eqz v1, :cond_a

    new-instance v1, Lcom/android/systemui/communal/ui/compose/DragAndDropTargetState$onMoved$1$1;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v3, v8, v2}, Lcom/android/systemui/communal/ui/compose/DragAndDropTargetState$onMoved$1$1;-><init>(Lcom/android/systemui/communal/ui/compose/DragAndDropTargetState;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    iget-object v0, v0, Lcom/android/systemui/communal/ui/compose/DragAndDropTargetState;->scope:Lkotlinx/coroutines/CoroutineScope;

    const/4 v3, 0x3

    invoke-static {v0, v2, v2, v1, v3}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    :cond_a
    return-void
.end method

.method public final onStarted(Landroidx/compose/ui/draganddrop/DragAndDropEvent;)V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/communal/ui/compose/DragAndDropTargetStateKt$dragAndDropTarget$2;->$state$delegate:Landroidx/compose/runtime/State;

    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/communal/ui/compose/DragAndDropTargetState;

    iget-object p1, p0, Lcom/android/systemui/communal/ui/compose/DragAndDropTargetState;->contentListState:Lcom/android/systemui/communal/ui/compose/ContentListState;

    iget-object v0, p1, Lcom/android/systemui/communal/ui/compose/ContentListState;->list:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    iget-object v1, p0, Lcom/android/systemui/communal/ui/compose/DragAndDropTargetState;->placeHolder:Lcom/android/systemui/communal/domain/model/CommunalContentModel$WidgetPlaceholder;

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->add(Ljava/lang/Object;)Z

    iget-object p1, p1, Lcom/android/systemui/communal/ui/compose/ContentListState;->list:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    invoke-virtual {p1}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/communal/ui/compose/DragAndDropTargetState;->placeHolderIndex:Ljava/lang/Integer;

    return-void
.end method
