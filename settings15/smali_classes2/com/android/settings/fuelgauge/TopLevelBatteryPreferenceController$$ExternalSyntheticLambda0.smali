.class public final synthetic Lcom/android/settings/fuelgauge/TopLevelBatteryPreferenceController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/settings/fuelgauge/TopLevelBatteryPreferenceController;

.field public final synthetic f$1:Lcom/android/settings/fuelgauge/BatteryInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/fuelgauge/TopLevelBatteryPreferenceController;Lcom/android/settings/fuelgauge/BatteryInfo;I)V
    .locals 0

    iput p3, p0, Lcom/android/settings/fuelgauge/TopLevelBatteryPreferenceController$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/settings/fuelgauge/TopLevelBatteryPreferenceController$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/fuelgauge/TopLevelBatteryPreferenceController;

    iput-object p2, p0, Lcom/android/settings/fuelgauge/TopLevelBatteryPreferenceController$$ExternalSyntheticLambda0;->f$1:Lcom/android/settings/fuelgauge/BatteryInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/android/settings/fuelgauge/TopLevelBatteryPreferenceController$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/settings/fuelgauge/TopLevelBatteryPreferenceController$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/fuelgauge/TopLevelBatteryPreferenceController;

    iget-object p0, p0, Lcom/android/settings/fuelgauge/TopLevelBatteryPreferenceController$$ExternalSyntheticLambda0;->f$1:Lcom/android/settings/fuelgauge/BatteryInfo;

    invoke-static {v0, p0}, Lcom/android/settings/fuelgauge/TopLevelBatteryPreferenceController;->$r8$lambda$2Poj9asBTVmk4Xxb-9Z0FsyKwNs(Lcom/android/settings/fuelgauge/TopLevelBatteryPreferenceController;Lcom/android/settings/fuelgauge/BatteryInfo;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/TopLevelBatteryPreferenceController$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/fuelgauge/TopLevelBatteryPreferenceController;

    iget-object p0, p0, Lcom/android/settings/fuelgauge/TopLevelBatteryPreferenceController$$ExternalSyntheticLambda0;->f$1:Lcom/android/settings/fuelgauge/BatteryInfo;

    invoke-static {v0, p0}, Lcom/android/settings/fuelgauge/TopLevelBatteryPreferenceController;->$r8$lambda$BZnrTdhsXQ-7qkwcnPWxGi1UjsA(Lcom/android/settings/fuelgauge/TopLevelBatteryPreferenceController;Lcom/android/settings/fuelgauge/BatteryInfo;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
