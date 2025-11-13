.class public final Landroidx/leanback/widget/PagingIndicator$3;
.super Landroid/util/Property;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/leanback/widget/PagingIndicator$Dot;

    iget p0, p1, Landroidx/leanback/widget/PagingIndicator$Dot;->mTranslationX:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public final set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroidx/leanback/widget/PagingIndicator$Dot;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p0

    iget p2, p1, Landroidx/leanback/widget/PagingIndicator$Dot;->mDirection:F

    mul-float/2addr p0, p2

    iget p2, p1, Landroidx/leanback/widget/PagingIndicator$Dot;->mLayoutDirection:F

    mul-float/2addr p0, p2

    iput p0, p1, Landroidx/leanback/widget/PagingIndicator$Dot;->mTranslationX:F

    iget-object p0, p1, Landroidx/leanback/widget/PagingIndicator$Dot;->this$0:Landroidx/leanback/widget/PagingIndicator;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
