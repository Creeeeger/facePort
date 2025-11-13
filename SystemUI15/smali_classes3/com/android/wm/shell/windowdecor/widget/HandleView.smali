.class public Lcom/android/wm/shell/windowdecor/widget/HandleView;
.super Landroid/widget/ImageView;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/wm/shell/windowdecor/TaskFocusStateConsumer;


# static fields
.field public static final TASK_FOCUSED_STATE:[I


# instance fields
.field public mIsTaskFocused:Z

.field public final mMouseOutAnimatorSet:Landroid/animation/AnimatorSet;

.field public final mMouseOverAnimatorSet:Landroid/animation/AnimatorSet;

.field public mStagePosition:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x7f04065e

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/android/wm/shell/windowdecor/widget/HandleView;->TASK_FOCUSED_STATE:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    new-instance v0, Landroid/view/ContextThemeWrapper;

    const v1, 0x10302e3

    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {p0, v0, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p2, p0, Lcom/android/wm/shell/windowdecor/widget/HandleView;->mMouseOverAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p2, p0, Lcom/android/wm/shell/windowdecor/widget/HandleView;->mMouseOutAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget-object p1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getStagePosition()I

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/windowdecor/widget/HandleView;->mStagePosition:I

    and-int/lit8 p1, p1, 0x40

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, p2

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/windowdecor/widget/HandleView;->setHandleViewPadding(Z)V

    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/widget/HandleView;->updateHandleViewColor()V

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setFocusable(Z)V

    return-void
.end method


# virtual methods
.method public final onCreateDrawableState(I)[I
    .locals 1

    iget-boolean v0, p0, Lcom/android/wm/shell/windowdecor/widget/HandleView;->mIsTaskFocused:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->onCreateDrawableState(I)[I

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    invoke-super {p0, p1}, Landroid/widget/ImageView;->onCreateDrawableState(I)[I

    move-result-object p0

    sget-object p1, Lcom/android/wm/shell/windowdecor/widget/HandleView;->TASK_FOCUSED_STATE:[I

    invoke-static {p0, p1}, Landroid/widget/ImageView;->mergeDrawableStates([I[I)[I

    return-object p0
.end method

.method public final onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/16 v3, 0x9

    const-wide/16 v4, 0xc8

    const/4 v6, 0x1

    const-string/jumbo v7, "scaleY"

    const-string/jumbo v8, "scaleX"

    if-eq v2, v3, :cond_1

    const/16 v3, 0xa

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    new-array v2, v0, [F

    fill-array-data v2, :array_0

    invoke-static {p0, v8, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    new-array v3, v0, [F

    fill-array-data v3, :array_1

    invoke-static {p0, v7, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iget-object v7, p0, Lcom/android/wm/shell/windowdecor/widget/HandleView;->mMouseOutAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v0, v0, [Landroid/animation/Animator;

    aput-object v2, v0, v1

    aput-object v3, v0, v6

    invoke-virtual {v7, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/widget/HandleView;->mMouseOutAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/widget/HandleView;->mMouseOutAnimatorSet:Landroid/animation/AnimatorSet;

    sget-object v1, Lcom/samsung/android/util/InterpolatorUtils;->SINE_OUT_60:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/widget/HandleView;->mMouseOutAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    :cond_1
    new-array v2, v0, [F

    fill-array-data v2, :array_2

    invoke-static {p0, v8, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    new-array v3, v0, [F

    fill-array-data v3, :array_3

    invoke-static {p0, v7, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iget-object v7, p0, Lcom/android/wm/shell/windowdecor/widget/HandleView;->mMouseOverAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v0, v0, [Landroid/animation/Animator;

    aput-object v2, v0, v1

    aput-object v3, v0, v6

    invoke-virtual {v7, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/widget/HandleView;->mMouseOverAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/widget/HandleView;->mMouseOverAnimatorSet:Landroid/animation/AnimatorSet;

    sget-object v1, Lcom/samsung/android/util/InterpolatorUtils;->SINE_OUT_60:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/widget/HandleView;->mMouseOverAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    nop

    :array_0
    .array-data 4
        0x3fa66666    # 1.3f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3fa66666    # 1.3f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x3fa66666    # 1.3f
    .end array-data

    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x3fa66666    # 1.3f
    .end array-data
.end method

.method public final performLongClick(FF)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final setContentDescription(Ljava/lang/CharSequence;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setTooltipText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setHandleViewPadding(Z)V
    .locals 3

    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070f9b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    if-eqz p1, :cond_0

    const v2, 0x7f070f9d

    goto :goto_0

    :cond_0
    const v2, 0x7f070f9c

    :goto_0
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    if-eqz p1, :cond_1

    const p1, 0x7f070f9a

    goto :goto_1

    :cond_1
    const p1, 0x7f070f99

    :goto_1
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0, v1, v2, v1, p1}, Landroid/widget/ImageView;->setPadding(IIII)V

    return-void
.end method

.method public final setTaskFocusState(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/wm/shell/windowdecor/widget/HandleView;->mIsTaskFocused:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/wm/shell/windowdecor/widget/HandleView;->mIsTaskFocused:Z

    invoke-virtual {p0}, Landroid/widget/ImageView;->refreshDrawableState()V

    :cond_0
    return-void
.end method

.method public final updateHandleViewColor()V
    .locals 6

    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->IS_TABLET_DEVICE:Z

    if-eqz v1, :cond_0

    const v1, 0x7f081025

    goto :goto_0

    :cond_0
    const v1, 0x7f081024

    :goto_0
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/LayerDrawable;

    sget-boolean v3, Lcom/android/wm/shell/windowdecor/CaptionGlobalState;->COLOR_THEME_ENABLED:Z

    if-eqz v3, :cond_1

    const v3, 0x7f0a0447

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/InsetDrawable;

    if-eqz v3, :cond_1

    const v4, 0x7f060642

    invoke-virtual {v0, v4, v2}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v0

    iget-object v2, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    const v4, 0x1060388

    invoke-virtual {v2, v4}, Landroid/content/Context;->getColor(I)I

    move-result v2

    iget-object v4, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    const v5, 0x7f060641

    invoke-virtual {v4, v5}, Landroid/content/Context;->getColor(I)I

    move-result v4

    filled-new-array {v2, v4}, [I

    move-result-object v2

    new-instance v4, Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getStates()[[I

    move-result-object v0

    invoke-direct {v4, v0, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/InsetDrawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_1
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
