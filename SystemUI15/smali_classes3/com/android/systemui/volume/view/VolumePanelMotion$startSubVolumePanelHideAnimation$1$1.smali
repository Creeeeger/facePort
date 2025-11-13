.class public final Lcom/android/systemui/volume/view/VolumePanelMotion$startSubVolumePanelHideAnimation$1$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic $dismissRunnable:Ljava/lang/Runnable;

.field public final synthetic $hideBlurRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/view/VolumePanelMotion$startSubVolumePanelHideAnimation$1$1;->$hideBlurRunnable:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/android/systemui/volume/view/VolumePanelMotion$startSubVolumePanelHideAnimation$1$1;->$dismissRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumePanelMotion$startSubVolumePanelHideAnimation$1$1;->$hideBlurRunnable:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumePanelMotion$startSubVolumePanelHideAnimation$1$1;->$dismissRunnable:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
