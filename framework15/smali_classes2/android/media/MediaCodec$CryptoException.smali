.class public final Landroid/media/MediaCodec$CryptoException;
.super Ljava/lang/RuntimeException;
.source "MediaCodec.java"

# interfaces
.implements Landroid/media/MediaDrmThrowable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaCodec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CryptoException"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaCodec$CryptoException$CryptoErrorCode;
    }
.end annotation


# static fields
.field public static final whitelist ERROR_FRAME_TOO_LARGE:I = 0x8

.field public static final whitelist ERROR_INSUFFICIENT_OUTPUT_PROTECTION:I = 0x4

.field public static final whitelist ERROR_INSUFFICIENT_SECURITY:I = 0x7

.field public static final whitelist ERROR_KEY_EXPIRED:I = 0x2

.field public static final whitelist ERROR_LOST_STATE:I = 0x9

.field public static final whitelist ERROR_NO_KEY:I = 0x1

.field public static final whitelist ERROR_RESOURCE_BUSY:I = 0x3

.field public static final whitelist ERROR_SESSION_NOT_OPENED:I = 0x5

.field public static final whitelist ERROR_UNSUPPORTED_OPERATION:I = 0x6


# instance fields
.field private blacklist mCryptoInfo:Landroid/media/MediaCodec$CryptoInfo;

.field private final greylist-max-o mErrorCode:I

.field private final blacklist mErrorContext:I

.field private final blacklist mOemError:I

.field private final blacklist mVendorError:I


# direct methods
.method public constructor whitelist <init>(ILjava/lang/String;)V
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p2

    move v2, p1

    invoke-direct/range {v0 .. v6}, Landroid/media/MediaCodec$CryptoException;-><init>(Ljava/lang/String;IIIILandroid/media/MediaCodec$CryptoInfo;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;IIIILandroid/media/MediaCodec$CryptoInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iput p2, p0, Landroid/media/MediaCodec$CryptoException;->mErrorCode:I

    iput p3, p0, Landroid/media/MediaCodec$CryptoException;->mVendorError:I

    iput p4, p0, Landroid/media/MediaCodec$CryptoException;->mOemError:I

    iput p5, p0, Landroid/media/MediaCodec$CryptoException;->mErrorContext:I

    iput-object p6, p0, Landroid/media/MediaCodec$CryptoException;->mCryptoInfo:Landroid/media/MediaCodec$CryptoInfo;

    return-void
.end method


# virtual methods
.method public whitelist getCryptoInfo()Landroid/media/MediaCodec$CryptoInfo;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaCodec$CryptoException;->mCryptoInfo:Landroid/media/MediaCodec$CryptoInfo;

    return-object v0
.end method

.method public whitelist getErrorCode()I
    .locals 1

    iget v0, p0, Landroid/media/MediaCodec$CryptoException;->mErrorCode:I

    return v0
.end method

.method public whitelist getErrorContext()I
    .locals 1

    iget v0, p0, Landroid/media/MediaCodec$CryptoException;->mErrorContext:I

    return v0
.end method

.method public whitelist getOemError()I
    .locals 1

    iget v0, p0, Landroid/media/MediaCodec$CryptoException;->mOemError:I

    return v0
.end method

.method public whitelist getVendorError()I
    .locals 1

    iget v0, p0, Landroid/media/MediaCodec$CryptoException;->mVendorError:I

    return v0
.end method
