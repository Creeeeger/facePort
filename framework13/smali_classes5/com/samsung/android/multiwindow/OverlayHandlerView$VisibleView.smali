.class Lcom/samsung/android/multiwindow/OverlayHandlerView$VisibleView;
.super Landroid/view/View;
.source "OverlayHandlerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/multiwindow/OverlayHandlerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VisibleView"
.end annotation


# static fields
.field private static final blacklist COLOR_FOCUSED:I = -0xfc7e02

.field private static final blacklist COLOR_UNFOCUSED:I = -0x969697


# instance fields
.field private blacklist mDrawable:Landroid/graphics/drawable/GradientDrawable;

.field private blacklist mFocusedColor:I

.field private blacklist mHeight:I

.field private blacklist mWidth:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$msetSize(Lcom/samsung/android/multiwindow/OverlayHandlerView$VisibleView;FF)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/multiwindow/OverlayHandlerView$VisibleView;->setSize(FF)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateColor(Lcom/samsung/android/multiwindow/OverlayHandlerView$VisibleView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/multiwindow/OverlayHandlerView$VisibleView;->updateColor(Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateFocusedColor(Lcom/samsung/android/multiwindow/OverlayHandlerView$VisibleView;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/multiwindow/OverlayHandlerView$VisibleView;->updateFocusedColor()V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 1030
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1031
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/OverlayHandlerView$VisibleView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    iput-object v0, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView$VisibleView;->mDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 1032
    return-void
.end method

.method private blacklist setSize(FF)V
    .locals 4
    .param p1, "width"    # F
    .param p2, "height"    # F

    .line 1035
    float-to-int v0, p1

    iput v0, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView$VisibleView;->mWidth:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/multiwindow/OverlayHandlerView$VisibleView;->setMinimumWidth(I)V

    .line 1036
    float-to-int v0, p2

    iput v0, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView$VisibleView;->mHeight:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/multiwindow/OverlayHandlerView$VisibleView;->setMinimumHeight(I)V

    .line 1038
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/OverlayHandlerView$VisibleView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1039
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    instance-of v1, v0, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v1, :cond_0

    .line 1040
    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/GradientDrawable;

    iget v2, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView$VisibleView;->mHeight:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 1042
    :cond_0
    return-void
.end method

.method private blacklist updateColor(Z)V
    .locals 2
    .param p1, "hasWindowFocus"    # Z

    .line 1057
    iget-object v0, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView$VisibleView;->mDrawable:Landroid/graphics/drawable/GradientDrawable;

    if-eqz p1, :cond_0

    iget v1, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView$VisibleView;->mFocusedColor:I

    goto :goto_0

    :cond_0
    const v1, -0x969697

    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 1058
    return-void
.end method

.method private blacklist updateFocusedColor()V
    .locals 3

    .line 1046
    nop

    .line 1047
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/OverlayHandlerView$VisibleView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1046
    const-string/jumbo v1, "wallpapertheme_state"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1049
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/OverlayHandlerView$VisibleView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1060347

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView$VisibleView;->mFocusedColor:I

    goto :goto_0

    .line 1052
    :cond_0
    const v0, -0xfc7e02

    iput v0, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView$VisibleView;->mFocusedColor:I

    .line 1054
    :goto_0
    return-void
.end method


# virtual methods
.method protected whitelist onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 1062
    iget v0, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView$VisibleView;->mWidth:I

    iget v1, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView$VisibleView;->mHeight:I

    invoke-super {p0, v0, v1}, Landroid/view/View;->onMeasure(II)V

    .line 1063
    return-void
.end method
