.class public final Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$1;
.super Landroid/view/ViewOutlineProvider;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic $cornerRadiusPx:I

.field public final synthetic $currentPosition:Lkotlin/jvm/internal/Ref$ObjectRef;


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/android/systemui/biometrics/ui/viewmodel/PromptPosition;",
            ">;I)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$1;->$currentPosition:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput p2, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$1;->$cornerRadiusPx:I

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public final getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$1;->$currentPosition:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptPosition;

    sget-object v1, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$1$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    iget p0, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$1;->$cornerRadiusPx:I

    add-int v6, p1, p0

    int-to-float v7, p0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p2

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$1;->$cornerRadiusPx:I

    neg-int v2, v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    iget p0, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$1;->$cornerRadiusPx:I

    int-to-float v6, p0

    const/4 v3, 0x0

    move-object v1, p2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$1;->$cornerRadiusPx:I

    add-int v5, v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v6

    iget p0, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$1;->$cornerRadiusPx:I

    int-to-float v7, p0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p2

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    :goto_0
    return-void
.end method
