.class public final Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator$animateViewOut$fullEndRunnable$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $onAnimationEnd:Ljava/lang/Runnable;

.field public final synthetic this$0:Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator$animateViewOut$fullEndRunnable$1;->this$0:Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator;

    iput-object p2, p0, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator$animateViewOut$fullEndRunnable$1;->$onAnimationEnd:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator$animateViewOut$fullEndRunnable$1;->this$0:Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator;

    sget-object v1, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator;->VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

    iget-object v1, v0, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator;->loadingDetails:Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator$LoadingDetails;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator$LoadingDetails;->animator:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_0
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator;->loadingDetails:Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator$LoadingDetails;

    iget-object p0, p0, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator$animateViewOut$fullEndRunnable$1;->$onAnimationEnd:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
