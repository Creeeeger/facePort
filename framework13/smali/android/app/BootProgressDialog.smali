.class public Landroid/app/BootProgressDialog;
.super Landroid/app/ProgressDialog;
.source "BootProgressDialog.java"


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 43
    const v0, 0x103000a

    invoke-direct {p0, p1, v0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    .line 44
    return-void
.end method

.method private blacklist clearMarginAndSetMatchParent(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 83
    if-nez p1, :cond_0

    .line 84
    return-void

    .line 86
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 87
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 88
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v1, :cond_2

    .line 89
    const/4 v2, -0x1

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 90
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 91
    instance-of v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_1

    .line 92
    move-object v2, v1

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v2, v0, v0, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 94
    :cond_1
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 96
    :cond_2
    return-void
.end method

.method private blacklist clearMarginAndSetMatchParentAncestor(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 76
    invoke-direct {p0, p1}, Landroid/app/BootProgressDialog;->clearMarginAndSetMatchParent(Landroid/view/View;)V

    .line 77
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Landroid/app/BootProgressDialog;->clearMarginAndSetMatchParentAncestor(Landroid/view/View;)V

    .line 80
    :cond_0
    return-void
.end method


# virtual methods
.method protected whitelist onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 48
    invoke-super {p0, p1}, Landroid/app/ProgressDialog;->onCreate(Landroid/os/Bundle;)V

    .line 50
    invoke-virtual {p0}, Landroid/app/BootProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 52
    .local v0, "decor":Landroid/view/View;
    const v1, 0x10204be

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 53
    .local v1, "v":Landroid/view/View;
    instance-of v2, v1, Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 54
    const v2, 0x10800e2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 55
    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/AnimationDrawable;

    .line 56
    .local v2, "bootProgressAnimation":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 58
    .end local v2    # "bootProgressAnimation":Landroid/graphics/drawable/AnimationDrawable;
    :cond_0
    const v2, 0x1020633

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 59
    .local v2, "t":Landroid/widget/TextView;
    if-eqz v2, :cond_1

    .line 60
    iget-object v3, p0, Landroid/app/BootProgressDialog;->mContext:Landroid/content/Context;

    const v4, 0x1040278

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    :cond_1
    const v3, 0x1020223

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 64
    if-eqz v1, :cond_2

    .line 65
    invoke-direct {p0, v1}, Landroid/app/BootProgressDialog;->clearMarginAndSetMatchParentAncestor(Landroid/view/View;)V

    .line 67
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getWindowInsetsController()Landroid/view/WindowInsetsController;

    move-result-object v3

    .line 68
    .local v3, "insetsController":Landroid/view/WindowInsetsController;
    if-eqz v3, :cond_3

    .line 69
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v4

    invoke-interface {v3, v4}, Landroid/view/WindowInsetsController;->hide(I)V

    .line 70
    const/4 v4, 0x2

    invoke-interface {v3, v4}, Landroid/view/WindowInsetsController;->setSystemBarsBehavior(I)V

    .line 73
    :cond_3
    return-void
.end method
