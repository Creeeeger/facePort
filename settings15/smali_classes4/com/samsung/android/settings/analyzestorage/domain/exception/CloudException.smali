.class public Lcom/samsung/android/settings/analyzestorage/domain/exception/CloudException;
.super Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# virtual methods
.method public final checkValid()V
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException;->mType:Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException$ErrorType;

    invoke-virtual {p0}, Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException$ErrorType;->getValue()I

    move-result v0

    sget-object v1, Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException$ErrorType;->ERROR_CLOUD_RELATED_START:Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException$ErrorType;

    invoke-virtual {v1}, Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException$ErrorType;->getValue()I

    move-result v1

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException$ErrorType;->getValue()I

    move-result p0

    sget-object v0, Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException$ErrorType;->ERROR_CLOUD_RELATED_END:Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException$ErrorType;

    invoke-virtual {v0}, Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException$ErrorType;->getValue()I

    move-result v0

    if-ge p0, v0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo v0, "not under cloud exception range"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
