.class public final synthetic Lcom/samsung/android/sume/core/buffer/RawDataReader$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic blacklist f$0:Lcom/samsung/android/sume/core/buffer/RawDataReader;

.field public final synthetic blacklist f$1:Lcom/samsung/android/sume/core/format/MediaFormat;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/samsung/android/sume/core/buffer/RawDataReader;Lcom/samsung/android/sume/core/format/MediaFormat;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/buffer/RawDataReader$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/sume/core/buffer/RawDataReader;

    iput-object p2, p0, Lcom/samsung/android/sume/core/buffer/RawDataReader$$ExternalSyntheticLambda0;->f$1:Lcom/samsung/android/sume/core/format/MediaFormat;

    return-void
.end method


# virtual methods
.method public final whitelist test-api apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/RawDataReader$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/sume/core/buffer/RawDataReader;

    iget-object v1, p0, Lcom/samsung/android/sume/core/buffer/RawDataReader$$ExternalSyntheticLambda0;->f$1:Lcom/samsung/android/sume/core/format/MediaFormat;

    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/sume/core/buffer/RawDataReader;->lambda$new$8$com-samsung-android-sume-core-buffer-RawDataReader(Lcom/samsung/android/sume/core/format/MediaFormat;Ljava/nio/ByteBuffer;)Ljava/util/function/Supplier;

    move-result-object p1

    return-object p1
.end method
