.class Lcom/samsung/android/media/SemMediaPlayer$1$1;
.super Ljava/lang/Object;
.source "SemMediaPlayer.java"

# interfaces
.implements Landroid/media/SubtitleController$Anchor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/media/SemMediaPlayer$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Lcom/samsung/android/media/SemMediaPlayer$1;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/media/SemMediaPlayer$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/media/SemMediaPlayer$1$1;->this$1:Lcom/samsung/android/media/SemMediaPlayer$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getSubtitleLooper()Landroid/os/Looper;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$1$1;->this$1:Lcom/samsung/android/media/SemMediaPlayer$1;

    iget-object v0, v0, Lcom/samsung/android/media/SemMediaPlayer$1;->val$timeProvider:Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;

    invoke-static {v0}, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->-$$Nest$fgetmEventHandler(Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public blacklist setSubtitleWidget(Landroid/media/SubtitleTrack$RenderingWidget;)V
    .locals 0

    return-void
.end method
