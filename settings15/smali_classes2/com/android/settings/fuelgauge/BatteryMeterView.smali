.class public Lcom/android/settings/fuelgauge/BatteryMeterView;
.super Landroid/widget/ImageView;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field mAccentColorFilter:Landroid/graphics/ColorFilter;

.field mDrawable:Lcom/android/settings/fuelgauge/BatteryMeterView$BatteryMeterDrawable;

.field mErrorColorFilter:Landroid/graphics/ColorFilter;

.field mForegroundColorFilter:Landroid/graphics/ColorFilter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/settings/fuelgauge/BatteryMeterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/fuelgauge/BatteryMeterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p2, 0x7f060454

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p2

    const p3, 0x1010435

    invoke-static {p1, p3}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result p3

    invoke-static {p3}, Lcom/android/settingslib/Utils;->getAlphaInvariantColorFilterForColor(I)Landroid/graphics/ColorFilter;

    move-result-object p3

    iput-object p3, p0, Lcom/android/settings/fuelgauge/BatteryMeterView;->mAccentColorFilter:Landroid/graphics/ColorFilter;

    const p3, 0x7f060083

    invoke-virtual {p1, p3}, Landroid/content/Context;->getColor(I)I

    move-result p3

    invoke-static {p3}, Lcom/android/settingslib/Utils;->getAlphaInvariantColorFilterForColor(I)Landroid/graphics/ColorFilter;

    move-result-object p3

    iput-object p3, p0, Lcom/android/settings/fuelgauge/BatteryMeterView;->mErrorColorFilter:Landroid/graphics/ColorFilter;

    const p3, 0x1010030

    invoke-static {p1, p3}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result p3

    invoke-static {p3}, Lcom/android/settingslib/Utils;->getAlphaInvariantColorFilterForColor(I)Landroid/graphics/ColorFilter;

    move-result-object p3

    iput-object p3, p0, Lcom/android/settings/fuelgauge/BatteryMeterView;->mForegroundColorFilter:Landroid/graphics/ColorFilter;

    new-instance p3, Lcom/android/settings/fuelgauge/BatteryMeterView$BatteryMeterDrawable;

    invoke-direct {p3, p1, p2}, Lcom/android/settings/fuelgauge/BatteryMeterView$BatteryMeterDrawable;-><init>(Landroid/content/Context;I)V

    iput-object p3, p0, Lcom/android/settings/fuelgauge/BatteryMeterView;->mDrawable:Lcom/android/settings/fuelgauge/BatteryMeterView$BatteryMeterDrawable;

    iget-object p1, p0, Lcom/android/settings/fuelgauge/BatteryMeterView;->mAccentColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {p3, p1}, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object p1, p0, Lcom/android/settings/fuelgauge/BatteryMeterView;->mDrawable:Lcom/android/settings/fuelgauge/BatteryMeterView$BatteryMeterDrawable;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public getBatteryLevel()I
    .locals 0

    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryMeterView;->mDrawable:Lcom/android/settings/fuelgauge/BatteryMeterView$BatteryMeterDrawable;

    iget p0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->batteryLevel:I

    return p0
.end method

.method public getCharging()Z
    .locals 0

    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryMeterView;->mDrawable:Lcom/android/settings/fuelgauge/BatteryMeterView$BatteryMeterDrawable;

    iget-boolean p0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->charging:Z

    return p0
.end method

.method public getPowerSave()Z
    .locals 0

    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryMeterView;->mDrawable:Lcom/android/settings/fuelgauge/BatteryMeterView$BatteryMeterDrawable;

    iget-boolean p0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->powerSaveEnabled:Z

    return p0
.end method

.method public setBatteryLevel(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryMeterView;->mDrawable:Lcom/android/settings/fuelgauge/BatteryMeterView$BatteryMeterDrawable;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->setBatteryLevel(I)V

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryMeterView;->updateColorFilter()V

    return-void
.end method

.method public setCharging(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryMeterView;->mDrawable:Lcom/android/settings/fuelgauge/BatteryMeterView$BatteryMeterDrawable;

    iput-boolean p1, v0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->charging:Z

    iget-object p1, v0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->invalidateRunnable:Lkotlin/jvm/functions/Function0;

    new-instance v1, Lcom/android/settingslib/graph/ThemedBatteryDrawable$sam$java_lang_Runnable$0;

    invoke-direct {v1, p1}, Lcom/android/settingslib/graph/ThemedBatteryDrawable$sam$java_lang_Runnable$0;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    iget-object p1, v0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->invalidateRunnable:Lkotlin/jvm/functions/Function0;

    new-instance v1, Lcom/android/settingslib/graph/ThemedBatteryDrawable$sam$java_lang_Runnable$0;

    invoke-direct {v1, p1}, Lcom/android/settingslib/graph/ThemedBatteryDrawable$sam$java_lang_Runnable$0;-><init>(Lkotlin/jvm/functions/Function0;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    invoke-virtual {p0}, Landroid/widget/ImageView;->postInvalidate()V

    return-void
.end method

.method public setPowerSave(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryMeterView;->mDrawable:Lcom/android/settings/fuelgauge/BatteryMeterView$BatteryMeterDrawable;

    iput-boolean p1, v0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->powerSaveEnabled:Z

    iget-object p1, v0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->invalidateRunnable:Lkotlin/jvm/functions/Function0;

    new-instance v1, Lcom/android/settingslib/graph/ThemedBatteryDrawable$sam$java_lang_Runnable$0;

    invoke-direct {v1, p1}, Lcom/android/settingslib/graph/ThemedBatteryDrawable$sam$java_lang_Runnable$0;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    iget-object p1, v0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->invalidateRunnable:Lkotlin/jvm/functions/Function0;

    new-instance v1, Lcom/android/settingslib/graph/ThemedBatteryDrawable$sam$java_lang_Runnable$0;

    invoke-direct {v1, p1}, Lcom/android/settingslib/graph/ThemedBatteryDrawable$sam$java_lang_Runnable$0;-><init>(Lkotlin/jvm/functions/Function0;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryMeterView;->updateColorFilter()V

    return-void
.end method

.method public final updateColorFilter()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryMeterView;->mDrawable:Lcom/android/settings/fuelgauge/BatteryMeterView$BatteryMeterDrawable;

    iget-boolean v1, v0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->powerSaveEnabled:Z

    iget v2, v0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->batteryLevel:I

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryMeterView;->mForegroundColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0

    :cond_0
    iget v1, v0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->criticalLevel:I

    if-ge v2, v1, :cond_1

    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryMeterView;->mErrorColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryMeterView;->mAccentColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :goto_0
    return-void
.end method
