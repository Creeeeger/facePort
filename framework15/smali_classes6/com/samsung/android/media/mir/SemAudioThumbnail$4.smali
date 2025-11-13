.class Lcom/samsung/android/media/mir/SemAudioThumbnail$4;
.super Ljava/lang/Thread;
.source "SemAudioThumbnail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/media/mir/SemAudioThumbnail;->sendErrorMessage(Lcom/samsung/android/media/mir/SemAudioThumbnail$ResultListener;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/media/mir/SemAudioThumbnail;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/media/mir/SemAudioThumbnail;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/media/mir/SemAudioThumbnail$4;->this$0:Lcom/samsung/android/media/mir/SemAudioThumbnail;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/media/mir/SemAudioThumbnail$4;->this$0:Lcom/samsung/android/media/mir/SemAudioThumbnail;

    invoke-static {v0}, Lcom/samsung/android/media/mir/SemAudioThumbnail;->-$$Nest$fgetmListener(Lcom/samsung/android/media/mir/SemAudioThumbnail;)Lcom/samsung/android/media/mir/SemAudioThumbnail$ResultListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/media/mir/SemAudioThumbnail$4;->this$0:Lcom/samsung/android/media/mir/SemAudioThumbnail;

    invoke-static {v0}, Lcom/samsung/android/media/mir/SemAudioThumbnail;->-$$Nest$fgetmListener(Lcom/samsung/android/media/mir/SemAudioThumbnail;)Lcom/samsung/android/media/mir/SemAudioThumbnail$ResultListener;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/media/mir/SemAudioThumbnail$4;->this$0:Lcom/samsung/android/media/mir/SemAudioThumbnail;

    invoke-static {v1}, Lcom/samsung/android/media/mir/SemAudioThumbnail;->-$$Nest$fgetlastError(Lcom/samsung/android/media/mir/SemAudioThumbnail;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/samsung/android/media/mir/SemAudioThumbnail$ResultListener;->onError(I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    :cond_0
    :goto_0
    nop

    :goto_1
    return-void
.end method
