.class public final synthetic Lcom/samsung/android/sume/core/buffer/MediaBufferGroup$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/IntFunction;


# instance fields
.field public final synthetic blacklist f$0:Lcom/samsung/android/sume/core/buffer/MediaBufferGroup;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/samsung/android/sume/core/buffer/MediaBufferGroup;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferGroup$$ExternalSyntheticLambda6;->f$0:Lcom/samsung/android/sume/core/buffer/MediaBufferGroup;

    return-void
.end method


# virtual methods
.method public final whitelist test-api apply(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferGroup$$ExternalSyntheticLambda6;->f$0:Lcom/samsung/android/sume/core/buffer/MediaBufferGroup;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sume/core/buffer/MediaBufferGroup;->lambda$dataToString$3$com-samsung-android-sume-core-buffer-MediaBufferGroup(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
