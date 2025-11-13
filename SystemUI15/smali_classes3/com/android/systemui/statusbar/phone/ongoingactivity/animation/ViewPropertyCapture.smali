.class public final Lcom/android/systemui/statusbar/phone/ongoingactivity/animation/ViewPropertyCapture;
.super Landroid/transition/Transition;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final targetView:Landroid/view/View;

.field public viewPropertyObserver:Lcom/android/systemui/statusbar/phone/ongoingactivity/animation/ViewPropertyCapture$ViewPropertyObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/animation/ViewPropertyCapture$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/ongoingactivity/animation/ViewPropertyCapture$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/android/systemui/statusbar/phone/ongoingactivity/animation/ViewPropertyCapture$ViewPropertyObserver;)V
    .locals 0

    invoke-direct {p0}, Landroid/transition/Transition;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/animation/ViewPropertyCapture;->targetView:Landroid/view/View;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/animation/ViewPropertyCapture;->viewPropertyObserver:Lcom/android/systemui/statusbar/phone/ongoingactivity/animation/ViewPropertyCapture$ViewPropertyObserver;

    return-void
.end method


# virtual methods
.method public final captureEndValues(Landroid/transition/TransitionValues;)V
    .locals 12

    if-eqz p1, :cond_1

    iget-object p1, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/animation/ViewPropertyCapture;->targetView:Landroid/view/View;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v4

    const-string v5, "captureEndValues() left:"

    const-string v6, " right:"

    const-string v7, " top:"

    invoke-static {v1, v2, v5, v6, v7}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicyKt$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bottom:"

    const-string v5, "ViewPropertyCapture"

    invoke-static {v1, v3, v2, v4, v5}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/animation/ViewPropertyCapture;->viewPropertyObserver:Lcom/android/systemui/statusbar/phone/ongoingactivity/animation/ViewPropertyCapture$ViewPropertyObserver;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    aget v2, v0, v2

    const/4 v3, 0x1

    aget v4, v0, v3

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v6

    sub-int/2addr v5, v6

    add-int/2addr v5, v2

    aget v0, v0, v3

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    sub-int/2addr v3, p1

    add-int/2addr v3, v0

    check-cast v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController$collapseAnimation$2;

    sub-int v8, v5, v2

    sub-int v9, v3, v4

    const-string/jumbo p1, "{OngoingExpandedPipController}"

    const-string v0, "onReceiveEndScreenViewBound"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    int-to-float v10, v2

    int-to-float v11, v4

    iget-object v7, v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController$collapseAnimation$2;->this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "postCollapseAnimation"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, v7, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;->mainUIHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController$postCollapseAnimation$1;

    move-object v6, v0

    invoke-direct/range {v6 .. v11}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController$postCollapseAnimation$1;-><init>(Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;IIFF)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/animation/ViewPropertyCapture;->viewPropertyObserver:Lcom/android/systemui/statusbar/phone/ongoingactivity/animation/ViewPropertyCapture$ViewPropertyObserver;

    :cond_1
    return-void
.end method

.method public final captureStartValues(Landroid/transition/TransitionValues;)V
    .locals 7

    if-eqz p1, :cond_0

    iget-object p1, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/animation/ViewPropertyCapture;->targetView:Landroid/view/View;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v3

    const-string v4, "captureStartValues() left:"

    const-string v5, " right:"

    const-string v6, " top:"

    invoke-static {v0, v1, v4, v5, v6}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicyKt$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bottom:"

    const-string v4, "ViewPropertyCapture"

    invoke-static {v0, v2, v1, v3, v4}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/animation/ViewPropertyCapture;->viewPropertyObserver:Lcom/android/systemui/statusbar/phone/ongoingactivity/animation/ViewPropertyCapture$ViewPropertyObserver;

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    :cond_0
    return-void
.end method
