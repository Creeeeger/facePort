.class public final Lcom/android/wm/shell/controlpanel/activity/FloatingIcon$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon$1;->this$0:Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreDraw()Z
    .locals 2

    const-string v0, "ControlPanelService"

    const-string v1, "onPreDraw"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon$1;->this$0:Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;

    iget-object v0, v0, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;->mFloatingIconView:Lcom/android/wm/shell/controlpanel/activity/FloatingIconView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon$1;->this$0:Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;

    iget-object v0, v0, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;->mFloatingIconView:Lcom/android/wm/shell/controlpanel/activity/FloatingIconView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
