.class public final Lcom/android/systemui/controls/ui/view/ControlsSpinner$showSpinner$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/controls/ui/view/ControlsSpinner;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/ui/view/ControlsSpinner;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/controls/ui/view/ControlsSpinner<",
            "Lcom/android/systemui/controls/ui/view/ControlsSpinner$SelectionItem;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/controls/ui/view/ControlsSpinner$showSpinner$1$1;->this$0:Lcom/android/systemui/controls/ui/view/ControlsSpinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/controls/ui/view/ControlsSpinner$showSpinner$1$1;->this$0:Lcom/android/systemui/controls/ui/view/ControlsSpinner;

    iget-object p0, p0, Lcom/android/systemui/controls/ui/view/ControlsSpinner;->spinnerTouchCallback:Lcom/android/systemui/controls/ui/view/ControlsSpinner$SpinnerTouchCallback;

    if-eqz p0, :cond_0

    check-cast p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$spinnerTouchCallback$1;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    iget-object p0, p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$spinnerTouchCallback$1;->this$0:Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;

    iget-object p0, p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->saLogger:Lcom/android/systemui/controls/util/SALogger;

    sget-object p1, Lcom/android/systemui/controls/util/SALogger$Event$OpenSpinner;->INSTANCE:Lcom/android/systemui/controls/util/SALogger$Event$OpenSpinner;

    invoke-virtual {p0, p1}, Lcom/android/systemui/controls/util/SALogger;->sendEvent(Lcom/android/systemui/controls/util/SALogger$Event;)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
