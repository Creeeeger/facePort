.class public final Lcom/google/android/material/snackbar/Snackbar;
.super Lcom/google/android/material/snackbar/BaseTransientBottomBar;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final SNACKBAR_CONTENT_STYLE_ATTRS:[I

.field public static mIsCoordinatorLayoutParent:Z


# instance fields
.field public final accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field public hasAction:Z

.field public mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const v0, 0x7f040628

    const v1, 0x7f04062a

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/google/android/material/snackbar/Snackbar;->SNACKBAR_CONTENT_STYLE_ATTRS:[I

    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/material/snackbar/Snackbar;->mIsCoordinatorLayoutParent:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;Lcom/google/android/material/snackbar/ContentViewCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;Lcom/google/android/material/snackbar/ContentViewCallback;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/android/material/snackbar/Snackbar;->mType:I

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "accessibility"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    iput-object p1, p0, Lcom/google/android/material/snackbar/Snackbar;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    return-void
.end method

.method public static makeInternal(Landroid/content/Context;Landroid/view/View;Ljava/lang/CharSequence;II)Lcom/google/android/material/snackbar/Snackbar;
    .locals 6

    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/material/snackbar/Snackbar;->mIsCoordinatorLayoutParent:Z

    const/4 v1, 0x0

    move-object v2, v1

    :cond_0
    instance-of v3, p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    sput-boolean v4, Lcom/google/android/material/snackbar/Snackbar;->mIsCoordinatorLayoutParent:Z

    check-cast p1, Landroid/view/ViewGroup;

    goto :goto_1

    :cond_1
    instance-of v3, p1, Landroid/widget/FrameLayout;

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x1020002

    if-ne v2, v3, :cond_2

    check-cast p1, Landroid/view/ViewGroup;

    goto :goto_1

    :cond_2
    move-object v2, p1

    check-cast v2, Landroid/view/ViewGroup;

    :cond_3
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of v3, p1, Landroid/view/View;

    if-eqz v3, :cond_4

    check-cast p1, Landroid/view/View;

    goto :goto_0

    :cond_4
    move-object p1, v1

    :cond_5
    :goto_0
    if-nez p1, :cond_0

    move-object p1, v2

    :goto_1
    if-eqz p1, :cond_b

    if-nez p0, :cond_6

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    :cond_6
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    if-nez p4, :cond_7

    const v2, 0x7f0d03f5

    goto :goto_2

    :cond_7
    sget-object v2, Lcom/google/android/material/snackbar/Snackbar;->SNACKBAR_CONTENT_STYLE_ATTRS:[I

    invoke-virtual {p0, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2, v0, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    invoke-virtual {v2, v4, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    if-eq v5, v3, :cond_8

    if-eq v4, v3, :cond_8

    const v2, 0x7f0d023b

    goto :goto_2

    :cond_8
    const v2, 0x7f0d00d3

    :goto_2
    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/snackbar/SnackbarContentLayout;

    sget-boolean v2, Lcom/google/android/material/snackbar/Snackbar;->mIsCoordinatorLayoutParent:Z

    iput-boolean v2, v1, Lcom/google/android/material/snackbar/SnackbarContentLayout;->mIsCoordinatorLayoutParent:Z

    new-instance v2, Lcom/google/android/material/snackbar/Snackbar;

    invoke-direct {v2, p0, p1, v1, v1}, Lcom/google/android/material/snackbar/Snackbar;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;Lcom/google/android/material/snackbar/ContentViewCallback;)V

    iput p4, v2, Lcom/google/android/material/snackbar/Snackbar;->mType:I

    invoke-virtual {v2}, Lcom/google/android/material/snackbar/Snackbar;->getContentLayout()Lcom/google/android/material/snackbar/SnackbarContentLayout;

    move-result-object p0

    iget-object p0, p0, Lcom/google/android/material/snackbar/SnackbarContentLayout;->messageView:Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget p0, v2, Lcom/google/android/material/snackbar/Snackbar;->mType:I

    if-nez p0, :cond_9

    const p0, 0x7f071200

    goto :goto_3

    :cond_9
    const p0, 0x7f0702f1

    :goto_3
    invoke-virtual {v2}, Lcom/google/android/material/snackbar/Snackbar;->getContentLayout()Lcom/google/android/material/snackbar/SnackbarContentLayout;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/material/snackbar/SnackbarContentLayout;->messageView:Landroid/widget/TextView;

    sget-object p2, Lcom/google/android/material/util/MaxFontScaleRatio;->LARGE:Lcom/google/android/material/util/MaxFontScaleRatio;

    invoke-static {p1, p0, p2}, Lcom/google/android/material/util/SeslTextViewHelperKt;->checkMaxFontScale(Landroid/widget/TextView;ILcom/google/android/material/util/MaxFontScaleRatio;)V

    iput p3, v2, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->duration:I

    if-nez p4, :cond_a

    iget-object p0, v2, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->view:Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    const/4 p1, 0x2

    iput p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->animationMode:I

    iput v0, v1, Lcom/google/android/material/snackbar/SnackbarContentLayout;->mType:I

    :cond_a
    return-object v2

    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "No suitable parent found from the given view. Please provide a valid view."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final dismiss()V
    .locals 1

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->dispatchDismiss(I)V

    return-void
.end method

.method public final getContentLayout()Lcom/google/android/material/snackbar/SnackbarContentLayout;
    .locals 1

    iget-object p0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->view:Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/snackbar/SnackbarContentLayout;

    return-object p0
.end method

.method public final setAction(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/material/snackbar/Snackbar;->getContentLayout()Lcom/google/android/material/snackbar/SnackbarContentLayout;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/material/snackbar/SnackbarContentLayout;->actionView:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/google/android/material/snackbar/Snackbar;->getContentLayout()Lcom/google/android/material/snackbar/SnackbarContentLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->view:Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/google/android/material/snackbar/Snackbar;->mType:I

    if-nez v3, :cond_0

    const v3, 0x7f0811c6

    goto :goto_0

    :cond_0
    const v3, 0x7f0810d6

    :goto_0
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_4

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/material/snackbar/Snackbar;->hasAction:Z

    iget v3, p0, Lcom/google/android/material/snackbar/Snackbar;->mType:I

    if-eqz v3, :cond_1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p1, Lcom/google/android/material/snackbar/Snackbar$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, p2}, Lcom/google/android/material/snackbar/Snackbar$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/material/snackbar/Snackbar;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget p1, p0, Lcom/google/android/material/snackbar/Snackbar;->mType:I

    if-nez p1, :cond_2

    const p1, 0x7f0711fd

    goto :goto_1

    :cond_2
    const p1, 0x7f0711f9

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/material/snackbar/Snackbar;->getContentLayout()Lcom/google/android/material/snackbar/SnackbarContentLayout;

    move-result-object p2

    iget-object p2, p2, Lcom/google/android/material/snackbar/SnackbarContentLayout;->messageView:Landroid/widget/TextView;

    sget-object v3, Lcom/google/android/material/util/MaxFontScaleRatio;->LARGE:Lcom/google/android/material/util/MaxFontScaleRatio;

    invoke-static {p2, p1, v3}, Lcom/google/android/material/util/SeslTextViewHelperKt;->checkMaxFontScale(Landroid/widget/TextView;ILcom/google/android/material/util/MaxFontScaleRatio;)V

    iget-object p0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    if-eqz p0, :cond_3

    const-string/jumbo p1, "show_button_background"

    invoke-static {p0, p1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v1, :cond_3

    move v2, v1

    :cond_3
    invoke-static {v0, v2}, Landroidx/reflect/widget/SeslTextViewReflector;->semSetButtonShapeEnabled(Landroid/widget/TextView;Z)V

    goto :goto_2

    :cond_4
    const/16 p1, 0x8

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-boolean v2, p0, Lcom/google/android/material/snackbar/Snackbar;->hasAction:Z

    :goto_2
    return-void
.end method

.method public final show()V
    .locals 4

    invoke-static {}, Lcom/google/android/material/snackbar/SnackbarManager;->getInstance()Lcom/google/android/material/snackbar/SnackbarManager;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->duration:I

    const/4 v2, -0x2

    if-ne v1, v2, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean v2, p0, Lcom/google/android/material/snackbar/Snackbar;->hasAction:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x4

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/google/android/material/snackbar/Snackbar;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    or-int/lit8 v2, v2, 0x3

    invoke-virtual {v3, v1, v2}, Landroid/view/accessibility/AccessibilityManager;->getRecommendedTimeoutMillis(II)I

    move-result v2

    :goto_1
    iget-object p0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->managerCallback:Lcom/google/android/material/snackbar/BaseTransientBottomBar$5;

    iget-object v1, v0, Lcom/google/android/material/snackbar/SnackbarManager;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {v0, p0}, Lcom/google/android/material/snackbar/SnackbarManager;->isCurrentSnackbarLocked(Lcom/google/android/material/snackbar/SnackbarManager$Callback;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object p0, v0, Lcom/google/android/material/snackbar/SnackbarManager;->currentSnackbar:Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;

    iput v2, p0, Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;->duration:I

    iget-object v2, v0, Lcom/google/android/material/snackbar/SnackbarManager;->handler:Landroid/os/Handler;

    invoke-virtual {v2, p0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object p0, v0, Lcom/google/android/material/snackbar/SnackbarManager;->currentSnackbar:Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;

    invoke-virtual {v0, p0}, Lcom/google/android/material/snackbar/SnackbarManager;->scheduleTimeoutLocked(Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;)V

    monitor-exit v1

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_2
    iget-object v3, v0, Lcom/google/android/material/snackbar/SnackbarManager;->nextSnackbar:Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;

    if-eqz v3, :cond_3

    if-eqz p0, :cond_3

    iget-object v3, v3, Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;->callback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p0, :cond_3

    iget-object p0, v0, Lcom/google/android/material/snackbar/SnackbarManager;->nextSnackbar:Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;

    iput v2, p0, Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;->duration:I

    goto :goto_2

    :cond_3
    new-instance v3, Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;

    invoke-direct {v3, v2, p0}, Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;-><init>(ILcom/google/android/material/snackbar/SnackbarManager$Callback;)V

    iput-object v3, v0, Lcom/google/android/material/snackbar/SnackbarManager;->nextSnackbar:Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;

    :goto_2
    iget-object p0, v0, Lcom/google/android/material/snackbar/SnackbarManager;->currentSnackbar:Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;

    if-eqz p0, :cond_4

    const/4 v2, 0x4

    invoke-virtual {v0, p0, v2}, Lcom/google/android/material/snackbar/SnackbarManager;->cancelSnackbarLocked(Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;I)Z

    move-result p0

    if-eqz p0, :cond_4

    monitor-exit v1

    goto :goto_3

    :cond_4
    const/4 p0, 0x0

    iput-object p0, v0, Lcom/google/android/material/snackbar/SnackbarManager;->currentSnackbar:Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/SnackbarManager;->showNextSnackbarLocked()V

    monitor-exit v1

    :goto_3
    return-void

    :goto_4
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
