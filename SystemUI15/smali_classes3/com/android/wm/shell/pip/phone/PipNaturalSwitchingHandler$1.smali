.class public final Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;

.field public final synthetic val$downHashCode:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler$1;->this$0:Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;

    iput-object p2, p0, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler$1;->val$downHashCode:Ljava/lang/String;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "startEnterAnimation: down-scale finished, "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler$1;->val$downHashCode:Ljava/lang/String;

    const-string v1, "PipNaturalSwitchingHandler"

    invoke-static {p1, v0, v1}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler$1;->this$0:Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;->mScaleDownAnimator:Landroid/animation/ValueAnimator;

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;->mScaleUpPhysicsAnimator:Lcom/android/wm/shell/shared/animation/PhysicsAnimator;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->start()V

    :cond_0
    return-void
.end method
