.class public final Landroid/media/MediaDrm$MediaDrmStateException;
.super Ljava/lang/IllegalStateException;
.source "MediaDrm.java"

# interfaces
.implements Landroid/media/MediaDrmThrowable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaDrm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MediaDrmStateException"
.end annotation


# instance fields
.field private final greylist-max-o mDiagnosticInfo:Ljava/lang/String;

.field private final greylist-max-o mErrorCode:I

.field private final blacklist mErrorContext:I

.field private final blacklist mOemError:I

.field private final blacklist mVendorError:I


# direct methods
.method public constructor greylist-max-o <init>(ILjava/lang/String;)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p2

    move v2, p1

    invoke-direct/range {v0 .. v5}, Landroid/media/MediaDrm$MediaDrmStateException;-><init>(Ljava/lang/String;IIII)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;IIII)V
    .locals 3

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    iput p2, p0, Landroid/media/MediaDrm$MediaDrmStateException;->mErrorCode:I

    iput p3, p0, Landroid/media/MediaDrm$MediaDrmStateException;->mVendorError:I

    iput p4, p0, Landroid/media/MediaDrm$MediaDrmStateException;->mOemError:I

    iput p5, p0, Landroid/media/MediaDrm$MediaDrmStateException;->mErrorContext:I

    if-gez p2, :cond_0

    const-string v0, "neg_"

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.media.MediaDrm.error_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/media/MediaDrm$MediaDrmStateException;->mDiagnosticInfo:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public whitelist getDiagnosticInfo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaDrm$MediaDrmStateException;->mDiagnosticInfo:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getErrorCode()I
    .locals 1

    iget v0, p0, Landroid/media/MediaDrm$MediaDrmStateException;->mErrorCode:I

    return v0
.end method

.method public whitelist getErrorContext()I
    .locals 1

    iget v0, p0, Landroid/media/MediaDrm$MediaDrmStateException;->mErrorContext:I

    return v0
.end method

.method public whitelist getOemError()I
    .locals 1

    iget v0, p0, Landroid/media/MediaDrm$MediaDrmStateException;->mOemError:I

    return v0
.end method

.method public whitelist getVendorError()I
    .locals 1

    iget v0, p0, Landroid/media/MediaDrm$MediaDrmStateException;->mVendorError:I

    return v0
.end method

.method public whitelist isTransient()Z
    .locals 2

    iget v0, p0, Landroid/media/MediaDrm$MediaDrmStateException;->mErrorCode:I

    const/16 v1, 0x1c

    if-eq v0, v1, :cond_1

    iget v0, p0, Landroid/media/MediaDrm$MediaDrmStateException;->mErrorCode:I

    const/16 v1, 0x1d

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
