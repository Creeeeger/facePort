.class public final Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController$BackKeyConsumerViewGroup;
.super Landroid/widget/FrameLayout;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController$BackKeyConsumerViewGroup;->this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController$BackKeyConsumerViewGroup;->this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;->mCardStackView:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->isReadyCollapseAnimation()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController$BackKeyConsumerViewGroup;->this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;->collapseAnimation()V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public final onAttachedToWindow()V
    .locals 3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getOnBackInvokedDispatcher()Landroid/window/WindowOnBackInvokedDispatcher;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController$BackKeyConsumerViewGroup;->this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;->onBackInvokedCallback:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController$7;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/window/WindowOnBackInvokedDispatcher;->registerOnBackInvokedCallback(ILandroid/window/OnBackInvokedCallback;)V

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getOnBackInvokedDispatcher()Landroid/window/WindowOnBackInvokedDispatcher;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController$BackKeyConsumerViewGroup;->this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;->onBackInvokedCallback:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController$7;

    invoke-virtual {v0, v1}, Landroid/window/WindowOnBackInvokedDispatcher;->unregisterOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    return-void
.end method
