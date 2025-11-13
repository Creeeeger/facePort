.class final Lcom/android/systemui/shade/CombinedShadeHeadersConstraintManagerImpl$centerCutoutConstraints$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation


# instance fields
.field final synthetic $centerEnd:I

.field final synthetic $centerStart:I

.field final synthetic $offsetFromEdge:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/shade/CombinedShadeHeadersConstraintManagerImpl$centerCutoutConstraints$1;->$centerStart:I

    iput p2, p0, Lcom/android/systemui/shade/CombinedShadeHeadersConstraintManagerImpl$centerCutoutConstraints$1;->$offsetFromEdge:I

    iput p3, p0, Lcom/android/systemui/shade/CombinedShadeHeadersConstraintManagerImpl$centerCutoutConstraints$1;->$centerEnd:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintSet;

    iget v0, p0, Lcom/android/systemui/shade/CombinedShadeHeadersConstraintManagerImpl$centerCutoutConstraints$1;->$centerStart:I

    iget v1, p0, Lcom/android/systemui/shade/CombinedShadeHeadersConstraintManagerImpl$centerCutoutConstraints$1;->$offsetFromEdge:I

    invoke-virtual {p1, v0, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->setGuidelineBegin(II)V

    iget v0, p0, Lcom/android/systemui/shade/CombinedShadeHeadersConstraintManagerImpl$centerCutoutConstraints$1;->$centerEnd:I

    iget v1, p0, Lcom/android/systemui/shade/CombinedShadeHeadersConstraintManagerImpl$centerCutoutConstraints$1;->$offsetFromEdge:I

    invoke-virtual {p1, v0, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->setGuidelineEnd(II)V

    iget v0, p0, Lcom/android/systemui/shade/CombinedShadeHeadersConstraintManagerImpl$centerCutoutConstraints$1;->$centerStart:I

    const v1, 0x7f0a0339

    const/4 v2, 0x7

    const/4 v3, 0x6

    invoke-virtual {p1, v1, v2, v0, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    iget v0, p0, Lcom/android/systemui/shade/CombinedShadeHeadersConstraintManagerImpl$centerCutoutConstraints$1;->$centerEnd:I

    const v4, 0x7f0a0b42

    invoke-virtual {p1, v4, v3, v0, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    const v0, 0x7f0a0920

    iget p0, p0, Lcom/android/systemui/shade/CombinedShadeHeadersConstraintManagerImpl$centerCutoutConstraints$1;->$centerEnd:I

    invoke-virtual {p1, v0, v3, p0, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    const/4 p0, 0x1

    invoke-virtual {p1, v1, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainedWidth(IZ)V

    invoke-virtual {p1, v4, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainedWidth(IZ)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
