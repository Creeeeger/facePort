.class public Lcom/sec/android/secsetupwizardlib/view/StatusBarView;
.super Landroid/view/View;
.source "StatusBarView.java"


# instance fields
.field mContext:Landroid/content/Context;

.field mHeight:I

.field mSupportTabletLayout:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 23
    invoke-direct {p0, p1, v0, v1}, Lcom/sec/android/secsetupwizardlib/view/StatusBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attributeSet"
        }
    .end annotation

    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/secsetupwizardlib/view/StatusBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyle"
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    iput-object p1, p0, Lcom/sec/android/secsetupwizardlib/view/StatusBarView;->mContext:Landroid/content/Context;

    .line 35
    sget-object p3, Lcom/sec/android/secsetupwizardlib/R$styleable;->StatusBarView:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 37
    sget p2, Lcom/sec/android/secsetupwizardlib/R$styleable;->StatusBarView_supportTabletLayout:I

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/sec/android/secsetupwizardlib/view/StatusBarView;->mSupportTabletLayout:Z

    .line 38
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 40
    invoke-direct {p0}, Lcom/sec/android/secsetupwizardlib/view/StatusBarView;->setStatusBarHeight()V

    return-void
.end method

.method private getDefaultStatusBarHeight()I
    .locals 4

    .line 74
    iget-object v0, p0, Lcom/sec/android/secsetupwizardlib/view/StatusBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "status_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 77
    iget-object p0, p0, Lcom/sec/android/secsetupwizardlib/view/StatusBarView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private setStatusBarHeight()V
    .locals 3

    .line 58
    iget-boolean v0, p0, Lcom/sec/android/secsetupwizardlib/view/StatusBarView;->mSupportTabletLayout:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/secsetupwizardlib/view/StatusBarView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/secsetupwizardlib/util/SuwUtils;->isTabletLayout(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .line 61
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 62
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 64
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v0

    iput v0, p0, Lcom/sec/android/secsetupwizardlib/view/StatusBarView;->mHeight:I

    goto :goto_1

    .line 66
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/secsetupwizardlib/view/StatusBarView;->getDefaultStatusBarHeight()I

    move-result v0

    iput v0, p0, Lcom/sec/android/secsetupwizardlib/view/StatusBarView;->mHeight:I

    .line 68
    :goto_1
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcom/sec/android/secsetupwizardlib/view/StatusBarView;->mHeight:I

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_2
    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "insets"
        }
    .end annotation

    .line 52
    invoke-direct {p0}, Lcom/sec/android/secsetupwizardlib/view/StatusBarView;->setStatusBarHeight()V

    .line 54
    invoke-super {p0, p1}, Landroid/view/View;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 45
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 47
    invoke-direct {p0}, Lcom/sec/android/secsetupwizardlib/view/StatusBarView;->setStatusBarHeight()V

    return-void
.end method
