.class public final synthetic Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda28;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiFunction;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/samsung/android/sume/core/format/MediaFormat;

    check-cast p2, Ljava/lang/Number;

    invoke-static {p1, p2}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->lambda$new$3(Lcom/samsung/android/sume/core/format/MediaFormat;Ljava/lang/Number;)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method
