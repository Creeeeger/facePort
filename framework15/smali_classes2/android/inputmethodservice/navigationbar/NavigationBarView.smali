.class public final Landroid/inputmethodservice/navigationbar/NavigationBarView;
.super Landroid/widget/FrameLayout;
.source "NavigationBarView.java"


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

.field private static final blacklist TAG:Ljava/lang/String; = "NavBarView"


# instance fields
.field private blacklist mBackIcon:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;

.field private final blacklist mButtonDispatchers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/inputmethodservice/navigationbar/ButtonDispatcher;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mConfiguration:Landroid/content/res/Configuration;

.field private blacklist mCurrentRotation:I

.field blacklist mCurrentView:Landroid/view/View;

.field private final blacklist mDarkIconColor:I

.field private final blacklist mDeadZone:Landroid/inputmethodservice/navigationbar/DeadZone;

.field private blacklist mDeadZoneConsuming:Z

.field blacklist mDisabledFlags:I

.field private blacklist mHorizontal:Landroid/view/View;

.field private blacklist mImeSwitcherIcon:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;

.field private blacklist mLightContext:Landroid/content/Context;

.field private final blacklist mLightIconColor:I

.field private final blacklist mNavBarMode:I

.field blacklist mNavigationIconHints:I

.field private blacklist mNavigationInflaterView:Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;

.field private blacklist mTmpLastConfiguration:Landroid/content/res/Configuration;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 5

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e4ccccd    # 0.2f

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3ecccccd    # 0.4f

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mCurrentView:Landroid/view/View;

    const/4 v0, -0x1

    iput v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mCurrentRotation:I

    const/4 v1, 0x0

    iput v1, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mDisabledFlags:I

    const/4 v2, 0x1

    iput v2, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mNavigationIconHints:I

    const/4 v2, 0x2

    iput v2, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mNavBarMode:I

    iput-boolean v1, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mDeadZoneConsuming:Z

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    iput-object p1, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mLightContext:Landroid/content/Context;

    iput v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mLightIconColor:I

    const/high16 v0, -0x67000000

    iput v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mDarkIconColor:I

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mTmpLastConfiguration:Landroid/content/res/Configuration;

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    new-instance v2, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;

    const v3, 0x1020377

    invoke-direct {v2, v3}, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;-><init>(I)V

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    new-instance v2, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;

    const v3, 0x102037d

    invoke-direct {v2, v3}, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;-><init>(I)V

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    new-instance v2, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;

    const v3, 0x102037b

    invoke-direct {v2, v3}, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;-><init>(I)V

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v0, Landroid/inputmethodservice/navigationbar/DeadZone;

    invoke-direct {v0, p0}, Landroid/inputmethodservice/navigationbar/DeadZone;-><init>(Landroid/inputmethodservice/navigationbar/NavigationBarView;)V

    iput-object v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mDeadZone:Landroid/inputmethodservice/navigationbar/DeadZone;

    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->getBackButton()Landroid/inputmethodservice/navigationbar/ButtonDispatcher;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->setLongClickable(Z)V

    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->getImeSwitchButton()Landroid/inputmethodservice/navigationbar/ButtonDispatcher;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->setLongClickable(Z)V

    new-instance v1, Landroid/inputmethodservice/navigationbar/NavigationBarView$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/inputmethodservice/navigationbar/NavigationBarView$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1}, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private blacklist getBackDrawable()Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;
    .locals 1

    const v0, 0x108043f

    invoke-direct {p0, v0}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->getDrawable(I)Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->orientBackButton(Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;)V

    return-object v0
.end method

.method private blacklist getContextDisplay()Landroid/view/Display;
    .locals 1

    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getDrawable(I)Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;
    .locals 6

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mLightContext:Landroid/content/Context;

    iget v1, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mLightIconColor:I

    iget v2, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mDarkIconColor:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    move v3, p1

    invoke-static/range {v0 .. v5}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->create(Landroid/content/Context;IIIZLandroid/graphics/Color;)Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist isGesturalMode(I)Z
    .locals 1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic blacklist lambda$new$0(Landroid/view/View;)V
    .locals 2

    nop

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPicker()V

    return-void
.end method

.method static synthetic blacklist lambda$reorient$1(Landroid/view/View;)Z
    .locals 1

    instance-of v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    return v0
.end method

.method private blacklist orientBackButton(Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;)V
    .locals 9

    iget v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mNavigationIconHints:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object v3, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v3}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v3

    if-ne v3, v1, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    const/4 v4, 0x0

    if-eqz v0, :cond_3

    if-eqz v3, :cond_2

    const/16 v5, 0x5a

    goto :goto_2

    :cond_2
    const/16 v5, -0x5a

    :goto_2
    int-to-float v5, v5

    goto :goto_3

    :cond_3
    move v5, v4

    :goto_3
    invoke-virtual {p1}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->getRotation()F

    move-result v6

    cmpl-float v6, v6, v5

    if-nez v6, :cond_4

    return-void

    :cond_4
    const/4 v6, 0x2

    invoke-static {v6}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->isGesturalMode(I)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {p1, v5}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->setRotation(F)V

    return-void

    :cond_5
    if-eqz v0, :cond_6

    const/high16 v4, 0x40000000    # 2.0f

    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/inputmethodservice/navigationbar/NavigationBarUtils;->dpToPx(FLandroid/content/res/Resources;)I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    goto :goto_4

    :cond_6
    nop

    :goto_4
    nop

    new-array v6, v6, [Landroid/animation/PropertyValuesHolder;

    sget-object v7, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->KEY_DRAWABLE_ROTATE:Landroid/util/FloatProperty;

    new-array v8, v1, [F

    aput v5, v8, v2

    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    aput-object v7, v6, v2

    sget-object v7, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->KEY_DRAWABLE_TRANSLATE_Y:Landroid/util/FloatProperty;

    new-array v8, v1, [F

    aput v4, v8, v2

    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v6, v1

    invoke-static {p1, v6}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    sget-object v2, Landroid/inputmethodservice/navigationbar/NavigationBarView;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v6, 0xc8

    invoke-virtual {v1, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private blacklist reloadNavIcons()V
    .locals 1

    sget-object v0, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    invoke-direct {p0, v0}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->updateIcons(Landroid/content/res/Configuration;)V

    return-void
.end method

.method private blacklist reorient()V
    .locals 3

    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->updateCurrentView()V

    nop

    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->getRootView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/inputmethodservice/navigationbar/NavigationBarView$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroid/inputmethodservice/navigationbar/NavigationBarView$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewByPredicate(Ljava/util/function/Predicate;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mDeadZone:Landroid/inputmethodservice/navigationbar/DeadZone;

    invoke-virtual {v0, v1}, Landroid/inputmethodservice/navigationbar/NavigationBarFrame;->setDeadZone(Landroid/inputmethodservice/navigationbar/DeadZone;)V

    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mDeadZone:Landroid/inputmethodservice/navigationbar/DeadZone;

    iget v2, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mCurrentRotation:I

    invoke-virtual {v1, v2}, Landroid/inputmethodservice/navigationbar/DeadZone;->onConfigurationChanged(I)V

    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->isLayoutDirectionResolved()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->resolveLayoutDirection()Z

    :cond_0
    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->updateNavButtonIcons()V

    return-void
.end method

.method private blacklist resetViews()V
    .locals 2

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mHorizontal:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private blacklist shouldDeadZoneConsumeTouchEvents(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iput-boolean v1, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mDeadZoneConsuming:Z

    :cond_0
    iget-object v2, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mDeadZone:Landroid/inputmethodservice/navigationbar/DeadZone;

    invoke-virtual {v2, p1}, Landroid/inputmethodservice/navigationbar/DeadZone;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-boolean v2, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mDeadZoneConsuming:Z

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    :pswitch_1
    iput-boolean v1, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mDeadZoneConsuming:Z

    goto :goto_1

    :pswitch_2
    iput-boolean v2, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mDeadZoneConsuming:Z

    nop

    :goto_1
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private blacklist updateCurrentView()V
    .locals 4

    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->resetViews()V

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mHorizontal:Landroid/view/View;

    iput-object v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mCurrentView:Landroid/view/View;

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mCurrentView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->getContextDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    iput v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mCurrentRotation:I

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mNavigationInflaterView:Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;

    iget v2, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mCurrentRotation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    move v1, v3

    :cond_0
    invoke-virtual {v0, v1}, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->setAlternativeOrder(Z)V

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mNavigationInflaterView:Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;

    invoke-virtual {v0}, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->updateButtonDispatchersCurrentView()V

    return-void
.end method

.method private blacklist updateIcons(Landroid/content/res/Configuration;)V
    .locals 6

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    iget v1, p1, Landroid/content/res/Configuration;->densityDpi:I

    iget-object v4, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    iget v4, v4, Landroid/content/res/Configuration;->densityDpi:I

    if-eq v1, v4, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    nop

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v4

    iget-object v5, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v5}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v5

    if-eq v4, v5, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    if-nez v1, :cond_3

    if-eqz v2, :cond_4

    :cond_3
    const v3, 0x1080440

    invoke-direct {p0, v3}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->getDrawable(I)Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;

    move-result-object v3

    iput-object v3, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mImeSwitcherIcon:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;

    :cond_4
    if-nez v0, :cond_5

    if-nez v1, :cond_5

    if-eqz v2, :cond_6

    :cond_5
    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->getBackDrawable()Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;

    move-result-object v3

    iput-object v3, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mBackIcon:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;

    :cond_6
    return-void
.end method

.method private blacklist updateNavButtonIcons()V
    .locals 6

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mBackIcon:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;

    invoke-direct {p0, v0}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->orientBackButton(Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;)V

    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->getBackButton()Landroid/inputmethodservice/navigationbar/ButtonDispatcher;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->setImageDrawable(Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;)V

    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->getImeSwitchButton()Landroid/inputmethodservice/navigationbar/ButtonDispatcher;

    move-result-object v1

    iget-object v2, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mImeSwitcherIcon:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;

    invoke-virtual {v1, v2}, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->setImageDrawable(Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;)V

    iget v1, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mNavigationIconHints:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->getImeSwitchButton()Landroid/inputmethodservice/navigationbar/ButtonDispatcher;

    move-result-object v4

    if-eqz v1, :cond_1

    move v5, v3

    goto :goto_1

    :cond_1
    move v5, v2

    :goto_1
    invoke-virtual {v4, v5}, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->getBackButton()Landroid/inputmethodservice/navigationbar/ButtonDispatcher;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->getHomeHandle()Landroid/inputmethodservice/navigationbar/ButtonDispatcher;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->setVisibility(I)V

    return-void
.end method

.method private blacklist updateOrientationViews()V
    .locals 1

    const v0, 0x102037c

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mHorizontal:Landroid/view/View;

    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->updateCurrentView()V

    return-void
.end method


# virtual methods
.method public blacklist forEachView(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mHorizontal:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mHorizontal:Landroid/view/View;

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public blacklist getBackButton()Landroid/inputmethodservice/navigationbar/ButtonDispatcher;
    .locals 2

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    const v1, 0x1020377

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;

    return-object v0
.end method

.method public blacklist getButtonDispatchers()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Landroid/inputmethodservice/navigationbar/ButtonDispatcher;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    return-object v0
.end method

.method public blacklist getCurrentView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mCurrentView:Landroid/view/View;

    return-object v0
.end method

.method public blacklist getHomeHandle()Landroid/inputmethodservice/navigationbar/ButtonDispatcher;
    .locals 2

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    const v1, 0x102037b

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;

    return-object v0
.end method

.method public blacklist getImeSwitchButton()Landroid/inputmethodservice/navigationbar/ButtonDispatcher;
    .locals 2

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    const v1, 0x102037d

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;

    return-object v0
.end method

.method protected whitelist onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->requestApplyInsets()V

    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->reorient()V

    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->updateNavButtonIcons()V

    return-void
.end method

.method protected whitelist onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mTmpLastConfiguration:Landroid/content/res/Configuration;

    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result v0

    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mTmpLastConfiguration:Landroid/content/res/Configuration;

    invoke-direct {p0, v1}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->updateIcons(Landroid/content/res/Configuration;)V

    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mTmpLastConfiguration:Landroid/content/res/Configuration;

    iget v1, v1, Landroid/content/res/Configuration;->densityDpi:I

    iget-object v2, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    iget v2, v2, Landroid/content/res/Configuration;->densityDpi:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mTmpLastConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    iget-object v2, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v2}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v2

    if-eq v1, v2, :cond_1

    :cond_0
    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->updateNavButtonIcons()V

    :cond_1
    return-void
.end method

.method protected whitelist onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;

    invoke-virtual {v1}, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->onDestroy()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected whitelist onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mDeadZone:Landroid/inputmethodservice/navigationbar/DeadZone;

    invoke-virtual {v0, p1}, Landroid/inputmethodservice/navigationbar/DeadZone;->onDraw(Landroid/graphics/Canvas;)V

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public whitelist onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x102037e

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;

    iput-object v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mNavigationInflaterView:Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mNavigationInflaterView:Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;

    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->setButtonDispatchers(Landroid/util/SparseArray;)V

    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->updateOrientationViews()V

    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->reloadNavIcons()V

    return-void
.end method

.method public whitelist onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-direct {p0, p1}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->shouldDeadZoneConsumeTouchEvents(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public whitelist onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-direct {p0, p1}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->shouldDeadZoneConsumeTouchEvents(Landroid/view/MotionEvent;)Z

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public blacklist setDarkIntensity(F)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;

    invoke-virtual {v1, p1}, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->setDarkIntensity(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public whitelist setLayoutDirection(I)V
    .locals 0

    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->reloadNavIcons()V

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setLayoutDirection(I)V

    return-void
.end method

.method public blacklist setNavigationIconHints(I)V
    .locals 4

    iget v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mNavigationIconHints:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iget v3, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mNavigationIconHints:I

    and-int/2addr v3, v2

    if-eqz v3, :cond_2

    move v1, v2

    :cond_2
    nop

    iput p1, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mNavigationIconHints:I

    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->updateNavButtonIcons()V

    return-void
.end method
