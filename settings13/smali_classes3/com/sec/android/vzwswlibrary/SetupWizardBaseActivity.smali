.class public abstract Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SetupWizardBaseActivity.java"


# instance fields
.field private mContentsArea:Landroid/widget/LinearLayout;

.field private mContext:Landroid/content/Context;

.field private mMainActionButton:Lcom/google/android/setupcompat/template/FooterButton;

.field private mManualSetupButton:Lcom/google/android/setupcompat/template/FooterButton;

.field private mProgressBar:Landroid/view/View;

.field private mRootLayout:Lcom/google/android/setupdesign/GlifLayout;

.field private mShortDescription:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 33
    iput-object p0, p0, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->mProgressBar:Landroid/view/View;

    return-void
.end method

.method private initView()V
    .locals 2

    .line 86
    sget v0, Lcom/sec/android/vzwswlibrary/R$id;->vswl_glif_root:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/setupdesign/GlifLayout;

    iput-object v0, p0, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->mRootLayout:Lcom/google/android/setupdesign/GlifLayout;

    .line 87
    sget v0, Lcom/sec/android/vzwswlibrary/R$id;->sud_layout_description:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->mShortDescription:Landroid/widget/TextView;

    .line 89
    invoke-virtual {p0}, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->isOneUIVersion31()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {p0}, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->setHeaderFontStyle()V

    const/high16 v0, 0x41600000    # 14.0f

    .line 91
    invoke-virtual {p0, v0}, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->setShortDescriptionTextSize(F)V

    .line 94
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/sec/android/vzwswlibrary/R$drawable;->header_ic_transparent:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->setHeaderIcon(Landroid/graphics/drawable/Drawable;)V

    .line 97
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/sec/android/vzwswlibrary/R$dimen;->vswl_title_area_bottom_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->setHeaderTitleBottomMargin(I)V

    const/16 v0, 0x8

    .line 99
    invoke-virtual {p0, v0}, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->setHeaderTextVisibility(I)V

    .line 100
    invoke-direct {p0}, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->setSystemUiVisibilityChangeListener()V

    .line 102
    sget v0, Lcom/sec/android/vzwswlibrary/R$id;->vswl_contents_area:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->mContentsArea:Landroid/widget/LinearLayout;

    .line 105
    iget-object p0, p0, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->mRootLayout:Lcom/google/android/setupdesign/GlifLayout;

    invoke-virtual {p0}, Lcom/google/android/setupdesign/GlifLayout;->getScrollView()Landroid/widget/ScrollView;

    move-result-object p0

    const/4 v0, 0x0

    .line 106
    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->setScrollIndicators(I)V

    return-void
.end method

.method private setSystemUiVisibilityChangeListener()V
    .locals 2

    .line 278
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 279
    new-instance v1, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity$1;

    invoke-direct {v1, p0}, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity$1;-><init>(Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;)V

    .line 280
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    return-void
.end method


# virtual methods
.method protected isOneUIVersion31()Z
    .locals 1

    .line 333
    iget-object p0, p0, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/sec/android/vzwswlibrary/util/Utils;->getOneUIVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "3.1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 46
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 49
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ActionBar;->hide()V

    .line 52
    :cond_0
    sget p1, Lcom/sec/android/vzwswlibrary/R$layout;->vswl_base_layout:I

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 53
    invoke-direct {p0}, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->initView()V

    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 59
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 64
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .line 80
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    return-void
.end method

.method public setContentView(I)V
    .locals 1

    .line 69
    sget v0, Lcom/sec/android/vzwswlibrary/R$id;->vswl_scroll_view:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 74
    :cond_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    return-void
.end method

.method protected setHeaderFontStyle()V
    .locals 1

    .line 179
    iget-object p0, p0, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->mRootLayout:Lcom/google/android/setupdesign/GlifLayout;

    invoke-virtual {p0}, Lcom/google/android/setupdesign/GlifLayout;->getHeaderTextView()Landroid/widget/TextView;

    move-result-object p0

    .line 180
    sget v0, Lcom/sec/android/vzwswlibrary/R$style;->vswl_header_text:I

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextAppearance(I)V

    return-void
.end method

.method protected setHeaderIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 308
    iget-object p0, p0, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->mRootLayout:Lcom/google/android/setupdesign/GlifLayout;

    invoke-virtual {p0, p1}, Lcom/google/android/setupdesign/GlifLayout;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected setHeaderTextVisibility(I)V
    .locals 0

    .line 174
    iget-object p0, p0, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->mRootLayout:Lcom/google/android/setupdesign/GlifLayout;

    invoke-virtual {p0}, Lcom/google/android/setupdesign/GlifLayout;->getHeaderTextView()Landroid/widget/TextView;

    move-result-object p0

    .line 175
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method protected setHeaderTitle(I)V
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->mRootLayout:Lcom/google/android/setupdesign/GlifLayout;

    invoke-virtual {v0, p1}, Lcom/google/android/setupdesign/GlifLayout;->setHeaderText(I)V

    const/4 p1, 0x0

    .line 144
    invoke-virtual {p0, p1}, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->setHeaderTextVisibility(I)V

    return-void
.end method

.method protected setHeaderTitleBottomMargin(I)V
    .locals 1

    .line 160
    iget-object p0, p0, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->mRootLayout:Lcom/google/android/setupdesign/GlifLayout;

    invoke-virtual {p0}, Lcom/google/android/setupdesign/GlifLayout;->getHeaderTextView()Landroid/widget/TextView;

    move-result-object p0

    .line 161
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 162
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 163
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected setMainActionButton(ILandroid/view/View$OnClickListener;)V
    .locals 2

    .line 220
    new-instance v0, Lcom/google/android/setupcompat/template/FooterButton$Builder;

    iget-object v1, p0, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;-><init>(Landroid/content/Context;)V

    .line 221
    invoke-virtual {v0, p1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setText(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object p1

    const/4 v0, 0x5

    .line 222
    invoke-virtual {p1, v0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setButtonType(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object p1

    .line 223
    invoke-virtual {p1, p2}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setListener(Landroid/view/View$OnClickListener;)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object p1

    .line 224
    invoke-virtual {p1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->build()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->mMainActionButton:Lcom/google/android/setupcompat/template/FooterButton;

    .line 225
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->setMainActionButtonVisibility(Ljava/lang/Boolean;)V

    .line 226
    iget-object p1, p0, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->mRootLayout:Lcom/google/android/setupdesign/GlifLayout;

    const-class p2, Lcom/google/android/setupcompat/template/FooterBarMixin;

    invoke-virtual {p1, p2}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object p1

    check-cast p1, Lcom/google/android/setupcompat/template/FooterBarMixin;

    .line 227
    iget-object p0, p0, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->mMainActionButton:Lcom/google/android/setupcompat/template/FooterButton;

    invoke-virtual {p1, p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->setPrimaryButton(Lcom/google/android/setupcompat/template/FooterButton;)V

    .line 228
    invoke-virtual {p1}, Lcom/google/android/setupcompat/template/FooterBarMixin;->getPrimaryButtonView()Landroid/widget/Button;

    move-result-object p0

    sget p1, Lcom/sec/android/vzwswlibrary/R$style;->footer_button_style:I

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setTextAppearance(I)V

    return-void
.end method

.method protected setMainActionButtonVisibility(Ljava/lang/Boolean;)V
    .locals 0

    .line 263
    iget-object p0, p0, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->mMainActionButton:Lcom/google/android/setupcompat/template/FooterButton;

    if-eqz p0, :cond_1

    .line 264
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/setupcompat/template/FooterButton;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method protected setManualSetupButton(ILandroid/view/View$OnClickListener;)V
    .locals 2

    .line 196
    new-instance v0, Lcom/google/android/setupcompat/template/FooterButton$Builder;

    iget-object v1, p0, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;-><init>(Landroid/content/Context;)V

    .line 197
    invoke-virtual {v0, p1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setText(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object p1

    const/4 v0, 0x0

    .line 198
    invoke-virtual {p1, v0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setButtonType(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object p1

    .line 199
    invoke-virtual {p1, p2}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setListener(Landroid/view/View$OnClickListener;)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object p1

    .line 200
    invoke-virtual {p1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->build()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->mManualSetupButton:Lcom/google/android/setupcompat/template/FooterButton;

    .line 201
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->setManualSetupButtonVisibility(Ljava/lang/Boolean;)V

    .line 202
    iget-object p1, p0, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->mRootLayout:Lcom/google/android/setupdesign/GlifLayout;

    const-class p2, Lcom/google/android/setupcompat/template/FooterBarMixin;

    invoke-virtual {p1, p2}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object p1

    check-cast p1, Lcom/google/android/setupcompat/template/FooterBarMixin;

    .line 203
    iget-object p0, p0, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->mManualSetupButton:Lcom/google/android/setupcompat/template/FooterButton;

    invoke-virtual {p1, p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->setSecondaryButton(Lcom/google/android/setupcompat/template/FooterButton;)V

    .line 204
    invoke-virtual {p1}, Lcom/google/android/setupcompat/template/FooterBarMixin;->getSecondaryButtonView()Landroid/widget/Button;

    move-result-object p0

    sget p1, Lcom/sec/android/vzwswlibrary/R$style;->footer_button_style:I

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setTextAppearance(I)V

    return-void
.end method

.method protected setManualSetupButtonVisibility(Ljava/lang/Boolean;)V
    .locals 0

    .line 214
    iget-object p0, p0, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->mManualSetupButton:Lcom/google/android/setupcompat/template/FooterButton;

    if-eqz p0, :cond_1

    .line 215
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/setupcompat/template/FooterButton;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method protected setShortDescriptionTextSize(F)V
    .locals 1

    .line 338
    iget-object p0, p0, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->mShortDescription:Landroid/widget/TextView;

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method

.method protected updateBottomPaddingOnSystemUiVisibilityChange(I)V
    .locals 2

    .line 289
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/sec/android/vzwswlibrary/R$dimen;->vswl_navigation_bar_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    and-int/lit8 p1, p1, 0x2

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 291
    iget-object p0, p0, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->mRootLayout:Lcom/google/android/setupdesign/GlifLayout;

    invoke-virtual {p0, v1, v1, v1, v1}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    goto :goto_0

    .line 293
    :cond_0
    iget-object p0, p0, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->mRootLayout:Lcom/google/android/setupdesign/GlifLayout;

    invoke-virtual {p0, v1, v1, v1, v0}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    :goto_0
    return-void
.end method
