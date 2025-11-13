.class public final Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;


# direct methods
.method public constructor <init>(Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$2;->this$0:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    const-string v0, "isActivity: false "

    const-string v1, "launchPopupWindow: bounds="

    :try_start_0
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/ActivityOptions;->setPendingIntentBackgroundActivityStartMode(I)Landroid/app/ActivityOptions;

    iget-object v4, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$2;->this$0:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    invoke-static {v4}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->-$$Nest$mfreeformLaunchBounds(Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;)Landroid/graphics/Rect;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$2;->this$0:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    iget-object v5, v5, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$2;->this$0:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    const/4 v5, 0x0

    iput-boolean v5, v1, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mIsActivity:Z

    iget-object v1, v1, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mPendingIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/app/PendingIntent;->isActivity()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$2;->this$0:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    iput-boolean v3, v0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mIsActivity:Z

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$2;->this$0:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    iget-object v1, v1, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$2;->this$0:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    iget-object v0, v0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-virtual {v4}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v2, v4}, Landroid/app/ActivityOptions;->setLaunchBounds(Landroid/graphics/Rect;)Landroid/app/ActivityOptions;

    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$2;->this$0:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    iget-object v4, v0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v11

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v4 .. v11}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$2;->this$0:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    iget-object v1, v0, Lcom/android/systemui/edgelighting/effect/container/AbsEdgeLightingView;->mEdgeListener:Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog$4;

    if-eqz v1, :cond_2

    iget-boolean v0, v0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mIsActivity:Z

    iget-object v1, v1, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog$4;->this$0:Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;

    iget-object v1, v1, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mWindowCallback:Lcom/android/systemui/edgelighting/effect/interfaces/IEdgeLightingWindowCallback;

    if-eqz v1, :cond_2

    invoke-interface {v1, v3, v0}, Lcom/android/systemui/edgelighting/effect/interfaces/IEdgeLightingWindowCallback;->onFling(ZZ)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    iget-object v1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$2;->this$0:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    iget-object v2, v1, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mPendingIntent:Landroid/app/PendingIntent;

    if-eqz v2, :cond_2

    iget-object v1, v1, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " pending intent from "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$2;->this$0:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {p0}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is canceled "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/app/PendingIntent$CanceledException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_2
    return-void
.end method
