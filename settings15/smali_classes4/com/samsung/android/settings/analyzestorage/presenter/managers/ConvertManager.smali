.class public abstract Lcom/samsung/android/settings/analyzestorage/presenter/managers/ConvertManager;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final sSaTypeToPageInfo:Landroid/util/SparseArray;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    sput-object v1, Lcom/samsung/android/settings/analyzestorage/presenter/managers/ConvertManager;->sSaTypeToPageInfo:Landroid/util/SparseArray;

    sget-object v2, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;->LOCAL_INTERNAL:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    sget-object v2, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;->LOCAL_APP_CLONE:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    const/4 v4, 0x2

    invoke-virtual {v0, v4, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    sget-object v2, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;->LOCAL_SDCARD:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    const/4 v5, 0x1

    invoke-virtual {v0, v5, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    sget-object v2, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;->LOCAL_USB:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    const/16 v6, 0xa

    invoke-virtual {v0, v6, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v6, 0xb

    invoke-virtual {v0, v6, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v6, 0xc

    invoke-virtual {v0, v6, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v6, 0xd

    invoke-virtual {v0, v6, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v6, 0xe

    invoke-virtual {v0, v6, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v6, 0xf

    invoke-virtual {v0, v6, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v2, 0x65

    sget-object v6, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;->GOOGLE_DRIVE:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    invoke-virtual {v0, v2, v6}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v2, 0x66

    sget-object v6, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;->ONE_DRIVE:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    invoke-virtual {v0, v2, v6}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v2, 0x132

    sget-object v6, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;->ANALYZE_STORAGE_HOME:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    invoke-virtual {v0, v2, v6}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    new-instance v0, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;

    sget-object v2, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;->ANALYZE_STORAGE_LARGE_FILES:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    invoke-direct {v0, v2}, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;-><init>(Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;)V

    invoke-virtual {v1, v3, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    new-instance v0, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;

    sget-object v2, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;->ANALYZE_STORAGE_DUPLICATED_FILES:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    invoke-direct {v0, v2}, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;-><init>(Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;)V

    invoke-virtual {v1, v5, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    new-instance v0, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;

    sget-object v2, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;->ANALYZE_STORAGE_CACHED_FILES:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    invoke-direct {v0, v2}, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;-><init>(Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;)V

    invoke-virtual {v1, v4, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    new-instance v0, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;

    sget-object v2, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;->ANALYZE_STORAGE_UNUSED_APPS:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    invoke-direct {v0, v2}, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;-><init>(Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;)V

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    new-instance v0, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;

    sget-object v2, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;->ANALYZE_STORAGE_APP_CACHE:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    invoke-direct {v0, v2}, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;-><init>(Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;)V

    const/4 v2, 0x5

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return-void
.end method
