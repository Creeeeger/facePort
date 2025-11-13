.class public final Lcom/samsung/android/settings/uwb/labs/common/UwbStateChangedHandler;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static instance:Lcom/samsung/android/settings/uwb/labs/common/UwbStateChangedHandler;


# instance fields
.field public final listeners:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/uwb/labs/common/UwbStateChangedHandler;->listeners:Ljava/util/List;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/settings/uwb/labs/common/UwbStateChangedHandler;
    .locals 2

    const-class v0, Lcom/samsung/android/settings/uwb/labs/common/UwbStateChangedHandler;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/settings/uwb/labs/common/UwbStateChangedHandler;->instance:Lcom/samsung/android/settings/uwb/labs/common/UwbStateChangedHandler;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/settings/uwb/labs/common/UwbStateChangedHandler;

    invoke-direct {v1}, Lcom/samsung/android/settings/uwb/labs/common/UwbStateChangedHandler;-><init>()V

    sput-object v1, Lcom/samsung/android/settings/uwb/labs/common/UwbStateChangedHandler;->instance:Lcom/samsung/android/settings/uwb/labs/common/UwbStateChangedHandler;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lcom/samsung/android/settings/uwb/labs/common/UwbStateChangedHandler;->instance:Lcom/samsung/android/settings/uwb/labs/common/UwbStateChangedHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0

    throw v1
.end method
