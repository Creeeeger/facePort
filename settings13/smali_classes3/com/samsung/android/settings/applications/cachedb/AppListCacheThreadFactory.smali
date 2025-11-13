.class public Lcom/samsung/android/settings/applications/cachedb/AppListCacheThreadFactory;
.super Ljava/lang/Object;
.source "AppListCacheThreadFactory.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# static fields
.field private static TAG:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/applications/cachedb/AppListCacheThreadFactory;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 25
    const-class v0, Lcom/samsung/android/settings/applications/cachedb/AppListCacheThreadFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/applications/cachedb/AppListCacheThreadFactory;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 1

    .line 30
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const-string p1, "AppListCacheThreadFactory"

    .line 31
    invoke-virtual {v0, p1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    const/4 p1, 0x4

    .line 32
    invoke-virtual {v0, p1}, Ljava/lang/Thread;->setPriority(I)V

    .line 33
    new-instance p1, Lcom/samsung/android/settings/applications/cachedb/AppListCacheThreadFactory$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/applications/cachedb/AppListCacheThreadFactory$1;-><init>(Lcom/samsung/android/settings/applications/cachedb/AppListCacheThreadFactory;)V

    invoke-virtual {v0, p1}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-object v0
.end method
