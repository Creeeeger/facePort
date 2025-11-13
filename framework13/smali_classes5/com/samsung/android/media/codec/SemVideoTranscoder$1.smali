.class Lcom/samsung/android/media/codec/SemVideoTranscoder$1;
.super Ljava/lang/Object;
.source "SemVideoTranscoder.java"

# interfaces
.implements Lcom/samsung/android/transcode/core/Encode$EncodeEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/media/codec/SemVideoTranscoder;->setProgressEventListener(Lcom/samsung/android/media/codec/SemVideoTranscoder$ProgressEventListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/media/codec/SemVideoTranscoder;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/media/codec/SemVideoTranscoder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/media/codec/SemVideoTranscoder;

    .line 297
    iput-object p1, p0, Lcom/samsung/android/media/codec/SemVideoTranscoder$1;->this$0:Lcom/samsung/android/media/codec/SemVideoTranscoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onCompleted()V
    .locals 1

    .line 306
    iget-object v0, p0, Lcom/samsung/android/media/codec/SemVideoTranscoder$1;->this$0:Lcom/samsung/android/media/codec/SemVideoTranscoder;

    invoke-static {v0}, Lcom/samsung/android/media/codec/SemVideoTranscoder;->-$$Nest$fgetmProgressEventListener(Lcom/samsung/android/media/codec/SemVideoTranscoder;)Lcom/samsung/android/media/codec/SemVideoTranscoder$ProgressEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/media/codec/SemVideoTranscoder$ProgressEventListener;->onCompleted()V

    .line 307
    return-void
.end method

.method public blacklist onStarted()V
    .locals 1

    .line 301
    iget-object v0, p0, Lcom/samsung/android/media/codec/SemVideoTranscoder$1;->this$0:Lcom/samsung/android/media/codec/SemVideoTranscoder;

    invoke-static {v0}, Lcom/samsung/android/media/codec/SemVideoTranscoder;->-$$Nest$fgetmProgressEventListener(Lcom/samsung/android/media/codec/SemVideoTranscoder;)Lcom/samsung/android/media/codec/SemVideoTranscoder$ProgressEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/media/codec/SemVideoTranscoder$ProgressEventListener;->onStarted()V

    .line 302
    return-void
.end method
