.class public final Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$3$Callback;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/plugins/OverlayPlugin$Callback;


# instance fields
.field public final mPlugin:Lcom/android/systemui/plugins/OverlayPlugin;

.field public final synthetic this$1:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$3;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$3;Lcom/android/systemui/plugins/OverlayPlugin;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$3$Callback;->this$1:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$3$Callback;->mPlugin:Lcom/android/systemui/plugins/OverlayPlugin;

    return-void
.end method


# virtual methods
.method public final onHoldStatusBarOpenChange()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$3$Callback;->mPlugin:Lcom/android/systemui/plugins/OverlayPlugin;

    invoke-interface {v0}, Lcom/android/systemui/plugins/OverlayPlugin;->holdStatusBarOpen()Z

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$3$Callback;->this$1:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$3;

    if-eqz v1, :cond_0

    iget-object v1, v2, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$3;->mOverlays:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v1, v2, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$3;->mOverlays:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    :goto_0
    iget-object v0, v2, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$3;->this$0:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mMainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    new-instance v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda29;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda29;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
