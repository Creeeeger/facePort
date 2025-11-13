.class Lcom/samsung/android/media/SemMediaPlayer$1;
.super Ljava/lang/Object;
.source "SemMediaPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/media/SemMediaPlayer;->setSubtitleAnchor()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/media/SemMediaPlayer;

.field final synthetic blacklist val$thread:Landroid/os/HandlerThread;

.field final synthetic blacklist val$timeProvider:Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/media/SemMediaPlayer;Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;Landroid/os/HandlerThread;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/media/SemMediaPlayer;

    .line 4445
    iput-object p1, p0, Lcom/samsung/android/media/SemMediaPlayer$1;->this$0:Lcom/samsung/android/media/SemMediaPlayer;

    iput-object p2, p0, Lcom/samsung/android/media/SemMediaPlayer$1;->val$timeProvider:Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;

    iput-object p3, p0, Lcom/samsung/android/media/SemMediaPlayer$1;->val$thread:Landroid/os/HandlerThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 5

    .line 4448
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    .line 4449
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer$1;->this$0:Lcom/samsung/android/media/SemMediaPlayer;

    new-instance v2, Landroid/media/SubtitleController;

    iget-object v3, p0, Lcom/samsung/android/media/SemMediaPlayer$1;->val$timeProvider:Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;

    iget-object v4, p0, Lcom/samsung/android/media/SemMediaPlayer$1;->this$0:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-direct {v2, v0, v3, v4}, Landroid/media/SubtitleController;-><init>(Landroid/content/Context;Landroid/media/MediaTimeProvider;Landroid/media/SubtitleController$Listener;)V

    invoke-static {v1, v2}, Lcom/samsung/android/media/SemMediaPlayer;->-$$Nest$fputmSubtitleController(Lcom/samsung/android/media/SemMediaPlayer;Landroid/media/SubtitleController;)V

    .line 4451
    iget-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer$1;->this$0:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-static {v1}, Lcom/samsung/android/media/SemMediaPlayer;->-$$Nest$fgetmSubtitleController(Lcom/samsung/android/media/SemMediaPlayer;)Landroid/media/SubtitleController;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/media/SemMediaPlayer$1$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/media/SemMediaPlayer$1$1;-><init>(Lcom/samsung/android/media/SemMediaPlayer$1;)V

    invoke-virtual {v1, v2}, Landroid/media/SubtitleController;->setAnchor(Landroid/media/SubtitleController$Anchor;)V

    .line 4461
    iget-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer$1;->val$thread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quitSafely()V

    .line 4462
    return-void
.end method
