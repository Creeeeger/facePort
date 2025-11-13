.class public final Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator$animateViewIn$onAnimationEnd$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $view:Landroid/view/ViewGroup;

.field public final synthetic this$0:Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator;Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator$animateViewIn$onAnimationEnd$1;->this$0:Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator;

    iput-object p2, p0, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator$animateViewIn$onAnimationEnd$1;->$view:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator$animateViewIn$onAnimationEnd$1;->this$0:Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator;

    iget-object v1, p0, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator$animateViewIn$onAnimationEnd$1;->$view:Landroid/view/ViewGroup;

    const v2, 0x7f0a0cf2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarInfo;

    iget-object p0, p0, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator$animateViewIn$onAnimationEnd$1;->$view:Landroid/view/ViewGroup;

    sget-object v2, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator;->VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v1, :cond_0

    iget-object v0, v1, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarInfo;->endItem:Lcom/android/systemui/temporarydisplay/chipbar/ChipbarEndItem;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    instance-of v0, v0, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarEndItem$Button;

    const v1, 0x7f0a028f

    if-eqz v0, :cond_1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestAccessibilityFocus()Z

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->clearAccessibilityFocus()V

    :goto_1
    return-void
.end method
