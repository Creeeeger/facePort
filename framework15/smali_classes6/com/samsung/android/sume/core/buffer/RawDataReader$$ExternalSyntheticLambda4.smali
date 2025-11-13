.class public final synthetic Lcom/samsung/android/sume/core/buffer/RawDataReader$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic blacklist f$0:Ljava/nio/ByteBuffer;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/nio/ByteBuffer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/buffer/RawDataReader$$ExternalSyntheticLambda4;->f$0:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public final whitelist test-api get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/RawDataReader$$ExternalSyntheticLambda4;->f$0:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/samsung/android/sume/core/buffer/RawDataReader;->lambda$getRawDataRead$3(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
