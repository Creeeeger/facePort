.class public Lcom/samsung/android/settings/analyzestorage/presenter/utils/fileutils/FileWrapper;
.super Ljava/io/File;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final TRASH_FOLDER_FILTER:Lcom/samsung/android/settings/analyzestorage/presenter/utils/fileutils/FileWrapper$$ExternalSyntheticLambda0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/settings/analyzestorage/presenter/utils/fileutils/FileWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/analyzestorage/presenter/utils/fileutils/FileWrapper;->TRASH_FOLDER_FILTER:Lcom/samsung/android/settings/analyzestorage/presenter/utils/fileutils/FileWrapper$$ExternalSyntheticLambda0;

    return-void
.end method


# virtual methods
.method public final isHidden()Z
    .locals 2

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 v1, 0x2e

    if-ne p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final list()[Ljava/lang/String;
    .locals 6

    invoke-super {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/analyzestorage/presenter/utils/StoragePathUtils;->sInternalStorageRoot:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lcom/samsung/android/settings/analyzestorage/presenter/utils/StoragePathUtils;->getDomainType(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Lcom/samsung/android/settings/analyzestorage/presenter/utils/StoragePathUtils;->getRootPath(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/Android"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    sget-object v5, Lcom/samsung/android/settings/analyzestorage/presenter/utils/fileutils/FileWrapper;->TRASH_FOLDER_FILTER:Lcom/samsung/android/settings/analyzestorage/presenter/utils/fileutils/FileWrapper$$ExternalSyntheticLambda0;

    invoke-virtual {v5, p0, v4}, Lcom/samsung/android/settings/analyzestorage/presenter/utils/fileutils/FileWrapper$$ExternalSyntheticLambda0;->accept(Ljava/io/File;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0

    :cond_3
    :goto_1
    return-object v0
.end method

.method public final listFiles()[Ljava/io/File;
    .locals 3

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/settings/analyzestorage/presenter/utils/StoragePathUtils;->sInternalStorageRoot:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/samsung/android/settings/analyzestorage/presenter/utils/StoragePathUtils;->getDomainType(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/settings/analyzestorage/presenter/utils/StoragePathUtils;->getRootPath(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/Android"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/settings/analyzestorage/presenter/utils/fileutils/FileWrapper;->TRASH_FOLDER_FILTER:Lcom/samsung/android/settings/analyzestorage/presenter/utils/fileutils/FileWrapper$$ExternalSyntheticLambda0;

    invoke-super {p0, v0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final renameTo(Ljava/io/File;)Z
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-super {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/16 v0, 0x3e8

    cmp-long p1, v2, v0

    if-lez p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "renameTo ] takes too long, executeTime = "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FileWrapper"

    invoke-static {v0, p1}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return p0
.end method
