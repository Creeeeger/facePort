.class public final Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider$SurfaceValueAnimator;
.super Landroid/animation/ValueAnimator;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mLeashName:Ljava/lang/String;


# direct methods
.method public varargs constructor <init>(Landroid/view/SurfaceControl;[F)V
    .locals 0

    invoke-direct {p0}, Landroid/animation/ValueAnimator;-><init>()V

    invoke-virtual {p1}, Landroid/view/SurfaceControl;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider$SurfaceValueAnimator;->mLeashName:Ljava/lang/String;

    invoke-virtual {p0, p2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SurfaceValueAnimator{@"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " / leash="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider$SurfaceValueAnimator;->mLeashName:Ljava/lang/String;

    const-string/jumbo v1, "}"

    invoke-static {v0, p0, v1}, Landroidx/activity/ComponentActivity$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
