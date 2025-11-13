.class public final Lcom/samsung/android/settings/analyzestorage/external/injection/fileinfo/AnalyzeStorageFileInfoGenerator;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/android/settings/analyzestorage/domain/entity/FileInfoFactory$FileInfoGenerator;


# virtual methods
.method public final checkArgs(Lcom/samsung/android/settings/analyzestorage/domain/entity/FileInfoFactory$Args;)V
    .locals 1

    const/16 p0, 0x7d8

    iget v0, p1, Lcom/samsung/android/settings/analyzestorage/domain/entity/FileInfoFactory$Args;->mArgsPattern:I

    if-ne v0, p0, :cond_1

    const/4 p0, 0x1

    new-array v0, p0, [Ljava/lang/Class;

    iget-object p1, p1, Lcom/samsung/android/settings/analyzestorage/domain/entity/FileInfoFactory$Args;->mArgs:[Ljava/lang/Object;

    if-eqz p1, :cond_0

    array-length v0, p1

    if-ne v0, p0, :cond_0

    const/4 p0, 0x0

    aget-object p0, p1, p0

    const-class p1, Ljava/lang/Integer;

    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/samsung/android/settings/analyzestorage/domain/exception/UnsupportedArgsException;

    invoke-direct {p0}, Lcom/samsung/android/settings/analyzestorage/domain/exception/UnsupportedArgsException;-><init>()V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public final create(Lcom/samsung/android/settings/analyzestorage/domain/entity/FileInfoFactory$Args;)Lcom/samsung/android/settings/analyzestorage/domain/entity/FileInfo;
    .locals 2

    iget p0, p1, Lcom/samsung/android/settings/analyzestorage/domain/entity/FileInfoFactory$Args;->mArgsPattern:I

    const/4 v0, -0x1

    const/4 v1, 0x0

    iget-object p1, p1, Lcom/samsung/android/settings/analyzestorage/domain/entity/FileInfoFactory$Args;->mArgs:[Ljava/lang/Object;

    if-ne p0, v0, :cond_0

    aget-object p0, p1, v1

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/samsung/android/settings/analyzestorage/presenter/utils/StoragePathUtils;->getDomainType(Ljava/lang/String;)I

    move-result p1

    new-instance v0, Lcom/samsung/android/settings/analyzestorage/data/model/AnalyzeStorageFileInfo;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/settings/analyzestorage/data/model/AnalyzeStorageFileInfo;-><init>(Ljava/lang/String;I)V

    return-object v0

    :cond_0
    const/16 v0, 0x7d8

    if-ne p0, v0, :cond_1

    new-instance p0, Lcom/samsung/android/settings/analyzestorage/data/model/AnalyzeStorageFileInfo;

    invoke-direct {p0}, Lcom/samsung/android/settings/analyzestorage/data/model/AnalyzeStorageFileInfo;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/analyzestorage/data/model/AnalyzeStorageFileInfo;->setGroupHeader()V

    aget-object p1, p1, v1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/analyzestorage/data/model/AnalyzeStorageFileInfo;->setGroupType(I)V

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final supportDomainType()[I
    .locals 0

    const/16 p0, 0x132

    filled-new-array {p0}, [I

    move-result-object p0

    return-object p0
.end method
