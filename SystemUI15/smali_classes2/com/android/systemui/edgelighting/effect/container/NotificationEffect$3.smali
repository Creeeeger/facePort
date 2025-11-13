.class public final Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;


# direct methods
.method public constructor <init>(Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$3;->this$0:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    iget-object p1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$3;->this$0:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    iget-object v0, p1, Lcom/android/systemui/edgelighting/effect/container/AbsEdgeLightingView;->mEdgeListener:Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog$4;

    if-eqz v0, :cond_1

    iget-object p1, p1, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mNotificationKey:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog$4;->this$0:Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;

    iget-object v1, v0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mWindowCallback:Lcom/android/systemui/edgelighting/effect/interfaces/IEdgeLightingWindowCallback;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lcom/android/systemui/edgelighting/effect/interfaces/IEdgeLightingWindowCallback;->onClickExpandButton(Ljava/lang/String;)V

    :cond_0
    invoke-static {v0}, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->-$$Nest$mdismissInternal(Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;)V

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$3;->this$0:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    sget-boolean p1, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mBlockNotiTouch_for_NA:Z

    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->requestHideEffectView()V

    iget-object p1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mMorphView:Lcom/android/systemui/edgelighting/effect/view/MorphView;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/effect/view/MorphView;->disappear()V

    :cond_2
    iget-object p1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mAODManager:Lcom/samsung/android/aod/AODManager;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->TAG:Ljava/lang/String;

    const-string v0, " remove edge  tsp  rect "

    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mAODManager:Lcom/samsung/android/aod/AODManager;

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v2, -0x1

    const/4 v5, -0x1

    const-string v6, "brief_popup"

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/aod/AODManager;->updateAODTspRect(IIIILjava/lang/String;)V

    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->unregisterAODReceiver()V

    return-void
.end method
