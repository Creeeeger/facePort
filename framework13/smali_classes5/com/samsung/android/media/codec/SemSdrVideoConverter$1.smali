.class Lcom/samsung/android/media/codec/SemSdrVideoConverter$1;
.super Ljava/lang/Object;
.source "SemSdrVideoConverter.java"

# interfaces
.implements Lcom/samsung/android/media/convert/core/Convert$ConvertEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/media/codec/SemSdrVideoConverter;->setProgressEventListener(Lcom/samsung/android/media/codec/SemSdrVideoConverter$ProgressEventListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/media/codec/SemSdrVideoConverter;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/media/codec/SemSdrVideoConverter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/media/codec/SemSdrVideoConverter;

    .line 156
    iput-object p1, p0, Lcom/samsung/android/media/codec/SemSdrVideoConverter$1;->this$0:Lcom/samsung/android/media/codec/SemSdrVideoConverter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onCancelled()V
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/samsung/android/media/codec/SemSdrVideoConverter$1;->this$0:Lcom/samsung/android/media/codec/SemSdrVideoConverter;

    invoke-static {v0}, Lcom/samsung/android/media/codec/SemSdrVideoConverter;->-$$Nest$fgetmProgressEventListener(Lcom/samsung/android/media/codec/SemSdrVideoConverter;)Lcom/samsung/android/media/codec/SemSdrVideoConverter$ProgressEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/media/codec/SemSdrVideoConverter$ProgressEventListener;->onCancelled()V

    .line 176
    return-void
.end method

.method public blacklist onCompleted()V
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/samsung/android/media/codec/SemSdrVideoConverter$1;->this$0:Lcom/samsung/android/media/codec/SemSdrVideoConverter;

    invoke-static {v0}, Lcom/samsung/android/media/codec/SemSdrVideoConverter;->-$$Nest$fgetmProgressEventListener(Lcom/samsung/android/media/codec/SemSdrVideoConverter;)Lcom/samsung/android/media/codec/SemSdrVideoConverter$ProgressEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/media/codec/SemSdrVideoConverter$ProgressEventListener;->onCompleted()V

    .line 166
    return-void
.end method

.method public blacklist onFailed()V
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/samsung/android/media/codec/SemSdrVideoConverter$1;->this$0:Lcom/samsung/android/media/codec/SemSdrVideoConverter;

    invoke-static {v0}, Lcom/samsung/android/media/codec/SemSdrVideoConverter;->-$$Nest$fgetmProgressEventListener(Lcom/samsung/android/media/codec/SemSdrVideoConverter;)Lcom/samsung/android/media/codec/SemSdrVideoConverter$ProgressEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/media/codec/SemSdrVideoConverter$ProgressEventListener;->onFailed()V

    .line 171
    return-void
.end method

.method public blacklist onStarted()V
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/samsung/android/media/codec/SemSdrVideoConverter$1;->this$0:Lcom/samsung/android/media/codec/SemSdrVideoConverter;

    invoke-static {v0}, Lcom/samsung/android/media/codec/SemSdrVideoConverter;->-$$Nest$fgetmProgressEventListener(Lcom/samsung/android/media/codec/SemSdrVideoConverter;)Lcom/samsung/android/media/codec/SemSdrVideoConverter$ProgressEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/media/codec/SemSdrVideoConverter$ProgressEventListener;->onStarted()V

    .line 161
    return-void
.end method
