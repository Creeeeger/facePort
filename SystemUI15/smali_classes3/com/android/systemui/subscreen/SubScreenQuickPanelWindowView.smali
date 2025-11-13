.class public Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowView;
.super Landroid/widget/FrameLayout;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mSubScreenQSTouchHandler:Lcom/android/systemui/subscreen/SubScreenQSEventHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowView;->mSubScreenQSTouchHandler:Lcom/android/systemui/subscreen/SubScreenQSEventHandler;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "dispatchKeyEvent ,event:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SubScreenQuickPanelWindowView"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    move v1, v3

    :cond_1
    const/4 v2, 0x4

    if-ne v0, v2, :cond_2

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowView;->mSubScreenQSTouchHandler:Lcom/android/systemui/subscreen/SubScreenQSEventHandler;

    invoke-virtual {p0, p1}, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowView;->mSubScreenQSTouchHandler:Lcom/android/systemui/subscreen/SubScreenQSEventHandler;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowView;->mSubScreenQSTouchHandler:Lcom/android/systemui/subscreen/SubScreenQSEventHandler;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final setVisibility(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowView;->mSubScreenQSTouchHandler:Lcom/android/systemui/subscreen/SubScreenQSEventHandler;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->onWindowVisibilityChanged()V

    return-void
.end method
