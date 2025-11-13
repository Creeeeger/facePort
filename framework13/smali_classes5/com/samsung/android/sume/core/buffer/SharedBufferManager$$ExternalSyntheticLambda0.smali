.class public final synthetic Lcom/samsung/android/sume/core/buffer/SharedBufferManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic blacklist f$0:Lcom/samsung/android/sume/core/buffer/SharedBufferManager;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/samsung/android/sume/core/buffer/SharedBufferManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/buffer/SharedBufferManager$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/sume/core/buffer/SharedBufferManager;

    return-void
.end method


# virtual methods
.method public final whitelist test-api apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/SharedBufferManager$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/sume/core/buffer/SharedBufferManager;

    check-cast p1, Lcom/samsung/android/sume/core/format/MediaFormat;

    check-cast p2, Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sume/core/buffer/SharedBufferManager;->lambda$initBufferExtensions$0$com-samsung-android-sume-core-buffer-SharedBufferManager(Lcom/samsung/android/sume/core/format/MediaFormat;Ljava/nio/ByteBuffer;)Landroid/hardware/HardwareBuffer;

    move-result-object p1

    return-object p1
.end method
