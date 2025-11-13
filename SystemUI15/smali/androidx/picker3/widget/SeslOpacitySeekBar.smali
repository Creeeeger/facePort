.class Landroidx/picker3/widget/SeslOpacitySeekBar;
.super Landroid/widget/SeekBar;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mColors:[I

.field public mProgressDrawable:Landroid/graphics/drawable/GradientDrawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    const/high16 p2, -0x1000000

    filled-new-array {p1, p2}, [I

    move-result-object p1

    iput-object p1, p0, Landroidx/picker3/widget/SeslOpacitySeekBar;->mColors:[I

    return-void
.end method


# virtual methods
.method public final changeColorBase(II)V
    .locals 5

    iget-object v0, p0, Landroidx/picker3/widget/SeslOpacitySeekBar;->mProgressDrawable:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_0

    const/16 v0, 0xff

    invoke-static {p1, v0}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p1

    iget-object v1, p0, Landroidx/picker3/widget/SeslOpacitySeekBar;->mColors:[I

    const/4 v2, 0x1

    aput p1, v1, v2

    iget-object v3, p0, Landroidx/picker3/widget/SeslOpacitySeekBar;->mProgressDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/GradientDrawable;->setColors([I)V

    iget-object v1, p0, Landroidx/picker3/widget/SeslOpacitySeekBar;->mProgressDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0, v1}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v1, 0x3

    new-array v1, v1, [F

    invoke-static {p1, v1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    iget-object p1, p0, Landroidx/picker3/widget/SeslOpacitySeekBar;->mColors:[I

    const/4 v3, 0x0

    invoke-static {v3, v1}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v4

    aput v4, p1, v3

    iget-object p1, p0, Landroidx/picker3/widget/SeslOpacitySeekBar;->mColors:[I

    invoke-static {v0, v1}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v0

    aput v0, p1, v2

    invoke-virtual {p0, p2}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_0
    return-void
.end method

.method public final initColor(I)V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [F

    invoke-static {p1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    iget-object v1, p0, Landroidx/picker3/widget/SeslOpacitySeekBar;->mColors:[I

    const/4 v2, 0x0

    invoke-static {v2, v0}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v3

    aput v3, v1, v2

    iget-object v1, p0, Landroidx/picker3/widget/SeslOpacitySeekBar;->mColors:[I

    const/16 v2, 0xff

    invoke-static {v2, v0}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v0

    const/4 v2, 0x1

    aput v0, v1, v2

    invoke-virtual {p0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    return-void
.end method
