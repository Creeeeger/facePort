.class public abstract Lcom/android/wm/shell/controlpanel/activity/FloatingUI;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mLayoutParam:Landroid/view/WindowManager$LayoutParams;

.field public mOverlayView:Landroid/view/View;

.field public final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mWindowManager:Landroid/view/WindowManager;

    return-void
.end method


# virtual methods
.method public addView()V
    .locals 3

    const-string v0, "ControlPanelService"

    const-string v1, "addView "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mOverlayView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/controlpanel/activity/FloatingUI$1;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/controlpanel/activity/FloatingUI$1;-><init>(Lcom/android/wm/shell/controlpanel/activity/FloatingUI;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mOverlayView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mLayoutParam:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->fadeInAnimation()V

    return-void
.end method

.method public abstract connectUIObject()V
.end method

.method public abstract fadeInAnimation()V
.end method

.method public removeView()V
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mOverlayView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mOverlayView:Landroid/view/View;

    return-void
.end method

.method public abstract setAppendLayoutParams()V
.end method

.method public final showView()V
    .locals 7

    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    const/16 v4, 0x228

    const/4 v5, -0x3

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/16 v3, 0x3ea

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v6, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mLayoutParam:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0}, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->setAppendLayoutParams()V

    invoke-virtual {p0}, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->connectUIObject()V

    invoke-virtual {p0}, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->addView()V

    return-void
.end method
