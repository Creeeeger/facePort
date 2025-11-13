.class public abstract Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SuwBaseActivity.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsFirstTime:Z

.field private mIsNeedScrollView:Z

.field private mPrimaryButton:Lcom/google/android/setupcompat/template/FooterButton;

.field private mRootLayout:Lcom/google/android/setupdesign/GlifLayout;

.field private mSecondaryButton:Lcom/google/android/setupcompat/template/FooterButton;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 26
    iput-object p0, p0, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    .line 33
    iput-boolean v0, p0, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->mIsNeedScrollView:Z

    .line 34
    iput-boolean v0, p0, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->mIsFirstTime:Z

    return-void
.end method

.method private initView()V
    .locals 2

    .line 113
    sget v0, Lcom/sec/android/secsetupwizardlib/R$id;->sswl_glif_root:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/setupdesign/GlifLayout;

    iput-object v0, p0, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->mRootLayout:Lcom/google/android/setupdesign/GlifLayout;

    .line 115
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/sec/android/secsetupwizardlib/R$drawable;->header_ic_transparent:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->setHeaderIcon(Landroid/graphics/drawable/Drawable;)V

    .line 118
    iget-object v0, p0, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->mRootLayout:Lcom/google/android/setupdesign/GlifLayout;

    invoke-virtual {v0}, Lcom/google/android/setupdesign/GlifLayout;->getScrollView()Landroid/widget/ScrollView;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 120
    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setScrollIndicators(I)V

    .line 121
    new-instance v1, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity$1;

    invoke-direct {v1, p0}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity$1;-><init>(Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected isScrollBottomReached()Z
    .locals 6

    .line 188
    iget-object v0, p0, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->mRootLayout:Lcom/google/android/setupdesign/GlifLayout;

    invoke-virtual {v0}, Lcom/google/android/setupdesign/GlifLayout;->getScrollView()Landroid/widget/ScrollView;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 190
    invoke-virtual {v0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 191
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v4

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v5, Lcom/sec/android/secsetupwizardlib/R$dimen;->sswl_scroll_bottom_margin_ignored:I

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    add-int/2addr v4, p0

    if-gt v2, v4, :cond_1

    .line 192
    invoke-virtual {v0}, Landroid/widget/ScrollView;->getHeight()I

    move-result p0

    if-nez p0, :cond_0

    return v1

    :cond_0
    return v3

    :cond_1
    return v1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 38
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    const-string v1, "isFirstTime"

    .line 41
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->mIsFirstTime:Z

    .line 44
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 45
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ActionBar;->hide()V

    .line 48
    :cond_1
    sget p1, Lcom/sec/android/secsetupwizardlib/R$layout;->sswl_base_layout:I

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 50
    invoke-direct {p0}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->initView()V

    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 67
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 62
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "outState"
        }
    .end annotation

    .line 55
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string p0, "isFirstTime"

    const/4 v0, 0x0

    .line 57
    invoke-virtual {p1, p0, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hasFocus"
        }
    .end annotation

    .line 109
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    return-void
.end method

.method public setContentView(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "layoutResID"
        }
    .end annotation

    .line 72
    sget v0, Lcom/sec/android/secsetupwizardlib/R$id;->sswl_scroll_view:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 76
    :cond_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    return-void
.end method

.method public setContentView(IZ)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "layoutResID",
            "isNeedScrollView"
        }
    .end annotation

    .line 80
    iput-boolean p2, p0, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->mIsNeedScrollView:Z

    .line 82
    sget p2, Lcom/sec/android/secsetupwizardlib/R$id;->sswl_scroll_view:I

    invoke-virtual {p0, p2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    .line 83
    iget-boolean v0, p0, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->mIsNeedScrollView:Z

    if-nez v0, :cond_0

    .line 84
    sget p2, Lcom/sec/android/secsetupwizardlib/R$id;->sswl_layout_content:I

    invoke-virtual {p0, p2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    .line 86
    iget-object v0, p0, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->mRootLayout:Lcom/google/android/setupdesign/GlifLayout;

    sget v1, Lcom/sec/android/secsetupwizardlib/R$id;->sud_landscape_content_area:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v1, p0, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->mRootLayout:Lcom/google/android/setupdesign/GlifLayout;

    sget v2, Lcom/sec/android/secsetupwizardlib/R$id;->sud_layout_content:I

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 91
    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    .line 94
    invoke-virtual {v1}, Landroid/view/View;->getPaddingStart()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1}, Landroid/view/View;->getPaddingEnd()I

    move-result v5

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    .line 93
    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 96
    invoke-virtual {v0}, Landroid/view/View;->getPaddingStart()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingEnd()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    .line 95
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    :cond_0
    if-eqz p2, :cond_1

    .line 102
    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 104
    :cond_1
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    return-void
.end method

.method protected setDescriptionText(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "decriptioinRes"
        }
    .end annotation

    .line 180
    iget-object p0, p0, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->mRootLayout:Lcom/google/android/setupdesign/GlifLayout;

    invoke-virtual {p0, p1}, Lcom/google/android/setupdesign/GlifLayout;->setDescriptionText(I)V

    return-void
.end method

.method protected setHeaderIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "headerIcon"
        }
    .end annotation

    .line 150
    iget-object p0, p0, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->mRootLayout:Lcom/google/android/setupdesign/GlifLayout;

    invoke-virtual {p0, p1}, Lcom/google/android/setupdesign/GlifLayout;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected setHeaderTitle(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "titleRes"
        }
    .end annotation

    .line 172
    iget-object p0, p0, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->mRootLayout:Lcom/google/android/setupdesign/GlifLayout;

    invoke-virtual {p0, p1}, Lcom/google/android/setupdesign/GlifLayout;->setHeaderText(I)V

    return-void
.end method

.method protected setPrimaryActionButton(ILandroid/view/View$OnClickListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "buttonNameResId",
            "listner"
        }
    .end annotation

    .line 266
    iget-object v0, p0, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->mPrimaryButton:Lcom/google/android/setupcompat/template/FooterButton;

    if-nez v0, :cond_0

    .line 267
    new-instance v0, Lcom/google/android/setupcompat/template/FooterButton$Builder;

    iget-object v1, p0, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;-><init>(Landroid/content/Context;)V

    .line 268
    invoke-virtual {v0, p1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setText(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object p1

    const/4 v0, 0x5

    .line 269
    invoke-virtual {p1, v0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setButtonType(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object p1

    .line 270
    invoke-virtual {p1, p2}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setListener(Landroid/view/View$OnClickListener;)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object p1

    .line 271
    invoke-virtual {p1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->build()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->mPrimaryButton:Lcom/google/android/setupcompat/template/FooterButton;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 273
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton;->setVisibility(I)V

    .line 274
    iget-object v0, p0, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->mPrimaryButton:Lcom/google/android/setupcompat/template/FooterButton;

    iget-object v1, p0, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/setupcompat/template/FooterButton;->setText(Landroid/content/Context;I)V

    .line 275
    iget-object p1, p0, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->mPrimaryButton:Lcom/google/android/setupcompat/template/FooterButton;

    invoke-virtual {p1, p2}, Lcom/google/android/setupcompat/template/FooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 277
    :goto_0
    iget-object p1, p0, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->mRootLayout:Lcom/google/android/setupdesign/GlifLayout;

    const-class p2, Lcom/google/android/setupcompat/template/FooterBarMixin;

    invoke-virtual {p1, p2}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object p1

    check-cast p1, Lcom/google/android/setupcompat/template/FooterBarMixin;

    .line 278
    iget-object p0, p0, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->mPrimaryButton:Lcom/google/android/setupcompat/template/FooterButton;

    invoke-virtual {p1, p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->setPrimaryButton(Lcom/google/android/setupcompat/template/FooterButton;)V

    return-void
.end method

.method protected setPrimaryActionButtonEnabled(Ljava/lang/Boolean;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 282
    iget-object v0, p0, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->mPrimaryButton:Lcom/google/android/setupcompat/template/FooterButton;

    if-eqz v0, :cond_0

    .line 283
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton;->setEnabled(Z)V

    .line 284
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    .line 285
    iget-object p1, p0, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->mRootLayout:Lcom/google/android/setupdesign/GlifLayout;

    const-class v0, Lcom/google/android/setupcompat/template/FooterBarMixin;

    invoke-virtual {p1, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object p1

    check-cast p1, Lcom/google/android/setupcompat/template/FooterBarMixin;

    if-eqz p1, :cond_0

    .line 287
    invoke-virtual {p1}, Lcom/google/android/setupcompat/template/FooterBarMixin;->getPrimaryButtonView()Landroid/widget/Button;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 289
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/sec/android/secsetupwizardlib/R$color;->sswl_bottom_primary_button_text_color:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method protected setPrimaryActionButtonText(I)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ResourceType"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buttonNameResId"
        }
    .end annotation

    .line 254
    iget-object v0, p0, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->mPrimaryButton:Lcom/google/android/setupcompat/template/FooterButton;

    if-eqz v0, :cond_0

    .line 255
    iget-object p0, p0, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0, p1}, Lcom/google/android/setupcompat/template/FooterButton;->setText(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method

.method protected setPrimaryActionButtonVisibility(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "visibility"
        }
    .end annotation

    .line 297
    iget-object p0, p0, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->mPrimaryButton:Lcom/google/android/setupcompat/template/FooterButton;

    if-eqz p0, :cond_0

    .line 298
    invoke-virtual {p0, p1}, Lcom/google/android/setupcompat/template/FooterButton;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method protected setSecondaryActionButton(ILandroid/view/View$OnClickListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "buttonNameResId",
            "listner"
        }
    .end annotation

    .line 229
    iget-object v0, p0, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->mSecondaryButton:Lcom/google/android/setupcompat/template/FooterButton;

    if-nez v0, :cond_0

    .line 230
    new-instance v0, Lcom/google/android/setupcompat/template/FooterButton$Builder;

    iget-object v1, p0, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;-><init>(Landroid/content/Context;)V

    .line 231
    invoke-virtual {v0, p1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setText(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object p1

    const/4 v0, 0x0

    .line 232
    invoke-virtual {p1, v0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setButtonType(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object p1

    .line 233
    invoke-virtual {p1, p2}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setListener(Landroid/view/View$OnClickListener;)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object p1

    .line 234
    invoke-virtual {p1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->build()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->mSecondaryButton:Lcom/google/android/setupcompat/template/FooterButton;

    .line 236
    :cond_0
    iget-object p1, p0, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->mRootLayout:Lcom/google/android/setupdesign/GlifLayout;

    const-class p2, Lcom/google/android/setupcompat/template/FooterBarMixin;

    invoke-virtual {p1, p2}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object p1

    check-cast p1, Lcom/google/android/setupcompat/template/FooterBarMixin;

    .line 237
    iget-object p0, p0, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->mSecondaryButton:Lcom/google/android/setupcompat/template/FooterButton;

    invoke-virtual {p1, p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->setSecondaryButton(Lcom/google/android/setupcompat/template/FooterButton;)V

    return-void
.end method

.method protected setSecondaryActionButtonText(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buttonNameResId"
        }
    .end annotation

    .line 217
    iget-object v0, p0, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->mSecondaryButton:Lcom/google/android/setupcompat/template/FooterButton;

    if-eqz v0, :cond_0

    .line 218
    iget-object p0, p0, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0, p1}, Lcom/google/android/setupcompat/template/FooterButton;->setText(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method

.method protected setSecondaryActionButtonVisibility(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "visibility"
        }
    .end annotation

    .line 247
    iget-object p0, p0, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->mSecondaryButton:Lcom/google/android/setupcompat/template/FooterButton;

    if-eqz p0, :cond_0

    .line 248
    invoke-virtual {p0, p1}, Lcom/google/android/setupcompat/template/FooterButton;->setVisibility(I)V

    :cond_0
    return-void
.end method
