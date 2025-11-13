.class public final Landroidx/appcompat/widget/SeslProgressBar$1;
.super Landroid/util/FloatProperty;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/SeslProgressBar;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2}, Landroid/util/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/appcompat/widget/SeslProgressBar;

    iget p0, p1, Landroidx/appcompat/widget/SeslProgressBar;->mVisualProgress:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public final setValue(Ljava/lang/Object;F)V
    .locals 0

    check-cast p1, Landroidx/appcompat/widget/SeslProgressBar;

    sget-object p0, Landroidx/appcompat/widget/SeslProgressBar;->PROGRESS_ANIM_INTERPOLATOR:Landroid/view/animation/DecelerateInterpolator;

    const p0, 0x102000d

    invoke-virtual {p1, p2, p0}, Landroidx/appcompat/widget/SeslProgressBar;->setVisualProgress(FI)V

    iput p2, p1, Landroidx/appcompat/widget/SeslProgressBar;->mVisualProgress:F

    return-void
.end method
