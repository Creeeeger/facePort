.class public Lcom/android/systemui/scrim/ScrimView;
.super Landroid/view/View;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/scrim/ScrimViewBase;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mBlendWithMainColor:Z

.field public mColorFilter:Landroid/graphics/PorterDuffColorFilter;

.field public final mColorLock:Ljava/lang/Object;

.field public final mColors:Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

.field public mDrawable:Landroid/graphics/drawable/Drawable;

.field public mDrawableBounds:Landroid/graphics/Rect;

.field public final mExecutor:Landroidx/profileinstaller/ProfileInstallReceiver$$ExternalSyntheticLambda0;

.field public final mExecutorLooper:Landroid/os/Looper;

.field public mQSScrimViewSwitch:Lcom/android/systemui/statusbar/phone/QSScrimViewSwitch;

.field public mScrimName:Ljava/lang/String;

.field public mTintColor:I

.field public mViewAlpha:F

.field public mVisibilityChangedListener:Ljava/util/function/IntConsumer;


# direct methods
.method public static synthetic $r8$lambda$gMPW03YlLRwOtqLDLUlUyLHVhSc(Lcom/android/systemui/scrim/ScrimView;Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->setClickable(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/scrim/ScrimView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/scrim/ScrimView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/scrim/ScrimView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/scrim/ScrimView;->mColorLock:Ljava/lang/Object;

    new-instance p1, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    invoke-direct {p1}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;-><init>()V

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/android/systemui/scrim/ScrimView;->mViewAlpha:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/scrim/ScrimView;->mBlendWithMainColor:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/scrim/ScrimView;->mQSScrimViewSwitch:Lcom/android/systemui/statusbar/phone/QSScrimViewSwitch;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setFocusable(Z)V

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/view/View;->setImportantForAccessibility(I)V

    new-instance p1, Lcom/android/systemui/scrim/ScrimDrawable;

    invoke-direct {p1}, Lcom/android/systemui/scrim/ScrimDrawable;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/scrim/ScrimView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    new-instance p1, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    invoke-direct {p1}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/scrim/ScrimView;->mColors:Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/scrim/ScrimView;->mExecutorLooper:Landroid/os/Looper;

    new-instance p1, Landroidx/profileinstaller/ProfileInstallReceiver$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/scrim/ScrimView;->mExecutor:Landroidx/profileinstaller/ProfileInstallReceiver$$ExternalSyntheticLambda0;

    new-instance p1, Lcom/android/systemui/scrim/ScrimView$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/systemui/scrim/ScrimView$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/scrim/ScrimView;)V

    invoke-virtual {p0, p1}, Lcom/android/systemui/scrim/ScrimView;->executeOnExecutor(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final canReceivePointerEvents()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/scrim/ScrimView;->mScrimName:Ljava/lang/String;

    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    sget-object v1, Lcom/android/systemui/shade/TouchLogger;->Companion:Lcom/android/systemui/shade/TouchLogger$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v0, p0}, Lcom/android/systemui/shade/TouchLogger$Companion;->logDispatchTouch(Landroid/view/MotionEvent;Ljava/lang/String;Z)V

    return p0
.end method

.method public final executeOnExecutor(Ljava/lang/Runnable;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/scrim/ScrimView;->mExecutor:Landroidx/profileinstaller/ProfileInstallReceiver$$ExternalSyntheticLambda0;

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/scrim/ScrimView;->mExecutorLooper:Landroid/os/Looper;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/scrim/ScrimView;->mExecutor:Landroidx/profileinstaller/ProfileInstallReceiver$$ExternalSyntheticLambda0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_1
    return-void
.end method

.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/scrim/ScrimView;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public final getMainColor()I
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/scrim/ScrimView;->mDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, p0, Lcom/android/systemui/scrim/ScrimDrawable;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/android/systemui/scrim/ScrimDrawable;

    invoke-virtual {p0}, Lcom/android/systemui/scrim/ScrimDrawable;->getMainColor()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public final hasOverlappingRendering()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/systemui/scrim/ScrimView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/scrim/ScrimView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/scrim/ScrimView;->mDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v2, v1, Lcom/android/systemui/scrim/ScrimDrawable;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/android/systemui/scrim/ScrimDrawable;

    invoke-static {v0}, Lcom/android/systemui/util/LargeScreenUtils;->shouldUseLargeScreenShadeHeader(Landroid/content/res/Resources;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/systemui/scrim/ScrimDrawable;->mShouldUseLargeScreenSize:Z

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/scrim/ScrimView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 1

    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    iget-object v0, p0, Lcom/android/systemui/scrim/ScrimView;->mDrawableBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/scrim/ScrimView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/scrim/ScrimView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onVisibilityChanged(Landroid/view/View;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/android/systemui/scrim/ScrimView;->mVisibilityChangedListener:Ljava/util/function/IntConsumer;

    if-eqz v0, :cond_0

    if-ne p0, p1, :cond_0

    invoke-interface {v0, p2}, Ljava/util/function/IntConsumer;->accept(I)V

    :cond_0
    return-void
.end method

.method public final setClickable(Z)V
    .locals 1

    new-instance v0, Lcom/android/systemui/scrim/ScrimView$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/scrim/ScrimView$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/scrim/ScrimView;Z)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/scrim/ScrimView;->executeOnExecutor(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final setColors(Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Z)V
    .locals 1

    if-eqz p1, :cond_0

    new-instance v0, Lcom/android/systemui/scrim/ScrimView$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/scrim/ScrimView$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/scrim/ScrimView;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Z)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/scrim/ScrimView;->executeOnExecutor(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Colors cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setCornerRadius(I)V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/scrim/ScrimView;->mDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, p0, Lcom/android/systemui/scrim/ScrimDrawable;

    if-eqz v0, :cond_2

    check-cast p0, Lcom/android/systemui/scrim/ScrimDrawable;

    int-to-float p1, p1

    iget v0, p0, Lcom/android/systemui/scrim/ScrimDrawable;->mCornerRadius:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iput p1, p0, Lcom/android/systemui/scrim/ScrimDrawable;->mCornerRadius:F

    iget-object v0, p0, Lcom/android/systemui/scrim/ScrimDrawable;->mConcaveInfo:Lcom/android/systemui/scrim/ScrimDrawable$ConcaveInfo;

    if-eqz v0, :cond_1

    iput p1, v0, Lcom/android/systemui/scrim/ScrimDrawable$ConcaveInfo;->mPathOverlap:F

    iget-object v0, v0, Lcom/android/systemui/scrim/ScrimDrawable$ConcaveInfo;->mCornerRadii:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p1, v0, v1

    const/4 v1, 0x2

    aput p1, v0, v1

    const/4 v1, 0x3

    aput p1, v0, v1

    invoke-virtual {p0}, Lcom/android/systemui/scrim/ScrimDrawable;->updatePath()V

    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_2
    :goto_0
    return-void
.end method

.method public setDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    new-instance v0, Lcom/android/systemui/scrim/ScrimView$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/scrim/ScrimView$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/scrim/ScrimView;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/scrim/ScrimView;->executeOnExecutor(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final setScrimName(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/scrim/ScrimView;->mScrimName:Ljava/lang/String;

    const-string v0, "behind_scrim"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v0, Lcom/android/systemui/statusbar/phone/QSScrimViewSwitch;

    invoke-virtual {p1, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/QSScrimViewSwitch;

    iput-object p1, p0, Lcom/android/systemui/scrim/ScrimView;->mQSScrimViewSwitch:Lcom/android/systemui/statusbar/phone/QSScrimViewSwitch;

    :cond_0
    return-void
.end method

.method public final setTint(I)V
    .locals 1

    new-instance v0, Lcom/android/systemui/scrim/ScrimView$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/scrim/ScrimView$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/scrim/ScrimView;I)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/scrim/ScrimView;->executeOnExecutor(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final setViewAlpha(F)V
    .locals 2

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/scrim/ScrimView$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/scrim/ScrimView$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/scrim/ScrimView;F)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/scrim/ScrimView;->executeOnExecutor(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "alpha cannot be NaN: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final updateColorWithTint(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/scrim/ScrimView;->mDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Lcom/android/systemui/scrim/ScrimDrawable;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/android/systemui/scrim/ScrimDrawable;

    iget v1, p0, Lcom/android/systemui/scrim/ScrimView;->mTintColor:I

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    iget v2, p0, Lcom/android/systemui/scrim/ScrimView;->mTintColor:I

    iget-boolean v3, p0, Lcom/android/systemui/scrim/ScrimView;->mBlendWithMainColor:Z

    if-eqz v3, :cond_0

    iget-object v2, p0, Lcom/android/systemui/scrim/ScrimView;->mColors:Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    invoke-virtual {v2}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->getMainColor()I

    move-result v2

    iget p0, p0, Lcom/android/systemui/scrim/ScrimView;->mTintColor:I

    invoke-static {v1, v2, p0}, Landroidx/core/graphics/ColorUtils;->blendARGB(FII)I

    move-result v2

    :cond_0
    invoke-virtual {v0, v2, p1}, Lcom/android/systemui/scrim/ScrimDrawable;->setColor(IZ)V

    goto :goto_2

    :cond_1
    iget p1, p0, Lcom/android/systemui/scrim/ScrimView;->mTintColor:I

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/systemui/scrim/ScrimView;->mColorFilter:Landroid/graphics/PorterDuffColorFilter;

    if-nez p1, :cond_2

    sget-object p1, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/graphics/PorterDuffColorFilter;->getMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object p1

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/scrim/ScrimView;->mColorFilter:Landroid/graphics/PorterDuffColorFilter;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/graphics/PorterDuffColorFilter;->getColor()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/scrim/ScrimView;->mTintColor:I

    if-eq v0, v1, :cond_5

    :cond_3
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    iget v1, p0, Lcom/android/systemui/scrim/ScrimView;->mTintColor:I

    invoke-direct {v0, v1, p1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/android/systemui/scrim/ScrimView;->mColorFilter:Landroid/graphics/PorterDuffColorFilter;

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/scrim/ScrimView;->mColorFilter:Landroid/graphics/PorterDuffColorFilter;

    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/android/systemui/scrim/ScrimView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/systemui/scrim/ScrimView;->mColorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object p0, p0, Lcom/android/systemui/scrim/ScrimView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :goto_2
    return-void
.end method
