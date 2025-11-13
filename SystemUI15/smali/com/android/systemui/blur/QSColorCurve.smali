.class public final Lcom/android/systemui/blur/QSColorCurve;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final context:Landroid/content/Context;

.field public curve:F

.field public fraction:F

.field public maxX:F

.field public maxY:F

.field public minX:F

.field public minY:F

.field public radius:F

.field public saturation:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/blur/QSColorCurve$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/blur/QSColorCurve$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/blur/QSColorCurve;->context:Landroid/content/Context;

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/systemui/blur/QSColorCurve;->radius:F

    const/high16 p1, 0x437f0000    # 255.0f

    iput p1, p0, Lcom/android/systemui/blur/QSColorCurve;->maxX:F

    iput p1, p0, Lcom/android/systemui/blur/QSColorCurve;->maxY:F

    return-void
.end method


# virtual methods
.method public final setFraction(F)V
    .locals 4

    iput p1, p0, Lcom/android/systemui/blur/QSColorCurve;->fraction:F

    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_PANEL_BLUR_MASSIVE:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x428c0000    # 70.0f

    goto :goto_0

    :cond_0
    const/high16 v0, 0x437a0000    # 250.0f

    :goto_0
    const/4 v1, 0x0

    invoke-static {v0, v1, p1, v1}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable$$ExternalSyntheticOutline0;->m$1(FFFF)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/blur/QSColorCurve;->radius:F

    const/high16 v0, 0x3e800000    # 0.25f

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/android/systemui/blur/QSColorCurve;->saturation:F

    const/high16 v0, 0x41200000    # 10.0f

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/android/systemui/blur/QSColorCurve;->curve:F

    const/high16 v0, 0x41700000    # 15.0f

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/android/systemui/blur/QSColorCurve;->minX:F

    iget-object p1, p0, Lcom/android/systemui/blur/QSColorCurve;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p1, p1, 0x30

    const/4 v0, 0x1

    const/16 v2, 0x20

    if-ne p1, v2, :cond_1

    goto :goto_1

    :cond_1
    sget-boolean p1, Lcom/android/systemui/QpRune;->QUICK_SUBSCREEN_PANEL_WINDOW:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/blur/QSColorCurve;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result p1

    if-ne p1, v0, :cond_2

    :goto_1
    const p1, 0x4209999a    # 34.4f

    goto :goto_2

    :cond_2
    const p1, 0x4220cccd    # 40.2f

    :goto_2
    iget v3, p0, Lcom/android/systemui/blur/QSColorCurve;->fraction:F

    mul-float/2addr p1, v3

    iput p1, p0, Lcom/android/systemui/blur/QSColorCurve;->minY:F

    mul-float/2addr v1, v3

    const/high16 p1, 0x437f0000    # 255.0f

    sub-float v1, p1, v1

    iput v1, p0, Lcom/android/systemui/blur/QSColorCurve;->maxX:F

    iget-object v1, p0, Lcom/android/systemui/blur/QSColorCurve;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0x30

    if-ne v1, v2, :cond_3

    goto :goto_3

    :cond_3
    sget-boolean v1, Lcom/android/systemui/QpRune;->QUICK_SUBSCREEN_PANEL_WINDOW:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/blur/QSColorCurve;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    if-ne v1, v0, :cond_4

    :goto_3
    const v0, 0x432eb333    # 174.7f

    goto :goto_4

    :cond_4
    const v0, 0x434de666    # 205.9f

    :goto_4
    sub-float v0, p1, v0

    iget v1, p0, Lcom/android/systemui/blur/QSColorCurve;->fraction:F

    mul-float/2addr v0, v1

    sub-float/2addr p1, v0

    iput p1, p0, Lcom/android/systemui/blur/QSColorCurve;->maxY:F

    return-void
.end method
