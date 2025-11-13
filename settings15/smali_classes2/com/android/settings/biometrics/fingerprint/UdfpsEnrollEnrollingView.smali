.class public Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollEnrollingView;
.super Lcom/google/android/setupdesign/GlifLayout;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field public final mContext:Landroid/content/Context;

.field public mHeaderView:Landroid/view/View;

.field public final mIsLandscape:Z

.field public final mRotation:I

.field public final mShouldUseReverseLandscape:Z

.field public mUdfpsEnrollView:Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollView;

.field public final mUdfpsUtils:Lcom/android/systemui/biometrics/UdfpsUtils;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Lcom/google/android/setupdesign/GlifLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollEnrollingView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    iput p1, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollEnrollingView;->mRotation:I

    const/4 p2, 0x3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v1

    :goto_1
    iput-boolean v2, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollEnrollingView;->mIsLandscape:Z

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v2

    if-ne v2, v1, :cond_2

    move v2, v1

    goto :goto_2

    :cond_2
    move v2, v0

    :goto_2
    if-ne p1, v1, :cond_3

    if-nez v2, :cond_4

    :cond_3
    if-ne p1, p2, :cond_5

    if-nez v2, :cond_5

    :cond_4
    move v0, v1

    :cond_5
    iput-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollEnrollingView;->mShouldUseReverseLandscape:Z

    new-instance p1, Lcom/android/systemui/biometrics/UdfpsUtils;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollEnrollingView;->mUdfpsUtils:Lcom/android/systemui/biometrics/UdfpsUtils;

    return-void
.end method


# virtual methods
.method public hasOverlap(Landroid/view/View;Landroid/view/View;)Z
    .locals 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/4 p0, 0x2

    new-array v0, p0, [I

    new-array p0, p0, [I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-virtual {p2, p0}, Landroid/view/View;->getLocationOnScreen([I)V

    new-instance v1, Landroid/graphics/Rect;

    const/4 v2, 0x0

    aget v3, v0, v2

    const/4 v4, 0x1

    aget v5, v0, v4

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v6, v3

    aget v0, v0, v4

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    add-int/2addr p1, v0

    invoke-direct {v1, v3, v5, v6, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance p1, Landroid/graphics/Rect;

    aget v0, p0, v2

    aget v2, p0, v4

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v0

    aget p0, p0, v4

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    add-int/2addr p2, p0

    invoke-direct {p1, v0, v2, v3, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result p0

    return p0
.end method

.method public final onFinishInflate()V
    .locals 1

    invoke-super {p0}, Lcom/google/android/setupdesign/GlifLayout;->onFinishInflate()V

    const v0, 0x7f0a0f5a

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollEnrollingView;->mHeaderView:Landroid/view/View;

    const v0, 0x7f0a10a9

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollView;

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollEnrollingView;->mUdfpsEnrollView:Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollView;

    return-void
.end method

.method public setSecondaryButtonBackground(I)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollEnrollingView;->mIsLandscape:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollEnrollingView;->mShouldUseReverseLandscape:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const-class v0, Lcom/google/android/setupcompat/template/FooterBarMixin;

    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object v0

    check-cast v0, Lcom/google/android/setupcompat/template/FooterBarMixin;

    invoke-virtual {v0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->getSecondaryButtonView()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setBackgroundColor(I)V

    iget p1, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollEnrollingView;->mRotation:I

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    const p1, 0x800003

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setGravity(I)V

    goto :goto_0

    :cond_1
    const p1, 0x800005

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setGravity(I)V

    :goto_0
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollEnrollingView;->mHeaderView:Landroid/view/View;

    new-instance v1, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollEnrollingView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollEnrollingView$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollEnrollingView;Landroid/widget/Button;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_1
    return-void
.end method
