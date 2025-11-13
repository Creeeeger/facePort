.class public final synthetic Lcom/samsung/android/sume/MediaBuffer$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic blacklist f$0:Lcom/samsung/android/sume/MediaBuffer;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/samsung/android/sume/MediaBuffer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/MediaBuffer$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/sume/MediaBuffer;

    return-void
.end method


# virtual methods
.method public final whitelist test-api apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sume/MediaBuffer$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/sume/MediaBuffer;

    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sume/MediaBuffer;->lambda$toHardwareBuffer$2$com-samsung-android-sume-MediaBuffer(Ljava/nio/ByteBuffer;)Landroid/hardware/HardwareBuffer;

    move-result-object p1

    return-object p1
.end method
