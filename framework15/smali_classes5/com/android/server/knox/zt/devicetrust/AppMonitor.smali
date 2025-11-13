.class public final Lcom/android/server/knox/zt/devicetrust/AppMonitor;
.super Ljava/lang/Object;
.source "AppMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/knox/zt/devicetrust/AppMonitor$InstanceHolder;
    }
.end annotation


# instance fields
.field private volatile blacklist isMonitoringOn:Z

.field private volatile blacklist mInternal:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorInternal;


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/server/knox/zt/devicetrust/AppMonitor-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/knox/zt/devicetrust/AppMonitor;-><init>()V

    return-void
.end method

.method public static blacklist get()Lcom/android/server/knox/zt/devicetrust/AppMonitor;
    .locals 1

    invoke-static {}, Lcom/android/server/knox/zt/devicetrust/AppMonitor$InstanceHolder;->-$$Nest$sfgetINSTANCE()Lcom/android/server/knox/zt/devicetrust/AppMonitor;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getEndpointMonitor()Lcom/android/server/knox/zt/devicetrust/EndpointMonitorInternal;
    .locals 1

    iget-object v0, p0, Lcom/android/server/knox/zt/devicetrust/AppMonitor;->mInternal:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorInternal;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/knox/zt/devicetrust/AppMonitor;->mInternal:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorInternal;

    if-nez v0, :cond_0

    const-class v0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorInternal;

    iput-object v0, p0, Lcom/android/server/knox/zt/devicetrust/AppMonitor;->mInternal:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorInternal;

    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/knox/zt/devicetrust/AppMonitor;->mInternal:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorInternal;

    return-object v0
.end method


# virtual methods
.method public blacklist isOn()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/knox/zt/devicetrust/AppMonitor;->isMonitoringOn:Z

    return v0
.end method

.method public blacklist reportApplicationBinding(JIILjava/lang/String;Ljava/lang/String;)V
    .locals 8

    invoke-direct {p0}, Lcom/android/server/knox/zt/devicetrust/AppMonitor;->getEndpointMonitor()Lcom/android/server/knox/zt/devicetrust/EndpointMonitorInternal;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/knox/zt/devicetrust/AppMonitor;->mInternal:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorInternal;

    move-wide v2, p1

    move v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorInternal;->reportApplicationBinding(JIILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public blacklist reportApplicationDying(JIILjava/lang/String;J)V
    .locals 9

    invoke-direct {p0}, Lcom/android/server/knox/zt/devicetrust/AppMonitor;->getEndpointMonitor()Lcom/android/server/knox/zt/devicetrust/EndpointMonitorInternal;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v0, p0

    iget-object v1, v0, Lcom/android/server/knox/zt/devicetrust/AppMonitor;->mInternal:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorInternal;

    move-wide v2, p1

    move v4, p3

    move v5, p4

    move-object v6, p5

    move-wide v7, p6

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorInternal;->reportApplicationDying(JIILjava/lang/String;J)V

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-void
.end method

.method public blacklist setOn(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/knox/zt/devicetrust/AppMonitor;->isMonitoringOn:Z

    return-void
.end method
