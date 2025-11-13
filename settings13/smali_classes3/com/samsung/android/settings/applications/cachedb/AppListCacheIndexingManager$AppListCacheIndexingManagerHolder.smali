.class Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager$AppListCacheIndexingManagerHolder;
.super Ljava/lang/Object;
.source "AppListCacheIndexingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AppListCacheIndexingManagerHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager;


# direct methods
.method static bridge synthetic -$$Nest$sfgetINSTANCE()Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager$AppListCacheIndexingManagerHolder;->INSTANCE:Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 70
    new-instance v0, Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager;

    invoke-direct {v0}, Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager$AppListCacheIndexingManagerHolder;->INSTANCE:Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager;

    return-void
.end method
