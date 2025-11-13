.class public final Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorView;
.super Landroid/widget/LinearLayout;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mBottomDrawable:Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable;

.field public mCutoutL:I

.field public mCutoutR:I

.field public mLayout:Landroid/view/ViewGroup;

.field public mLeftDrawable:Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable;

.field public mNavBarCanMove:Z

.field public mRightDrawable:Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable;

.field public mRotation:I


# virtual methods
.method public final bridge synthetic getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorView;->getLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public final getLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 4

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const v1, -0x7efefee8

    const/4 v2, -0x3

    const/16 v3, 0x7f6

    invoke-direct {v0, v3, v1, v2}, Landroid/view/WindowManager$LayoutParams;-><init>(III)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    const v1, 0x3e4ccccd    # 0.2f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    const/4 v1, 0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    const-string v1, "BackGestureIndicatorView"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getActivityToken()Landroid/os/IBinder;

    move-result-object p0

    iput-object p0, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    return-object v0
.end method

.method public final onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorView;->mCutoutL:I

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorView;->mCutoutR:I

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method
