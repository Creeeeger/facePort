.class public final Lcom/android/wm/shell/common/pip/PipMediaController$mMediaActionReceiver$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/common/pip/PipMediaController;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/common/pip/PipMediaController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/common/pip/PipMediaController$mMediaActionReceiver$1;->this$0:Lcom/android/wm/shell/common/pip/PipMediaController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    iget-object p1, p0, Lcom/android/wm/shell/common/pip/PipMediaController$mMediaActionReceiver$1;->this$0:Lcom/android/wm/shell/common/pip/PipMediaController;

    iget-object p1, p1, Lcom/android/wm/shell/common/pip/PipMediaController;->mMediaController:Landroid/media/session/MediaController;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string p2, "com.android.wm.shell.pip.PAUSE"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/wm/shell/common/pip/PipMediaController$mMediaActionReceiver$1;->this$0:Lcom/android/wm/shell/common/pip/PipMediaController;

    iget-object p0, p0, Lcom/android/wm/shell/common/pip/PipMediaController;->mMediaController:Landroid/media/session/MediaController;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/session/MediaController$TransportControls;->pause()V

    goto :goto_0

    :sswitch_1
    const-string p2, "com.android.wm.shell.pip.PREV"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/android/wm/shell/common/pip/PipMediaController$mMediaActionReceiver$1;->this$0:Lcom/android/wm/shell/common/pip/PipMediaController;

    iget-object p0, p0, Lcom/android/wm/shell/common/pip/PipMediaController;->mMediaController:Landroid/media/session/MediaController;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/session/MediaController$TransportControls;->skipToPrevious()V

    goto :goto_0

    :sswitch_2
    const-string p2, "com.android.wm.shell.pip.PLAY"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/android/wm/shell/common/pip/PipMediaController$mMediaActionReceiver$1;->this$0:Lcom/android/wm/shell/common/pip/PipMediaController;

    iget-object p0, p0, Lcom/android/wm/shell/common/pip/PipMediaController;->mMediaController:Landroid/media/session/MediaController;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/session/MediaController$TransportControls;->play()V

    goto :goto_0

    :sswitch_3
    const-string p2, "com.android.wm.shell.pip.NEXT"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    iget-object p0, p0, Lcom/android/wm/shell/common/pip/PipMediaController$mMediaActionReceiver$1;->this$0:Lcom/android/wm/shell/common/pip/PipMediaController;

    iget-object p0, p0, Lcom/android/wm/shell/common/pip/PipMediaController;->mMediaController:Landroid/media/session/MediaController;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/session/MediaController$TransportControls;->skipToNext()V

    :cond_5
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x2681914 -> :sswitch_3
        0x2691955 -> :sswitch_2
        0x2693054 -> :sswitch_1
        0x4ab55bd5 -> :sswitch_0
    .end sparse-switch
.end method
