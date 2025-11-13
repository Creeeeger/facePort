.class Landroidx/picker3/widget/SeslGradientColorSeekBar;
.super Landroid/widget/SeekBar;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mColors:[I

.field public final mProgressDrawable:Landroid/graphics/drawable/GradientDrawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p2, -0x1000000

    const/4 v0, -0x1

    filled-new-array {p2, v0}, [I

    move-result-object p2

    iput-object p2, p0, Landroidx/picker3/widget/SeslGradientColorSeekBar;->mColors:[I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f081112

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/GradientDrawable;

    iput-object p1, p0, Landroidx/picker3/widget/SeslGradientColorSeekBar;->mProgressDrawable:Landroid/graphics/drawable/GradientDrawable;

    return-void
.end method


# virtual methods
.method public final initColor(I)V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [F

    invoke-static {p1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/4 p1, 0x2

    aget v1, v0, p1

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, p1

    iget-object p1, p0, Landroidx/picker3/widget/SeslGradientColorSeekBar;->mColors:[I

    const/4 v2, 0x1

    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    aput v0, p1, v2

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getMax()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    return-void
.end method
