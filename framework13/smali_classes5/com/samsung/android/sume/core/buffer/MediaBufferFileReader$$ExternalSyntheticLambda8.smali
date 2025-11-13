.class public final synthetic Lcom/samsung/android/sume/core/buffer/MediaBufferFileReader$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic blacklist f$0:Lcom/samsung/android/sume/core/buffer/MediaBufferFileReader;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/samsung/android/sume/core/buffer/MediaBufferFileReader;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferFileReader$$ExternalSyntheticLambda8;->f$0:Lcom/samsung/android/sume/core/buffer/MediaBufferFileReader;

    return-void
.end method


# virtual methods
.method public final whitelist test-api apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferFileReader$$ExternalSyntheticLambda8;->f$0:Lcom/samsung/android/sume/core/buffer/MediaBufferFileReader;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sume/core/buffer/MediaBufferFileReader;->lambda$read$7$com-samsung-android-sume-core-buffer-MediaBufferFileReader(Ljava/lang/String;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object p1

    return-object p1
.end method
