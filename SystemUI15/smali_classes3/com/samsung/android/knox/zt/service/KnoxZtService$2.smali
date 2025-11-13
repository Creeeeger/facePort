.class Lcom/samsung/android/knox/zt/service/KnoxZtService$2;
.super Lcom/samsung/android/knox/zt/service/IServiceMonitoringListener$Stub;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/knox/zt/service/KnoxZtService;

.field public final synthetic val$listener:Lcom/samsung/android/knox/zt/devicetrust/monitor/IMonitoringListener;


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/zt/service/KnoxZtService;Lcom/samsung/android/knox/zt/devicetrust/monitor/IMonitoringListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/zt/service/KnoxZtService$2;->this$0:Lcom/samsung/android/knox/zt/service/KnoxZtService;

    iput-object p2, p0, Lcom/samsung/android/knox/zt/service/KnoxZtService$2;->val$listener:Lcom/samsung/android/knox/zt/devicetrust/monitor/IMonitoringListener;

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

    iget-object v0, v0, Lcom/samsung/android/knox/zt/service/KnoxZtService$2;->val$listener:Lcom/samsung/android/knox/zt/devicetrust/monitor/IMonitoringListener;

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
