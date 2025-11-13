.class public final synthetic Lcom/samsung/android/sume/core/buffer/RawDataReader$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic blacklist f$0:Ljava/nio/ByteBuffer;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/nio/ByteBuffer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/buffer/RawDataReader$$ExternalSyntheticLambda6;->f$0:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public final whitelist test-api apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/RawDataReader$$ExternalSyntheticLambda6;->f$0:Ljava/nio/ByteBuffer;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v0, p1}, Lcom/samsung/android/sume/core/buffer/RawDataReader;->lambda$getRawDataReadByIndex$6(Ljava/nio/ByteBuffer;Ljava/lang/Integer;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
