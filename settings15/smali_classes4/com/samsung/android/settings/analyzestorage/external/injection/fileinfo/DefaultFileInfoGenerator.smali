.class public final Lcom/samsung/android/settings/analyzestorage/external/injection/fileinfo/DefaultFileInfoGenerator;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/android/settings/analyzestorage/domain/entity/FileInfoFactory$FileInfoGenerator;


# virtual methods
.method public final checkArgs(Lcom/samsung/android/settings/analyzestorage/domain/entity/FileInfoFactory$Args;)V
    .locals 0

    iget-object p0, p1, Lcom/samsung/android/settings/analyzestorage/domain/entity/FileInfoFactory$Args;->mArgs:[Ljava/lang/Object;

    if-eqz p0, :cond_0

    array-length p0, p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lcom/samsung/android/settings/analyzestorage/domain/exception/UnsupportedArgsException;

    invoke-direct {p0}, Lcom/samsung/android/settings/analyzestorage/domain/exception/UnsupportedArgsException;-><init>()V

    throw p0
.end method

.method public final create(Lcom/samsung/android/settings/analyzestorage/domain/entity/FileInfoFactory$Args;)Lcom/samsung/android/settings/analyzestorage/domain/entity/FileInfo;
    .locals 1

    const/4 p0, -0x1

    iget v0, p1, Lcom/samsung/android/settings/analyzestorage/domain/entity/FileInfoFactory$Args;->mArgsPattern:I

    if-ne v0, p0, :cond_0

    new-instance p0, Lcom/samsung/android/settings/analyzestorage/data/model/CommonFileInfo;

    iget-object p1, p1, Lcom/samsung/android/settings/analyzestorage/domain/entity/FileInfoFactory$Args;->mArgs:[Ljava/lang/Object;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/analyzestorage/data/model/CommonFileInfo;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/analyzestorage/data/model/CommonFileInfo;->setIsDirectory(Z)V

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final supportDomainType()[I
    .locals 0

    const/4 p0, -0x1

    filled-new-array {p0}, [I

    move-result-object p0

    return-object p0
.end method
