.class public Lcom/android/settings/gestures/BackGestureIndicatorView;
.super Landroid/widget/LinearLayout;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mLayout:Landroid/view/ViewGroup;

.field public final mLeftDrawable:Lcom/android/settings/gestures/BackGestureIndicatorDrawable;

.field public final mRightDrawable:Lcom/android/settings/gestures/BackGestureIndicatorDrawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d007e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/settings/gestures/BackGestureIndicatorView;->mLayout:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Lcom/android/settings/gestures/BackGestureIndicatorDrawable;

    invoke-direct {v1, p1, v2}, Lcom/android/settings/gestures/BackGestureIndicatorDrawable;-><init>(Landroid/content/Context;Z)V

    iput-object v1, p0, Lcom/android/settings/gestures/BackGestureIndicatorView;->mLeftDrawable:Lcom/android/settings/gestures/BackGestureIndicatorDrawable;

    new-instance v3, Lcom/android/settings/gestures/BackGestureIndicatorDrawable;

    const/4 v4, 0x1

    invoke-direct {v3, p1, v4}, Lcom/android/settings/gestures/BackGestureIndicatorDrawable;-><init>(Landroid/content/Context;Z)V

    iput-object v3, p0, Lcom/android/settings/gestures/BackGestureIndicatorView;->mRightDrawable:Lcom/android/settings/gestures/BackGestureIndicatorDrawable;

    const v5, 0x7f0a07e9

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    const v6, 0x7f0a07ea

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getSystemUiVisibility()I

    move-result v0

    or-int/lit16 v1, v0, 0xf06

    const v3, 0x101056c

    const v5, 0x10104e0

    filled-new-array {v3, v5}, [I

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-eqz v3, :cond_1

    or-int/lit16 v1, v0, 0xf16

    :cond_1
    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_2

    or-int/lit16 v1, v1, 0x2000

    :cond_2
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setSystemUiVisibility(I)V

    return-void
.end method
