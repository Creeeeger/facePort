.class public final synthetic Lcom/samsung/android/sume/core/buffer/MediaBufferFileReader$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic blacklist f$0:Lcom/samsung/android/sume/core/format/MediaFormat;

.field public final synthetic blacklist f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/samsung/android/sume/core/format/MediaFormat;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferFileReader$$ExternalSyntheticLambda5;->f$0:Lcom/samsung/android/sume/core/format/MediaFormat;

    iput-object p2, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferFileReader$$ExternalSyntheticLambda5;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final whitelist test-api apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferFileReader$$ExternalSyntheticLambda5;->f$0:Lcom/samsung/android/sume/core/format/MediaFormat;

    iget-object v1, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferFileReader$$ExternalSyntheticLambda5;->f$1:Ljava/lang/String;

    check-cast p1, Ljava/util/function/BiFunction;

    invoke-static {v0, v1, p1}, Lcom/samsung/android/sume/core/buffer/MediaBufferFileReader;->lambda$read$5(Lcom/samsung/android/sume/core/format/MediaFormat;Ljava/lang/String;Ljava/util/function/BiFunction;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object p1

    return-object p1
.end method
