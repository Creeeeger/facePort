.class public final synthetic Lcom/android/wm/shell/controlpanel/activity/ToolbarTipPopup$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/samsung/android/widget/SemTipPopup$OnStateChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/controlpanel/activity/ToolbarTipPopup;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/controlpanel/activity/ToolbarTipPopup;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/ToolbarTipPopup$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/controlpanel/activity/ToolbarTipPopup;

    return-void
.end method


# virtual methods
.method public final onStateChanged(I)V
    .locals 2

    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/ToolbarTipPopup$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/controlpanel/activity/ToolbarTipPopup;

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/ToolbarTipPopup;->mTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/samsung/android/widget/SemTipPopup;->dismiss(Z)V

    iput-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/ToolbarTipPopup;->mTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    :cond_0
    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/ToolbarTipPopup;->mView:Landroid/widget/FrameLayout;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/ToolbarTipPopup;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1, p1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/ToolbarTipPopup;->mView:Landroid/widget/FrameLayout;

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_0
    return-void
.end method
