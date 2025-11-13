.class public abstract Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final archiveExtension:Ljava/util/ArrayList;

.field public static final documentExtension:Ljava/util/ArrayList;

.field public static final extensionToMediaFileTypeMap:Ljava/util/HashMap;

.field public static final fileTypeToMediaFileTypeMap:Landroid/util/SparseArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->extensionToMediaFileTypeMap:Ljava/util/HashMap;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->fileTypeToMediaFileTypeMap:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->documentExtension:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->archiveExtension:Ljava/util/ArrayList;

    return-void
.end method

.method public static addFileType(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager$MediaFileInfo;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager$MediaFileInfo;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sget-object p2, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->extensionToMediaFileTypeMap:Ljava/util/HashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p2, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->fileTypeToMediaFileTypeMap:Landroid/util/SparseArray;

    invoke-virtual {p2, p0, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 p2, 0x12c

    if-lt p0, p2, :cond_0

    sget p2, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->LAST_DOCUMENT_FILE_TYPE:I

    if-gt p0, p2, :cond_0

    sget-object p0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->documentExtension:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/16 p2, 0x19a

    if-lt p0, p2, :cond_1

    sget p2, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->LAST_ARCHIVE_FILE_TYPE:I

    if-gt p0, p2, :cond_1

    sget-object p0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->archiveExtension:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method
