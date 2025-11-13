.class Lcom/android/systemui/bixby2/controller/AppController$3;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field final synthetic this$0:Lcom/android/systemui/bixby2/controller/AppController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/bixby2/controller/AppController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/bixby2/controller/AppController$3;->this$0:Lcom/android/systemui/bixby2/controller/AppController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.SCREEN_ON"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-string v0, "AppController"

    if-nez p2, :cond_3

    const-string p2, "android.intent.action.ACTION_SCREEN_ON_BY_PROXIMITY"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "android.intent.action.ACTION_SCREEN_OFF_BY_PROXIMITY"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    :cond_1
    const-string p2, "screen_off : action = "

    invoke-static {p2, p1, v0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean p1, Lcom/android/systemui/BasicRune;->VOLUME_SUB_DISPLAY_FULL_LAYOUT_VOLUME_DIALOG:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/bixby2/controller/AppController$3;->this$0:Lcom/android/systemui/bixby2/controller/AppController;

    invoke-virtual {p1}, Lcom/android/systemui/bixby2/controller/AppController;->isFolderClosed()Z

    move-result p1

    if-nez p1, :cond_5

    :cond_2
    iget-object p1, p0, Lcom/android/systemui/bixby2/controller/AppController$3;->this$0:Lcom/android/systemui/bixby2/controller/AppController;

    invoke-static {p1}, Lcom/android/systemui/bixby2/controller/AppController;->-$$Nest$fgetmSensorRegistered(Lcom/android/systemui/bixby2/controller/AppController;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "screen_off : unregist SensorManager "

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/bixby2/controller/AppController$3;->this$0:Lcom/android/systemui/bixby2/controller/AppController;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/android/systemui/bixby2/controller/AppController;->-$$Nest$fputmSensorRegistered(Lcom/android/systemui/bixby2/controller/AppController;Z)V

    iget-object p1, p0, Lcom/android/systemui/bixby2/controller/AppController$3;->this$0:Lcom/android/systemui/bixby2/controller/AppController;

    invoke-static {p1}, Lcom/android/systemui/bixby2/controller/AppController;->-$$Nest$fgetmSensorManager(Lcom/android/systemui/bixby2/controller/AppController;)Landroid/hardware/SensorManager;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/AppController$3;->this$0:Lcom/android/systemui/bixby2/controller/AppController;

    invoke-static {p0}, Lcom/android/systemui/bixby2/controller/AppController;->-$$Nest$fgetmSensorListener(Lcom/android/systemui/bixby2/controller/AppController;)Landroid/hardware/SensorEventListener;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    goto :goto_1

    :cond_3
    :goto_0
    const-string p2, "screen_on : action = "

    invoke-static {p2, p1, v0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean p1, Lcom/android/systemui/BasicRune;->VOLUME_SUB_DISPLAY_FULL_LAYOUT_VOLUME_DIALOG:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/systemui/bixby2/controller/AppController$3;->this$0:Lcom/android/systemui/bixby2/controller/AppController;

    invoke-virtual {p1}, Lcom/android/systemui/bixby2/controller/AppController;->isFolderClosed()Z

    move-result p1

    if-nez p1, :cond_5

    :cond_4
    iget-object p1, p0, Lcom/android/systemui/bixby2/controller/AppController$3;->this$0:Lcom/android/systemui/bixby2/controller/AppController;

    invoke-static {p1}, Lcom/android/systemui/bixby2/controller/AppController;->-$$Nest$fgetmSensorRegistered(Lcom/android/systemui/bixby2/controller/AppController;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "screen_on : regist SensorManager "

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/bixby2/controller/AppController$3;->this$0:Lcom/android/systemui/bixby2/controller/AppController;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/android/systemui/bixby2/controller/AppController;->-$$Nest$fputmSensorRegistered(Lcom/android/systemui/bixby2/controller/AppController;Z)V

    iget-object p1, p0, Lcom/android/systemui/bixby2/controller/AppController$3;->this$0:Lcom/android/systemui/bixby2/controller/AppController;

    invoke-static {p1}, Lcom/android/systemui/bixby2/controller/AppController;->-$$Nest$fgetmSensorManager(Lcom/android/systemui/bixby2/controller/AppController;)Landroid/hardware/SensorManager;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/bixby2/controller/AppController$3;->this$0:Lcom/android/systemui/bixby2/controller/AppController;

    invoke-static {p2}, Lcom/android/systemui/bixby2/controller/AppController;->-$$Nest$fgetmSensorListener(Lcom/android/systemui/bixby2/controller/AppController;)Landroid/hardware/SensorEventListener;

    move-result-object p2

    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/AppController$3;->this$0:Lcom/android/systemui/bixby2/controller/AppController;

    invoke-static {p0}, Lcom/android/systemui/bixby2/controller/AppController;->-$$Nest$fgetmSensor(Lcom/android/systemui/bixby2/controller/AppController;)Landroid/hardware/Sensor;

    move-result-object p0

    const/4 v0, 0x3

    invoke-virtual {p1, p2, p0, v0}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_5
    :goto_1
    return-void
.end method
