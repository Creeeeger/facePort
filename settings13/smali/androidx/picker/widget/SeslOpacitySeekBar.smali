.class Landroidx/picker/widget/SeslOpacitySeekBar;
.super Landroid/widget/SeekBar;
.source "SeslOpacitySeekBar.java"


# instance fields
.field private mColors:[I

.field private mProgressDrawable:Landroid/graphics/drawable/GradientDrawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 22
    fill-array-data p1, :array_0

    iput-object p1, p0, Landroidx/picker/widget/SeslOpacitySeekBar;->mColors:[I

    return-void

    :array_0
    .array-data 4
        -0x1
        -0x1000000
    .end array-data
.end method

.method private initColor(I)V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 46
    invoke-static {p1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 47
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    .line 49
    iget-object v1, p0, Landroidx/picker/widget/SeslOpacitySeekBar;->mColors:[I

    const/4 v2, 0x0

    invoke-static {v2, v0}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v3

    aput v3, v1, v2

    .line 50
    iget-object v1, p0, Landroidx/picker/widget/SeslOpacitySeekBar;->mColors:[I

    const/16 v2, 0xff

    invoke-static {v2, v0}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v0

    const/4 v2, 0x1

    aput v0, v1, v2

    .line 51
    invoke-virtual {p0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    return-void
.end method


# virtual methods
.method changeColorBase(I)V
    .locals 3

    .line 61
    iget-object v0, p0, Landroidx/picker/widget/SeslOpacitySeekBar;->mProgressDrawable:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_0

    .line 62
    iget-object v1, p0, Landroidx/picker/widget/SeslOpacitySeekBar;->mColors:[I

    const/4 v2, 0x1

    aput p1, v1, v2

    .line 63
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColors([I)V

    .line 65
    iget-object p1, p0, Landroidx/picker/widget/SeslOpacitySeekBar;->mProgressDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0, p1}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 66
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getMax()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_0
    return-void
.end method

.method init(Ljava/lang/Integer;)V
    .locals 1

    const/16 v0, 0xff

    .line 29
    invoke-virtual {p0, v0}, Landroid/widget/SeekBar;->setMax(I)V

    if-eqz p1, :cond_0

    .line 32
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Landroidx/picker/widget/SeslOpacitySeekBar;->initColor(I)V

    .line 36
    :cond_0
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Landroidx/picker/R$drawable;->sesl_color_picker_opacity_seekbar:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/GradientDrawable;

    iput-object p1, p0, Landroidx/picker/widget/SeslOpacitySeekBar;->mProgressDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 37
    invoke-virtual {p0, p1}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 40
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Landroidx/picker/R$drawable;->sesl_color_picker_seekbar_cursor:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x0

    .line 41
    invoke-virtual {p0, p1}, Landroid/widget/SeekBar;->setThumbOffset(I)V

    return-void
.end method

.method restoreColor(I)V
    .locals 1

    .line 55
    invoke-direct {p0, p1}, Landroidx/picker/widget/SeslOpacitySeekBar;->initColor(I)V

    .line 56
    iget-object p1, p0, Landroidx/picker/widget/SeslOpacitySeekBar;->mProgressDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget-object v0, p0, Landroidx/picker/widget/SeslOpacitySeekBar;->mColors:[I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColors([I)V

    .line 57
    iget-object p1, p0, Landroidx/picker/widget/SeslOpacitySeekBar;->mProgressDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0, p1}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
