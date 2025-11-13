.class public Lcom/samsung/android/settings/analyzestorage/data/model/CommonFileInfo;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/android/settings/analyzestorage/domain/entity/FileInfo;
.implements Ljava/lang/Cloneable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mDate:J

.field private mDomainType:I

.field private mExt:Ljava/lang/String;

.field protected mFileId:Ljava/lang/String;

.field private mFileType:I

.field protected mFullPath:Ljava/lang/String;

.field private mId:J

.field private mIsHidden:Z

.field private mItemCount:I

.field private mItemCountHidden:I

.field private mMimeType:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mParentHash:I

.field protected mParentId:Ljava/lang/String;

.field private mPath:Ljava/lang/String;

.field private mSize:J

.field private mTrashed:Z

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/data/model/CommonFileInfo;->mFullPath:Ljava/lang/String;

    if-eqz p1, :cond_1

    sget-char v0, Ljava/io/File;->separatorChar:C

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/data/model/CommonFileInfo;->mFullPath:Ljava/lang/String;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/data/model/CommonFileInfo;->mName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/analyzestorage/data/model/CommonFileInfo;->mFullPath:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/data/model/CommonFileInfo;->mName:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string p1, "CommonFileInfo"

    const-string/jumbo v0, "setFullPath() ] fullPath is null"

    invoke-static {p1, v0}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lcom/samsung/android/settings/analyzestorage/data/model/CommonFileInfo;->mFullPath:Ljava/lang/String;

    if-eqz p1, :cond_2

    sget-char v0, Ljava/io/File;->separatorChar:C

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p1

    if-ltz p1, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/data/model/CommonFileInfo;->mFullPath:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/data/model/CommonFileInfo;->mPath:Ljava/lang/String;

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/data/model/CommonFileInfo;->mPath:Ljava/lang/String;

    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/samsung/android/settings/analyzestorage/data/model/CommonFileInfo;->mPath:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/data/model/CommonFileInfo;->mPath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/samsung/android/settings/analyzestorage/domain/entity/FileInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/samsung/android/settings/analyzestorage/domain/entity/FileInfo;

    move-object v0, p1

    check-cast v0, Lcom/samsung/android/settings/analyzestorage/data/model/CommonFileInfo;

    iget v0, v0, Lcom/samsung/android/settings/analyzestorage/data/model/CommonFileInfo;->mDomainType:I

    iget v2, p0, Lcom/samsung/android/settings/analyzestorage/data/model/CommonFileInfo;->mDomainType:I

    if-ne v0, v2, :cond_0

    check-cast p1, Lcom/samsung/android/settings/analyzestorage/data/model/CommonFileInfo;

    invoke-virtual {p1}, Lcom/samsung/android/settings/analyzestorage/data/model/CommonFileInfo;->getFileId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/analyzestorage/data/model/CommonFileInfo;->getFileId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public final getDomainType()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/settings/analyzestorage/data/model/CommonFileInfo;->mDomainType:I

    return p0
.end method

.method public final getExt()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/data/model/CommonFileInfo;->mExt:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/data/model/CommonFileInfo;->mExt:Ljava/lang/String;

    return-object p0

    :cond_0
    iget v0, p0, Lcom/samsung/android/settings/analyzestorage/data/model/CommonFileInfo;->mFileType:I

    const/16 v1, 0x3001

    const-string v2, ""

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/data/model/CommonFileInfo;->mFullPath:Ljava/lang/String;

    if-eqz v0, :cond_2

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/analyzestorage/data/model/CommonFileInfo;->mFullPath:Ljava/lang/String;

    const/16 v3, 0x2e

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-ge v0, v1, :cond_1

    if-lez v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/data/model/CommonFileInfo;->mFullPath:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    :cond_1
    iput-object v2, p0, Lcom/samsung/android/settings/analyzestorage/data/model/CommonFileInfo;->mExt:Ljava/lang/String;

    :cond_2
    return-object v2
.end method

.method public final getFileId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/data/model/CommonFileInfo;->mFileId:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/data/model/CommonFileInfo;->mFileId:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/data/model/CommonFileInfo;->mFullPath:Ljava/lang/String;

    :goto_0
    return-object p0
.end method

.method public final getSize()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/settings/analyzestorage/data/model/CommonFileInfo;->mSize:J

    return-wide v0
.end method

.method public final hashCode()I
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/settings/analyzestorage/data/model/CommonFileInfo;->getFileId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/samsung/android/settings/analyzestorage/data/model/CommonFileInfo;->mDomainType:I

    add-int/2addr v0, p0

    return v0
.end method

.method public final setDomainType(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/analyzestorage/data/model/CommonFileInfo;->mDomainType:I

    return-void
.end method

.method public final setExt(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/data/model/CommonFileInfo;->mExt:Ljava/lang/String;

    return-void
.end method

.method public final setIsDirectory(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/16 p1, 0x3001

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/samsung/android/settings/analyzestorage/data/model/CommonFileInfo;->mFileType:I

    :goto_0
    iput p1, p0, Lcom/samsung/android/settings/analyzestorage/data/model/CommonFileInfo;->mFileType:I

    return-void
.end method
