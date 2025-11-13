.class public final Lcom/android/settings/fuelgauge/BatteryMeterView$BatteryMeterDrawable;
.super Lcom/android/settingslib/graph/ThemedBatteryDrawable;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mIntrinsicHeight:I

.field public final mIntrinsicWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/graph/ThemedBatteryDrawable;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f07018c

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/settings/fuelgauge/BatteryMeterView$BatteryMeterDrawable;->mIntrinsicWidth:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07018b

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/fuelgauge/BatteryMeterView$BatteryMeterDrawable;->mIntrinsicHeight:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;III)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/graph/ThemedBatteryDrawable;-><init>(Landroid/content/Context;I)V

    iput p3, p0, Lcom/android/settings/fuelgauge/BatteryMeterView$BatteryMeterDrawable;->mIntrinsicWidth:I

    iput p4, p0, Lcom/android/settings/fuelgauge/BatteryMeterView$BatteryMeterDrawable;->mIntrinsicHeight:I

    return-void
.end method


# virtual methods
.method public final getIntrinsicHeight()I
    .locals 0

    iget p0, p0, Lcom/android/settings/fuelgauge/BatteryMeterView$BatteryMeterDrawable;->mIntrinsicHeight:I

    return p0
.end method

.method public final getIntrinsicWidth()I
    .locals 0

    iget p0, p0, Lcom/android/settings/fuelgauge/BatteryMeterView$BatteryMeterDrawable;->mIntrinsicWidth:I

    return p0
.end method
