.class public final Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$4;
.super Landroid/os/Handler;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;


# direct methods
.method public constructor <init>(Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$4;->this$0:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final dispatchMessage(Landroid/os/Message;)V
    .locals 3

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$4;->this$0:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    const/4 v1, 0x4

    if-eq p1, v0, :cond_1

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->requestHideEffectView()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/AbsEdgeLightingView;->mEdgeListener:Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog$4;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog$4;->onFinishAnimation()V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mMorphView:Lcom/android/systemui/edgelighting/effect/view/MorphView;

    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/effect/view/MorphView;->hide()V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mMorphView:Lcom/android/systemui/edgelighting/effect/view/MorphView;

    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/effect/view/MorphView;->show()V

    iget-object p1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mTouchableRec:Landroid/graphics/Rect;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "EdgeLightingTouchableRect="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mTouchableRec:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mTouchableRec:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mTouchableRec:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mTouchableRec:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_0
    return-void
.end method
