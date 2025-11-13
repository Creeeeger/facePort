.class public final Lcom/android/systemui/biometrics/UdfpsControllerOverlay$addViewNowOrLater$$inlined$Runnable$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $animation$inlined:Lcom/android/systemui/biometrics/UdfpsAnimationViewController;

.field public final synthetic $view$inlined:Landroid/view/View;

.field public final synthetic this$0:Lcom/android/systemui/biometrics/UdfpsControllerOverlay;


# direct methods
.method public constructor <init>(Lcom/android/systemui/biometrics/UdfpsControllerOverlay;Landroid/view/View;Lcom/android/systemui/biometrics/UdfpsAnimationViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay$addViewNowOrLater$$inlined$Runnable$1;->this$0:Lcom/android/systemui/biometrics/UdfpsControllerOverlay;

    iput-object p2, p0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay$addViewNowOrLater$$inlined$Runnable$1;->$view$inlined:Landroid/view/View;

    iput-object p3, p0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay$addViewNowOrLater$$inlined$Runnable$1;->$animation$inlined:Lcom/android/systemui/biometrics/UdfpsAnimationViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    const-string v0, "UdfpsAddView"

    const-wide/16 v1, 0x1

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->setCounter(Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay$addViewNowOrLater$$inlined$Runnable$1;->this$0:Lcom/android/systemui/biometrics/UdfpsControllerOverlay;

    iget-object v1, v0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->windowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay$addViewNowOrLater$$inlined$Runnable$1;->$view$inlined:Landroid/view/View;

    iget-object v3, v0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->coreLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay$addViewNowOrLater$$inlined$Runnable$1;->$animation$inlined:Lcom/android/systemui/biometrics/UdfpsAnimationViewController;

    invoke-virtual {v0, v3, p0}, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->updateDimensions(Landroid/view/WindowManager$LayoutParams;Lcom/android/systemui/biometrics/UdfpsAnimationViewController;)V

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
