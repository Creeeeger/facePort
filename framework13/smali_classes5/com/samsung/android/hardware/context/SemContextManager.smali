.class public Lcom/samsung/android/hardware/context/SemContextManager;
.super Ljava/lang/Object;
.source "SemContextManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "SemContextManager"


# instance fields
.field private blacklist mAvailableServiceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mClientInfo:Ljava/lang/String;

.field private final blacklist mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mMainLooper:Landroid/os/Looper;

.field private blacklist mPackageName:Ljava/lang/String;

.field private final blacklist mSemContextService:Lcom/samsung/android/hardware/context/ISemContextService;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmClientInfo(Lcom/samsung/android/hardware/context/SemContextManager;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mClientInfo:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMainLooper(Lcom/samsung/android/hardware/context/SemContextManager;)Landroid/os/Looper;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mMainLooper:Landroid/os/Looper;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmClientInfo(Lcom/samsung/android/hardware/context/SemContextManager;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mClientInfo:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcheckHistoryMode(Lcom/samsung/android/hardware/context/SemContextManager;Lcom/samsung/android/hardware/context/SemContextEvent;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextManager;->checkHistoryMode(Lcom/samsung/android/hardware/context/SemContextEvent;)Z

    move-result p0

    return p0
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "mainLooper"    # Landroid/os/Looper;

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 156
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mAvailableServiceMap:Ljava/util/Map;

    .line 158
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mClientInfo:Ljava/lang/String;

    .line 165
    nop

    .line 166
    const-string/jumbo v0, "scontext"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 165
    invoke-static {v0}, Lcom/samsung/android/hardware/context/ISemContextService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/hardware/context/ISemContextService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mSemContextService:Lcom/samsung/android/hardware/context/ISemContextService;

    .line 167
    iput-object p2, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mMainLooper:Landroid/os/Looper;

    .line 168
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mPackageName:Ljava/lang/String;

    .line 169
    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/Looper;)V
    .locals 1
    .param p1, "mainLooper"    # Landroid/os/Looper;

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 156
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mAvailableServiceMap:Ljava/util/Map;

    .line 158
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mClientInfo:Ljava/lang/String;

    .line 174
    nop

    .line 175
    const-string/jumbo v0, "scontext"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 174
    invoke-static {v0}, Lcom/samsung/android/hardware/context/ISemContextService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/hardware/context/ISemContextService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mSemContextService:Lcom/samsung/android/hardware/context/ISemContextService;

    .line 176
    iput-object p1, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mMainLooper:Landroid/os/Looper;

    .line 177
    const-string v0, " "

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mPackageName:Ljava/lang/String;

    .line 178
    return-void
.end method

.method private blacklist checkHistoryMode(Lcom/samsung/android/hardware/context/SemContextEvent;)Z
    .locals 8
    .param p1, "event"    # Lcom/samsung/android/hardware/context/SemContextEvent;

    .line 1184
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 1185
    .local v1, "res":Ljava/lang/Boolean;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1186
    .local v2, "sb":Ljava/lang/StringBuilder;
    iget-object v3, p1, Lcom/samsung/android/hardware/context/SemContextEvent;->semContext:Lcom/samsung/android/hardware/context/SemContext;

    invoke-virtual {v3}, Lcom/samsung/android/hardware/context/SemContext;->getType()I

    move-result v3

    .line 1187
    .local v3, "type":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSemContextChanged() : event = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3}, Lcom/samsung/android/hardware/context/SemContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1188
    const/4 v4, 0x1

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    .line 1194
    :sswitch_0
    nop

    .line 1195
    invoke-virtual {p1}, Lcom/samsung/android/hardware/context/SemContextEvent;->getStepLevelMonitorContext()Lcom/samsung/android/hardware/context/SemContextStepLevelMonitor;

    move-result-object v5

    .line 1196
    .local v5, "stepLevelMonitorContext":Lcom/samsung/android/hardware/context/SemContextStepLevelMonitor;
    invoke-virtual {v5}, Lcom/samsung/android/hardware/context/SemContextStepLevelMonitor;->getMode()I

    move-result v6

    if-ne v6, v4, :cond_0

    move v0, v4

    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 1197
    goto :goto_0

    .line 1199
    .end local v5    # "stepLevelMonitorContext":Lcom/samsung/android/hardware/context/SemContextStepLevelMonitor;
    :sswitch_1
    nop

    .line 1200
    invoke-virtual {p1}, Lcom/samsung/android/hardware/context/SemContextEvent;->getActivityBatchContext()Lcom/samsung/android/hardware/context/SemContextActivityBatch;

    move-result-object v5

    .line 1201
    .local v5, "activityBatchContext":Lcom/samsung/android/hardware/context/SemContextActivityBatch;
    invoke-virtual {v5}, Lcom/samsung/android/hardware/context/SemContextActivityBatch;->getMode()I

    move-result v6

    if-ne v6, v4, :cond_1

    move v0, v4

    :cond_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 1202
    goto :goto_0

    .line 1204
    .end local v5    # "activityBatchContext":Lcom/samsung/android/hardware/context/SemContextActivityBatch;
    :sswitch_2
    invoke-virtual {p1}, Lcom/samsung/android/hardware/context/SemContextEvent;->getAutoRotationContext()Lcom/samsung/android/hardware/context/SemContextAutoRotation;

    move-result-object v0

    .line 1205
    .local v0, "autoRotation":Lcom/samsung/android/hardware/context/SemContextAutoRotation;
    const-string v4, " Angle : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/samsung/android/hardware/context/SemContextAutoRotation;->getAngle()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1206
    goto :goto_0

    .line 1190
    .end local v0    # "autoRotation":Lcom/samsung/android/hardware/context/SemContextAutoRotation;
    :sswitch_3
    invoke-virtual {p1}, Lcom/samsung/android/hardware/context/SemContextEvent;->getPedometerContext()Lcom/samsung/android/hardware/context/SemContextPedometer;

    move-result-object v5

    .line 1191
    .local v5, "pedometerContext":Lcom/samsung/android/hardware/context/SemContextPedometer;
    invoke-virtual {v5}, Lcom/samsung/android/hardware/context/SemContextPedometer;->getMode()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_2

    move v0, v4

    :cond_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 1192
    nop

    .line 1210
    .end local v5    # "pedometerContext":Lcom/samsung/android/hardware/context/SemContextPedometer;
    :goto_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "SemContextManager"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1211
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_3
        0x6 -> :sswitch_2
        0x1a -> :sswitch_1
        0x21 -> :sswitch_0
    .end sparse-switch
.end method

.method private blacklist checkListenerAndService(Lcom/samsung/android/hardware/context/SemContextListener;I)Z
    .locals 2
    .param p1, "listener"    # Lcom/samsung/android/hardware/context/SemContextListener;
    .param p2, "service"    # I

    .line 1177
    if-nez p1, :cond_0

    .line 1178
    const-string v0, "SemContextManager"

    const-string v1, "Listener is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1179
    const/4 v0, 0x0

    return v0

    .line 1181
    :cond_0
    invoke-virtual {p0, p2}, Lcom/samsung/android/hardware/context/SemContextManager;->isAvailableService(I)Z

    move-result v0

    return v0
.end method

.method private blacklist getAvailableServiceMap()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1130
    const/4 v0, 0x0

    .line 1132
    .local v0, "serviceMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mSemContextService:Lcom/samsung/android/hardware/context/ISemContextService;

    const-string v2, "SemContextManager"

    if-nez v1, :cond_0

    .line 1133
    const-string v1, "SemContextService is null. Please check SENSORHUB feature."

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1134
    const/4 v1, 0x0

    return-object v1

    .line 1139
    :cond_0
    :try_start_0
    invoke-interface {v1}, Lcom/samsung/android/hardware/context/ISemContextService;->getAvailableServiceMap()Ljava/util/Map;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 1142
    goto :goto_0

    .line 1140
    :catch_0
    move-exception v1

    .line 1141
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "RemoteException in getAvailableServiceMap: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1143
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-object v0
.end method

.method private blacklist getListenerDelegate(Lcom/samsung/android/hardware/context/SemContextListener;)Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;
    .locals 4
    .param p1, "listener"    # Lcom/samsung/android/hardware/context/SemContextListener;

    .line 1153
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 1157
    :cond_0
    const/4 v0, 0x0

    .line 1159
    .local v0, "listenerDelegate":Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;

    .line 1160
    .local v2, "delegate":Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;
    invoke-virtual {v2}, Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;->getListener()Lcom/samsung/android/hardware/context/SemContextListener;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1161
    move-object v0, v2

    .line 1162
    goto :goto_1

    .line 1164
    .end local v2    # "delegate":Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;
    :cond_1
    goto :goto_0

    .line 1166
    :cond_2
    :goto_1
    return-object v0

    .line 1154
    .end local v0    # "listenerDelegate":Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;
    :cond_3
    :goto_2
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public blacklist changeParameters(Lcom/samsung/android/hardware/context/SemContextListener;II)Z
    .locals 2
    .param p1, "listener"    # Lcom/samsung/android/hardware/context/SemContextListener;
    .param p2, "service"    # I
    .param p3, "arg1"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 849
    const/4 v0, 0x0

    .line 850
    .local v0, "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    const/4 v1, 0x2

    if-ne p2, v1, :cond_0

    .line 851
    new-instance v1, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;

    invoke-direct {v1, p3}, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;-><init>(I)V

    move-object v0, v1

    goto :goto_0

    .line 852
    :cond_0
    const/16 v1, 0x21

    if-ne p2, v1, :cond_1

    .line 853
    new-instance v1, Lcom/samsung/android/hardware/context/SemContextStepLevelMonitorAttribute;

    invoke-direct {v1, p3}, Lcom/samsung/android/hardware/context/SemContextStepLevelMonitorAttribute;-><init>(I)V

    move-object v0, v1

    .line 855
    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/hardware/context/SemContextManager;->changeParameters(Lcom/samsung/android/hardware/context/SemContextListener;ILcom/samsung/android/hardware/context/SemContextAttribute;)Z

    move-result v1

    return v1
.end method

.method public blacklist changeParameters(Lcom/samsung/android/hardware/context/SemContextListener;IIDD)Z
    .locals 8
    .param p1, "listener"    # Lcom/samsung/android/hardware/context/SemContextListener;
    .param p2, "service"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # D
    .param p6, "arg3"    # D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 824
    const/4 v0, 0x0

    .line 825
    .local v0, "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    const/4 v1, 0x2

    if-ne p2, v1, :cond_0

    .line 826
    new-instance v1, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;

    move-object v2, v1

    move v3, p3

    move-wide v4, p4

    move-wide v6, p6

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;-><init>(IDD)V

    move-object v0, v1

    .line 828
    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/hardware/context/SemContextManager;->changeParameters(Lcom/samsung/android/hardware/context/SemContextListener;ILcom/samsung/android/hardware/context/SemContextAttribute;)Z

    move-result v1

    return v1
.end method

.method public blacklist changeParameters(Lcom/samsung/android/hardware/context/SemContextListener;IIIII)Z
    .locals 8
    .param p1, "listener"    # Lcom/samsung/android/hardware/context/SemContextListener;
    .param p2, "service"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "arg3"    # I
    .param p6, "arg4"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 798
    const/4 v0, 0x0

    .line 799
    .local v0, "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    const/16 v1, 0x23

    if-ne p2, v1, :cond_0

    .line 800
    new-instance v1, Lcom/samsung/android/hardware/context/SemContextSedentaryTimerAttribute;

    const/4 v3, 0x1

    move-object v2, v1

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/hardware/context/SemContextSedentaryTimerAttribute;-><init>(IIIII)V

    move-object v0, v1

    .line 803
    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/hardware/context/SemContextManager;->changeParameters(Lcom/samsung/android/hardware/context/SemContextListener;ILcom/samsung/android/hardware/context/SemContextAttribute;)Z

    move-result v1

    return v1
.end method

.method public whitelist changeParameters(Lcom/samsung/android/hardware/context/SemContextListener;ILcom/samsung/android/hardware/context/SemContextAttribute;)Z
    .locals 5
    .param p1, "listener"    # Lcom/samsung/android/hardware/context/SemContextListener;
    .param p2, "service"    # I
    .param p3, "attribute"    # Lcom/samsung/android/hardware/context/SemContextAttribute;

    .line 744
    const/4 v0, 0x0

    if-eqz p3, :cond_6

    invoke-virtual {p3}, Lcom/samsung/android/hardware/context/SemContextAttribute;->checkAttribute()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 745
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/hardware/context/SemContextManager;->checkListenerAndService(Lcom/samsung/android/hardware/context/SemContextListener;I)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    .line 747
    :cond_1
    const/4 v1, 0x1

    if-eq p2, v1, :cond_3

    const/4 v2, 0x2

    if-eq p2, v2, :cond_3

    const/16 v2, 0x21

    if-eq p2, v2, :cond_3

    const/16 v2, 0x23

    if-eq p2, v2, :cond_3

    const/16 v2, 0x27

    if-eq p2, v2, :cond_3

    const/16 v2, 0x2f

    if-eq p2, v2, :cond_3

    const/16 v2, 0x33

    if-eq p2, v2, :cond_3

    const/16 v2, 0x35

    if-eq p2, v2, :cond_3

    const/16 v2, 0x36

    if-eq p2, v2, :cond_3

    const/16 v2, 0x38

    if-ne p2, v2, :cond_2

    goto :goto_0

    .line 775
    :cond_2
    return v0

    .line 758
    :cond_3
    :goto_0
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextManager;->getListenerDelegate(Lcom/samsung/android/hardware/context/SemContextListener;)Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;

    move-result-object v2

    .line 760
    .local v2, "listenerDelegate":Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;
    const-string v3, "SemContextManager"

    if-nez v2, :cond_4

    .line 761
    const-string v1, "  .changeParameters : SemContextListener is null!"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    return v0

    .line 766
    :cond_4
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mSemContextService:Lcom/samsung/android/hardware/context/ISemContextService;

    invoke-interface {v0, v2, p2, p3}, Lcom/samsung/android/hardware/context/ISemContextService;->changeParameters(Landroid/os/IBinder;ILcom/samsung/android/hardware/context/SemContextAttribute;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 767
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  .changeParameters : listener = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", service="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 768
    invoke-static {p2}, Lcom/samsung/android/hardware/context/SemContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 767
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 772
    :cond_5
    goto :goto_1

    .line 770
    :catch_0
    move-exception v0

    .line 771
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "RemoteException in changeParameters: "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 773
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    return v1

    .line 744
    .end local v2    # "listenerDelegate":Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;
    :cond_6
    :goto_2
    return v0
.end method

.method public blacklist getCurrentServiceList()Ljava/lang/String;
    .locals 4

    .line 1117
    const-string v0, ""

    .line 1119
    .local v0, "result":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mSemContextService:Lcom/samsung/android/hardware/context/ISemContextService;

    invoke-interface {v1}, Lcom/samsung/android/hardware/context/ISemContextService;->getCurrentServiceList()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 1122
    goto :goto_0

    .line 1120
    :catch_0
    move-exception v1

    .line 1121
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "SemContextManager"

    const-string v3, "RemoteException in getCurrentServiceList: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1123
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-object v0
.end method

.method public whitelist getFeatureLevel(I)I
    .locals 2
    .param p1, "service"    # I

    .line 972
    invoke-virtual {p0, p1}, Lcom/samsung/android/hardware/context/SemContextManager;->isAvailableService(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 973
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mAvailableServiceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 975
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist initializeSemContextService(Lcom/samsung/android/hardware/context/SemContextListener;I)V
    .locals 4
    .param p1, "listener"    # Lcom/samsung/android/hardware/context/SemContextListener;
    .param p2, "service"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 685
    invoke-virtual {p0, p2}, Lcom/samsung/android/hardware/context/SemContextManager;->isAvailableService(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    goto :goto_1

    .line 688
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextManager;->getListenerDelegate(Lcom/samsung/android/hardware/context/SemContextListener;)Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;

    move-result-object v0

    .line 689
    .local v0, "listenerDelegate":Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;
    const-string v1, "SemContextManager"

    if-nez v0, :cond_1

    .line 690
    const-string v2, "  .initializeSemContextService : SemContextListener is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    return-void

    .line 695
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mSemContextService:Lcom/samsung/android/hardware/context/ISemContextService;

    invoke-interface {v2, v0, p2}, Lcom/samsung/android/hardware/context/ISemContextService;->initializeService(Landroid/os/IBinder;I)V

    .line 696
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  .initializeSemContextService : listener = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", service="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 697
    invoke-static {p2}, Lcom/samsung/android/hardware/context/SemContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 696
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 700
    goto :goto_0

    .line 698
    :catch_0
    move-exception v2

    .line 699
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "RemoteException in initializeSemContextService: "

    invoke-static {v1, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 701
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 686
    .end local v0    # "listenerDelegate":Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;
    :cond_2
    :goto_1
    return-void
.end method

.method public whitelist isAvailableService(I)Z
    .locals 3
    .param p1, "service"    # I

    .line 949
    const/4 v0, 0x0

    .line 950
    .local v0, "res":Z
    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 951
    const/4 v1, 0x1

    return v1

    .line 952
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mAvailableServiceMap:Ljava/util/Map;

    if-nez v1, :cond_1

    .line 953
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextManager;->getAvailableServiceMap()Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mAvailableServiceMap:Ljava/util/Map;

    .line 955
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mAvailableServiceMap:Ljava/util/Map;

    if-eqz v1, :cond_2

    .line 956
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 957
    const/16 v1, 0x2f

    if-ne p1, v1, :cond_2

    .line 958
    const-string/jumbo v1, "ro.gps.chip.vendor.slocation"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "BCM4773_SLOCATION_CORE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 959
    const/4 v0, 0x0

    .line 962
    :cond_2
    return v0
.end method

.method public whitelist registerListener(Lcom/samsung/android/hardware/context/SemContextListener;I)Z
    .locals 2
    .param p1, "listener"    # Lcom/samsung/android/hardware/context/SemContextListener;
    .param p2, "service"    # I

    .line 189
    invoke-static {p2}, Lcom/samsung/android/hardware/context/SemContextAttribute;->getDefaultAttribute(I)Lcom/samsung/android/hardware/context/SemContextAttribute;

    move-result-object v0

    .line 190
    .local v0, "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/hardware/context/SemContextManager;->registerListener(Lcom/samsung/android/hardware/context/SemContextListener;ILcom/samsung/android/hardware/context/SemContextAttribute;)Z

    move-result v1

    return v1
.end method

.method public blacklist registerListener(Lcom/samsung/android/hardware/context/SemContextListener;II)Z
    .locals 2
    .param p1, "listener"    # Lcom/samsung/android/hardware/context/SemContextListener;
    .param p2, "service"    # I
    .param p3, "arg"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 408
    const/4 v0, 0x0

    .line 409
    .local v0, "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    const/4 v1, 0x3

    if-ne p2, v1, :cond_0

    .line 410
    new-instance v1, Lcom/samsung/android/hardware/context/SemContextStepCountAlertAttribute;

    invoke-direct {v1, p3}, Lcom/samsung/android/hardware/context/SemContextStepCountAlertAttribute;-><init>(I)V

    move-object v0, v1

    goto :goto_0

    .line 411
    :cond_0
    const/4 v1, 0x6

    if-ne p2, v1, :cond_1

    .line 412
    new-instance v1, Lcom/samsung/android/hardware/context/SemContextAutoRotationAttribute;

    invoke-direct {v1, p3}, Lcom/samsung/android/hardware/context/SemContextAutoRotationAttribute;-><init>(I)V

    move-object v0, v1

    goto :goto_0

    .line 413
    :cond_1
    const/16 v1, 0x10

    if-ne p2, v1, :cond_2

    .line 414
    new-instance v1, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;

    invoke-direct {v1, p3}, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;-><init>(I)V

    move-object v0, v1

    goto :goto_0

    .line 415
    :cond_2
    const/16 v1, 0x21

    if-ne p2, v1, :cond_3

    .line 416
    new-instance v1, Lcom/samsung/android/hardware/context/SemContextStepLevelMonitorAttribute;

    invoke-direct {v1, p3}, Lcom/samsung/android/hardware/context/SemContextStepLevelMonitorAttribute;-><init>(I)V

    move-object v0, v1

    goto :goto_0

    .line 417
    :cond_3
    const/16 v1, 0x24

    if-ne p2, v1, :cond_4

    .line 418
    new-instance v1, Lcom/samsung/android/hardware/context/SemContextFlatMotionForTableModeAttribute;

    invoke-direct {v1, p3}, Lcom/samsung/android/hardware/context/SemContextFlatMotionForTableModeAttribute;-><init>(I)V

    move-object v0, v1

    .line 420
    :cond_4
    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/hardware/context/SemContextManager;->registerListener(Lcom/samsung/android/hardware/context/SemContextListener;ILcom/samsung/android/hardware/context/SemContextAttribute;)Z

    move-result v1

    return v1
.end method

.method public blacklist registerListener(Lcom/samsung/android/hardware/context/SemContextListener;IIDD)Z
    .locals 8
    .param p1, "listener"    # Lcom/samsung/android/hardware/context/SemContextListener;
    .param p2, "service"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # D
    .param p6, "arg3"    # D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 545
    const/4 v0, 0x0

    .line 546
    .local v0, "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    const/4 v1, 0x2

    if-ne p2, v1, :cond_0

    .line 547
    new-instance v1, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;

    move-object v2, v1

    move v3, p3

    move-wide v4, p4

    move-wide v6, p6

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;-><init>(IDD)V

    move-object v0, v1

    .line 549
    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/hardware/context/SemContextManager;->registerListener(Lcom/samsung/android/hardware/context/SemContextListener;ILcom/samsung/android/hardware/context/SemContextAttribute;)Z

    move-result v1

    return v1
.end method

.method public blacklist registerListener(Lcom/samsung/android/hardware/context/SemContextListener;III)Z
    .locals 2
    .param p1, "listener"    # Lcom/samsung/android/hardware/context/SemContextListener;
    .param p2, "service"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 491
    const/4 v0, 0x0

    .line 492
    .local v0, "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    const/16 v1, 0xc

    if-ne p2, v1, :cond_0

    .line 493
    new-instance v1, Lcom/samsung/android/hardware/context/SemContextShakeMotionAttribute;

    invoke-direct {v1, p3, p4}, Lcom/samsung/android/hardware/context/SemContextShakeMotionAttribute;-><init>(II)V

    move-object v0, v1

    .line 496
    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/hardware/context/SemContextManager;->registerListener(Lcom/samsung/android/hardware/context/SemContextListener;ILcom/samsung/android/hardware/context/SemContextAttribute;)Z

    move-result v1

    return v1
.end method

.method public blacklist registerListener(Lcom/samsung/android/hardware/context/SemContextListener;IIII)Z
    .locals 8
    .param p1, "listener"    # Lcom/samsung/android/hardware/context/SemContextListener;
    .param p2, "service"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "arg3"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 519
    const/4 v0, 0x0

    .line 520
    .local v0, "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    const/16 v1, 0x23

    if-ne p2, v1, :cond_0

    .line 521
    new-instance v1, Lcom/samsung/android/hardware/context/SemContextSedentaryTimerAttribute;

    const/16 v6, 0x5dc

    const/16 v7, 0x5dc

    move-object v2, v1

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/hardware/context/SemContextSedentaryTimerAttribute;-><init>(IIIII)V

    move-object v0, v1

    .line 524
    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/hardware/context/SemContextManager;->registerListener(Lcom/samsung/android/hardware/context/SemContextListener;ILcom/samsung/android/hardware/context/SemContextAttribute;)Z

    move-result v1

    return v1
.end method

.method public blacklist registerListener(Lcom/samsung/android/hardware/context/SemContextListener;IIIII)Z
    .locals 2
    .param p1, "listener"    # Lcom/samsung/android/hardware/context/SemContextListener;
    .param p2, "service"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "arg3"    # I
    .param p6, "arg4"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 576
    const/4 v0, 0x0

    .line 577
    .local v0, "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    const/16 v1, 0x1c

    if-ne p2, v1, :cond_0

    .line 578
    new-instance v1, Lcom/samsung/android/hardware/context/SemContextSpecificPoseAlertAttribute;

    invoke-direct {v1, p3, p4, p5, p6}, Lcom/samsung/android/hardware/context/SemContextSpecificPoseAlertAttribute;-><init>(IIII)V

    move-object v0, v1

    .line 580
    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/hardware/context/SemContextManager;->registerListener(Lcom/samsung/android/hardware/context/SemContextListener;ILcom/samsung/android/hardware/context/SemContextAttribute;)Z

    move-result v1

    return v1
.end method

.method public blacklist registerListener(Lcom/samsung/android/hardware/context/SemContextListener;IIIIII)Z
    .locals 8
    .param p1, "listener"    # Lcom/samsung/android/hardware/context/SemContextListener;
    .param p2, "service"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "arg3"    # I
    .param p6, "arg4"    # I
    .param p7, "arg5"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 614
    const/4 v0, 0x0

    .line 615
    .local v0, "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    const/16 v1, 0x18

    if-ne p2, v1, :cond_0

    .line 616
    new-instance v1, Lcom/samsung/android/hardware/context/SemContextActivityLocationLoggingAttribute;

    move-object v2, v1

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/hardware/context/SemContextActivityLocationLoggingAttribute;-><init>(IIIII)V

    move-object v0, v1

    goto :goto_0

    .line 617
    :cond_0
    const/16 v1, 0x23

    if-ne p2, v1, :cond_1

    .line 618
    new-instance v1, Lcom/samsung/android/hardware/context/SemContextSedentaryTimerAttribute;

    move-object v2, v1

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/hardware/context/SemContextSedentaryTimerAttribute;-><init>(IIIII)V

    move-object v0, v1

    .line 620
    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/hardware/context/SemContextManager;->registerListener(Lcom/samsung/android/hardware/context/SemContextListener;ILcom/samsung/android/hardware/context/SemContextAttribute;)Z

    move-result v1

    return v1
.end method

.method public whitelist registerListener(Lcom/samsung/android/hardware/context/SemContextListener;ILandroid/os/Looper;)Z
    .locals 2
    .param p1, "listener"    # Lcom/samsung/android/hardware/context/SemContextListener;
    .param p2, "service"    # I
    .param p3, "looper"    # Landroid/os/Looper;

    .line 214
    invoke-static {p2}, Lcom/samsung/android/hardware/context/SemContextAttribute;->getDefaultAttribute(I)Lcom/samsung/android/hardware/context/SemContextAttribute;

    move-result-object v0

    .line 215
    .local v0, "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/samsung/android/hardware/context/SemContextManager;->registerListener(Lcom/samsung/android/hardware/context/SemContextListener;ILcom/samsung/android/hardware/context/SemContextAttribute;Landroid/os/Looper;)Z

    move-result v1

    return v1
.end method

.method public whitelist registerListener(Lcom/samsung/android/hardware/context/SemContextListener;ILcom/samsung/android/hardware/context/SemContextAttribute;)Z
    .locals 4
    .param p1, "listener"    # Lcom/samsung/android/hardware/context/SemContextListener;
    .param p2, "service"    # I
    .param p3, "attribute"    # Lcom/samsung/android/hardware/context/SemContextAttribute;

    .line 276
    const-string v0, "SemContextManager"

    const/16 v1, 0x30

    if-ne p2, v1, :cond_0

    .line 277
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/hardware/context/SemContextManager;->setReferenceData(ILcom/samsung/android/hardware/context/SemContextAttribute;)Z

    move-result v0

    return v0

    .line 280
    :cond_0
    const/4 v1, 0x0

    if-eqz p3, :cond_4

    invoke-virtual {p3}, Lcom/samsung/android/hardware/context/SemContextAttribute;->checkAttribute()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 281
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/hardware/context/SemContextManager;->checkListenerAndService(Lcom/samsung/android/hardware/context/SemContextListener;I)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 283
    :cond_2
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextManager;->getListenerDelegate(Lcom/samsung/android/hardware/context/SemContextListener;)Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;

    move-result-object v1

    .line 285
    .local v1, "listenerDelegate":Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;
    if-nez v1, :cond_3

    .line 286
    new-instance v2, Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v3}, Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;-><init>(Lcom/samsung/android/hardware/context/SemContextManager;Lcom/samsung/android/hardware/context/SemContextListener;Landroid/os/Looper;)V

    move-object v1, v2

    .line 287
    iget-object v2, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 291
    :cond_3
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mSemContextService:Lcom/samsung/android/hardware/context/ISemContextService;

    iget-object v3, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v2, v1, p2, p3, v3}, Lcom/samsung/android/hardware/context/ISemContextService;->registerCallback(Landroid/os/IBinder;ILcom/samsung/android/hardware/context/SemContextAttribute;Ljava/lang/String;)V

    .line 292
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  .registerListener : listener = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", service="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 294
    invoke-static {p2}, Lcom/samsung/android/hardware/context/SemContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 292
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 297
    goto :goto_0

    .line 295
    :catch_0
    move-exception v2

    .line 296
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "RemoteException in registerListener: "

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 299
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 280
    .end local v1    # "listenerDelegate":Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;
    :cond_4
    :goto_1
    return v1
.end method

.method public whitelist registerListener(Lcom/samsung/android/hardware/context/SemContextListener;ILcom/samsung/android/hardware/context/SemContextAttribute;Landroid/os/Looper;)Z
    .locals 4
    .param p1, "listener"    # Lcom/samsung/android/hardware/context/SemContextListener;
    .param p2, "service"    # I
    .param p3, "attribute"    # Lcom/samsung/android/hardware/context/SemContextAttribute;
    .param p4, "looper"    # Landroid/os/Looper;

    .line 365
    const-string v0, "SemContextManager"

    const/4 v1, 0x0

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Lcom/samsung/android/hardware/context/SemContextAttribute;->checkAttribute()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 366
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/hardware/context/SemContextManager;->checkListenerAndService(Lcom/samsung/android/hardware/context/SemContextListener;I)Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    .line 368
    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextManager;->getListenerDelegate(Lcom/samsung/android/hardware/context/SemContextListener;)Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;

    move-result-object v1

    .line 370
    .local v1, "listenerDelegate":Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;
    if-nez v1, :cond_2

    .line 371
    new-instance v2, Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;

    invoke-direct {v2, p0, p1, p4}, Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;-><init>(Lcom/samsung/android/hardware/context/SemContextManager;Lcom/samsung/android/hardware/context/SemContextListener;Landroid/os/Looper;)V

    move-object v1, v2

    .line 372
    iget-object v2, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 376
    :cond_2
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mSemContextService:Lcom/samsung/android/hardware/context/ISemContextService;

    iget-object v3, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v2, v1, p2, p3, v3}, Lcom/samsung/android/hardware/context/ISemContextService;->registerCallback(Landroid/os/IBinder;ILcom/samsung/android/hardware/context/SemContextAttribute;Ljava/lang/String;)V

    .line 377
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  .registerListener : listener = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", service="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 379
    invoke-static {p2}, Lcom/samsung/android/hardware/context/SemContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 377
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 382
    goto :goto_0

    .line 380
    :catch_0
    move-exception v2

    .line 381
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "RemoteException in registerListener: "

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 384
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 365
    .end local v1    # "listenerDelegate":Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;
    :cond_3
    :goto_1
    return v1
.end method

.method public blacklist registerListener(Lcom/samsung/android/hardware/context/SemContextListener;I[I)Z
    .locals 2
    .param p1, "listener"    # Lcom/samsung/android/hardware/context/SemContextListener;
    .param p2, "service"    # I
    .param p3, "arg"    # [I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 440
    const/4 v0, 0x0

    .line 441
    .local v0, "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    const/16 v1, 0x1b

    if-ne p2, v1, :cond_0

    .line 442
    new-instance v1, Lcom/samsung/android/hardware/context/SemContextActivityNotificationAttribute;

    invoke-direct {v1, p3}, Lcom/samsung/android/hardware/context/SemContextActivityNotificationAttribute;-><init>([I)V

    move-object v0, v1

    .line 444
    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/hardware/context/SemContextManager;->registerListener(Lcom/samsung/android/hardware/context/SemContextListener;ILcom/samsung/android/hardware/context/SemContextAttribute;)Z

    move-result v1

    return v1
.end method

.method public blacklist registerListener(Lcom/samsung/android/hardware/context/SemContextListener;I[II)Z
    .locals 2
    .param p1, "listener"    # Lcom/samsung/android/hardware/context/SemContextListener;
    .param p2, "service"    # I
    .param p3, "arg1"    # [I
    .param p4, "arg2"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 466
    const/4 v0, 0x0

    .line 467
    .local v0, "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    const/16 v1, 0x1e

    if-ne p2, v1, :cond_0

    .line 468
    new-instance v1, Lcom/samsung/android/hardware/context/SemContextActivityNotificationExAttribute;

    invoke-direct {v1, p3, p4}, Lcom/samsung/android/hardware/context/SemContextActivityNotificationExAttribute;-><init>([II)V

    move-object v0, v1

    .line 471
    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/hardware/context/SemContextManager;->registerListener(Lcom/samsung/android/hardware/context/SemContextListener;ILcom/samsung/android/hardware/context/SemContextAttribute;)Z

    move-result v1

    return v1
.end method

.method public whitelist requestHistoryData(Lcom/samsung/android/hardware/context/SemContextListener;I)V
    .locals 4
    .param p1, "listener"    # Lcom/samsung/android/hardware/context/SemContextListener;
    .param p2, "service"    # I

    .line 912
    invoke-virtual {p0, p2}, Lcom/samsung/android/hardware/context/SemContextManager;->isAvailableService(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 913
    :cond_0
    const/4 v0, 0x2

    const-string v1, "SemContextManager"

    if-eq p2, v0, :cond_1

    const/16 v0, 0x21

    if-eq p2, v0, :cond_1

    const/16 v0, 0x1a

    if-eq p2, v0, :cond_1

    .line 916
    const-string v0, "  .requestHistoryData : This service is not supported!"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    return-void

    .line 919
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/hardware/context/SemContextManager;->checkListenerAndService(Lcom/samsung/android/hardware/context/SemContextListener;I)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 921
    :cond_2
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextManager;->getListenerDelegate(Lcom/samsung/android/hardware/context/SemContextListener;)Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;

    move-result-object v0

    .line 923
    .local v0, "listenerDelegate":Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;
    if-eqz v0, :cond_3

    .line 924
    const-string v2, "  .requestHistoryData : This listener is currently using other services. You should create a new listener to request history data."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    return-void

    .line 929
    :cond_3
    new-instance v2, Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;

    const/4 v3, 0x1

    invoke-direct {v2, p0, p1, v3}, Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;-><init>(Lcom/samsung/android/hardware/context/SemContextManager;Lcom/samsung/android/hardware/context/SemContextListener;Z)V

    move-object v0, v2

    .line 930
    iget-object v2, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 933
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mSemContextService:Lcom/samsung/android/hardware/context/ISemContextService;

    iget-object v3, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v2, v0, p2, v3}, Lcom/samsung/android/hardware/context/ISemContextService;->requestHistoryData(Landroid/os/IBinder;ILjava/lang/String;)V

    .line 934
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  .requestHistoryData : listener = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", service="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 936
    invoke-static {p2}, Lcom/samsung/android/hardware/context/SemContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 934
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 939
    goto :goto_0

    .line 937
    :catch_0
    move-exception v2

    .line 938
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "RemoteException in requestHistoryData: "

    invoke-static {v1, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 940
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist requestToUpdate(Lcom/samsung/android/hardware/context/SemContextListener;I)V
    .locals 4
    .param p1, "listener"    # Lcom/samsung/android/hardware/context/SemContextListener;
    .param p2, "service"    # I

    .line 871
    invoke-virtual {p0, p2}, Lcom/samsung/android/hardware/context/SemContextManager;->isAvailableService(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 872
    :cond_0
    const/4 v0, 0x2

    const-string v1, "SemContextManager"

    if-eq p2, v0, :cond_1

    const/16 v0, 0x19

    if-eq p2, v0, :cond_1

    const/16 v0, 0x1a

    if-eq p2, v0, :cond_1

    const/16 v0, 0x32

    if-eq p2, v0, :cond_1

    const/16 v0, 0x33

    if-eq p2, v0, :cond_1

    const/16 v0, 0x34

    if-eq p2, v0, :cond_1

    const/16 v0, 0x36

    if-eq p2, v0, :cond_1

    .line 879
    const-string v0, "  .requestToUpdate : This service is not supported!"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    return-void

    .line 883
    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextManager;->getListenerDelegate(Lcom/samsung/android/hardware/context/SemContextListener;)Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;

    move-result-object v0

    .line 885
    .local v0, "listenerDelegate":Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;
    if-nez v0, :cond_2

    .line 886
    const-string v2, "  .requestToUpdate : SemContextListener is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    return-void

    .line 891
    :cond_2
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mSemContextService:Lcom/samsung/android/hardware/context/ISemContextService;

    iget-object v3, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v2, v0, p2, v3}, Lcom/samsung/android/hardware/context/ISemContextService;->requestToUpdate(Landroid/os/IBinder;ILjava/lang/String;)V

    .line 892
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  .requestToUpdate : listener = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", service="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 894
    invoke-static {p2}, Lcom/samsung/android/hardware/context/SemContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 892
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 897
    goto :goto_0

    .line 895
    :catch_0
    move-exception v2

    .line 896
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "RemoteException in requestToUpdate: "

    invoke-static {v1, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 898
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist setClientInfo(Ljava/lang/String;)V
    .locals 0
    .param p1, "clientInfo"    # Ljava/lang/String;

    .line 1105
    iput-object p1, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mClientInfo:Ljava/lang/String;

    .line 1106
    return-void
.end method

.method public blacklist setReferenceData(ILcom/samsung/android/hardware/context/SemContextAttribute;)Z
    .locals 12
    .param p1, "service"    # I
    .param p2, "attribute"    # Lcom/samsung/android/hardware/context/SemContextAttribute;

    .line 1038
    const-string v0, "gram_data"

    const-string v1, "interrupt_gyro"

    const-string v2, "display_status"

    const-string v3, "luminance_config_data"

    const-string v4, "net_data"

    iget-object v5, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mSemContextService:Lcom/samsung/android/hardware/context/ISemContextService;

    const/4 v6, 0x0

    if-eqz v5, :cond_c

    if-nez p2, :cond_0

    goto/16 :goto_6

    .line 1039
    :cond_0
    const/4 v5, 0x0

    .line 1041
    .local v5, "res":Z
    const/16 v7, 0x30

    if-ne p1, v7, :cond_1

    .line 1042
    invoke-virtual {p2, v7}, Lcom/samsung/android/hardware/context/SemContextAttribute;->getAttribute(I)Landroid/os/Bundle;

    move-result-object v8

    .local v8, "bundle":Landroid/os/Bundle;
    goto :goto_0

    .line 1044
    .end local v8    # "bundle":Landroid/os/Bundle;
    :cond_1
    invoke-virtual {p2, p1}, Lcom/samsung/android/hardware/context/SemContextAttribute;->getAttribute(I)Landroid/os/Bundle;

    move-result-object v8

    .line 1046
    .restart local v8    # "bundle":Landroid/os/Bundle;
    :goto_0
    if-nez v8, :cond_2

    return v6

    .line 1048
    :cond_2
    const-string v9, "Bundle is not contained key data"

    const/4 v10, 0x1

    const-string v11, "SemContextManager"

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_4

    .line 1066
    :sswitch_0
    :try_start_0
    invoke-virtual {v8, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1067
    invoke-static {v11, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    return v6

    .line 1070
    :cond_3
    new-array v0, v10, [B

    .line 1071
    .local v0, "sysfsMode":[B
    invoke-virtual {v8, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    int-to-byte v1, v1

    aput-byte v1, v0, v6

    .line 1072
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sysfs data : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-byte v2, v0, v6

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mSemContextService:Lcom/samsung/android/hardware/context/ISemContextService;

    invoke-interface {v1, p1, v7, v0}, Lcom/samsung/android/hardware/context/ISemContextService;->setReferenceData(II[B)Z

    move-result v1

    .line 1075
    .end local v5    # "res":Z
    .local v1, "res":Z
    move v5, v1

    goto/16 :goto_4

    .line 1077
    .end local v0    # "sysfsMode":[B
    .end local v1    # "res":Z
    .restart local v5    # "res":Z
    :sswitch_1
    invoke-virtual {v8, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1078
    invoke-static {v11, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1079
    return v6

    .line 1081
    :cond_4
    new-array v0, v10, [B

    .line 1082
    .local v0, "hallSensorStatus":[B
    invoke-virtual {v8, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    int-to-byte v1, v1

    aput-byte v1, v0, v6

    .line 1083
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Hall Sensor Data : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-byte v2, v0, v6

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1084
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mSemContextService:Lcom/samsung/android/hardware/context/ISemContextService;

    const/16 v2, 0x2b

    invoke-interface {v1, p1, v2, v0}, Lcom/samsung/android/hardware/context/ISemContextService;->setReferenceData(II[B)Z

    move-result v1

    .line 1086
    .end local v5    # "res":Z
    .restart local v1    # "res":Z
    move v5, v1

    goto :goto_4

    .line 1059
    .end local v0    # "hallSensorStatus":[B
    .end local v1    # "res":Z
    .restart local v5    # "res":Z
    :sswitch_2
    invoke-virtual {v8, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    return v6

    .line 1060
    :cond_5
    invoke-virtual {v8, v3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 1061
    .local v0, "luminanceConfigData":[B
    if-nez v0, :cond_6

    return v6

    .line 1062
    :cond_6
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mSemContextService:Lcom/samsung/android/hardware/context/ISemContextService;

    invoke-interface {v1, p1, v6, v0}, Lcom/samsung/android/hardware/context/ISemContextService;->setReferenceData(II[B)Z

    move-result v1

    .line 1064
    .end local v5    # "res":Z
    .restart local v1    # "res":Z
    move v5, v1

    goto :goto_4

    .line 1050
    .end local v0    # "luminanceConfigData":[B
    .end local v1    # "res":Z
    .restart local v5    # "res":Z
    :sswitch_3
    invoke-virtual {v8, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_3

    .line 1052
    :cond_7
    invoke-virtual {v8, v4}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 1053
    .local v1, "netData":[B
    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 1054
    .local v0, "gramData":[B
    if-eqz v1, :cond_a

    if-nez v0, :cond_8

    goto :goto_2

    .line 1055
    :cond_8
    iget-object v2, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mSemContextService:Lcom/samsung/android/hardware/context/ISemContextService;

    invoke-interface {v2, p1, v10, v1}, Lcom/samsung/android/hardware/context/ISemContextService;->setReferenceData(II[B)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mSemContextService:Lcom/samsung/android/hardware/context/ISemContextService;

    const/4 v3, 0x2

    .line 1056
    invoke-interface {v2, p1, v3, v0}, Lcom/samsung/android/hardware/context/ISemContextService;->setReferenceData(II[B)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_9

    move v6, v10

    goto :goto_1

    :cond_9
    nop

    :goto_1
    move v2, v6

    .line 1057
    .end local v5    # "res":Z
    .local v2, "res":Z
    move v5, v2

    goto :goto_4

    .line 1054
    .end local v2    # "res":Z
    .restart local v5    # "res":Z
    :cond_a
    :goto_2
    return v6

    .line 1051
    .end local v0    # "gramData":[B
    .end local v1    # "netData":[B
    :cond_b
    :goto_3
    return v6

    .line 1090
    :catch_0
    move-exception v0

    .line 1091
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "RemoteException in initializeSemContextService: "

    invoke-static {v11, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 1092
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_4
    nop

    .line 1093
    :goto_5
    return v5

    .line 1038
    .end local v5    # "res":Z
    .end local v8    # "bundle":Landroid/os/Bundle;
    :cond_c
    :goto_6
    return v6

    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_3
        0x27 -> :sswitch_2
        0x2b -> :sswitch_1
        0x30 -> :sswitch_0
    .end sparse-switch
.end method

.method public blacklist setReferenceData(I[B[B)Z
    .locals 2
    .param p1, "service"    # I
    .param p2, "data1"    # [B
    .param p3, "data2"    # [B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 997
    const/4 v0, 0x0

    .line 998
    .local v0, "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    if-eqz p2, :cond_2

    if-nez p3, :cond_0

    goto :goto_0

    .line 999
    :cond_0
    const/16 v1, 0x10

    if-ne p1, v1, :cond_1

    .line 1000
    new-instance v1, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;

    invoke-direct {v1, p2, p3}, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;-><init>([B[B)V

    move-object v0, v1

    .line 1002
    :cond_1
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/hardware/context/SemContextManager;->setReferenceData(ILcom/samsung/android/hardware/context/SemContextAttribute;)Z

    move-result v1

    return v1

    .line 998
    :cond_2
    :goto_0
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist unregisterListener(Lcom/samsung/android/hardware/context/SemContextListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/samsung/android/hardware/context/SemContextListener;

    .line 629
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/hardware/context/SemContextManager;->unregisterListener(Lcom/samsung/android/hardware/context/SemContextListener;I)V

    .line 630
    return-void
.end method

.method public whitelist unregisterListener(Lcom/samsung/android/hardware/context/SemContextListener;I)V
    .locals 4
    .param p1, "listener"    # Lcom/samsung/android/hardware/context/SemContextListener;
    .param p2, "service"    # I

    .line 640
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/hardware/context/SemContextManager;->checkListenerAndService(Lcom/samsung/android/hardware/context/SemContextListener;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 642
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextManager;->getListenerDelegate(Lcom/samsung/android/hardware/context/SemContextListener;)Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;

    move-result-object v0

    .line 643
    .local v0, "listenerDelegate":Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;
    const-string v1, "SemContextManager"

    if-nez v0, :cond_1

    .line 644
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  .unregisterListener : SemContextListener is null!, manager = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", listener = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", service = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    return-void

    .line 649
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mSemContextService:Lcom/samsung/android/hardware/context/ISemContextService;

    invoke-interface {v2, v0, p2}, Lcom/samsung/android/hardware/context/ISemContextService;->unregisterCallback(Landroid/os/IBinder;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 650
    invoke-virtual {v0}, Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;->clear()V

    .line 651
    iget-object v2, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 653
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  .unregisterListener : listener = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", service="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 655
    invoke-static {p2}, Lcom/samsung/android/hardware/context/SemContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 653
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 658
    goto :goto_0

    .line 656
    :catch_0
    move-exception v2

    .line 657
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "RemoteException in unregisterListener: "

    invoke-static {v1, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 659
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method
