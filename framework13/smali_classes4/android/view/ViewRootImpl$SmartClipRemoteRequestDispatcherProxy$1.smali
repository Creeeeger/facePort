.class Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy$1;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"

# interfaces
.implements Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher$ViewRootImplGateway;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy;


# direct methods
.method constructor blacklist <init>(Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy;)V
    .locals 0
    .param p1, "this$1"    # Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy;

    .line 13517
    iput-object p1, p0, Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy$1;->this$1:Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist enqueueInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;IZ)V
    .locals 1
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "receiver"    # Landroid/view/InputEventReceiver;
    .param p3, "flags"    # I
    .param p4, "processImmediately"    # Z

    .line 13520
    iget-object v0, p0, Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy$1;->this$1:Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy;

    iget-object v0, v0, Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;IZ)V

    .line 13521
    return-void
.end method

.method public blacklist getHandler()Landroid/os/Handler;
    .locals 1

    .line 13535
    iget-object v0, p0, Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy$1;->this$1:Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy;

    iget-object v0, v0, Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    return-object v0
.end method

.method public blacklist getRootView()Landroid/view/View;
    .locals 1

    .line 13530
    iget-object v0, p0, Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy$1;->this$1:Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy;

    iget-object v0, v0, Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    return-object v0
.end method

.method public blacklist getScaleFactor()Landroid/graphics/PointF;
    .locals 2

    .line 13525
    new-instance v0, Landroid/graphics/PointF;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method public blacklist getTranslatedPoint()Landroid/graphics/PointF;
    .locals 1

    .line 13547
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getTranslatedRectIfNeeded(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "outRect"    # Landroid/graphics/Rect;

    .line 13553
    iget-object v0, p0, Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy$1;->this$1:Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy;

    iget-object v0, v0, Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getCompatTranslator()Lcom/samsung/android/core/CompatTranslator;

    move-result-object v0

    .line 13554
    .local v0, "translator":Lcom/samsung/android/core/CompatTranslator;
    if-eqz v0, :cond_0

    .line 13555
    invoke-virtual {v0, p1}, Lcom/samsung/android/core/CompatTranslator;->translateToScreen(Landroid/graphics/Rect;)V

    .line 13558
    .end local v0    # "translator":Lcom/samsung/android/core/CompatTranslator;
    :cond_0
    return-void
.end method

.method public blacklist getViewRootImpl()Landroid/view/ViewRootImpl;
    .locals 1

    .line 13540
    iget-object v0, p0, Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy$1;->this$1:Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy;

    iget-object v0, v0, Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy;->this$0:Landroid/view/ViewRootImpl;

    return-object v0
.end method
