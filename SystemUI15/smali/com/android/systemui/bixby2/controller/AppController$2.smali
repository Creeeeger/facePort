.class Lcom/android/systemui/bixby2/controller/AppController$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/keyguard/DisplayLifecycle$Observer;


# instance fields
.field final synthetic this$0:Lcom/android/systemui/bixby2/controller/AppController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/bixby2/controller/AppController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/bixby2/controller/AppController$2;->this$0:Lcom/android/systemui/bixby2/controller/AppController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onDisplayAdded(I)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onDisplayChanged(I)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onDisplayRemoved(I)V
    .locals 0

    return-void
.end method

.method public onFolderStateChanged(Z)V
    .locals 2

    const-string v0, "isFolderOpened = "

    const-string v1, "AppController"

    invoke-static {v0, v1, p1}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/bixby2/controller/AppController$2;->this$0:Lcom/android/systemui/bixby2/controller/AppController;

    invoke-static {p1}, Lcom/android/systemui/bixby2/controller/AppController;->-$$Nest$fgetmSensorRegistered(Lcom/android/systemui/bixby2/controller/AppController;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "folderOpened : regist SensorManager "

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/bixby2/controller/AppController$2;->this$0:Lcom/android/systemui/bixby2/controller/AppController;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/systemui/bixby2/controller/AppController;->-$$Nest$fputmSensorRegistered(Lcom/android/systemui/bixby2/controller/AppController;Z)V

    iget-object p1, p0, Lcom/android/systemui/bixby2/controller/AppController$2;->this$0:Lcom/android/systemui/bixby2/controller/AppController;

    invoke-static {p1}, Lcom/android/systemui/bixby2/controller/AppController;->-$$Nest$fgetmSensorManager(Lcom/android/systemui/bixby2/controller/AppController;)Landroid/hardware/SensorManager;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/bixby2/controller/AppController$2;->this$0:Lcom/android/systemui/bixby2/controller/AppController;

    invoke-static {v0}, Lcom/android/systemui/bixby2/controller/AppController;->-$$Nest$fgetmSensorListener(Lcom/android/systemui/bixby2/controller/AppController;)Landroid/hardware/SensorEventListener;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/AppController$2;->this$0:Lcom/android/systemui/bixby2/controller/AppController;

    invoke-static {p0}, Lcom/android/systemui/bixby2/controller/AppController;->-$$Nest$fgetmSensor(Lcom/android/systemui/bixby2/controller/AppController;)Landroid/hardware/Sensor;

    move-result-object p0

    const/4 v1, 0x3

    invoke-virtual {p1, v0, p0, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/bixby2/controller/AppController$2;->this$0:Lcom/android/systemui/bixby2/controller/AppController;

    invoke-static {p1}, Lcom/android/systemui/bixby2/controller/AppController;->-$$Nest$fgetmSensorRegistered(Lcom/android/systemui/bixby2/controller/AppController;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "folderClosed : unregist SensorManager "

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/bixby2/controller/AppController$2;->this$0:Lcom/android/systemui/bixby2/controller/AppController;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/systemui/bixby2/controller/AppController;->-$$Nest$fputmSensorRegistered(Lcom/android/systemui/bixby2/controller/AppController;Z)V

    iget-object p1, p0, Lcom/android/systemui/bixby2/controller/AppController$2;->this$0:Lcom/android/systemui/bixby2/controller/AppController;

    invoke-static {p1}, Lcom/android/systemui/bixby2/controller/AppController;->-$$Nest$fgetmSensorManager(Lcom/android/systemui/bixby2/controller/AppController;)Landroid/hardware/SensorManager;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/AppController$2;->this$0:Lcom/android/systemui/bixby2/controller/AppController;

    invoke-static {p0}, Lcom/android/systemui/bixby2/controller/AppController;->-$$Nest$fgetmSensorListener(Lcom/android/systemui/bixby2/controller/AppController;)Landroid/hardware/SensorEventListener;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :cond_1
    :goto_0
    return-void
.end method
