.class public final Lcom/android/systemui/media/dialog/MediaOutputController$1;
.super Landroid/media/session/MediaController$Callback;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/media/dialog/MediaOutputController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/dialog/MediaOutputController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputController$1;->this$0:Lcom/android/systemui/media/dialog/MediaOutputController;

    invoke-direct {p0}, Landroid/media/session/MediaController$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMetadataChanged(Landroid/media/MediaMetadata;)V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputController$1;->this$0:Lcom/android/systemui/media/dialog/MediaOutputController;

    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mCallback:Lcom/android/systemui/media/dialog/MediaOutputController$Callback;

    check-cast p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;

    iget-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mMainThreadHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog$$ExternalSyntheticLambda2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V
    .locals 3

    const/4 v0, 0x1

    if-nez p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getState()I

    move-result p1

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/media/dialog/MediaOutputController$1;->this$0:Lcom/android/systemui/media/dialog/MediaOutputController;

    iget v2, v1, Lcom/android/systemui/media/dialog/MediaOutputController;->mCurrentState:I

    if-ne v2, p1, :cond_1

    return-void

    :cond_1
    if-ne p1, v0, :cond_2

    iget-object v0, v1, Lcom/android/systemui/media/dialog/MediaOutputController;->mCallback:Lcom/android/systemui/media/dialog/MediaOutputController$Callback;

    check-cast v0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->dismiss()V

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputController$1;->this$0:Lcom/android/systemui/media/dialog/MediaOutputController;

    iput p1, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mCurrentState:I

    return-void
.end method
