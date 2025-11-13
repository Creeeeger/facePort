.class public final synthetic Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/compose/foundation/text/selection/SelectionAdjustment;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final adjust(Landroidx/compose/foundation/text/selection/SingleSelectionLayout;)Landroidx/compose/foundation/text/selection/Selection;
    .locals 9

    iget p0, p0, Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    iget-object p0, p1, Landroidx/compose/foundation/text/selection/SingleSelectionLayout;->previousSelection:Landroidx/compose/foundation/text/selection/Selection;

    if-nez p0, :cond_0

    sget-object p0, Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion;->INSTANCE$1:Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion;

    invoke-static {p1, p0}, Landroidx/compose/foundation/text/selection/SelectionAdjustmentKt;->access$adjustToBoundaries(Landroidx/compose/foundation/text/selection/SingleSelectionLayout;Landroidx/compose/foundation/text/selection/BoundaryFunction;)Landroidx/compose/foundation/text/selection/Selection;

    move-result-object p0

    goto/16 :goto_7

    :cond_0
    iget-object v0, p1, Landroidx/compose/foundation/text/selection/SingleSelectionLayout;->info:Landroidx/compose/foundation/text/selection/SelectableInfo;

    iget-boolean v1, p1, Landroidx/compose/foundation/text/selection/SingleSelectionLayout;->isStartHandle:Z

    iget-object v2, p0, Landroidx/compose/foundation/text/selection/Selection;->end:Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    iget-object v3, p0, Landroidx/compose/foundation/text/selection/Selection;->start:Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    if-eqz v1, :cond_1

    invoke-static {p1, v0, v3}, Landroidx/compose/foundation/text/selection/SelectionAdjustmentKt;->access$updateSelectionBoundary(Landroidx/compose/foundation/text/selection/SingleSelectionLayout;Landroidx/compose/foundation/text/selection/SelectableInfo;Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;)Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    move-result-object v0

    move-object v1, v2

    move-object v2, v3

    move-object v3, v0

    goto :goto_0

    :cond_1
    invoke-static {p1, v0, v2}, Landroidx/compose/foundation/text/selection/SelectionAdjustmentKt;->access$updateSelectionBoundary(Landroidx/compose/foundation/text/selection/SingleSelectionLayout;Landroidx/compose/foundation/text/selection/SelectableInfo;Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;)Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    move-result-object v0

    move-object v1, v0

    :goto_0
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_7

    :cond_2
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/SingleSelectionLayout;->getCrossStatus()Landroidx/compose/foundation/text/selection/CrossStatus;

    move-result-object p0

    sget-object v0, Landroidx/compose/foundation/text/selection/CrossStatus;->CROSSED:Landroidx/compose/foundation/text/selection/CrossStatus;

    if-eq p0, v0, :cond_4

    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/SingleSelectionLayout;->getCrossStatus()Landroidx/compose/foundation/text/selection/CrossStatus;

    move-result-object p0

    sget-object v0, Landroidx/compose/foundation/text/selection/CrossStatus;->COLLAPSED:Landroidx/compose/foundation/text/selection/CrossStatus;

    if-ne p0, v0, :cond_3

    iget p0, v3, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->offset:I

    iget v0, v1, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->offset:I

    if-le p0, v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 p0, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 p0, 0x1

    :goto_2
    new-instance v0, Landroidx/compose/foundation/text/selection/Selection;

    invoke-direct {v0, v3, v1, p0}, Landroidx/compose/foundation/text/selection/Selection;-><init>(Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;Z)V

    const/4 p0, 0x1

    iget-object v1, p1, Landroidx/compose/foundation/text/selection/SingleSelectionLayout;->info:Landroidx/compose/foundation/text/selection/SelectableInfo;

    iget-object v2, v0, Landroidx/compose/foundation/text/selection/Selection;->start:Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    iget-wide v3, v2, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->selectableId:J

    iget-object v5, v0, Landroidx/compose/foundation/text/selection/Selection;->end:Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    iget-wide v6, v5, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->selectableId:J

    cmp-long v3, v3, v6

    if-nez v3, :cond_5

    iget v2, v2, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->offset:I

    iget v3, v5, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->offset:I

    if-ne v2, v3, :cond_9

    goto :goto_5

    :cond_5
    iget-boolean v3, v0, Landroidx/compose/foundation/text/selection/Selection;->handlesCrossed:Z

    if-eqz v3, :cond_6

    move-object v4, v2

    goto :goto_3

    :cond_6
    move-object v4, v5

    :goto_3
    iget v4, v4, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->offset:I

    if-eqz v4, :cond_7

    goto :goto_4

    :cond_7
    if-eqz v3, :cond_8

    move-object v2, v5

    :cond_8
    iget-object v3, v1, Landroidx/compose/foundation/text/selection/SelectableInfo;->textLayoutResult:Landroidx/compose/ui/text/TextLayoutResult;

    iget-object v3, v3, Landroidx/compose/ui/text/TextLayoutResult;->layoutInput:Landroidx/compose/ui/text/TextLayoutInput;

    iget-object v3, v3, Landroidx/compose/ui/text/TextLayoutInput;->text:Landroidx/compose/ui/text/AnnotatedString;

    iget-object v3, v3, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget v2, v2, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->offset:I

    if-eq v3, v2, :cond_a

    :cond_9
    :goto_4
    move-object p0, v0

    goto/16 :goto_7

    :cond_a
    new-instance v2, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    iput-boolean p0, v2, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    new-instance v2, Landroidx/compose/foundation/text/selection/SelectionLayoutKt$isCollapsed$1;

    :goto_5
    iget-object v2, v1, Landroidx/compose/foundation/text/selection/SelectableInfo;->textLayoutResult:Landroidx/compose/ui/text/TextLayoutResult;

    iget-object v2, v2, Landroidx/compose/ui/text/TextLayoutResult;->layoutInput:Landroidx/compose/ui/text/TextLayoutInput;

    iget-object v2, v2, Landroidx/compose/ui/text/TextLayoutInput;->text:Landroidx/compose/ui/text/AnnotatedString;

    iget-object v2, v2, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    iget-object v3, p1, Landroidx/compose/foundation/text/selection/SingleSelectionLayout;->previousSelection:Landroidx/compose/foundation/text/selection/Selection;

    if-eqz v3, :cond_9

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_b

    goto :goto_4

    :cond_b
    iget-object v2, v1, Landroidx/compose/foundation/text/selection/SelectableInfo;->textLayoutResult:Landroidx/compose/ui/text/TextLayoutResult;

    iget-object v2, v2, Landroidx/compose/ui/text/TextLayoutResult;->layoutInput:Landroidx/compose/ui/text/TextLayoutInput;

    iget-object v2, v2, Landroidx/compose/ui/text/TextLayoutInput;->text:Landroidx/compose/ui/text/AnnotatedString;

    iget-object v2, v2, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-boolean p1, p1, Landroidx/compose/foundation/text/selection/SingleSelectionLayout;->isStartHandle:Z

    iget v8, v1, Landroidx/compose/foundation/text/selection/SelectableInfo;->rawStartHandleOffset:I

    if-nez v8, :cond_d

    invoke-static {}, Ljava/text/BreakIterator;->getCharacterInstance()Ljava/text/BreakIterator;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/text/BreakIterator;->setText(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/text/BreakIterator;->following(I)I

    move-result v2

    if-eqz p1, :cond_c

    iget-object p1, v0, Landroidx/compose/foundation/text/selection/Selection;->start:Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    invoke-static {p1, v1, v2}, Landroidx/compose/foundation/text/selection/SelectionAdjustmentKt;->changeOffset(Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;Landroidx/compose/foundation/text/selection/SelectableInfo;I)Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    move-result-object p1

    invoke-static {v0, p1, v7, p0, v5}, Landroidx/compose/foundation/text/selection/Selection;->copy$default(Landroidx/compose/foundation/text/selection/Selection;Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;ZI)Landroidx/compose/foundation/text/selection/Selection;

    move-result-object p0

    goto :goto_7

    :cond_c
    iget-object p1, v0, Landroidx/compose/foundation/text/selection/Selection;->end:Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    invoke-static {p1, v1, v2}, Landroidx/compose/foundation/text/selection/SelectionAdjustmentKt;->changeOffset(Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;Landroidx/compose/foundation/text/selection/SelectableInfo;I)Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    move-result-object p1

    invoke-static {v0, v7, p1, v6, p0}, Landroidx/compose/foundation/text/selection/Selection;->copy$default(Landroidx/compose/foundation/text/selection/Selection;Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;ZI)Landroidx/compose/foundation/text/selection/Selection;

    move-result-object p0

    goto :goto_7

    :cond_d
    if-ne v8, v4, :cond_f

    invoke-static {}, Ljava/text/BreakIterator;->getCharacterInstance()Ljava/text/BreakIterator;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/text/BreakIterator;->setText(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/text/BreakIterator;->preceding(I)I

    move-result v2

    if-eqz p1, :cond_e

    iget-object p0, v0, Landroidx/compose/foundation/text/selection/Selection;->start:Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    invoke-static {p0, v1, v2}, Landroidx/compose/foundation/text/selection/SelectionAdjustmentKt;->changeOffset(Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;Landroidx/compose/foundation/text/selection/SelectableInfo;I)Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    move-result-object p0

    invoke-static {v0, p0, v7, v6, v5}, Landroidx/compose/foundation/text/selection/Selection;->copy$default(Landroidx/compose/foundation/text/selection/Selection;Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;ZI)Landroidx/compose/foundation/text/selection/Selection;

    move-result-object p0

    goto :goto_7

    :cond_e
    iget-object p1, v0, Landroidx/compose/foundation/text/selection/Selection;->end:Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    invoke-static {p1, v1, v2}, Landroidx/compose/foundation/text/selection/SelectionAdjustmentKt;->changeOffset(Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;Landroidx/compose/foundation/text/selection/SelectableInfo;I)Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    move-result-object p1

    invoke-static {v0, v7, p1, p0, p0}, Landroidx/compose/foundation/text/selection/Selection;->copy$default(Landroidx/compose/foundation/text/selection/Selection;Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;ZI)Landroidx/compose/foundation/text/selection/Selection;

    move-result-object p0

    goto :goto_7

    :cond_f
    iget-boolean v3, v3, Landroidx/compose/foundation/text/selection/Selection;->handlesCrossed:Z

    if-ne v3, p0, :cond_10

    move v6, p0

    :cond_10
    xor-int v3, p1, v6

    if-eqz v3, :cond_11

    invoke-static {}, Ljava/text/BreakIterator;->getCharacterInstance()Ljava/text/BreakIterator;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/text/BreakIterator;->setText(Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Ljava/text/BreakIterator;->preceding(I)I

    move-result v2

    goto :goto_6

    :cond_11
    invoke-static {}, Ljava/text/BreakIterator;->getCharacterInstance()Ljava/text/BreakIterator;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/text/BreakIterator;->setText(Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Ljava/text/BreakIterator;->following(I)I

    move-result v2

    :goto_6
    if-eqz p1, :cond_12

    iget-object p0, v0, Landroidx/compose/foundation/text/selection/Selection;->start:Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    invoke-static {p0, v1, v2}, Landroidx/compose/foundation/text/selection/SelectionAdjustmentKt;->changeOffset(Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;Landroidx/compose/foundation/text/selection/SelectableInfo;I)Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    move-result-object p0

    invoke-static {v0, p0, v7, v6, v5}, Landroidx/compose/foundation/text/selection/Selection;->copy$default(Landroidx/compose/foundation/text/selection/Selection;Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;ZI)Landroidx/compose/foundation/text/selection/Selection;

    move-result-object p0

    goto :goto_7

    :cond_12
    iget-object p1, v0, Landroidx/compose/foundation/text/selection/Selection;->end:Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    invoke-static {p1, v1, v2}, Landroidx/compose/foundation/text/selection/SelectionAdjustmentKt;->changeOffset(Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;Landroidx/compose/foundation/text/selection/SelectableInfo;I)Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    move-result-object p1

    invoke-static {v0, v7, p1, v6, p0}, Landroidx/compose/foundation/text/selection/Selection;->copy$default(Landroidx/compose/foundation/text/selection/Selection;Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;ZI)Landroidx/compose/foundation/text/selection/Selection;

    move-result-object p0

    :goto_7
    return-object p0

    :pswitch_0
    sget-object p0, Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion;->INSTANCE:Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion;

    invoke-static {p1, p0}, Landroidx/compose/foundation/text/selection/SelectionAdjustmentKt;->access$adjustToBoundaries(Landroidx/compose/foundation/text/selection/SingleSelectionLayout;Landroidx/compose/foundation/text/selection/BoundaryFunction;)Landroidx/compose/foundation/text/selection/Selection;

    move-result-object p0

    return-object p0

    :pswitch_1
    sget-object p0, Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion;->INSTANCE$1:Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion;

    invoke-static {p1, p0}, Landroidx/compose/foundation/text/selection/SelectionAdjustmentKt;->access$adjustToBoundaries(Landroidx/compose/foundation/text/selection/SingleSelectionLayout;Landroidx/compose/foundation/text/selection/BoundaryFunction;)Landroidx/compose/foundation/text/selection/Selection;

    move-result-object p0

    return-object p0

    :pswitch_2
    new-instance p0, Landroidx/compose/foundation/text/selection/Selection;

    iget-object v0, p1, Landroidx/compose/foundation/text/selection/SingleSelectionLayout;->info:Landroidx/compose/foundation/text/selection/SelectableInfo;

    iget v1, v0, Landroidx/compose/foundation/text/selection/SelectableInfo;->rawStartHandleOffset:I

    invoke-virtual {v0, v1}, Landroidx/compose/foundation/text/selection/SelectableInfo;->anchorForOffset(I)Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    move-result-object v1

    iget v2, v0, Landroidx/compose/foundation/text/selection/SelectableInfo;->rawEndHandleOffset:I

    invoke-virtual {v0, v2}, Landroidx/compose/foundation/text/selection/SelectableInfo;->anchorForOffset(I)Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/SingleSelectionLayout;->getCrossStatus()Landroidx/compose/foundation/text/selection/CrossStatus;

    move-result-object p1

    sget-object v2, Landroidx/compose/foundation/text/selection/CrossStatus;->CROSSED:Landroidx/compose/foundation/text/selection/CrossStatus;

    if-ne p1, v2, :cond_13

    const/4 p1, 0x1

    goto :goto_8

    :cond_13
    const/4 p1, 0x0

    :goto_8
    invoke-direct {p0, v1, v0, p1}, Landroidx/compose/foundation/text/selection/Selection;-><init>(Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;Z)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
