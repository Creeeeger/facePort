.class public final Lcom/android/wm/shell/controlpanel/activity/ToolbarTipPopup;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mTipPopUpWindowLp:Landroid/view/WindowManager$LayoutParams;

.field public mTipPopup:Lcom/samsung/android/widget/SemTipPopup;

.field public mView:Landroid/widget/FrameLayout;

.field public final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/ToolbarTipPopup;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/ToolbarTipPopup;->mWindowManager:Landroid/view/WindowManager;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v1, 0x7f0d0531

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/ToolbarTipPopup;->mView:Landroid/widget/FrameLayout;

    new-instance p1, Landroid/view/WindowManager$LayoutParams;

    const/4 v3, -0x1

    const/16 v4, 0x7d8

    const/4 v2, -0x1

    const v5, 0x1000118

    const/4 v6, -0x3

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/ToolbarTipPopup;->mTipPopUpWindowLp:Landroid/view/WindowManager$LayoutParams;

    const-string v1, "ToolBarTipPopup"

    invoke-virtual {p1, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "addView: mView="

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/wm/shell/controlpanel/activity/ToolbarTipPopup;->mView:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/ToolbarTipPopup;->mView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/ToolbarTipPopup;->mTipPopUpWindowLp:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, p1, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/ToolbarTipPopup;->mTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    if-nez p1, :cond_0

    new-instance p1, Lcom/samsung/android/widget/SemTipPopup;

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/ToolbarTipPopup;->mView:Landroid/widget/FrameLayout;

    invoke-direct {p1, v0}, Lcom/samsung/android/widget/SemTipPopup;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/ToolbarTipPopup;->mTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    :cond_0
    return-void
.end method


# virtual methods
.method public final requestShowPopUp(II)V
    .locals 8

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/ToolbarTipPopup;->mTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemTipPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/ToolbarTipPopup;->mView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v0

    const/4 v5, 0x1

    const/4 v6, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1, p2, v5, v6}, Lcom/android/wm/shell/controlpanel/activity/ToolbarTipPopup;->showTipPopUp(IIZZ)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/ToolbarTipPopup;->mView:Landroid/widget/FrameLayout;

    new-instance v7, Lcom/android/wm/shell/controlpanel/activity/ToolbarTipPopup$1;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/wm/shell/controlpanel/activity/ToolbarTipPopup$1;-><init>(Lcom/android/wm/shell/controlpanel/activity/ToolbarTipPopup;IIZZ)V

    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final showTipPopUp(IIZZ)V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/ToolbarTipPopup;->mTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemTipPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/ToolbarTipPopup;->mTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/ToolbarTipPopup;->mContext:Landroid/content/Context;

    const v2, 0x7f060a94

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemTipPopup;->setBackgroundColorWithAlpha(I)V

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/ToolbarTipPopup;->mTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/ToolbarTipPopup;->mContext:Landroid/content/Context;

    const v2, 0x7f060a95

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemTipPopup;->setMessageTextColor(I)V

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/ToolbarTipPopup;->mTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    invoke-virtual {v0, p3}, Lcom/samsung/android/widget/SemTipPopup;->setExpanded(Z)V

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/ToolbarTipPopup;->mTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/widget/SemTipPopup;->setTargetPosition(II)V

    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/ToolbarTipPopup;->mTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    new-instance p2, Lcom/android/wm/shell/controlpanel/activity/ToolbarTipPopup$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/wm/shell/controlpanel/activity/ToolbarTipPopup$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/controlpanel/activity/ToolbarTipPopup;)V

    invoke-virtual {p1, p2}, Lcom/samsung/android/widget/SemTipPopup;->setOnStateChangeListener(Lcom/samsung/android/widget/SemTipPopup$OnStateChangeListener;)V

    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/ToolbarTipPopup;->mTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    iget-object p2, p0, Lcom/android/wm/shell/controlpanel/activity/ToolbarTipPopup;->mContext:Landroid/content/Context;

    const v0, 0x7f131377

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/widget/SemTipPopup;->setMessage(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/ToolbarTipPopup;->mTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    invoke-virtual {p1, p4}, Lcom/samsung/android/widget/SemTipPopup;->setOutsideTouchEnabled(Z)V

    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/ToolbarTipPopup;->mTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    invoke-virtual {p1, p3}, Lcom/samsung/android/widget/SemTipPopup;->setPopupWindowClippingEnabled(Z)V

    invoke-static {}, Lcom/android/wm/shell/controlpanel/utils/ControlPanelUtils;->isTypeFold()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/ToolbarTipPopup;->mTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lcom/samsung/android/widget/SemTipPopup;->show(I)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/ToolbarTipPopup;->mTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/samsung/android/widget/SemTipPopup;->show(I)V

    :cond_2
    :goto_0
    return-void
.end method
