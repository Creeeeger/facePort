.class public final Lcom/android/systemui/accessibility/WindowMagnificationController$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final mPreviousBounds:Landroid/graphics/Rect;

.field public final synthetic this$0:Lcom/android/systemui/accessibility/WindowMagnificationController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/accessibility/WindowMagnificationController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController$1;->this$0:Lcom/android/systemui/accessibility/WindowMagnificationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController$1;->mPreviousBounds:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController$1;->this$0:Lcom/android/systemui/accessibility/WindowMagnificationController;

    iget-object v0, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorView:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController$1;->mPreviousBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController$1;->this$0:Lcom/android/systemui/accessibility/WindowMagnificationController;

    iget-object v1, v1, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorViewBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController$1;->mPreviousBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController$1;->this$0:Lcom/android/systemui/accessibility/WindowMagnificationController;

    iget-object v1, v1, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorViewBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-eq v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController$1;->this$0:Lcom/android/systemui/accessibility/WindowMagnificationController;

    iget-object v0, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorView:Landroid/view/View;

    new-instance v1, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/systemui/accessibility/WindowMagnificationController$1;->this$0:Lcom/android/systemui/accessibility/WindowMagnificationController;

    iget-object v3, v3, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorViewBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/accessibility/WindowMagnificationController$1;->this$0:Lcom/android/systemui/accessibility/WindowMagnificationController;

    iget-object v4, v4, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorViewBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-direct {v1, v2, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemGestureExclusionRects(Ljava/util/List;)V

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController$1;->mPreviousBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController$1;->this$0:Lcom/android/systemui/accessibility/WindowMagnificationController;

    iget-object v1, v1, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorViewBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController$1;->this$0:Lcom/android/systemui/accessibility/WindowMagnificationController;

    invoke-virtual {v0, v2}, Lcom/android/systemui/accessibility/WindowMagnificationController;->updateSysUIState(Z)V

    iget-object p0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController$1;->this$0:Lcom/android/systemui/accessibility/WindowMagnificationController;

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mWindowMagnifierCallback:Lcom/android/systemui/accessibility/WindowMagnifierCallback;

    iget v1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mDisplayId:I

    iget-object p0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorViewBounds:Landroid/graphics/Rect;

    check-cast v0, Lcom/android/systemui/accessibility/Magnification$3;

    iget-object v0, v0, Lcom/android/systemui/accessibility/Magnification$3;->this$0:Lcom/android/systemui/accessibility/Magnification;

    iget-object v0, v0, Lcom/android/systemui/accessibility/Magnification;->mMagnificationConnectionImpl:Lcom/android/systemui/accessibility/MagnificationConnectionImpl;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/android/systemui/accessibility/MagnificationConnectionImpl;->mConnectionCallback:Landroid/view/accessibility/IMagnificationConnectionCallback;

    if-eqz v0, :cond_2

    :try_start_0
    invoke-interface {v0, v1, p0}, Landroid/view/accessibility/IMagnificationConnectionCallback;->onWindowMagnifierBoundsChanged(ILandroid/graphics/Rect;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "WindowMagnificationConnectionImpl"

    const-string v1, "Failed to inform bounds changed"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_0
    return-void
.end method
