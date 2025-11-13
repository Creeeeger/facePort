.class public final Lcom/android/systemui/qs/bar/SecurityFooterBar;
.super Lcom/android/systemui/qs/bar/BarItemImpl;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/qs/VisibilityChangedDispatcher$OnVisibilityChangedListener;


# instance fields
.field public final mSecurityFooter:Lcom/android/systemui/qs/QSSecurityFooter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/qs/QSSecurityFooter;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/bar/BarItemImpl;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/qs/bar/SecurityFooterBar;->mSecurityFooter:Lcom/android/systemui/qs/QSSecurityFooter;

    return-void
.end method


# virtual methods
.method public final destroy()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mCallback:Lcom/android/systemui/qs/bar/BarController$4;

    iget-object p0, p0, Lcom/android/systemui/qs/bar/SecurityFooterBar;->mSecurityFooter:Lcom/android/systemui/qs/QSSecurityFooter;

    iput-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mVisibilityChangedListener:Lcom/android/systemui/qs/VisibilityChangedDispatcher$OnVisibilityChangedListener;

    return-void
.end method

.method public final getBarLayout()I
    .locals 0

    const p0, 0x7f0d03c3

    return p0
.end method

.method public final onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/bar/SecurityFooterBar;->mSecurityFooter:Lcom/android/systemui/qs/QSSecurityFooter;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSSecurityFooter;->updateTextMaxWidth()V

    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mHandler:Lcom/android/systemui/qs/QSSecurityFooter$H;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final onFinishInflate()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/bar/SecurityFooterBar;->mSecurityFooter:Lcom/android/systemui/qs/QSSecurityFooter;

    iget-boolean v1, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mIsVisible:Z

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/bar/BarItemImpl;->showBar(Z)V

    iget-object v1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    const v2, 0x7f0a0adb

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSSecurityFooter;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    iput-object p0, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mVisibilityChangedListener:Lcom/android/systemui/qs/VisibilityChangedDispatcher$OnVisibilityChangedListener;

    return-void
.end method

.method public final onVisibilityChanged(I)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/bar/BarItemImpl;->showBar(Z)V

    return-void
.end method

.method public final setListening(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mListening:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mListening:Z

    iget-object p0, p0, Lcom/android/systemui/qs/bar/SecurityFooterBar;->mSecurityFooter:Lcom/android/systemui/qs/QSSecurityFooter;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mCallback:Lcom/android/systemui/qs/QSSecurityFooter$Callback;

    check-cast p1, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->addCallback(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mHandler:Lcom/android/systemui/qs/QSSecurityFooter$H;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mCallback:Lcom/android/systemui/qs/QSSecurityFooter$Callback;

    check-cast p1, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->removeCallback(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final updateHeightMargins()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07009a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object p0, p0, Lcom/android/systemui/qs/bar/SecurityFooterBar;->mSecurityFooter:Lcom/android/systemui/qs/QSSecurityFooter;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSSecurityFooter;->getView()Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
