.class public final Lcom/android/systemui/screenshot/FloatingWindowUtil;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dpToPx(Landroid/util/DisplayMetrics;F)F
    .locals 0

    iget p0, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float p0, p0

    mul-float/2addr p1, p0

    const/high16 p0, 0x43200000    # 160.0f

    div-float/2addr p1, p0

    return p1
.end method

.method public static getFloatingWindowParams()Landroid/view/WindowManager$LayoutParams;
    .locals 9

    new-instance v8, Landroid/view/WindowManager$LayoutParams;

    const v6, 0xe0520

    const/4 v7, -0x3

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x7f4

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    const/4 v0, 0x3

    iput v0, v8, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    iget v0, v8, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v1, 0x20000000

    or-int/2addr v0, v1

    iput v0, v8, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    return-object v8
.end method
