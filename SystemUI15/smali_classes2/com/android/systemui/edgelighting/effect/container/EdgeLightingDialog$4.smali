.class public final Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog$4;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;


# direct methods
.method public constructor <init>(Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog$4;->this$0:Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFinishAnimation()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog$4;->this$0:Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;

    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mApplicationEffect:Lcom/android/systemui/edgelighting/effect/container/ApplicationEffect;

    if-eqz v0, :cond_0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isShown()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mNotificationEffect:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    if-eqz v0, :cond_1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isShown()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    invoke-static {p0}, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->-$$Nest$mselfDismissWindow(Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;)V

    :cond_2
    return-void
.end method
