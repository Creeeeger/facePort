.class Landroidx/picker3/widget/SeslGradientColorSeekBar;
.super Landroid/widget/SeekBar;
.source "SeslGradientColorSeekBar.java"


# instance fields
.field private mColors:[I

.field private final mContext:Landroid/content/Context;

.field private mProgressDrawable:Landroid/graphics/drawable/GradientDrawable;

.field private final mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x2

    new-array p2, p2, [I

    .line 26
    fill-array-data p2, :array_0

    iput-object p2, p0, Landroidx/picker3/widget/SeslGradientColorSeekBar;->mColors:[I

    .line 31
    iput-object p1, p0, Landroidx/picker3/widget/SeslGradientColorSeekBar;->mContext:Landroid/content/Context;

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Landroidx/picker3/widget/SeslGradientColorSeekBar;->mResources:Landroid/content/res/Resources;

    .line 33
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Landroidx/picker/R$drawable;->sesl_color_picker_gradient_seekbar_drawable:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/GradientDrawable;

    iput-object p1, p0, Landroidx/picker3/widget/SeslGradientColorSeekBar;->mProgressDrawable:Landroid/graphics/drawable/GradientDrawable;

    return-void

    :array_0
    .array-data 4
        -0x1000000
        -0x1
    .end array-data
.end method

.method private initColor(I)V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 47
    invoke-static {p1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/4 p1, 0x2

    aget v1, v0, p1

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, p1

    .line 52
    iget-object p1, p0, Landroidx/picker3/widget/SeslGradientColorSeekBar;->mColors:[I

    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    const/4 v2, 0x1

    aput v0, p1, v2

    .line 53
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getMax()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 55
    invoke-virtual {p0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    return-void
.end method

.method private initProgressDrawable()V
    .locals 1

    .line 86
    iget-object v0, p0, Landroidx/picker3/widget/SeslGradientColorSeekBar;->mProgressDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0, v0}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private initThumb()V
    .locals 2

    .line 90
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Landroidx/picker/R$drawable;->sesl_color_picker_seekbar_cursor:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x0

    .line 91
    invoke-virtual {p0, v0}, Landroid/widget/SeekBar;->setThumbOffset(I)V

    return-void
.end method


# virtual methods
.method changeColorBase(I)V
    .locals 4

    .line 67
    iget-object v0, p0, Landroidx/picker3/widget/SeslGradientColorSeekBar;->mProgressDrawable:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_0

    const/16 v0, 0xff

    .line 68
    invoke-static {p1, v0}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p1

    .line 69
    iget-object v0, p0, Landroidx/picker3/widget/SeslGradientColorSeekBar;->mColors:[I

    const/4 v1, 0x1

    aput p1, v0, v1

    .line 70
    iget-object v2, p0, Landroidx/picker3/widget/SeslGradientColorSeekBar;->mProgressDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/GradientDrawable;->setColors([I)V

    .line 71
    iget-object v0, p0, Landroidx/picker3/widget/SeslGradientColorSeekBar;->mProgressDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0, v0}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 73
    invoke-static {p1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/4 p1, 0x2

    aget v2, v0, p1

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v0, p1

    .line 78
    iget-object p1, p0, Landroidx/picker3/widget/SeslGradientColorSeekBar;->mColors:[I

    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    aput v0, p1, v1

    .line 79
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getMax()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_0
    return-void
.end method

.method init(Ljava/lang/Integer;)V
    .locals 1

    const/16 v0, 0x64

    .line 37
    invoke-virtual {p0, v0}, Landroid/widget/SeekBar;->setMax(I)V

    if-eqz p1, :cond_0

    .line 39
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Landroidx/picker3/widget/SeslGradientColorSeekBar;->initColor(I)V

    .line 41
    :cond_0
    invoke-direct {p0}, Landroidx/picker3/widget/SeslGradientColorSeekBar;->initProgressDrawable()V

    .line 42
    invoke-direct {p0}, Landroidx/picker3/widget/SeslGradientColorSeekBar;->initThumb()V

    return-void
.end method

.method restoreColor(I)V
    .locals 1

    .line 59
    iget-object v0, p0, Landroidx/picker3/widget/SeslGradientColorSeekBar;->mProgressDrawable:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_0

    .line 60
    invoke-direct {p0, p1}, Landroidx/picker3/widget/SeslGradientColorSeekBar;->initColor(I)V

    .line 61
    iget-object p1, p0, Landroidx/picker3/widget/SeslGradientColorSeekBar;->mProgressDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget-object v0, p0, Landroidx/picker3/widget/SeslGradientColorSeekBar;->mColors:[I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColors([I)V

    .line 62
    iget-object p1, p0, Landroidx/picker3/widget/SeslGradientColorSeekBar;->mProgressDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0, p1}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method
