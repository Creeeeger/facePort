.class public final Lcom/android/wm/shell/fullscreen/AffordanceAnimController$AnimTarget;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# static fields
.field public static final X:Lcom/android/wm/shell/fullscreen/AffordanceAnimController$AnimTarget$1;

.field public static final Y:Lcom/android/wm/shell/fullscreen/AffordanceAnimController$AnimTarget$2;


# instance fields
.field public final mLeash:Landroid/view/SurfaceControl;

.field public final mTransaction:Landroid/view/SurfaceControl$Transaction;

.field public x:F

.field public y:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/wm/shell/fullscreen/AffordanceAnimController$AnimTarget$1;

    const-string/jumbo v1, "x"

    invoke-direct {v0, v1}, Lcom/android/wm/shell/fullscreen/AffordanceAnimController$AnimTarget$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/wm/shell/fullscreen/AffordanceAnimController$AnimTarget;->X:Lcom/android/wm/shell/fullscreen/AffordanceAnimController$AnimTarget$1;

    new-instance v0, Lcom/android/wm/shell/fullscreen/AffordanceAnimController$AnimTarget$2;

    const-string/jumbo v1, "y"

    invoke-direct {v0, v1}, Lcom/android/wm/shell/fullscreen/AffordanceAnimController$AnimTarget$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/wm/shell/fullscreen/AffordanceAnimController$AnimTarget;->Y:Lcom/android/wm/shell/fullscreen/AffordanceAnimController$AnimTarget$2;

    return-void
.end method

.method public constructor <init>(Landroid/view/SurfaceControl;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/fullscreen/AffordanceAnimController$AnimTarget;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iput-object p1, p0, Lcom/android/wm/shell/fullscreen/AffordanceAnimController$AnimTarget;->mLeash:Landroid/view/SurfaceControl;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/wm/shell/fullscreen/AffordanceAnimController$AnimTarget;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/wm/shell/fullscreen/AffordanceAnimController$AnimTarget;->y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ") playTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AffordanceAnimController"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/wm/shell/fullscreen/AffordanceAnimController$AnimTarget;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Lcom/android/wm/shell/fullscreen/AffordanceAnimController$AnimTarget;->mLeash:Landroid/view/SurfaceControl;

    iget v1, p0, Lcom/android/wm/shell/fullscreen/AffordanceAnimController$AnimTarget;->x:F

    iget v2, p0, Lcom/android/wm/shell/fullscreen/AffordanceAnimController$AnimTarget;->y:F

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    iget-object p0, p0, Lcom/android/wm/shell/fullscreen/AffordanceAnimController$AnimTarget;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void
.end method
