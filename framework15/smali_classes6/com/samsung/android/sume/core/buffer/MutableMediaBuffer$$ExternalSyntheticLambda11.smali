.class public final synthetic Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic blacklist f$0:Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer$$ExternalSyntheticLambda11;->f$0:Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;

    return-void
.end method


# virtual methods
.method public final whitelist test-api get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer$$ExternalSyntheticLambda11;->f$0:Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->lambda$stream$0$com-samsung-android-sume-core-buffer-MutableMediaBuffer()Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method
