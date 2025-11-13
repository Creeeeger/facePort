.class public final synthetic Lcom/android/systemui/complication/ComplicationLayoutEngine$ViewEntry$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/complication/ComplicationLayoutEngine$ViewEntry;

.field public final synthetic f$1:Z

.field public final synthetic f$2:I

.field public final synthetic f$3:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

.field public final synthetic f$4:Landroid/view/View;

.field public final synthetic f$5:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/complication/ComplicationLayoutEngine$ViewEntry;ZILandroidx/constraintlayout/widget/Constraints$LayoutParams;Landroid/view/View;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/complication/ComplicationLayoutEngine$ViewEntry$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/complication/ComplicationLayoutEngine$ViewEntry;

    iput-boolean p2, p0, Lcom/android/systemui/complication/ComplicationLayoutEngine$ViewEntry$$ExternalSyntheticLambda0;->f$1:Z

    iput p3, p0, Lcom/android/systemui/complication/ComplicationLayoutEngine$ViewEntry$$ExternalSyntheticLambda0;->f$2:I

    iput-object p4, p0, Lcom/android/systemui/complication/ComplicationLayoutEngine$ViewEntry$$ExternalSyntheticLambda0;->f$3:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput-object p5, p0, Lcom/android/systemui/complication/ComplicationLayoutEngine$ViewEntry$$ExternalSyntheticLambda0;->f$4:Landroid/view/View;

    iput-boolean p6, p0, Lcom/android/systemui/complication/ComplicationLayoutEngine$ViewEntry$$ExternalSyntheticLambda0;->f$5:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 10

    iget-object v0, p0, Lcom/android/systemui/complication/ComplicationLayoutEngine$ViewEntry$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/complication/ComplicationLayoutEngine$ViewEntry;

    iget-boolean v1, p0, Lcom/android/systemui/complication/ComplicationLayoutEngine$ViewEntry$$ExternalSyntheticLambda0;->f$1:Z

    iget v2, p0, Lcom/android/systemui/complication/ComplicationLayoutEngine$ViewEntry$$ExternalSyntheticLambda0;->f$2:I

    iget-object v3, p0, Lcom/android/systemui/complication/ComplicationLayoutEngine$ViewEntry$$ExternalSyntheticLambda0;->f$3:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iget-object v4, p0, Lcom/android/systemui/complication/ComplicationLayoutEngine$ViewEntry$$ExternalSyntheticLambda0;->f$4:Landroid/view/View;

    iget-boolean p0, p0, Lcom/android/systemui/complication/ComplicationLayoutEngine$ViewEntry$$ExternalSyntheticLambda0;->f$5:Z

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x4

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-eq p1, v9, :cond_c

    if-eq p1, v8, :cond_8

    if-eq p1, v7, :cond_4

    if-eq p1, v6, :cond_0

    goto/16 :goto_8

    :cond_0
    if-nez v1, :cond_2

    if-eq v2, v7, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result p1

    iput p1, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToStart:I

    goto :goto_1

    :cond_2
    :goto_0
    iput v5, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    :goto_1
    if-eqz p0, :cond_10

    if-eq v2, v9, :cond_3

    if-ne v2, v8, :cond_10

    :cond_3
    const p0, 0x7f0a02ba

    iput p0, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToEnd:I

    goto :goto_8

    :cond_4
    if-nez v1, :cond_6

    if-eq v2, v6, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result p1

    iput p1, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToEnd:I

    goto :goto_3

    :cond_6
    :goto_2
    iput v5, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    :goto_3
    if-eqz p0, :cond_10

    if-eq v2, v8, :cond_7

    if-ne v2, v9, :cond_10

    :cond_7
    const p0, 0x7f0a02bb

    iput p0, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToStart:I

    goto :goto_8

    :cond_8
    if-nez v1, :cond_a

    if-eq v2, v9, :cond_9

    goto :goto_4

    :cond_9
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result p1

    iput p1, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToTop:I

    goto :goto_5

    :cond_a
    :goto_4
    iput v5, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    :goto_5
    if-eqz p0, :cond_10

    if-eq v2, v6, :cond_b

    if-ne v2, v7, :cond_10

    :cond_b
    const p0, 0x7f0a02b9

    iput p0, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToBottom:I

    goto :goto_8

    :cond_c
    if-nez v1, :cond_e

    if-eq v2, v8, :cond_d

    goto :goto_6

    :cond_d
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result p1

    iput p1, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToBottom:I

    goto :goto_7

    :cond_e
    :goto_6
    iput v5, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    :goto_7
    if-eqz p0, :cond_10

    if-eq v2, v6, :cond_f

    if-ne v2, v7, :cond_10

    :cond_f
    const p0, 0x7f0a02bc

    iput p0, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToStart:I

    :cond_10
    :goto_8
    iget-object p0, v0, Lcom/android/systemui/complication/ComplicationLayoutEngine$ViewEntry;->mParent:Lcom/android/systemui/complication/ComplicationLayoutEngine$ViewEntry$Parent;

    check-cast p0, Lcom/android/systemui/complication/ComplicationLayoutEngine$DirectionGroup;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, v0, Lcom/android/systemui/complication/ComplicationLayoutEngine$ViewEntry;->mLayoutParams:Lcom/android/systemui/complication/ComplicationLayoutParams;

    iget-object p0, p0, Lcom/android/systemui/complication/ComplicationLayoutEngine$DirectionGroup;->mParent:Lcom/android/systemui/complication/ComplicationLayoutEngine$DirectionGroup$Parent;

    check-cast p0, Lcom/android/systemui/complication/ComplicationLayoutEngine$PositionGroup;

    iget v2, p0, Lcom/android/systemui/complication/ComplicationLayoutEngine$PositionGroup;->mDefaultDirectionalSpacing:I

    iget p1, p1, Lcom/android/systemui/complication/ComplicationLayoutParams;->mDirectionalSpacing:I

    const/4 v4, -0x1

    if-ne p1, v4, :cond_11

    goto :goto_9

    :cond_11
    move v2, p1

    :goto_9
    new-instance p1, Lcom/android/systemui/complication/ComplicationLayoutEngine$Margins;

    invoke-direct {p1}, Lcom/android/systemui/complication/ComplicationLayoutEngine$Margins;-><init>()V

    if-nez v1, :cond_16

    iget-object v4, v0, Lcom/android/systemui/complication/ComplicationLayoutEngine$ViewEntry;->mLayoutParams:Lcom/android/systemui/complication/ComplicationLayoutParams;

    iget v4, v4, Lcom/android/systemui/complication/ComplicationLayoutParams;->mDirection:I

    if-eq v4, v9, :cond_15

    if-eq v4, v8, :cond_14

    if-eq v4, v7, :cond_13

    if-eq v4, v6, :cond_12

    goto :goto_a

    :cond_12
    new-instance p1, Lcom/android/systemui/complication/ComplicationLayoutEngine$Margins;

    invoke-direct {p1, v2, v5, v5, v5}, Lcom/android/systemui/complication/ComplicationLayoutEngine$Margins;-><init>(IIII)V

    goto :goto_a

    :cond_13
    new-instance p1, Lcom/android/systemui/complication/ComplicationLayoutEngine$Margins;

    invoke-direct {p1, v5, v5, v2, v5}, Lcom/android/systemui/complication/ComplicationLayoutEngine$Margins;-><init>(IIII)V

    goto :goto_a

    :cond_14
    new-instance p1, Lcom/android/systemui/complication/ComplicationLayoutEngine$Margins;

    invoke-direct {p1, v5, v2, v5, v5}, Lcom/android/systemui/complication/ComplicationLayoutEngine$Margins;-><init>(IIII)V

    goto :goto_a

    :cond_15
    new-instance p1, Lcom/android/systemui/complication/ComplicationLayoutEngine$Margins;

    invoke-direct {p1, v5, v5, v5, v2}, Lcom/android/systemui/complication/ComplicationLayoutEngine$Margins;-><init>(IIII)V

    :cond_16
    :goto_a
    if-eqz v1, :cond_17

    new-instance v0, Lcom/android/systemui/complication/ComplicationLayoutEngine$Margins;

    invoke-direct {v0}, Lcom/android/systemui/complication/ComplicationLayoutEngine$Margins;-><init>()V

    iget-object p0, p0, Lcom/android/systemui/complication/ComplicationLayoutEngine$PositionGroup;->mDirectionalMargins:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/complication/ComplicationLayoutEngine$Margins;

    invoke-static {v1, v0}, Lcom/android/systemui/complication/ComplicationLayoutEngine$Margins;->combine(Lcom/android/systemui/complication/ComplicationLayoutEngine$Margins;Lcom/android/systemui/complication/ComplicationLayoutEngine$Margins;)Lcom/android/systemui/complication/ComplicationLayoutEngine$Margins;

    move-result-object v0

    goto :goto_b

    :cond_17
    iget-object p0, p0, Lcom/android/systemui/complication/ComplicationLayoutEngine$PositionGroup;->mDirectionalMargins:Ljava/util/HashMap;

    iget-object v0, v0, Lcom/android/systemui/complication/ComplicationLayoutEngine$ViewEntry;->mLayoutParams:Lcom/android/systemui/complication/ComplicationLayoutParams;

    iget v0, v0, Lcom/android/systemui/complication/ComplicationLayoutParams;->mDirection:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lcom/android/systemui/complication/ComplicationLayoutEngine$Margins;

    :cond_18
    invoke-static {v0, p1}, Lcom/android/systemui/complication/ComplicationLayoutEngine$Margins;->combine(Lcom/android/systemui/complication/ComplicationLayoutEngine$Margins;Lcom/android/systemui/complication/ComplicationLayoutEngine$Margins;)Lcom/android/systemui/complication/ComplicationLayoutEngine$Margins;

    move-result-object p0

    iget p1, p0, Lcom/android/systemui/complication/ComplicationLayoutEngine$Margins;->end:I

    iget v0, p0, Lcom/android/systemui/complication/ComplicationLayoutEngine$Margins;->bottom:I

    iget v1, p0, Lcom/android/systemui/complication/ComplicationLayoutEngine$Margins;->start:I

    iget p0, p0, Lcom/android/systemui/complication/ComplicationLayoutEngine$Margins;->top:I

    invoke-virtual {v3, v1, p0, p1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginsRelative(IIII)V

    return-void
.end method
