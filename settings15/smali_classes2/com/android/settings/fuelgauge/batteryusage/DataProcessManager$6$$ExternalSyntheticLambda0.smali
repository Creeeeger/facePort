.class public final synthetic Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager$6$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager$2;Ljava/util/Map;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager$6$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager$6$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager$6$$ExternalSyntheticLambda0;->f$1:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager$2;Ljava/util/Map;B)V
    .locals 0

    const/4 p3, 0x1

    iput p3, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager$6$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager$6$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager$6$$ExternalSyntheticLambda0;->f$1:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager$6$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager$6$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager$2;

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager$6$$ExternalSyntheticLambda0;->f$1:Ljava/util/Map;

    iget-object v0, v0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager$2;->this$0:Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;

    iget-object v0, v0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mCallbackFunction:Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced$$ExternalSyntheticLambda1;

    iget-object v0, v0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;

    invoke-static {v0, p0}, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;->-$$Nest$monBatteryDiffDataMapUpdate(Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;Ljava/util/Map;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager$6$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager$2;

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager$6$$ExternalSyntheticLambda0;->f$1:Ljava/util/Map;

    iget-object v0, v0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager$2;->this$0:Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;

    iget-object v0, v0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mCallbackFunction:Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced$$ExternalSyntheticLambda1;

    iget-object v0, v0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;

    invoke-static {v0, p0}, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;->-$$Nest$monBatteryDiffDataMapUpdate(Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;Ljava/util/Map;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
