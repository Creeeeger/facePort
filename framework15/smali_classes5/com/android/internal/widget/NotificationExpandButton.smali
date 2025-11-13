.class public Lcom/android/internal/widget/NotificationExpandButton;
.super Landroid/widget/FrameLayout;
.source "NotificationExpandButton.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "NotificationExpandButton"


# instance fields
.field private blacklist mDefaultPillColor:I

.field private blacklist mDefaultTextColor:I

.field private blacklist mExpanded:Z

.field private blacklist mHighlightPillColor:I

.field private blacklist mHighlightTextColor:I

.field private blacklist mIconView:Landroid/widget/ImageView;

.field private blacklist mNumber:I

.field private blacklist mNumberView:Landroid/widget/TextView;

.field private blacklist mPillDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, v1}, Lcom/android/internal/widget/NotificationExpandButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/android/internal/widget/NotificationExpandButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/widget/NotificationExpandButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private blacklist shouldShowNumber()Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/internal/widget/NotificationExpandButton;->mExpanded:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/internal/widget/NotificationExpandButton;->mNumber:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private blacklist updateColors()V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/widget/NotificationExpandButton;->mIconView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/internal/widget/NotificationExpandButton;->mDefaultTextColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget v0, p0, Lcom/android/internal/widget/NotificationExpandButton;->mDefaultTextColor:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/NotificationExpandButton;->mNumberView:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/internal/widget/NotificationExpandButton;->mDefaultTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method private blacklist updateExpandedState()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/internal/widget/NotificationExpandButton;->mExpanded:Z

    if-eqz v0, :cond_0

    const v0, 0x10803e6

    const v1, 0x10404e4

    goto :goto_0

    :cond_0
    const v0, 0x1080425

    const v1, 0x10404e3

    :goto_0
    iget-object v2, p0, Lcom/android/internal/widget/NotificationExpandButton;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/NotificationExpandButton;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/internal/widget/NotificationExpandButton;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationExpandButton;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0}, Lcom/android/internal/widget/NotificationExpandButton;->updateNumber()V

    return-void
.end method

.method private blacklist updateNumber()V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/widget/NotificationExpandButton;->updateColors()V

    return-void
.end method


# virtual methods
.method public blacklist getBoundsOnScreen(Landroid/graphics/Rect;Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationExpandButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getId()I

    move-result v1

    const v2, 0x10202e2

    if-ne v1, v2, :cond_0

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->getBoundsOnScreen(Landroid/graphics/Rect;Z)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->getBoundsOnScreen(Landroid/graphics/Rect;Z)V

    :goto_0
    return-void
.end method

.method protected whitelist onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x10202df

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/NotificationExpandButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/widget/NotificationExpandButton;->mNumberView:Landroid/widget/TextView;

    const v0, 0x10202de

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/NotificationExpandButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/widget/NotificationExpandButton;->mIconView:Landroid/widget/ImageView;

    return-void
.end method

.method public whitelist onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-class v0, Landroid/widget/Button;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public blacklist pointInView(FFF)Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationExpandButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getId()I

    move-result v1

    const v2, 0x10202e2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->pointInView(FFF)Z

    move-result v1

    return v1
.end method

.method public whitelist setAlpha(F)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    const/4 v0, 0x5

    invoke-static {v0}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotificationExpandButton"

    invoke-static {v1, v0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public blacklist setDefaultPillColor(I)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput p1, p0, Lcom/android/internal/widget/NotificationExpandButton;->mDefaultPillColor:I

    invoke-direct {p0}, Lcom/android/internal/widget/NotificationExpandButton;->updateColors()V

    return-void
.end method

.method public blacklist setDefaultTextColor(I)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput p1, p0, Lcom/android/internal/widget/NotificationExpandButton;->mDefaultTextColor:I

    invoke-direct {p0}, Lcom/android/internal/widget/NotificationExpandButton;->updateColors()V

    return-void
.end method

.method public blacklist setExpanded(Z)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput-boolean p1, p0, Lcom/android/internal/widget/NotificationExpandButton;->mExpanded:Z

    invoke-direct {p0}, Lcom/android/internal/widget/NotificationExpandButton;->updateExpandedState()V

    return-void
.end method

.method public blacklist setHighlightPillColor(I)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput p1, p0, Lcom/android/internal/widget/NotificationExpandButton;->mHighlightPillColor:I

    invoke-direct {p0}, Lcom/android/internal/widget/NotificationExpandButton;->updateColors()V

    return-void
.end method

.method public blacklist setHighlightTextColor(I)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput p1, p0, Lcom/android/internal/widget/NotificationExpandButton;->mHighlightTextColor:I

    invoke-direct {p0}, Lcom/android/internal/widget/NotificationExpandButton;->updateColors()V

    return-void
.end method

.method public blacklist setNumber(I)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iget v0, p0, Lcom/android/internal/widget/NotificationExpandButton;->mNumber:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/internal/widget/NotificationExpandButton;->mNumber:I

    invoke-direct {p0}, Lcom/android/internal/widget/NotificationExpandButton;->updateNumber()V

    :cond_0
    return-void
.end method

.method public blacklist updateContentDescription()V
    .locals 2
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iget-boolean v0, p0, Lcom/android/internal/widget/NotificationExpandButton;->mExpanded:Z

    if-eqz v0, :cond_0

    const v0, 0x10404e4

    goto :goto_0

    :cond_0
    const v0, 0x10404e3

    :goto_0
    iget-object v1, p0, Lcom/android/internal/widget/NotificationExpandButton;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/NotificationExpandButton;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method
