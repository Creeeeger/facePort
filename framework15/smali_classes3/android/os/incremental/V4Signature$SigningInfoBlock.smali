.class public Landroid/os/incremental/V4Signature$SigningInfoBlock;
.super Ljava/lang/Object;
.source "V4Signature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/incremental/V4Signature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SigningInfoBlock"
.end annotation


# instance fields
.field public final blacklist blockId:I

.field public final blacklist signingInfo:[B


# direct methods
.method public constructor blacklist <init>(I[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/os/incremental/V4Signature$SigningInfoBlock;->blockId:I

    iput-object p2, p0, Landroid/os/incremental/V4Signature$SigningInfoBlock;->signingInfo:[B

    return-void
.end method

.method static blacklist fromByteBuffer(Ljava/nio/ByteBuffer;)Landroid/os/incremental/V4Signature$SigningInfoBlock;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    invoke-static {p0}, Landroid/os/incremental/V4Signature;->-$$Nest$smreadBytes(Ljava/nio/ByteBuffer;)[B

    move-result-object v1

    new-instance v2, Landroid/os/incremental/V4Signature$SigningInfoBlock;

    invoke-direct {v2, v0, v1}, Landroid/os/incremental/V4Signature$SigningInfoBlock;-><init>(I[B)V

    return-object v2
.end method
