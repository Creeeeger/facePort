.class public final Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static sInstance:Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver;


# instance fields
.field public final mGlobalObservers:Ljava/util/HashMap;

.field public final mSystemObservers:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver;->mGlobalObservers:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver;->mSystemObservers:Ljava/util/HashMap;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver;
    .locals 2

    const-class v0, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver;->sInstance:Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver;

    invoke-direct {v1}, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver;-><init>()V

    sput-object v1, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver;->sInstance:Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver;->sInstance:Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public final unregisterContentObserver(Landroid/content/ContentResolver;Ljava/lang/Class;Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver$EdgeLightingObserver;)V
    .locals 2

    const-class v0, Landroid/provider/Settings$System;

    if-ne p2, v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver;->mSystemObservers:Ljava/util/HashMap;

    goto :goto_0

    :cond_0
    const-class v0, Landroid/provider/Settings$Global;

    if-ne p2, v0, :cond_2

    iget-object p0, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver;->mGlobalObservers:Ljava/util/HashMap;

    :goto_0
    const-string p2, "edge_lighting"

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver$ContentObserverWrapper;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver$ContentObserverWrapper;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p3, v0, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver$ContentObserverWrapper;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-nez p3, :cond_1

    invoke-virtual {p1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void

    :cond_2
    const-string p0, "EdgeLightingSettingsObserver"

    const-string/jumbo p1, "unregisterContentObserver : wrong table"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
