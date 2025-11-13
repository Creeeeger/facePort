.class public final Lcom/android/systemui/biometrics/AuthPanelController;
.super Landroid/view/ViewOutlineProvider;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mContainerHeight:I

.field public mContainerWidth:I

.field public mContentHeight:I

.field public mContentWidth:I

.field public final mContext:Landroid/content/Context;

.field public mCornerRadius:F

.field public mMargin:I

.field public final mPanelView:Landroid/view/View;

.field public final mPosition:I

.field public mUseFullScreen:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 3

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/biometrics/AuthPanelController;->mPosition:I

    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthPanelController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/biometrics/AuthPanelController;->mPanelView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700cd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/biometrics/AuthPanelController;->mCornerRadius:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f0700ca

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/android/systemui/biometrics/AuthPanelController;->mMargin:I

    invoke-virtual {p2, p0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setClipToOutline(Z)V

    return-void
.end method


# virtual methods
.method public final getLeftBound(I)I
    .locals 3

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Unrecognized position: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BiometricPrompt/AuthPanelController"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v1}, Lcom/android/systemui/biometrics/AuthPanelController;->getLeftBound(I)I

    move-result p0

    return p0

    :cond_0
    iget p1, p0, Lcom/android/systemui/biometrics/AuthPanelController;->mContainerWidth:I

    iget v0, p0, Lcom/android/systemui/biometrics/AuthPanelController;->mContentWidth:I

    sub-int/2addr p1, v0

    iget p0, p0, Lcom/android/systemui/biometrics/AuthPanelController;->mMargin:I

    sub-int/2addr p1, p0

    return p1

    :cond_1
    iget-boolean p1, p0, Lcom/android/systemui/biometrics/AuthPanelController;->mUseFullScreen:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthPanelController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/systemui/biometrics/Utils;->getNavbarInsets(Landroid/content/Context;)Landroid/graphics/Insets;

    move-result-object p1

    iget p0, p0, Lcom/android/systemui/biometrics/AuthPanelController;->mMargin:I

    iget p1, p1, Landroid/graphics/Insets;->left:I

    add-int/2addr p0, p1

    return p0

    :cond_2
    iget p0, p0, Lcom/android/systemui/biometrics/AuthPanelController;->mMargin:I

    return p0

    :cond_3
    iget p1, p0, Lcom/android/systemui/biometrics/AuthPanelController;->mContainerWidth:I

    iget p0, p0, Lcom/android/systemui/biometrics/AuthPanelController;->mContentWidth:I

    sub-int/2addr p1, p0

    div-int/2addr p1, v0

    return p1
.end method

.method public final getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 6

    iget p1, p0, Lcom/android/systemui/biometrics/AuthPanelController;->mPosition:I

    invoke-virtual {p0, p1}, Lcom/android/systemui/biometrics/AuthPanelController;->getLeftBound(I)I

    move-result v1

    iget p1, p0, Lcom/android/systemui/biometrics/AuthPanelController;->mPosition:I

    iget-boolean v0, p0, Lcom/android/systemui/biometrics/AuthPanelController;->mUseFullScreen:Z

    const/4 v2, 0x2

    const/4 v3, 0x3

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthPanelController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/biometrics/Utils;->getNavbarInsets(Landroid/content/Context;)Landroid/graphics/Insets;

    move-result-object v0

    if-ne p1, v3, :cond_0

    iget p1, p0, Lcom/android/systemui/biometrics/AuthPanelController;->mContentWidth:I

    add-int/2addr p1, v1

    iget v0, v0, Landroid/graphics/Insets;->right:I

    :goto_0
    sub-int/2addr p1, v0

    goto :goto_1

    :cond_0
    if-ne p1, v2, :cond_1

    iget p1, p0, Lcom/android/systemui/biometrics/AuthPanelController;->mContentWidth:I

    add-int/2addr p1, v1

    iget v0, v0, Landroid/graphics/Insets;->left:I

    goto :goto_0

    :cond_1
    iget p1, p0, Lcom/android/systemui/biometrics/AuthPanelController;->mContentWidth:I

    add-int/2addr p1, v1

    :goto_1
    iget v0, p0, Lcom/android/systemui/biometrics/AuthPanelController;->mPosition:I

    if-eq v0, v2, :cond_2

    if-eq v0, v3, :cond_2

    iget v0, p0, Lcom/android/systemui/biometrics/AuthPanelController;->mContainerHeight:I

    iget v2, p0, Lcom/android/systemui/biometrics/AuthPanelController;->mContentHeight:I

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/android/systemui/biometrics/AuthPanelController;->mMargin:I

    sub-int/2addr v0, v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_2
    move v2, v0

    goto :goto_3

    :cond_2
    iget v0, p0, Lcom/android/systemui/biometrics/AuthPanelController;->mContainerHeight:I

    iget v3, p0, Lcom/android/systemui/biometrics/AuthPanelController;->mContentHeight:I

    sub-int/2addr v0, v3

    div-int/2addr v0, v2

    iget v2, p0, Lcom/android/systemui/biometrics/AuthPanelController;->mMargin:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_2

    :goto_3
    iget-boolean v0, p0, Lcom/android/systemui/biometrics/AuthPanelController;->mUseFullScreen:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthPanelController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/biometrics/Utils;->getNavbarInsets(Landroid/content/Context;)Landroid/graphics/Insets;

    move-result-object v0

    iget v3, p0, Lcom/android/systemui/biometrics/AuthPanelController;->mContentHeight:I

    add-int/2addr v3, v2

    iget v0, v0, Landroid/graphics/Insets;->bottom:I

    sub-int/2addr v3, v0

    iget v4, p0, Lcom/android/systemui/biometrics/AuthPanelController;->mContainerHeight:I

    iget v5, p0, Lcom/android/systemui/biometrics/AuthPanelController;->mMargin:I

    sub-int/2addr v4, v5

    sub-int/2addr v4, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_4
    move v4, v0

    goto :goto_5

    :cond_3
    iget v0, p0, Lcom/android/systemui/biometrics/AuthPanelController;->mContentHeight:I

    add-int/2addr v0, v2

    iget v3, p0, Lcom/android/systemui/biometrics/AuthPanelController;->mContainerHeight:I

    iget v4, p0, Lcom/android/systemui/biometrics/AuthPanelController;->mMargin:I

    sub-int/2addr v3, v4

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_4

    :goto_5
    iget v5, p0, Lcom/android/systemui/biometrics/AuthPanelController;->mCornerRadius:F

    move-object v0, p2

    move v3, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    return-void
.end method
