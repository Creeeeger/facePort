.class public Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorView;
.super Landroid/widget/LinearLayout;
.source "NavigationBarBackGestureIndicatorView.java"


# instance fields
.field private mBottomDrawable:Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable;

.field private mBottomIndicator:Landroid/widget/ImageView;

.field private mCutoutL:I

.field private mCutoutR:I

.field private mLayout:Landroid/view/ViewGroup;

.field private mLeftDrawable:Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable;

.field private mLeftIndicator:Landroid/widget/ImageView;

.field private mNavBarCanMove:Z

.field private mRightDrawable:Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable;

.field private mRightIndicator:Landroid/widget/ImageView;

.field private mRotation:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 38
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 32
    iput v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorView;->mCutoutL:I

    .line 33
    iput v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorView;->mCutoutR:I

    .line 40
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 41
    sget v2, Lcom/android/settings/R$layout;->samsung_navigationbar_back_gesture_indicator_container:I

    invoke-virtual {v1, v2, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorView;->mLayout:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    .line 46
    :cond_0
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 49
    new-instance v0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable;

    const/16 v1, 0x1e

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorView;->mBottomDrawable:Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable;

    .line 50
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorView;->mLayout:Landroid/view/ViewGroup;

    sget v1, Lcom/android/settings/R$id;->indicator_bottom:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorView;->mBottomIndicator:Landroid/widget/ImageView;

    .line 51
    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorView;->mBottomDrawable:Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 54
    new-instance v0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable;

    const/16 v1, 0xa

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorView;->mLeftDrawable:Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable;

    .line 55
    new-instance v0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable;

    const/16 v1, 0x14

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorView;->mRightDrawable:Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable;

    .line 57
    iget-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorView;->mLayout:Landroid/view/ViewGroup;

    sget v0, Lcom/android/settings/R$id;->indicator_left:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorView;->mLeftIndicator:Landroid/widget/ImageView;

    .line 58
    iget-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorView;->mLayout:Landroid/view/ViewGroup;

    sget v0, Lcom/android/settings/R$id;->indicator_right:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorView;->mRightIndicator:Landroid/widget/ImageView;

    .line 60
    iget-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorView;->mLeftIndicator:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorView;->mLeftDrawable:Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 61
    iget-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorView;->mRightIndicator:Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorView;->mRightDrawable:Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private getBottomDrawable()Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable;
    .locals 2

    .line 74
    iget-boolean v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorView;->mNavBarCanMove:Z

    if-eqz v0, :cond_3

    .line 75
    iget v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorView;->mRotation:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 82
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorView;->mLeftDrawable:Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable;

    return-object p0

    .line 80
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorView;->mRightDrawable:Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable;

    return-object p0

    .line 78
    :cond_2
    iget-object p0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorView;->mBottomDrawable:Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable;

    return-object p0

    .line 85
    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorView;->mBottomDrawable:Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 19
    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorView;->getLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public getLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 4

    .line 110
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7f6

    const v2, -0x7efefee8

    const/4 v3, -0x3

    invoke-direct {v0, v1, v2, v3}, Landroid/view/WindowManager$LayoutParams;-><init>(III)V

    const/4 v1, 0x0

    .line 120
    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    const v1, 0x3e4ccccd    # 0.2f

    .line 121
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    const/4 v1, 0x3

    .line 122
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    const-string v1, "BackGestureIndicatorView"

    .line 123
    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 124
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getActivityToken()Landroid/os/IBinder;

    move-result-object p0

    iput-object p0, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    return-object v0
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1

    .line 66
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorView;->mCutoutL:I

    .line 68
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorView;->mCutoutR:I

    .line 70
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method public resetIndicator()V
    .locals 2

    .line 102
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorView;->mLeftDrawable:Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable;->setWidth(II)V

    .line 103
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorView;->mRightDrawable:Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable;

    invoke-virtual {v0, v1, v1}, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable;->setWidth(II)V

    .line 105
    iget-object p0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorView;->mBottomDrawable:Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable;

    invoke-virtual {p0, v1, v1}, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable;->setWidth(II)V

    return-void
.end method

.method public setIndicatorWidth(I)V
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorView;->mLeftDrawable:Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable;

    iget v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorView;->mCutoutL:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable;->setWidth(I)V

    .line 98
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorView;->mRightDrawable:Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable;

    iget p0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorView;->mCutoutR:I

    add-int/2addr p1, p0

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable;->setWidth(I)V

    return-void
.end method

.method public setIndicatorWidth(IIZ)V
    .locals 1

    if-eqz p3, :cond_0

    .line 90
    iget-object p3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorView;->mLeftDrawable:Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable;

    iget v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorView;->mCutoutL:I

    add-int/2addr v0, p1

    invoke-virtual {p3, v0, p2}, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable;->setWidth(II)V

    .line 91
    iget-object p3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorView;->mRightDrawable:Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable;

    iget v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorView;->mCutoutR:I

    add-int/2addr p1, v0

    invoke-virtual {p3, p1, p2}, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable;->setWidth(II)V

    .line 93
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorView;->getBottomDrawable()Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable;->setWidth(II)V

    return-void
.end method

.method public setNavBarCanMove(Z)V
    .locals 0

    .line 133
    iput-boolean p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorView;->mNavBarCanMove:Z

    return-void
.end method

.method public setRotation(I)V
    .locals 0

    .line 129
    iput p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorView;->mRotation:I

    return-void
.end method
