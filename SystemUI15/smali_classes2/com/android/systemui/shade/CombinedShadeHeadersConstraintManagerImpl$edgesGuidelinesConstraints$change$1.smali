.class final Lcom/android/systemui/shade/CombinedShadeHeadersConstraintManagerImpl$edgesGuidelinesConstraints$change$1;
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
.field final synthetic $cutoutEnd:I

.field final synthetic $cutoutStart:I

.field final synthetic $paddingEnd:I

.field final synthetic $paddingStart:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/shade/CombinedShadeHeadersConstraintManagerImpl$edgesGuidelinesConstraints$change$1;->$cutoutStart:I

    iput p2, p0, Lcom/android/systemui/shade/CombinedShadeHeadersConstraintManagerImpl$edgesGuidelinesConstraints$change$1;->$paddingStart:I

    iput p3, p0, Lcom/android/systemui/shade/CombinedShadeHeadersConstraintManagerImpl$edgesGuidelinesConstraints$change$1;->$cutoutEnd:I

    iput p4, p0, Lcom/android/systemui/shade/CombinedShadeHeadersConstraintManagerImpl$edgesGuidelinesConstraints$change$1;->$paddingEnd:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintSet;

    iget v0, p0, Lcom/android/systemui/shade/CombinedShadeHeadersConstraintManagerImpl$edgesGuidelinesConstraints$change$1;->$cutoutStart:I

    iget v1, p0, Lcom/android/systemui/shade/CombinedShadeHeadersConstraintManagerImpl$edgesGuidelinesConstraints$change$1;->$paddingStart:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const v2, 0x7f0a017c

    invoke-virtual {p1, v2, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->setGuidelineBegin(II)V

    iget v0, p0, Lcom/android/systemui/shade/CombinedShadeHeadersConstraintManagerImpl$edgesGuidelinesConstraints$change$1;->$cutoutEnd:I

    iget p0, p0, Lcom/android/systemui/shade/CombinedShadeHeadersConstraintManagerImpl$edgesGuidelinesConstraints$change$1;->$paddingEnd:I

    sub-int/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p0

    const v0, 0x7f0a0411

    invoke-virtual {p1, v0, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->setGuidelineEnd(II)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
