.class Landroidx/picker/widget/SeslColorPicker$PickedColor;
.super Ljava/lang/Object;
.source "SeslColorPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/picker/widget/SeslColorPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PickedColor"
.end annotation


# instance fields
.field private mAlpha:I

.field private mColor:Ljava/lang/Integer;

.field private mHsv:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 532
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 527
    iput-object v0, p0, Landroidx/picker/widget/SeslColorPicker$PickedColor;->mColor:Ljava/lang/Integer;

    const/16 v0, 0xff

    .line 528
    iput v0, p0, Landroidx/picker/widget/SeslColorPicker$PickedColor;->mAlpha:I

    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 529
    iput-object v0, p0, Landroidx/picker/widget/SeslColorPicker$PickedColor;->mHsv:[F

    return-void
.end method


# virtual methods
.method public getColor()Ljava/lang/Integer;
    .locals 0

    .line 542
    iget-object p0, p0, Landroidx/picker/widget/SeslColorPicker$PickedColor;->mColor:Ljava/lang/Integer;

    return-object p0
.end method

.method public setAlpha(I)V
    .locals 1

    .line 559
    iput p1, p0, Landroidx/picker/widget/SeslColorPicker$PickedColor;->mAlpha:I

    .line 560
    iget-object v0, p0, Landroidx/picker/widget/SeslColorPicker$PickedColor;->mHsv:[F

    invoke-static {p1, v0}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Landroidx/picker/widget/SeslColorPicker$PickedColor;->mColor:Ljava/lang/Integer;

    return-void
.end method

.method public setColor(I)V
    .locals 0

    .line 536
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Landroidx/picker/widget/SeslColorPicker$PickedColor;->mColor:Ljava/lang/Integer;

    .line 537
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    iput p1, p0, Landroidx/picker/widget/SeslColorPicker$PickedColor;->mAlpha:I

    .line 538
    iget-object p1, p0, Landroidx/picker/widget/SeslColorPicker$PickedColor;->mColor:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object p0, p0, Landroidx/picker/widget/SeslColorPicker$PickedColor;->mHsv:[F

    invoke-static {p1, p0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    return-void
.end method
