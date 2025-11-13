.class public final Lcom/samsung/android/settings/analyzestorage/presenter/observer/FileObserverManager;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final FILE_OBSERVER_MAPPER:Ljava/util/EnumMap;


# instance fields
.field public mContentObserver:Lcom/samsung/android/settings/analyzestorage/presenter/observer/IContentObserver;

.field public final mContext:Landroid/content/Context;

.field public mPageType:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

.field public mStorageObserver:Lcom/samsung/android/settings/analyzestorage/presenter/observer/CategoryContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/samsung/android/settings/analyzestorage/presenter/observer/FileObserverManager;->FILE_OBSERVER_MAPPER:Ljava/util/EnumMap;

    new-instance v1, Landroidx/core/view/DifferentialMotionFlingController$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sget-object v2, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;->ANALYZE_STORAGE_HOME:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    invoke-virtual {v0, v2, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;->ANALYZE_STORAGE_DUPLICATED_FILES:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    invoke-virtual {v0, v2, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;->ANALYZE_STORAGE_LARGE_FILES:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    invoke-virtual {v0, v2, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;->ANALYZE_STORAGE_CACHED_FILES:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    invoke-virtual {v0, v2, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/settings/analyzestorage/presenter/observer/IContentObserver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/observer/FileObserverManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/settings/analyzestorage/presenter/observer/FileObserverManager;->mContentObserver:Lcom/samsung/android/settings/analyzestorage/presenter/observer/IContentObserver;

    return-void
.end method
