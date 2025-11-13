.class public final Lcom/samsung/android/settings/usefulfeature/multiwindow/swipeforpopupview/SwipeForPopUpViewCornerAreaIndicatorView;
.super Landroid/widget/LinearLayout;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mLayout:Landroid/view/ViewGroup;

.field public final mLeftDrawable:Lcom/samsung/android/settings/usefulfeature/multiwindow/swipeforpopupview/SwipeForPopUpViewCornerAreaIndicatorDrawable;

.field public final mRightDrawable:Lcom/samsung/android/settings/usefulfeature/multiwindow/swipeforpopupview/SwipeForPopUpViewCornerAreaIndicatorDrawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0bd8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/multiwindow/swipeforpopupview/SwipeForPopUpViewCornerAreaIndicatorView;->mLayout:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Lcom/samsung/android/settings/usefulfeature/multiwindow/swipeforpopupview/SwipeForPopUpViewCornerAreaIndicatorDrawable;

    const/16 v2, 0xa

    invoke-direct {v1, p1, v2}, Lcom/samsung/android/settings/usefulfeature/multiwindow/swipeforpopupview/SwipeForPopUpViewCornerAreaIndicatorDrawable;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/samsung/android/settings/usefulfeature/multiwindow/swipeforpopupview/SwipeForPopUpViewCornerAreaIndicatorView;->mLeftDrawable:Lcom/samsung/android/settings/usefulfeature/multiwindow/swipeforpopupview/SwipeForPopUpViewCornerAreaIndicatorDrawable;

    new-instance v2, Lcom/samsung/android/settings/usefulfeature/multiwindow/swipeforpopupview/SwipeForPopUpViewCornerAreaIndicatorDrawable;

    const/16 v3, 0x14

    invoke-direct {v2, p1, v3}, Lcom/samsung/android/settings/usefulfeature/multiwindow/swipeforpopupview/SwipeForPopUpViewCornerAreaIndicatorDrawable;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/samsung/android/settings/usefulfeature/multiwindow/swipeforpopupview/SwipeForPopUpViewCornerAreaIndicatorView;->mRightDrawable:Lcom/samsung/android/settings/usefulfeature/multiwindow/swipeforpopupview/SwipeForPopUpViewCornerAreaIndicatorDrawable;

    const p0, 0x7f0a07e9

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    const p1, 0x7f0a07ea

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/multiwindow/swipeforpopupview/SwipeForPopUpViewCornerAreaIndicatorView;->getLayoutParams()Landroid/view/WindowManager$LayoutParams;

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

    const-string v1, "CornerAreaIndicatorView"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getActivityToken()Landroid/os/IBinder;

    move-result-object p0

    iput-object p0, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    return-object v0
.end method
