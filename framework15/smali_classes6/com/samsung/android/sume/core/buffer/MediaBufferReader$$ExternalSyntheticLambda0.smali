.class public final synthetic Lcom/samsung/android/sume/core/buffer/MediaBufferReader$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/samsung/android/sume/core/buffer/MediaBufferReader;


# instance fields
.field public final synthetic blacklist f$0:Lcom/samsung/android/sume/core/buffer/MediaBuffer;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferReader$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    return-void
.end method


# virtual methods
.method public final blacklist get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferReader$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    invoke-static {v0}, Lcom/samsung/android/sume/core/buffer/MediaBufferReader;->lambda$of$0(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
