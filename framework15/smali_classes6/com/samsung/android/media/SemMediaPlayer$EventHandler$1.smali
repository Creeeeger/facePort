.class Lcom/samsung/android/media/SemMediaPlayer$EventHandler$1;
.super Ljava/lang/Object;
.source "SemMediaPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/media/SemMediaPlayer$EventHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Lcom/samsung/android/media/SemMediaPlayer$EventHandler;

.field final synthetic blacklist val$data:Landroid/media/SubtitleData;

.field final synthetic blacklist val$extSubtitleListener:Lcom/samsung/android/media/SemMediaPlayer$OnSubtitleDataListener;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/media/SemMediaPlayer$EventHandler;Lcom/samsung/android/media/SemMediaPlayer$OnSubtitleDataListener;Landroid/media/SubtitleData;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/media/SemMediaPlayer$EventHandler$1;->this$1:Lcom/samsung/android/media/SemMediaPlayer$EventHandler;

    iput-object p2, p0, Lcom/samsung/android/media/SemMediaPlayer$EventHandler$1;->val$extSubtitleListener:Lcom/samsung/android/media/SemMediaPlayer$OnSubtitleDataListener;

    iput-object p3, p0, Lcom/samsung/android/media/SemMediaPlayer$EventHandler$1;->val$data:Landroid/media/SubtitleData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$EventHandler$1;->val$extSubtitleListener:Lcom/samsung/android/media/SemMediaPlayer$OnSubtitleDataListener;

    iget-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer$EventHandler$1;->this$1:Lcom/samsung/android/media/SemMediaPlayer$EventHandler;

    invoke-static {v1}, Lcom/samsung/android/media/SemMediaPlayer$EventHandler;->-$$Nest$fgetmSemMediaPlayer(Lcom/samsung/android/media/SemMediaPlayer$EventHandler;)Lcom/samsung/android/media/SemMediaPlayer;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/media/SemMediaPlayer$EventHandler$1;->val$data:Landroid/media/SubtitleData;

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/media/SemMediaPlayer$OnSubtitleDataListener;->onSubtitleData(Lcom/samsung/android/media/SemMediaPlayer;Landroid/media/SubtitleData;)V

    return-void
.end method
