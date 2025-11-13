.class Lcom/android/settingslib/graph/BluetoothDeviceLayerDrawable$BatteryMeterDrawable;
.super Lcom/android/settingslib/graph/BatteryMeterDrawableBase;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mAspectRatio:F

.field mFrameColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 3

    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090003

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v1

    iput v1, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mButtonHeightFraction:F

    const v1, 0x7f090004

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v0

    iput v0, p0, Lcom/android/settingslib/graph/BluetoothDeviceLayerDrawable$BatteryMeterDrawable;->mAspectRatio:F

    const/4 v0, 0x0

    const v1, 0x1010429

    invoke-static {p1, v1, v0}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;II)I

    move-result p1

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, p1, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iput p3, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mLevel:I

    new-instance p1, Lcom/android/settingslib/graph/BatteryMeterDrawableBase$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/settingslib/graph/BatteryMeterDrawableBase$$ExternalSyntheticLambda0;-><init>(Lcom/android/settingslib/graph/BatteryMeterDrawableBase;)V

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    new-instance p1, Lcom/android/settingslib/graph/BatteryMeterDrawableBase$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/settingslib/graph/BatteryMeterDrawableBase$$ExternalSyntheticLambda0;-><init>(Lcom/android/settingslib/graph/BatteryMeterDrawableBase;)V

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    iput p2, p0, Lcom/android/settingslib/graph/BluetoothDeviceLayerDrawable$BatteryMeterDrawable;->mFrameColor:I

    return-void
.end method


# virtual methods
.method public final getAspectRatio()F
    .locals 0

    iget p0, p0, Lcom/android/settingslib/graph/BluetoothDeviceLayerDrawable$BatteryMeterDrawable;->mAspectRatio:F

    return p0
.end method

.method public final getRadiusRatio()F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
