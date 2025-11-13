.class public abstract Lcom/samsung/android/settings/analyzestorage/ui/utils/UiUtils;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static lastClickTime:J = 0x0L

.field public static prevId:I = -0x80000000

.field public static prevPosition:I = -0x80000000


# direct methods
.method public static final getDimenSize(Landroid/content/Context;I)I
    .locals 1

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    :goto_0
    return p0
.end method

.method public static final initStatusBar(Landroid/app/Activity;)V
    .locals 4

    const-string v0, "activity"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/FeatureManager$UiFeature;->isDefaultTheme(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f060048

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Window;->setNavigationBarColor(I)V

    goto :goto_2

    :cond_0
    const v0, 0x7f0605e2

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-static {p0}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/FeatureManager$UiFeature;->isDefaultTheme(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    add-int/2addr v2, v1

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    add-int/2addr v1, v2

    const/16 v2, 0x228

    if-lt v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v2

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    if-eqz v1, :cond_2

    or-int/lit16 v1, v2, 0x2010

    goto :goto_1

    :cond_2
    and-int/lit16 v1, v2, -0x2011

    :goto_1
    invoke-virtual {v3, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Window;->setNavigationBarColor(I)V

    :goto_2
    return-void
.end method

.method public static isValidClick$default(I)Z
    .locals 9

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sget v2, Lcom/samsung/android/settings/analyzestorage/ui/utils/UiUtils;->prevId:I

    const/4 v3, -0x1

    const-string v4, "UiUtils"

    if-ne v2, p0, :cond_0

    sget v2, Lcom/samsung/android/settings/analyzestorage/ui/utils/UiUtils;->prevPosition:I

    if-ne v2, v3, :cond_0

    sget-wide v5, Lcom/samsung/android/settings/analyzestorage/ui/utils/UiUtils;->lastClickTime:J

    sub-long v5, v0, v5

    const-wide/16 v7, 0x190

    cmp-long v2, v5, v7

    if-gez v2, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "invalid click - "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const-string v2, "isValidClick()] View is different"

    invoke-static {v4, v2}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    sput-wide v0, Lcom/samsung/android/settings/analyzestorage/ui/utils/UiUtils;->lastClickTime:J

    sput p0, Lcom/samsung/android/settings/analyzestorage/ui/utils/UiUtils;->prevId:I

    sput v3, Lcom/samsung/android/settings/analyzestorage/ui/utils/UiUtils;->prevPosition:I

    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public static final setAccessibilityForWidget(Ljava/lang/String;Landroid/view/View;Ljava/lang/String;)V
    .locals 1

    const-string v0, "contentDescription"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance p0, Lcom/samsung/android/settings/analyzestorage/ui/utils/RoleDescriptionAccessibilityDelegate;

    invoke-direct {p0, p2}, Lcom/samsung/android/settings/analyzestorage/ui/utils/RoleDescriptionAccessibilityDelegate;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p0}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    return-void
.end method

.method public static final setFlexibleSpacing(Landroid/view/View;)V
    .locals 5

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v2, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    const/16 v3, 0x24c

    const/16 v4, 0x3c0

    if-le v2, v3, :cond_1

    if-ge v2, v4, :cond_1

    iget v1, v1, Landroid/content/res/Configuration;->screenHeightDp:I

    const/16 v3, 0x19b

    if-ge v1, v3, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const v1, 0x3f5c28f6    # 0.86f

    :goto_0
    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v2, v2

    goto :goto_1

    :cond_1
    if-lt v2, v4, :cond_2

    const/16 v2, 0x348

    :cond_2
    :goto_1
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v0, v2

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static updatePadding(Landroid/view/View;III)V
    .locals 2

    const-string/jumbo v0, "view"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const v1, 0x7f07016f

    invoke-static {v0, v1}, Lcom/samsung/android/settings/analyzestorage/ui/utils/UiUtils;->getDimenSize(Landroid/content/Context;I)I

    move-result v1

    invoke-static {v0, p1}, Lcom/samsung/android/settings/analyzestorage/ui/utils/UiUtils;->getDimenSize(Landroid/content/Context;I)I

    move-result p1

    invoke-static {v0, p2}, Lcom/samsung/android/settings/analyzestorage/ui/utils/UiUtils;->getDimenSize(Landroid/content/Context;I)I

    move-result p2

    invoke-static {v0, p3}, Lcom/samsung/android/settings/analyzestorage/ui/utils/UiUtils;->getDimenSize(Landroid/content/Context;I)I

    move-result p3

    invoke-virtual {p0, v1, p1, p2, p3}, Landroid/view/View;->setPaddingRelative(IIII)V

    return-void
.end method
