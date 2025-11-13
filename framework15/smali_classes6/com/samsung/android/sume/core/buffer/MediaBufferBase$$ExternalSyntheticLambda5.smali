.class public final synthetic Lcom/samsung/android/sume/core/buffer/MediaBufferBase$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/IntPredicate;


# instance fields
.field public final synthetic blacklist f$0:Lcom/samsung/android/sume/core/buffer/MediaBufferBase;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/samsung/android/sume/core/buffer/MediaBufferBase;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferBase$$ExternalSyntheticLambda5;->f$0:Lcom/samsung/android/sume/core/buffer/MediaBufferBase;

    return-void
.end method


# virtual methods
.method public final whitelist test-api test(I)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferBase$$ExternalSyntheticLambda5;->f$0:Lcom/samsung/android/sume/core/buffer/MediaBufferBase;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->lambda$containFlags$0$com-samsung-android-sume-core-buffer-MediaBufferBase(I)Z

    move-result p1

    return p1
.end method
