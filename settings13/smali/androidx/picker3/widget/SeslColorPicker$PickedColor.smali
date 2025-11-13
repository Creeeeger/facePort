.class Landroidx/picker3/widget/SeslColorPicker$PickedColor;
.super Ljava/lang/Object;
.source "SeslColorPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/picker3/widget/SeslColorPicker;
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

    .line 1097
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1092
    iput-object v0, p0, Landroidx/picker3/widget/SeslColorPicker$PickedColor;->mColor:Ljava/lang/Integer;

    const/16 v0, 0xff

    .line 1093
    iput v0, p0, Landroidx/picker3/widget/SeslColorPicker$PickedColor;->mAlpha:I

    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 1094
    iput-object v0, p0, Landroidx/picker3/widget/SeslColorPicker$PickedColor;->mHsv:[F

    return-void
.end method


# virtual methods
.method public getAlpha()I
    .locals 0

    .line 1140
    iget p0, p0, Landroidx/picker3/widget/SeslColorPicker$PickedColor;->mAlpha:I

    return p0
.end method

.method public getColor()Ljava/lang/Integer;
    .locals 0

    .line 1113
    iget-object p0, p0, Landroidx/picker3/widget/SeslColorPicker$PickedColor;->mColor:Ljava/lang/Integer;

    return-object p0
.end method

.method public getV()F
    .locals 1

    .line 1136
    iget-object p0, p0, Landroidx/picker3/widget/SeslColorPicker$PickedColor;->mHsv:[F

    const/4 v0, 0x2

    aget p0, p0, v0

    return p0
.end method

.method public setAlpha(I)V
    .locals 1

    .line 1131
    iput p1, p0, Landroidx/picker3/widget/SeslColorPicker$PickedColor;->mAlpha:I

    .line 1132
    iget-object v0, p0, Landroidx/picker3/widget/SeslColorPicker$PickedColor;->mHsv:[F

    invoke-static {p1, v0}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Landroidx/picker3/widget/SeslColorPicker$PickedColor;->mColor:Ljava/lang/Integer;

    return-void
.end method

.method public setColor(I)V
    .locals 0

    .line 1101
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Landroidx/picker3/widget/SeslColorPicker$PickedColor;->mColor:Ljava/lang/Integer;

    .line 1102
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    iput p1, p0, Landroidx/picker3/widget/SeslColorPicker$PickedColor;->mAlpha:I

    .line 1103
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker$PickedColor;->mColor:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object p0, p0, Landroidx/picker3/widget/SeslColorPicker$PickedColor;->mHsv:[F

    invoke-static {p1, p0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    return-void
.end method

.method public setColorWithAlpha(II)V
    .locals 0

    .line 1107
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Landroidx/picker3/widget/SeslColorPicker$PickedColor;->mColor:Ljava/lang/Integer;

    mul-int/lit8 p2, p2, 0x64

    int-to-float p1, p2

    const/high16 p2, 0x437f0000    # 255.0f

    div-float/2addr p1, p2

    float-to-double p1, p1

    .line 1108
    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-int p1, p1

    iput p1, p0, Landroidx/picker3/widget/SeslColorPicker$PickedColor;->mAlpha:I

    .line 1109
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker$PickedColor;->mColor:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object p0, p0, Landroidx/picker3/widget/SeslColorPicker$PickedColor;->mHsv:[F

    invoke-static {p1, p0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    return-void
.end method

.method public setHS(FFI)V
    .locals 2

    .line 1117
    iget-object v0, p0, Landroidx/picker3/widget/SeslColorPicker$PickedColor;->mHsv:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    .line 1118
    aput p2, v0, p1

    const/4 p1, 0x2

    const/high16 p2, 0x3f800000    # 1.0f

    .line 1119
    aput p2, v0, p1

    .line 1121
    iget p1, p0, Landroidx/picker3/widget/SeslColorPicker$PickedColor;->mAlpha:I

    invoke-static {p1, v0}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Landroidx/picker3/widget/SeslColorPicker$PickedColor;->mColor:Ljava/lang/Integer;

    mul-int/lit8 p3, p3, 0x64

    int-to-float p1, p3

    const/high16 p2, 0x437f0000    # 255.0f

    div-float/2addr p1, p2

    float-to-double p1, p1

    .line 1122
    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-int p1, p1

    iput p1, p0, Landroidx/picker3/widget/SeslColorPicker$PickedColor;->mAlpha:I

    return-void
.end method

.method public setV(F)V
    .locals 2

    .line 1126
    iget-object v0, p0, Landroidx/picker3/widget/SeslColorPicker$PickedColor;->mHsv:[F

    const/4 v1, 0x2

    aput p1, v0, v1

    .line 1127
    iget p1, p0, Landroidx/picker3/widget/SeslColorPicker$PickedColor;->mAlpha:I

    invoke-static {p1, v0}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Landroidx/picker3/widget/SeslColorPicker$PickedColor;->mColor:Ljava/lang/Integer;

    return-void
.end method
