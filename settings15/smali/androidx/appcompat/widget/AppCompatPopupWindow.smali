.class public final Landroidx/appcompat/widget/AppCompatPopupWindow;
.super Landroid/widget/PopupWindow;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final ONEUI_5_1_1:Z

.field public static final ONEUI_BLUR_POPUP_BACKGROUND_RES:[I


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mHasNavigationBar:Z

.field public mIsReplacedPoupBackground:Z

.field public final mNavigationBarHeight:I

.field public final mTempRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Landroidx/reflect/os/SeslBuildReflector$SeslVersionReflector;->getField_SEM_PLATFORM_INT()I

    move-result v0

    const v1, 0x224d4

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Landroidx/appcompat/widget/AppCompatPopupWindow;->ONEUI_5_1_1:Z

    const v0, 0x7f080c1a

    const v1, 0x7f080c1b

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Landroidx/appcompat/widget/AppCompatPopupWindow;->ONEUI_BLUR_POPUP_BACKGROUND_RES:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 7

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatPopupWindow;->mTempRect:Landroid/graphics/Rect;

    sget-object v0, Landroidx/appcompat/R$styleable;->PopupWindow:[I

    invoke-static {p1, p2, v0, p3, p4}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/TintTypedArray;

    move-result-object p2

    iget-object p3, p2, Landroidx/appcompat/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    const/4 p4, 0x2

    invoke-virtual {p3, p4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    iget-object p3, p2, Landroidx/appcompat/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {p3, p4, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    invoke-virtual {p0, p3}, Landroid/widget/PopupWindow;->setOverlapAnchor(Z)V

    :cond_0
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatPopupWindow;->mContext:Landroid/content/Context;

    iget-object p3, p2, Landroidx/appcompat/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    const/4 p4, 0x3

    invoke-virtual {p3, p4, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    invoke-virtual {p0, p3}, Landroidx/appcompat/widget/AppCompatPopupWindow;->getTransition(I)Landroid/transition/Transition;

    move-result-object p3

    iget-object p4, p2, Landroidx/appcompat/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    const/4 v1, 0x4

    invoke-virtual {p4, v1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p4

    invoke-virtual {p0, p4}, Landroidx/appcompat/widget/AppCompatPopupWindow;->getTransition(I)Landroid/transition/Transition;

    move-result-object p4

    invoke-virtual {p0, p3}, Landroid/widget/PopupWindow;->setEnterTransition(Landroid/transition/Transition;)V

    invoke-virtual {p0, p4}, Landroid/widget/PopupWindow;->setExitTransition(Landroid/transition/Transition;)V

    iget-object p3, p2, Landroidx/appcompat/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    const/4 p4, -0x1

    invoke-virtual {p3, v0, p4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    sget-object p4, Landroidx/appcompat/widget/AppCompatPopupWindow;->ONEUI_BLUR_POPUP_BACKGROUND_RES:[I

    array-length v2, p4

    move v3, v0

    move v4, v3

    :goto_0
    const/4 v5, 0x1

    if-ge v3, v2, :cond_2

    aget v6, p4, v3

    if-ne v6, p3, :cond_1

    move v4, v5

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p0, p3}, Landroidx/appcompat/widget/AppCompatPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    xor-int/lit8 p3, v4, 0x1

    iput-boolean p3, p0, Landroidx/appcompat/widget/AppCompatPopupWindow;->mIsReplacedPoupBackground:Z

    invoke-virtual {p2}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-static {v1}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result p1

    if-nez p1, :cond_3

    move v0, v5

    :cond_3
    iput-boolean v0, p0, Landroidx/appcompat/widget/AppCompatPopupWindow;->mHasNavigationBar:Z

    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0710e7

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/widget/AppCompatPopupWindow;->mNavigationBarHeight:I

    return-void
.end method


# virtual methods
.method public final getMaxAvailableHeight(Landroid/view/View;IZ)I
    .locals 8

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz p3, :cond_1

    sget-object p3, Landroidx/reflect/view/SeslViewReflector;->mClass:Ljava/lang/Class;

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/graphics/Rect;

    aput-object v5, v4, v1

    const-string v5, "getWindowDisplayFrame"

    invoke-static {p3, v5, v4}, Landroidx/reflect/SeslBaseReflector;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p3

    if-eqz p3, :cond_0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "SeslBaseReflector"

    :try_start_0
    invoke-virtual {p3, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " InvocationTargetException"

    invoke-static {p3, v6, v7, v5, v4}, Landroidx/appcompat/app/AlertDialog$$ExternalSyntheticOutline0;->m(Ljava/lang/reflect/Method;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/InvocationTargetException;)V

    goto :goto_0

    :catch_1
    move-exception v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " IllegalArgumentException"

    invoke-static {p3, v6, v7, v5, v4}, Landroidx/appcompat/app/AlertDialog$$ExternalSyntheticOutline0;->m(Ljava/lang/reflect/Method;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/IllegalArgumentException;)V

    goto :goto_0

    :catch_2
    move-exception v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " IllegalAccessException"

    invoke-static {p3, v6, v7, v5, v4}, Landroidx/appcompat/app/AlertDialog$$ExternalSyntheticOutline0;->m(Ljava/lang/reflect/Method;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/IllegalAccessException;)V

    :cond_0
    :goto_0
    iget-boolean p3, p0, Landroidx/appcompat/widget/AppCompatPopupWindow;->mHasNavigationBar:Z

    if-eqz p3, :cond_2

    iget-object p3, p0, Landroidx/appcompat/widget/AppCompatPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p3

    iget p3, p3, Landroid/content/res/Configuration;->orientation:I

    if-eq p3, v2, :cond_2

    iget p3, v0, Landroid/graphics/Rect;->bottom:I

    iget v4, p0, Landroidx/appcompat/widget/AppCompatPopupWindow;->mNavigationBarHeight:I

    sub-int/2addr p3, v4

    iput p3, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    :cond_2
    :goto_1
    new-array p3, v2, [I

    invoke-virtual {p1, p3}, Landroid/view/View;->getLocationOnScreen([I)V

    sget-boolean v4, Landroidx/appcompat/widget/AppCompatPopupWindow;->ONEUI_5_1_1:Z

    if-nez v4, :cond_3

    goto/16 :goto_5

    :cond_3
    iget-object v4, p0, Landroidx/appcompat/widget/AppCompatPopupWindow;->mContext:Landroid/content/Context;

    if-nez v4, :cond_4

    goto/16 :goto_5

    :cond_4
    const-string v5, "display"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/display/DisplayManager;

    if-nez v4, :cond_5

    goto/16 :goto_5

    :cond_5
    invoke-virtual {v4, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v4

    if-nez v4, :cond_6

    goto/16 :goto_5

    :cond_6
    invoke-static {}, Landroidx/reflect/view/SeslSemWindowManagerReflector;->isTableMode()Z

    move-result v5

    if-nez v5, :cond_7

    goto/16 :goto_5

    :cond_7
    iget-object v5, p0, Landroidx/appcompat/widget/AppCompatPopupWindow;->mContext:Landroid/content/Context;

    :goto_2
    instance-of v6, v5, Landroid/content/ContextWrapper;

    if-eqz v6, :cond_9

    instance-of v6, v5, Landroid/app/Activity;

    if-eqz v6, :cond_8

    check-cast v5, Landroid/app/Activity;

    goto :goto_3

    :cond_8
    check-cast v5, Landroid/content/ContextWrapper;

    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    goto :goto_2

    :cond_9
    const/4 v5, 0x0

    :goto_3
    if-eqz v5, :cond_a

    invoke-virtual {v5}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v5

    if-eqz v5, :cond_a

    goto :goto_5

    :cond_a
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v4, v5}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    invoke-static {}, Landroidx/reflect/view/SeslViewRuneReflector;->supportFoldableDualDisplay()Z

    move-result v4

    if-eqz v4, :cond_c

    iget-object v4, p0, Landroidx/appcompat/widget/AppCompatPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v2, :cond_e

    iget v1, v5, Landroid/graphics/Point;->y:I

    iget v4, v5, Landroid/graphics/Point;->x:I

    if-le v1, v4, :cond_b

    div-int/2addr v4, v2

    :goto_4
    move v1, v4

    goto :goto_5

    :cond_b
    div-int/2addr v1, v2

    goto :goto_5

    :cond_c
    invoke-static {}, Landroidx/reflect/view/SeslViewRuneReflector;->supportFoldableNoSubDisplay()Z

    move-result v4

    if-eqz v4, :cond_e

    iget-object v4, p0, Landroidx/appcompat/widget/AppCompatPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v3, :cond_e

    iget v1, v5, Landroid/graphics/Point;->y:I

    iget v4, v5, Landroid/graphics/Point;->x:I

    if-le v1, v4, :cond_d

    div-int/2addr v1, v2

    goto :goto_5

    :cond_d
    div-int/2addr v4, v2

    goto :goto_4

    :cond_e
    :goto_5
    if-eqz v1, :cond_f

    aget v2, p3, v3

    if-ge v2, v1, :cond_f

    move v2, v1

    goto :goto_6

    :cond_f
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    :goto_6
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getOverlapAnchor()Z

    move-result v4

    if-eqz v4, :cond_10

    aget p1, p3, v3

    :goto_7
    sub-int/2addr v2, p1

    sub-int/2addr v2, p2

    goto :goto_8

    :cond_10
    aget v4, p3, v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr p1, v4

    goto :goto_7

    :goto_8
    aget p1, p3, v3

    if-eqz v1, :cond_11

    if-lt p1, v1, :cond_11

    goto :goto_9

    :cond_11
    iget v1, v0, Landroid/graphics/Rect;->top:I

    :goto_9
    sub-int/2addr p1, v1

    add-int/2addr p1, p2

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_12

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iget-object p3, p0, Landroidx/appcompat/widget/AppCompatPopupWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget p2, p0, Landroid/graphics/Rect;->top:I

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p2, p0

    sub-int/2addr p1, p2

    :cond_12
    return p1
.end method

.method public final getTransition(I)Landroid/transition/Transition;
    .locals 1

    if-eqz p1, :cond_1

    const/high16 v0, 0x10f0000

    if-eq p1, v0, :cond_1

    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatPopupWindow;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/transition/TransitionInflater;->from(Landroid/content/Context;)Landroid/transition/TransitionInflater;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/transition/TransitionInflater;->inflateTransition(I)Landroid/transition/Transition;

    move-result-object p0

    if-eqz p0, :cond_1

    instance-of p1, p0, Landroid/transition/TransitionSet;

    if-eqz p1, :cond_0

    move-object p1, p0

    check-cast p1, Landroid/transition/TransitionSet;

    invoke-virtual {p1}, Landroid/transition/TransitionSet;->getTransitionCount()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final seslSetAllowScrollingAnchorParent(Z)V
    .locals 4

    sget-object v0, Landroidx/reflect/widget/SeslPopupWindowReflector;->mClass:Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const-string/jumbo v2, "setAllowScrollingAnchorParent"

    invoke-static {v0, v2, v1}, Landroidx/reflect/SeslBaseReflector;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "SeslBaseReflector"

    :try_start_0
    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " InvocationTargetException"

    invoke-static {v0, p1, v2, v1, p0}, Landroidx/appcompat/app/AlertDialog$$ExternalSyntheticOutline0;->m(Ljava/lang/reflect/Method;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/InvocationTargetException;)V

    goto :goto_0

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " IllegalArgumentException"

    invoke-static {v0, p1, v2, v1, p0}, Landroidx/appcompat/app/AlertDialog$$ExternalSyntheticOutline0;->m(Ljava/lang/reflect/Method;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/IllegalArgumentException;)V

    goto :goto_0

    :catch_2
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " IllegalAccessException"

    invoke-static {v0, p1, v2, v1, p0}, Landroidx/appcompat/app/AlertDialog$$ExternalSyntheticOutline0;->m(Ljava/lang/reflect/Method;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/IllegalAccessException;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public final setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/widget/AppCompatPopupWindow;->mIsReplacedPoupBackground:Z

    invoke-super {p0, p1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
