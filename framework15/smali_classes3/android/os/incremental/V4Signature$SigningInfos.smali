.class public Landroid/os/incremental/V4Signature$SigningInfos;
.super Ljava/lang/Object;
.source "V4Signature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/incremental/V4Signature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SigningInfos"
.end annotation


# instance fields
.field public final blacklist signingInfo:Landroid/os/incremental/V4Signature$SigningInfo;

.field public final blacklist signingInfoBlocks:[Landroid/os/incremental/V4Signature$SigningInfoBlock;


# direct methods
.method public constructor blacklist <init>(Landroid/os/incremental/V4Signature$SigningInfo;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/incremental/V4Signature$SigningInfos;->signingInfo:Landroid/os/incremental/V4Signature$SigningInfo;

    const/4 v0, 0x0

    new-array v0, v0, [Landroid/os/incremental/V4Signature$SigningInfoBlock;

    iput-object v0, p0, Landroid/os/incremental/V4Signature$SigningInfos;->signingInfoBlocks:[Landroid/os/incremental/V4Signature$SigningInfoBlock;

    return-void
.end method

.method public varargs constructor blacklist <init>(Landroid/os/incremental/V4Signature$SigningInfo;[Landroid/os/incremental/V4Signature$SigningInfoBlock;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/incremental/V4Signature$SigningInfos;->signingInfo:Landroid/os/incremental/V4Signature$SigningInfo;

    iput-object p2, p0, Landroid/os/incremental/V4Signature$SigningInfos;->signingInfoBlocks:[Landroid/os/incremental/V4Signature$SigningInfoBlock;

    return-void
.end method

.method public static blacklist fromByteArray([B)Landroid/os/incremental/V4Signature$SigningInfos;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Landroid/os/incremental/V4Signature$SigningInfo;->fromByteBuffer(Ljava/nio/ByteBuffer;)Landroid/os/incremental/V4Signature$SigningInfo;

    move-result-object v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Landroid/os/incremental/V4Signature$SigningInfos;

    invoke-direct {v2, v1}, Landroid/os/incremental/V4Signature$SigningInfos;-><init>(Landroid/os/incremental/V4Signature$SigningInfo;)V

    return-object v2

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v0}, Landroid/os/incremental/V4Signature$SigningInfoBlock;->fromByteBuffer(Ljava/nio/ByteBuffer;)Landroid/os/incremental/V4Signature$SigningInfoBlock;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v3, Landroid/os/incremental/V4Signature$SigningInfos;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Landroid/os/incremental/V4Signature$SigningInfoBlock;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/os/incremental/V4Signature$SigningInfoBlock;

    invoke-direct {v3, v1, v4}, Landroid/os/incremental/V4Signature$SigningInfos;-><init>(Landroid/os/incremental/V4Signature$SigningInfo;[Landroid/os/incremental/V4Signature$SigningInfoBlock;)V

    return-object v3
.end method
