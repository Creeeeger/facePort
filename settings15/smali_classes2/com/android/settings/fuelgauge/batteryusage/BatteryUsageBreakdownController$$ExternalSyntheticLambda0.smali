.class public final synthetic Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController$$ExternalSyntheticLambda0;->f$0:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController$$ExternalSyntheticLambda0;->f$0:Ljava/util/Set;

    check-cast p1, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;

    invoke-static {p0, p1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->$r8$lambda$BjMHagqCAjDC35GyBHmjWPW59Qk(Ljava/util/Set;Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;)V

    return-void
.end method
