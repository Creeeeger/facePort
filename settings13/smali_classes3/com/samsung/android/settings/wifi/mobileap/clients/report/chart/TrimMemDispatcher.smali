.class public Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/TrimMemDispatcher;
.super Ljava/lang/Object;
.source "TrimMemDispatcher.java"

# interfaces
.implements Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/MemoryTrimmable;


# static fields
.field private static mTrimmables:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/MemoryTrimmable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 8
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/TrimMemDispatcher;->mTrimmables:Ljava/util/HashSet;

    return-void
.end method

.method public static addTrimMemoryListener(Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/MemoryTrimmable;)Z
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 21
    :cond_0
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/TrimMemDispatcher;->mTrimmables:Ljava/util/HashSet;

    monitor-enter v0

    .line 22
    :try_start_0
    sget-object v1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/TrimMemDispatcher;->mTrimmables:Ljava/util/HashSet;

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 23
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
