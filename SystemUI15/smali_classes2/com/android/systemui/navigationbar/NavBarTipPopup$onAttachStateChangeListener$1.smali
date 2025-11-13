.class public final Lcom/android/systemui/navigationbar/NavBarTipPopup$onAttachStateChangeListener$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/navigationbar/NavBarTipPopup;


# direct methods
.method public constructor <init>(Lcom/android/systemui/navigationbar/NavBarTipPopup;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/navigationbar/NavBarTipPopup$onAttachStateChangeListener$1;->this$0:Lcom/android/systemui/navigationbar/NavBarTipPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 5

    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavBarTipPopup$onAttachStateChangeListener$1;->this$0:Lcom/android/systemui/navigationbar/NavBarTipPopup;

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavBarTipPopup;->tipLayout:Landroid/view/View;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/navigationbar/NavBarTipPopup;->isTipPopupShowing:Z

    iget v0, p0, Lcom/android/systemui/navigationbar/NavBarTipPopup;->navBarWidth:I

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavBarTipPopup;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070abc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/navigationbar/NavBarTipPopup;->context:Landroid/content/Context;

    const v3, 0x7f070abd

    invoke-static {v2, v3, v1}, Lcom/android/keyguard/StrongAuthPopup$$ExternalSyntheticOutline0;->m(Landroid/content/Context;II)I

    move-result v1

    new-instance v2, Lcom/samsung/android/widget/SemTipPopup;

    iget-object v3, p0, Lcom/android/systemui/navigationbar/NavBarTipPopup;->tipLayout:Landroid/view/View;

    invoke-direct {v2, v3}, Lcom/samsung/android/widget/SemTipPopup;-><init>(Landroid/view/View;)V

    iput-object v2, p0, Lcom/android/systemui/navigationbar/NavBarTipPopup;->tipPopup:Lcom/samsung/android/widget/SemTipPopup;

    iget-object v3, p0, Lcom/android/systemui/navigationbar/NavBarTipPopup;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/navigationbar/NavBarTipPopup;->currentMessage:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/widget/SemTipPopup;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/systemui/navigationbar/NavBarTipPopup;->tipPopup:Lcom/samsung/android/widget/SemTipPopup;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2, p1}, Lcom/samsung/android/widget/SemTipPopup;->setExpanded(Z)V

    iget-object v2, p0, Lcom/android/systemui/navigationbar/NavBarTipPopup;->tipPopup:Lcom/samsung/android/widget/SemTipPopup;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2, p1}, Lcom/samsung/android/widget/SemTipPopup;->setOutsideTouchEnabled(Z)V

    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavBarTipPopup;->tipPopup:Lcom/samsung/android/widget/SemTipPopup;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/widget/SemTipPopup;->setTargetPosition(II)V

    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavBarTipPopup;->tipPopup:Lcom/samsung/android/widget/SemTipPopup;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v0, Lcom/android/systemui/navigationbar/NavBarTipPopup$showTipPopup$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/navigationbar/NavBarTipPopup$showTipPopup$1;-><init>(Lcom/android/systemui/navigationbar/NavBarTipPopup;)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/widget/SemTipPopup;->setOnStateChangeListener(Lcom/samsung/android/widget/SemTipPopup$OnStateChangeListener;)V

    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavBarTipPopup;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/navigationbar/NavBarTipPopup$showTipPopup$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/navigationbar/NavBarTipPopup$showTipPopup$2;-><init>(Lcom/android/systemui/navigationbar/NavBarTipPopup;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavBarTipPopup$onAttachStateChangeListener$1;->this$0:Lcom/android/systemui/navigationbar/NavBarTipPopup;

    iget-object v1, v0, Lcom/android/systemui/navigationbar/NavBarTipPopup;->tipLayout:Landroid/view/View;

    if-ne p1, v1, :cond_1

    iget-object p1, v0, Lcom/android/systemui/navigationbar/NavBarTipPopup;->tipPopup:Lcom/samsung/android/widget/SemTipPopup;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/samsung/android/widget/SemTipPopup;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavBarTipPopup$onAttachStateChangeListener$1;->this$0:Lcom/android/systemui/navigationbar/NavBarTipPopup;

    iget-object p1, p1, Lcom/android/systemui/navigationbar/NavBarTipPopup;->tipPopup:Lcom/samsung/android/widget/SemTipPopup;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/widget/SemTipPopup;->dismiss(Z)V

    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavBarTipPopup$onAttachStateChangeListener$1;->this$0:Lcom/android/systemui/navigationbar/NavBarTipPopup;

    const/4 v1, 0x0

    iput-object v1, p1, Lcom/android/systemui/navigationbar/NavBarTipPopup;->tipPopup:Lcom/samsung/android/widget/SemTipPopup;

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavBarTipPopup$onAttachStateChangeListener$1;->this$0:Lcom/android/systemui/navigationbar/NavBarTipPopup;

    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/NavBarTipPopup;->hide()V

    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavBarTipPopup$onAttachStateChangeListener$1;->this$0:Lcom/android/systemui/navigationbar/NavBarTipPopup;

    iput-boolean v0, p0, Lcom/android/systemui/navigationbar/NavBarTipPopup;->isTipPopupShowing:Z

    :cond_1
    return-void
.end method
