.class Lcom/samsung/android/knox/zt/service/KnoxZtService$RegisteredMonitoringListener;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public listener:Lcom/samsung/android/knox/zt/devicetrust/monitor/IMonitoringListener;

.field public options:Landroid/os/Bundle;

.field public final synthetic this$0:Lcom/samsung/android/knox/zt/service/KnoxZtService;

.field public type:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/zt/service/KnoxZtService;ILandroid/os/Bundle;Lcom/samsung/android/knox/zt/devicetrust/monitor/IMonitoringListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/zt/service/KnoxZtService$RegisteredMonitoringListener;->this$0:Lcom/samsung/android/knox/zt/service/KnoxZtService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/samsung/android/knox/zt/service/KnoxZtService$RegisteredMonitoringListener;->type:I

    iput-object p3, p0, Lcom/samsung/android/knox/zt/service/KnoxZtService$RegisteredMonitoringListener;->options:Landroid/os/Bundle;

    iput-object p4, p0, Lcom/samsung/android/knox/zt/service/KnoxZtService$RegisteredMonitoringListener;->listener:Lcom/samsung/android/knox/zt/devicetrust/monitor/IMonitoringListener;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lcom/samsung/android/knox/zt/service/KnoxZtService$RegisteredMonitoringListener;

    iget v2, p0, Lcom/samsung/android/knox/zt/service/KnoxZtService$RegisteredMonitoringListener;->type:I

    iget v3, p1, Lcom/samsung/android/knox/zt/service/KnoxZtService$RegisteredMonitoringListener;->type:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/samsung/android/knox/zt/service/KnoxZtService$RegisteredMonitoringListener;->options:Landroid/os/Bundle;

    iget-object v3, p1, Lcom/samsung/android/knox/zt/service/KnoxZtService$RegisteredMonitoringListener;->options:Landroid/os/Bundle;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Lcom/samsung/android/knox/zt/service/KnoxZtService$RegisteredMonitoringListener;->listener:Lcom/samsung/android/knox/zt/devicetrust/monitor/IMonitoringListener;

    iget-object p1, p1, Lcom/samsung/android/knox/zt/service/KnoxZtService$RegisteredMonitoringListener;->listener:Lcom/samsung/android/knox/zt/devicetrust/monitor/IMonitoringListener;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public final getListener()Lcom/samsung/android/knox/zt/devicetrust/monitor/IMonitoringListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/zt/service/KnoxZtService$RegisteredMonitoringListener;->listener:Lcom/samsung/android/knox/zt/devicetrust/monitor/IMonitoringListener;

    return-object p0
.end method

.method public final getOptions()Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/zt/service/KnoxZtService$RegisteredMonitoringListener;->options:Landroid/os/Bundle;

    return-object p0
.end method

.method public final getType()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/knox/zt/service/KnoxZtService$RegisteredMonitoringListener;->type:I

    return p0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/samsung/android/knox/zt/service/KnoxZtService$RegisteredMonitoringListener;->type:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/knox/zt/service/KnoxZtService$RegisteredMonitoringListener;->options:Landroid/os/Bundle;

    iget-object p0, p0, Lcom/samsung/android/knox/zt/service/KnoxZtService$RegisteredMonitoringListener;->listener:Lcom/samsung/android/knox/zt/devicetrust/monitor/IMonitoringListener;

    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
