.class public Landroid/media/MediaDrmException;
.super Ljava/lang/Exception;
.source "MediaDrmException.java"

# interfaces
.implements Landroid/media/MediaDrmThrowable;


# instance fields
.field private final blacklist mErrorContext:I

.field private final blacklist mOemError:I

.field private final blacklist mVendorError:I


# direct methods
.method public constructor whitelist <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0, v0}, Landroid/media/MediaDrmException;-><init>(Ljava/lang/String;III)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;III)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput p2, p0, Landroid/media/MediaDrmException;->mVendorError:I

    iput p3, p0, Landroid/media/MediaDrmException;->mOemError:I

    iput p4, p0, Landroid/media/MediaDrmException;->mErrorContext:I

    return-void
.end method


# virtual methods
.method public whitelist getErrorContext()I
    .locals 1

    iget v0, p0, Landroid/media/MediaDrmException;->mErrorContext:I

    return v0
.end method

.method public whitelist getOemError()I
    .locals 1

    iget v0, p0, Landroid/media/MediaDrmException;->mOemError:I

    return v0
.end method

.method public whitelist getVendorError()I
    .locals 1

    iget v0, p0, Landroid/media/MediaDrmException;->mVendorError:I

    return v0
.end method
