.class Lcom/samsung/android/knox/zt/service/KnoxZtService$3;
.super Lcom/samsung/android/knox/zt/service/IServiceMonitoringListener$Stub;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/knox/zt/service/KnoxZtService;->startMonitoringDomains(Ljava/util/List;Ljava/util/List;Lcom/samsung/android/knox/zt/devicetrust/monitor/IMonitoringListener;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/knox/zt/service/KnoxZtService;

.field public final synthetic val$listener:Lcom/samsung/android/knox/zt/devicetrust/monitor/IMonitoringListener;


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/zt/service/KnoxZtService;Lcom/samsung/android/knox/zt/devicetrust/monitor/IMonitoringListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/zt/service/KnoxZtService$3;->this$0:Lcom/samsung/android/knox/zt/service/KnoxZtService;

    iput-object p2, p0, Lcom/samsung/android/knox/zt/service/KnoxZtService$3;->val$listener:Lcom/samsung/android/knox/zt/devicetrust/monitor/IMonitoringListener;

    invoke-direct {p0}, Lcom/samsung/android/knox/zt/service/IServiceMonitoringListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public checkUrlReputation(Ljava/lang/String;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p0, -0x1

    return p0
.end method

.method public onEvent(ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onEventGeneralized(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onEventSimplified(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onSignal(Ljava/lang/String;)I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public onUnauthorizedAccessDetected(IIIJIILjava/lang/String;Ljava/lang/String;)V
    .locals 10

    move-object v0, p0

    iget-object v0, v0, Lcom/samsung/android/knox/zt/service/KnoxZtService$3;->val$listener:Lcom/samsung/android/knox/zt/devicetrust/monitor/IMonitoringListener;

    move v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-interface/range {v0 .. v9}, Lcom/samsung/android/knox/zt/devicetrust/monitor/IMonitoringListener;->onUnauthorizedAccessDetected(IIIJIILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
