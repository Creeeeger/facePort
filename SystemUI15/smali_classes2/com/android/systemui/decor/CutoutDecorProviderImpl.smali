.class public final Lcom/android/systemui/decor/CutoutDecorProviderImpl;
.super Lcom/android/systemui/decor/BoundDecorProvider;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final alignedBound:I

.field public final cameraProtectionStrokeWidth:I

.field public final isCameraProtectionEnabled:Z

.field public final viewId:I


# direct methods
.method public constructor <init>(IZI)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/decor/BoundDecorProvider;-><init>()V

    iput p1, p0, Lcom/android/systemui/decor/CutoutDecorProviderImpl;->alignedBound:I

    iput-boolean p2, p0, Lcom/android/systemui/decor/CutoutDecorProviderImpl;->isCameraProtectionEnabled:Z

    iput p3, p0, Lcom/android/systemui/decor/CutoutDecorProviderImpl;->cameraProtectionStrokeWidth:I

    if-eqz p1, :cond_2

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    const p1, 0x7f0a0399

    goto :goto_0

    :cond_0
    const p1, 0x7f0a039b

    goto :goto_0

    :cond_1
    const p1, 0x7f0a0398

    goto :goto_0

    :cond_2
    const p1, 0x7f0a039a

    :goto_0
    iput p1, p0, Lcom/android/systemui/decor/CutoutDecorProviderImpl;->viewId:I

    return-void
.end method


# virtual methods
.method public final getAlignedBound()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/decor/CutoutDecorProviderImpl;->alignedBound:I

    return p0
.end method

.method public final getViewId()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/decor/CutoutDecorProviderImpl;->viewId:I

    return p0
.end method

.method public final inflateView(Landroid/content/Context;Landroid/view/ViewGroup;II)Landroid/view/View;
    .locals 2

    new-instance v0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;

    iget v1, p0, Lcom/android/systemui/decor/CutoutDecorProviderImpl;->alignedBound:I

    invoke-direct {v0, p1, v1}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;-><init>(Landroid/content/Context;I)V

    iget p1, p0, Lcom/android/systemui/decor/CutoutDecorProviderImpl;->viewId:I

    invoke-virtual {v0, p1}, Landroid/view/View;->setId(I)V

    invoke-virtual {v0, p4}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->setColor$1(I)V

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget p1, v0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mRotation:I

    if-ne p3, p1, :cond_0

    goto :goto_0

    :cond_0
    iput p3, v0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mRotation:I

    iput p3, v0, Lcom/android/systemui/DisplayCutoutBaseView;->displayRotation:I

    invoke-virtual {v0}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->updateCutout()V

    invoke-virtual {v0}, Lcom/android/systemui/DisplayCutoutBaseView;->updateProtectionBoundingPath()V

    :goto_0
    iget-boolean p1, p0, Lcom/android/systemui/decor/CutoutDecorProviderImpl;->isCameraProtectionEnabled:Z

    iput-boolean p1, v0, Lcom/android/systemui/DisplayCutoutBaseView;->isCameraProtectionEnabled:Z

    invoke-virtual {v0}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->updateCutout()V

    iget p0, p0, Lcom/android/systemui/decor/CutoutDecorProviderImpl;->cameraProtectionStrokeWidth:I

    iput p0, v0, Lcom/android/systemui/DisplayCutoutBaseView;->cameraProtectionStrokeWidth:I

    iget-object p1, v0, Lcom/android/systemui/DisplayCutoutBaseView;->paintForCameraProtection:Landroid/graphics/Paint;

    int-to-float p0, p0

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {v0}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->updateCutout()V

    return-object v0
.end method

.method public final onReloadResAndMeasure(Landroid/view/View;IIILjava/lang/String;)V
    .locals 0

    instance-of p0, p1, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;

    if-eqz p0, :cond_0

    check-cast p1, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    invoke-virtual {p1, p4}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->setColor$1(I)V

    iget p0, p1, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mRotation:I

    if-ne p3, p0, :cond_1

    goto :goto_1

    :cond_1
    iput p3, p1, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mRotation:I

    iput p3, p1, Lcom/android/systemui/DisplayCutoutBaseView;->displayRotation:I

    invoke-virtual {p1}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->updateCutout()V

    invoke-virtual {p1}, Lcom/android/systemui/DisplayCutoutBaseView;->updateProtectionBoundingPath()V

    :goto_1
    invoke-virtual {p1, p5}, Lcom/android/systemui/DisplayCutoutBaseView;->updateConfiguration(Ljava/lang/String;)V

    :cond_2
    return-void
.end method
