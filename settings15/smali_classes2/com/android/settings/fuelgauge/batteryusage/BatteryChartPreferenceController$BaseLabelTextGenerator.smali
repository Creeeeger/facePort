.class public abstract Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$BaseLabelTextGenerator;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;


# direct methods
.method public constructor <init>(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$BaseLabelTextGenerator;->this$0:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;

    return-void
.end method

.method private static generateBatteryLevelText(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/android/settingslib/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public generateContentDescription(ILjava/util/List;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$BaseLabelTextGenerator;->generateFullText(ILjava/util/List;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public abstract generateFullText(ILjava/util/List;)Ljava/lang/String;
.end method

.method public final generateSlotBatteryLevelText(ILjava/util/List;)Ljava/lang/String;
    .locals 2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    move v1, p1

    :goto_0
    if-ne p1, v0, :cond_1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    :goto_1
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$BaseLabelTextGenerator;->this$0:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mPrefContext:Landroid/content/Context;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-static {v0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$BaseLabelTextGenerator;->generateBatteryLevelText(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-static {p1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$BaseLabelTextGenerator;->generateBatteryLevelText(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    const p2, 0x7f1405bb

    invoke-virtual {p0, p2, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public abstract generateText(ILjava/util/List;)Ljava/lang/String;
.end method
