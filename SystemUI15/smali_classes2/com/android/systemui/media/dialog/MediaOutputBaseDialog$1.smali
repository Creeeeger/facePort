.class public final Lcom/android/systemui/media/dialog/MediaOutputBaseDialog$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/bluetooth/BluetoothLeBroadcast$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog$1;->this$0:Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBroadcastMetadataChanged(ILandroid/bluetooth/BluetoothLeBroadcastMetadata;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onBroadcastMetadataChanged(), broadcastId = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", metadata = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MediaOutputDialog"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog$1;->this$0:Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;

    iget-object p1, p1, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mMainThreadHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog$1$$ExternalSyntheticLambda0;

    const/4 v0, 0x5

    invoke-direct {p2, p0, v0}, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/media/dialog/MediaOutputBaseDialog$1;I)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onBroadcastStartFailed(I)V
    .locals 3

    const-string v0, "onBroadcastStartFailed(), reason = "

    const-string v1, "MediaOutputDialog"

    invoke-static {p1, v0, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog$1;->this$0:Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;

    iget-object p1, p1, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mMainThreadHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog$1$$ExternalSyntheticLambda0;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/media/dialog/MediaOutputBaseDialog$1;I)V

    const-wide/16 v1, 0xbb8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final onBroadcastStarted(II)V
    .locals 3

    const-string v0, "onBroadcastStarted(), reason = "

    const-string v1, ", broadcastId = "

    const-string v2, "MediaOutputDialog"

    invoke-static {p1, p2, v0, v1, v2}, Landroidx/appcompat/widget/SuggestionsAdapter$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog$1;->this$0:Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;

    iget-object p1, p1, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mMainThreadHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog$1$$ExternalSyntheticLambda0;

    const/4 v0, 0x1

    invoke-direct {p2, p0, v0}, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/media/dialog/MediaOutputBaseDialog$1;I)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onBroadcastStopFailed(I)V
    .locals 2

    const-string v0, "onBroadcastStopFailed(), reason = "

    const-string v1, "MediaOutputDialog"

    invoke-static {p1, v0, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog$1;->this$0:Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;

    iget-object p1, p1, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mMainThreadHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog$1$$ExternalSyntheticLambda0;

    const/4 v1, 0x6

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/media/dialog/MediaOutputBaseDialog$1;I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onBroadcastStopped(II)V
    .locals 3

    const-string v0, "onBroadcastStopped(), reason = "

    const-string v1, ", broadcastId = "

    const-string v2, "MediaOutputDialog"

    invoke-static {p1, p2, v0, v1, v2}, Landroidx/appcompat/widget/SuggestionsAdapter$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog$1;->this$0:Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;

    iget-object p1, p1, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mMainThreadHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog$1$$ExternalSyntheticLambda0;

    const/4 v0, 0x2

    invoke-direct {p2, p0, v0}, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/media/dialog/MediaOutputBaseDialog$1;I)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onBroadcastUpdateFailed(II)V
    .locals 3

    const-string v0, "onBroadcastUpdateFailed(), reason = "

    const-string v1, ", broadcastId = "

    const-string v2, "MediaOutputDialog"

    invoke-static {p1, p2, v0, v1, v2}, Landroidx/appcompat/widget/SuggestionsAdapter$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog$1;->this$0:Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;

    iget-object p1, p1, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mMainThreadHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog$1$$ExternalSyntheticLambda0;

    const/4 v0, 0x3

    invoke-direct {p2, p0, v0}, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/media/dialog/MediaOutputBaseDialog$1;I)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onBroadcastUpdated(II)V
    .locals 3

    const-string v0, "onBroadcastUpdated(), reason = "

    const-string v1, ", broadcastId = "

    const-string v2, "MediaOutputDialog"

    invoke-static {p1, p2, v0, v1, v2}, Landroidx/appcompat/widget/SuggestionsAdapter$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog$1;->this$0:Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;

    iget-object p1, p1, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mMainThreadHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog$1$$ExternalSyntheticLambda0;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/media/dialog/MediaOutputBaseDialog$1;I)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onPlaybackStarted(II)V
    .locals 0

    return-void
.end method

.method public final onPlaybackStopped(II)V
    .locals 0

    return-void
.end method
