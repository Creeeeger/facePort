.class public final Landroidx/appcompat/widget/TooltipCompatHandler;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnHoverListener;
.implements Landroid/view/View$OnAttachStateChangeListener;


# static fields
.field public static sActiveHandler:Landroidx/appcompat/widget/TooltipCompatHandler;

.field public static sIsForceActionBarX:Z

.field public static sIsForceBelow:Z

.field public static sIsTooltipNull:Z

.field public static sPendingHandler:Landroidx/appcompat/widget/TooltipCompatHandler;


# instance fields
.field public final mAnchor:Landroid/view/View;

.field public mAnchorX:I

.field public mAnchorY:I

.field public final mCheckHoverRunnable:Landroidx/appcompat/widget/TooltipCompatHandler$1;

.field public mForceNextChangeSignificant:Z

.field public mFromTouch:Z

.field public final mHideRunnable:Landroidx/appcompat/widget/TooltipCompatHandler$$ExternalSyntheticLambda1;

.field public final mHoverSlop:I

.field public mInitialWindowFocus:Z

.field public mIsForceExitDelay:Z

.field public mIsShowRunnablePostDelayed:Z

.field public mLastHoverEvent:I

.field public mLastOrientation:I

.field public mLayoutChangeListener:Landroidx/appcompat/widget/TooltipCompatHandler$$ExternalSyntheticLambda0;

.field public mPopup:Landroidx/appcompat/widget/TooltipPopup;

.field public final mShowRunnable:Landroidx/appcompat/widget/TooltipCompatHandler$$ExternalSyntheticLambda1;

.field public final mTooltipText:Ljava/lang/CharSequence;


# direct methods
.method private constructor <init>(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/appcompat/widget/TooltipCompatHandler$$ExternalSyntheticLambda1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/appcompat/widget/TooltipCompatHandler$$ExternalSyntheticLambda1;-><init>(Landroidx/appcompat/widget/TooltipCompatHandler;I)V

    iput-object v0, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mShowRunnable:Landroidx/appcompat/widget/TooltipCompatHandler$$ExternalSyntheticLambda1;

    new-instance v0, Landroidx/appcompat/widget/TooltipCompatHandler$$ExternalSyntheticLambda1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Landroidx/appcompat/widget/TooltipCompatHandler$$ExternalSyntheticLambda1;-><init>(Landroidx/appcompat/widget/TooltipCompatHandler;I)V

    iput-object v0, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mHideRunnable:Landroidx/appcompat/widget/TooltipCompatHandler$$ExternalSyntheticLambda1;

    new-instance v0, Landroidx/appcompat/widget/TooltipCompatHandler$1;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/TooltipCompatHandler$1;-><init>(Landroidx/appcompat/widget/TooltipCompatHandler;)V

    iput-object v0, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mCheckHoverRunnable:Landroidx/appcompat/widget/TooltipCompatHandler$1;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mIsShowRunnablePostDelayed:Z

    const/4 v1, -0x1

    iput v1, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mLastHoverEvent:I

    iput-boolean v0, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mInitialWindowFocus:Z

    iput-boolean v0, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mIsForceExitDelay:Z

    iput-object p1, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    iput-object p2, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mTooltipText:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledHoverSlop()I

    move-result p2

    iput p2, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mHoverSlop:I

    const/4 p2, 0x1

    iput-boolean p2, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mForceNextChangeSignificant:Z

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    return-void
.end method

.method public static setPendingHandler(Landroidx/appcompat/widget/TooltipCompatHandler;)V
    .locals 3

    sget-object v0, Landroidx/appcompat/widget/TooltipCompatHandler;->sPendingHandler:Landroidx/appcompat/widget/TooltipCompatHandler;

    if-eqz v0, :cond_0

    iget-object v1, v0, Landroidx/appcompat/widget/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    iget-object v0, v0, Landroidx/appcompat/widget/TooltipCompatHandler;->mShowRunnable:Landroidx/appcompat/widget/TooltipCompatHandler$$ExternalSyntheticLambda1;

    invoke-virtual {v1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    sput-object p0, Landroidx/appcompat/widget/TooltipCompatHandler;->sPendingHandler:Landroidx/appcompat/widget/TooltipCompatHandler;

    if-eqz p0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    iget-object p0, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mShowRunnable:Landroidx/appcompat/widget/TooltipCompatHandler$$ExternalSyntheticLambda1;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method


# virtual methods
.method public final hide()V
    .locals 3

    sget-object v0, Landroidx/appcompat/widget/TooltipCompatHandler;->sActiveHandler:Landroidx/appcompat/widget/TooltipCompatHandler;

    const/4 v1, 0x0

    if-ne v0, p0, :cond_1

    sput-object v1, Landroidx/appcompat/widget/TooltipCompatHandler;->sActiveHandler:Landroidx/appcompat/widget/TooltipCompatHandler;

    iget-object v0, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mPopup:Landroidx/appcompat/widget/TooltipPopup;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/widget/TooltipPopup;->hide()V

    iput-object v1, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mPopup:Landroidx/appcompat/widget/TooltipPopup;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mForceNextChangeSignificant:Z

    iget-object v0, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    goto :goto_0

    :cond_0
    const-string v0, "TooltipCompatHandler"

    const-string v2, "sActiveHandler.mPopup == null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mIsShowRunnablePostDelayed:Z

    sget-object v2, Landroidx/appcompat/widget/TooltipCompatHandler;->sPendingHandler:Landroidx/appcompat/widget/TooltipCompatHandler;

    if-ne v2, p0, :cond_2

    invoke-static {v1}, Landroidx/appcompat/widget/TooltipCompatHandler;->setPendingHandler(Landroidx/appcompat/widget/TooltipCompatHandler;)V

    :cond_2
    iget-object v1, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    iget-object v2, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mHideRunnable:Landroidx/appcompat/widget/TooltipCompatHandler$$ExternalSyntheticLambda1;

    invoke-virtual {v1, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-boolean v1, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mFromTouch:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    iget-object v2, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mCheckHoverRunnable:Landroidx/appcompat/widget/TooltipCompatHandler$1;

    invoke-virtual {v1, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v1, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    iget-object p0, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mLayoutChangeListener:Landroidx/appcompat/widget/TooltipCompatHandler$$ExternalSyntheticLambda0;

    invoke-virtual {v1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_3
    sput-boolean v0, Landroidx/appcompat/widget/TooltipCompatHandler;->sIsTooltipNull:Z

    return-void
.end method

.method public final onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    iget-object v0, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mPopup:Landroidx/appcompat/widget/TooltipPopup;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mFromTouch:Z

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    const-string v2, "TooltipCompatHandler"

    if-nez v0, :cond_1

    const-string p0, "TooltipCompat Anchor view is null"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v3, 0x4002

    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v3, :cond_4

    invoke-static {}, Landroidx/reflect/provider/SeslSettingsReflector$SeslSystemReflector;->getField_SEM_PEN_HOVERING()Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v6, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v5, :cond_2

    goto :goto_0

    :cond_2
    iget-object p2, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p0, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mPopup:Landroidx/appcompat/widget/TooltipPopup;

    if-eqz p0, :cond_3

    if-eqz v0, :cond_3

    invoke-static {}, Landroidx/reflect/view/SeslPointerIconReflector;->getField_SEM_TYPE_STYLUS_DEFAULT()I

    move-result p0

    invoke-static {v0, p0}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object p0

    invoke-static {p1, v4, p0}, Landroidx/reflect/view/SeslViewReflector;->semSetPointerIcon(Landroid/view/View;ILandroid/view/PointerIcon;)V

    :cond_3
    return v1

    :cond_4
    :goto_0
    iget-object v3, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v6, "accessibility"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v3

    if-eqz v3, :cond_5

    return v1

    :cond_5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    iput v3, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mLastHoverEvent:I

    const/4 v6, 0x7

    if-eq v3, v6, :cond_c

    const/16 v6, 0x9

    if-eq v3, v6, :cond_9

    const/16 v6, 0xa

    if-eq v3, v6, :cond_6

    goto/16 :goto_3

    :cond_6
    const-string v3, "MotionEvent.ACTION_HOVER_EXIT : hide SeslTooltipPopup"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mPopup:Landroidx/appcompat/widget/TooltipPopup;

    if-eqz v2, :cond_7

    if-eqz v0, :cond_7

    invoke-static {}, Landroidx/reflect/view/SeslPointerIconReflector;->getField_SEM_TYPE_STYLUS_DEFAULT()I

    move-result v2

    invoke-static {v0, v2}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object v0

    invoke-static {p1, v4, v0}, Landroidx/reflect/view/SeslViewReflector;->semSetPointerIcon(Landroid/view/View;ILandroid/view/PointerIcon;)V

    :cond_7
    iget-object p1, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mPopup:Landroidx/appcompat/widget/TooltipPopup;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroidx/appcompat/widget/TooltipPopup;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget v0, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mAnchorX:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v0, 0x40800000    # 4.0f

    cmpg-float p1, p1, v0

    if-gez p1, :cond_8

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget p2, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mAnchorY:I

    int-to-float p2, p2

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpg-float p1, p1, v0

    if-gez p1, :cond_8

    iput-boolean v5, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mIsForceExitDelay:Z

    iget-object p1, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    iget-object p2, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mHideRunnable:Landroidx/appcompat/widget/TooltipCompatHandler$$ExternalSyntheticLambda1;

    invoke-virtual {p1, p2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    iget-object p0, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mHideRunnable:Landroidx/appcompat/widget/TooltipCompatHandler$$ExternalSyntheticLambda1;

    const-wide/16 v2, 0x9c4

    invoke-virtual {p1, p0, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_3

    :cond_8
    invoke-virtual {p0}, Landroidx/appcompat/widget/TooltipCompatHandler;->hide()V

    goto/16 :goto_3

    :cond_9
    iget-object p2, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->hasWindowFocus()Z

    move-result p2

    iput-boolean p2, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mInitialWindowFocus:Z

    iget-object p2, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_f

    iget-object p0, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mPopup:Landroidx/appcompat/widget/TooltipPopup;

    if-nez p0, :cond_f

    if-eqz v0, :cond_f

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Class;

    const-string p2, "android.view.PointerIcon"

    const-string v2, "hidden_SEM_TYPE_STYLUS_MORE"

    invoke-static {p2, v2, p0}, Landroidx/reflect/SeslBaseReflector;->getDeclaredMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    const/4 p2, 0x0

    if-eqz p0, :cond_a

    const-string v2, "SeslBaseReflector"

    :try_start_0
    invoke-virtual {p0, p2, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " InvocationTargetException"

    invoke-static {p0, v5, v6, v2, v3}, Landroidx/appcompat/app/AlertDialog$$ExternalSyntheticOutline0;->m(Ljava/lang/reflect/Method;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/InvocationTargetException;)V

    goto :goto_1

    :catch_1
    move-exception v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " IllegalArgumentException"

    invoke-static {p0, v5, v6, v2, v3}, Landroidx/appcompat/app/AlertDialog$$ExternalSyntheticOutline0;->m(Ljava/lang/reflect/Method;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/IllegalArgumentException;)V

    goto :goto_1

    :catch_2
    move-exception v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " IllegalAccessException"

    invoke-static {p0, v5, v6, v2, v3}, Landroidx/appcompat/app/AlertDialog$$ExternalSyntheticOutline0;->m(Ljava/lang/reflect/Method;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/IllegalAccessException;)V

    :cond_a
    :goto_1
    instance-of p0, p2, Ljava/lang/Integer;

    if-eqz p0, :cond_b

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_2

    :cond_b
    const/16 p0, 0x4e2a

    :goto_2
    invoke-static {v0, p0}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object p0

    invoke-static {p1, v4, p0}, Landroidx/reflect/view/SeslViewReflector;->semSetPointerIcon(Landroid/view/View;ILandroid/view/PointerIcon;)V

    goto :goto_3

    :cond_c
    iget-object p1, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_f

    iget-object p1, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mPopup:Landroidx/appcompat/widget/TooltipPopup;

    if-nez p1, :cond_f

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iget-boolean v2, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mForceNextChangeSignificant:Z

    if-nez v2, :cond_d

    iget v2, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mAnchorX:I

    sub-int v2, p1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mHoverSlop:I

    if-gt v2, v3, :cond_d

    iget v2, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mAnchorY:I

    sub-int v2, v0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mHoverSlop:I

    if-le v2, v3, :cond_f

    :cond_d
    iput p1, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mAnchorX:I

    iput v0, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mAnchorY:I

    iput-boolean v1, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mForceNextChangeSignificant:Z

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mAnchorX:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mAnchorY:I

    iget-boolean p1, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mIsShowRunnablePostDelayed:Z

    if-eqz p1, :cond_e

    iget-boolean p1, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mIsForceExitDelay:Z

    if-eqz p1, :cond_f

    :cond_e
    invoke-static {p0}, Landroidx/appcompat/widget/TooltipCompatHandler;->setPendingHandler(Landroidx/appcompat/widget/TooltipCompatHandler;)V

    iput-boolean v1, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mIsForceExitDelay:Z

    iput-boolean v5, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mIsShowRunnablePostDelayed:Z

    :cond_f
    :goto_3
    return v1
.end method

.method public final onLongClick(Landroid/view/View;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mAnchorX:I

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mAnchorY:I

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/TooltipCompatHandler;->show(Z)V

    return p1
.end method

.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/appcompat/widget/TooltipCompatHandler;->hide()V

    return-void
.end method

.method public final show(Z)V
    .locals 7

    iget-object v0, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    sget-object v1, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Landroidx/appcompat/widget/TooltipCompatHandler;->setPendingHandler(Landroidx/appcompat/widget/TooltipCompatHandler;)V

    sget-object v0, Landroidx/appcompat/widget/TooltipCompatHandler;->sActiveHandler:Landroidx/appcompat/widget/TooltipCompatHandler;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/appcompat/widget/TooltipCompatHandler;->hide()V

    :cond_1
    sput-object p0, Landroidx/appcompat/widget/TooltipCompatHandler;->sActiveHandler:Landroidx/appcompat/widget/TooltipCompatHandler;

    iput-boolean p1, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mFromTouch:Z

    new-instance p1, Landroidx/appcompat/widget/TooltipPopup;

    iget-object v0, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/appcompat/widget/TooltipPopup;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mPopup:Landroidx/appcompat/widget/TooltipPopup;

    sget-boolean v0, Landroidx/appcompat/widget/TooltipCompatHandler;->sIsTooltipNull:Z

    if-eqz v0, :cond_2

    return-void

    :cond_2
    sget-boolean v5, Landroidx/appcompat/widget/TooltipCompatHandler;->sIsForceBelow:Z

    const-string/jumbo v0, "window"

    if-nez v5, :cond_5

    sget-boolean v1, Landroidx/appcompat/widget/TooltipCompatHandler;->sIsForceActionBarX:Z

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    iget-object v2, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    iget-boolean v3, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mFromTouch:Z

    iget-object v1, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mTooltipText:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroidx/appcompat/widget/TooltipPopup;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p1}, Landroidx/appcompat/widget/TooltipPopup;->hide()V

    :cond_4
    iget-object v4, p1, Landroidx/appcompat/widget/TooltipPopup;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p1, Landroidx/appcompat/widget/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroidx/appcompat/widget/TooltipPopup;->computePosition(Landroid/view/View;ZLandroid/view/WindowManager$LayoutParams;ZZ)V

    iget-object v1, p1, Landroidx/appcompat/widget/TooltipPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iget-object v1, p1, Landroidx/appcompat/widget/TooltipPopup;->mContentView:Landroid/view/View;

    iget-object p1, p1, Landroidx/appcompat/widget/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, p1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_5
    :goto_0
    iget-object v2, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    iget-boolean v3, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mFromTouch:Z

    iget-object v1, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mTooltipText:Ljava/lang/CharSequence;

    sget-boolean v6, Landroidx/appcompat/widget/TooltipCompatHandler;->sIsForceActionBarX:Z

    invoke-virtual {p1}, Landroidx/appcompat/widget/TooltipPopup;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {p1}, Landroidx/appcompat/widget/TooltipPopup;->hide()V

    :cond_6
    iget-object v4, p1, Landroidx/appcompat/widget/TooltipPopup;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p1, Landroidx/appcompat/widget/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroidx/appcompat/widget/TooltipPopup;->computePosition(Landroid/view/View;ZLandroid/view/WindowManager$LayoutParams;ZZ)V

    iget-object v1, p1, Landroidx/appcompat/widget/TooltipPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iget-object v1, p1, Landroidx/appcompat/widget/TooltipPopup;->mContentView:Landroid/view/View;

    iget-object p1, p1, Landroidx/appcompat/widget/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, p1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x0

    sput-boolean p1, Landroidx/appcompat/widget/TooltipCompatHandler;->sIsForceBelow:Z

    sput-boolean p1, Landroidx/appcompat/widget/TooltipCompatHandler;->sIsForceActionBarX:Z

    :goto_1
    iget-object p1, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mLastOrientation:I

    new-instance v0, Landroidx/appcompat/widget/TooltipCompatHandler$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Landroidx/appcompat/widget/TooltipCompatHandler$$ExternalSyntheticLambda0;-><init>(Landroidx/appcompat/widget/TooltipCompatHandler;Landroid/content/res/Resources;)V

    iput-object v0, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mLayoutChangeListener:Landroidx/appcompat/widget/TooltipCompatHandler$$ExternalSyntheticLambda0;

    iget-object p1, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object p1, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-boolean p1, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mFromTouch:Z

    if-eqz p1, :cond_7

    const-wide/16 v0, 0x9c4

    goto :goto_3

    :cond_7
    iget-object p1, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getWindowSystemUiVisibility()I

    move-result p1

    const/4 v0, 0x1

    and-int/2addr p1, v0

    if-ne p1, v0, :cond_8

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p1

    int-to-long v0, p1

    const-wide/16 v2, 0xbb8

    :goto_2
    sub-long v0, v2, v0

    goto :goto_3

    :cond_8
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p1

    int-to-long v0, p1

    const-wide/16 v2, 0x3a98

    goto :goto_2

    :goto_3
    iget-object p1, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    iget-object v2, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mHideRunnable:Landroidx/appcompat/widget/TooltipCompatHandler$$ExternalSyntheticLambda1;

    invoke-virtual {p1, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    iget-object v2, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mHideRunnable:Landroidx/appcompat/widget/TooltipCompatHandler$$ExternalSyntheticLambda1;

    invoke-virtual {p1, v2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-boolean p1, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mFromTouch:Z

    if-nez p1, :cond_9

    iget-object p1, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    iget-object v0, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mCheckHoverRunnable:Landroidx/appcompat/widget/TooltipCompatHandler$1;

    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    iget-object v0, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mCheckHoverRunnable:Landroidx/appcompat/widget/TooltipCompatHandler$1;

    const-wide/16 v1, 0x12c

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_9
    iget p1, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mLastHoverEvent:I

    const/4 v0, 0x7

    if-ne p1, v0, :cond_a

    iget-object p1, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->hasWindowFocus()Z

    move-result p1

    if-nez p1, :cond_a

    iget-boolean p1, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mInitialWindowFocus:Z

    iget-object v0, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->hasWindowFocus()Z

    move-result v0

    if-eq p1, v0, :cond_a

    invoke-virtual {p0}, Landroidx/appcompat/widget/TooltipCompatHandler;->hide()V

    :cond_a
    return-void
.end method
