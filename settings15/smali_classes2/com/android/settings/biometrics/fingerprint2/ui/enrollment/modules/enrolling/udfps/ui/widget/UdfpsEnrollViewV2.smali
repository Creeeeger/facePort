.class public final Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/modules/enrolling/udfps/ui/widget/UdfpsEnrollViewV2;
.super Landroid/widget/FrameLayout;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u0001:\u0001\u0011B\u0019\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0015\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u001b\u0010\u000f\u001a\u00020\n2\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\n0\r\u00a2\u0006\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/modules/enrolling/udfps/ui/widget/UdfpsEnrollViewV2;",
        "Landroid/widget/FrameLayout;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "",
        "enabled",
        "",
        "setAccessibilityEnabled",
        "(Z)V",
        "Lkotlin/Function0;",
        "onFinishedAnimation",
        "setFinishAnimationCompleted",
        "(Lkotlin/jvm/functions/Function0;)V",
        "TouchExplorationAnnouncer",
        "applications__sources__apps__SecSettings__android_common__SecSettings-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public final fingerprintIcon:Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/modules/enrolling/udfps/ui/widget/UdfpsEnrollIconV2;

.field public final fingerprintProgressDrawable:Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/modules/enrolling/udfps/ui/widget/UdfpsEnrollProgressBarDrawableV2;

.field public fingerprintSensorType:Lcom/android/systemui/biometrics/shared/model/FingerprintSensorType;

.field public onFinishedCompletionAnimation:Lkotlin/jvm/functions/Function0;

.field public sensorRect:Landroid/graphics/Rect;

.field public final touchExplorationAnnouncer:Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/modules/enrolling/udfps/ui/widget/UdfpsEnrollViewV2$TouchExplorationAnnouncer;

.field public final udfpsUtils:Lcom/android/systemui/biometrics/UdfpsUtils;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/modules/enrolling/udfps/ui/widget/UdfpsEnrollIconV2;

    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    const-string v1, "mContext"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, v0, p2}, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/modules/enrolling/udfps/ui/widget/UdfpsEnrollIconV2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/modules/enrolling/udfps/ui/widget/UdfpsEnrollProgressBarDrawableV2;

    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, v0, p2}, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/modules/enrolling/udfps/ui/widget/UdfpsEnrollProgressBarDrawableV2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/modules/enrolling/udfps/ui/widget/UdfpsEnrollViewV2;->fingerprintProgressDrawable:Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/modules/enrolling/udfps/ui/widget/UdfpsEnrollProgressBarDrawableV2;

    new-instance p1, Lcom/android/systemui/biometrics/UdfpsUtils;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/modules/enrolling/udfps/ui/widget/UdfpsEnrollViewV2;->udfpsUtils:Lcom/android/systemui/biometrics/UdfpsUtils;

    new-instance p1, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/modules/enrolling/udfps/ui/widget/UdfpsEnrollViewV2$1;

    invoke-direct {p1, p0}, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/modules/enrolling/udfps/ui/widget/UdfpsEnrollViewV2$1;-><init>(Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/modules/enrolling/udfps/ui/widget/UdfpsEnrollViewV2;)V

    return-void
.end method


# virtual methods
.method public final onLayout(ZIIII)V
    .locals 4

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/modules/enrolling/udfps/ui/widget/UdfpsEnrollViewV2;->sensorRect:Landroid/graphics/Rect;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/modules/enrolling/udfps/ui/widget/UdfpsEnrollViewV2;->fingerprintSensorType:Lcom/android/systemui/biometrics/shared/model/FingerprintSensorType;

    if-eqz p1, :cond_3

    const-string p1, "rect"

    const/4 p2, 0x0

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "sensorType"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/modules/enrolling/udfps/ui/widget/UdfpsEnrollViewV2;->sensorRect:Landroid/graphics/Rect;

    iput-object p2, p0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/modules/enrolling/udfps/ui/widget/UdfpsEnrollViewV2;->fingerprintSensorType:Lcom/android/systemui/biometrics/shared/model/FingerprintSensorType;

    new-instance p1, Landroid/view/DisplayInfo;

    invoke-direct {p1}, Landroid/view/DisplayInfo;-><init>()V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p3

    invoke-virtual {p3, p1}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    iget p3, p1, Landroid/view/DisplayInfo;->rotation:I

    iget-object p4, p0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/modules/enrolling/udfps/ui/widget/UdfpsEnrollViewV2;->udfpsUtils:Lcom/android/systemui/biometrics/UdfpsUtils;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/systemui/biometrics/UdfpsUtils;->getScaleFactor(Landroid/view/DisplayInfo;)F

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p4

    const-string p5, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-static {p4, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p4, Landroid/view/ViewGroup;

    invoke-virtual {p4}, Landroid/view/ViewGroup;->getLocationOnScreen()[I

    move-result-object p4

    const/4 p5, 0x0

    aget p5, p4, p5

    const/4 v0, 0x1

    aget p4, p4, v0

    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/modules/enrolling/udfps/ui/widget/UdfpsEnrollViewV2;->sensorRect:Landroid/graphics/Rect;

    if-eqz v2, :cond_2

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    if-eq p3, v0, :cond_1

    const/4 v0, 0x3

    if-eq p3, v0, :cond_0

    neg-int p3, p5

    neg-int p4, p4

    invoke-virtual {v1, p3, p4}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/DisplayInfo;->getNaturalHeight()I

    move-result p3

    iget v0, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p3, v0

    sub-int/2addr p3, p5

    iget v0, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, p4

    invoke-virtual {p1}, Landroid/view/DisplayInfo;->getNaturalHeight()I

    move-result v2

    iget v3, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    sub-int/2addr v2, p5

    iget p5, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr p5, p4

    invoke-virtual {v1, p3, v0, v2, p5}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :cond_1
    iget p3, v1, Landroid/graphics/Rect;->top:I

    iget v0, v1, Landroid/graphics/Rect;->left:I

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    iget v3, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1, p3, v0, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    neg-int p3, p5

    neg-int p4, p4

    invoke-virtual {v1, p3, p4}, Landroid/graphics/Rect;->offset(II)V

    :goto_0
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/modules/enrolling/udfps/ui/widget/UdfpsEnrollViewV2;->fingerprintProgressDrawable:Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/modules/enrolling/udfps/ui/widget/UdfpsEnrollProgressBarDrawableV2;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    const-string p3, "getBounds(...)"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/DisplayInfo;->getNaturalWidth()I

    invoke-virtual {p1}, Landroid/view/DisplayInfo;->getNaturalHeight()I

    throw p2

    :cond_2
    const-string p0, "sensorRect"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw p2

    :cond_3
    return-void
.end method

.method public final setAccessibilityEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/modules/enrolling/udfps/ui/widget/UdfpsEnrollViewV2;->fingerprintProgressDrawable:Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/modules/enrolling/udfps/ui/widget/UdfpsEnrollProgressBarDrawableV2;

    iput-boolean p1, v0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/modules/enrolling/udfps/ui/widget/UdfpsEnrollProgressBarDrawableV2;->isAccessibilityEnabled:Z

    if-eqz p1, :cond_0

    new-instance p1, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/modules/enrolling/udfps/ui/widget/UdfpsEnrollViewV2$addHoverListener$1;

    invoke-direct {p1, p0}, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/modules/enrolling/udfps/ui/widget/UdfpsEnrollViewV2$addHoverListener$1;-><init>(Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/modules/enrolling/udfps/ui/widget/UdfpsEnrollViewV2;)V

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/modules/enrolling/udfps/ui/widget/UdfpsEnrollViewV2$clearHoverListener$listener$1;->INSTANCE:Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/modules/enrolling/udfps/ui/widget/UdfpsEnrollViewV2$clearHoverListener$listener$1;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    :goto_0
    return-void
.end method

.method public final setFinishAnimationCompleted(Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0;",
            ")V"
        }
    .end annotation

    const-string v0, "onFinishedAnimation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/modules/enrolling/udfps/ui/widget/UdfpsEnrollViewV2;->onFinishedCompletionAnimation:Lkotlin/jvm/functions/Function0;

    return-void
.end method
