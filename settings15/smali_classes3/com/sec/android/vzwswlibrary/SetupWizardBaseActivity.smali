.class public abstract Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mContentsArea:Landroid/widget/LinearLayout;

.field public mContext:Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;

.field public mMainActionButton:Lcom/google/android/setupcompat/template/FooterButton;

.field public mManualSetupButton:Lcom/google/android/setupcompat/template/FooterButton;

.field public mRootLayout:Lcom/google/android/setupdesign/GlifLayout;


# virtual methods
.method public final initView$7()V
    .locals 2

    const v0, 0x7f0a1137

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/setupdesign/GlifLayout;

    iput-object v0, p0, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->mRootLayout:Lcom/google/android/setupdesign/GlifLayout;

    const v0, 0x7f0a0f5f

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080303

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->mRootLayout:Lcom/google/android/setupdesign/GlifLayout;

    invoke-virtual {v1, v0}, Lcom/google/android/setupdesign/GlifLayout;->setIcon(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->mRootLayout:Lcom/google/android/setupdesign/GlifLayout;

    invoke-virtual {v0}, Lcom/google/android/setupdesign/GlifLayout;->getHeaderTextView()Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity$1;

    invoke-direct {v1, p0}, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity$1;-><init>(Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    const v0, 0x7f0a1136

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->mContentsArea:Landroid/widget/LinearLayout;

    iget-object p0, p0, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->mRootLayout:Lcom/google/android/setupdesign/GlifLayout;

    invoke-virtual {p0}, Lcom/google/android/setupdesign/GlifLayout;->getScrollView()Landroid/widget/ScrollView;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->setScrollIndicators(I)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ActionBar;->hide()V

    :cond_0
    const p1, 0x7f0d0c0d

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->initView$7()V

    return-void
.end method

.method public final setContentView(I)V
    .locals 1

    const v0, 0x7f0d0c0d

    invoke-super {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->initView$7()V

    const v0, 0x7f0a1139

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    return-void
.end method

.method public final setMainActionButtonVisibility(Ljava/lang/Boolean;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->mMainActionButton:Lcom/google/android/setupcompat/template/FooterButton;

    if-eqz p0, :cond_1

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

.method public final setManualSetupButtonVisibility(Ljava/lang/Boolean;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->mManualSetupButton:Lcom/google/android/setupcompat/template/FooterButton;

    if-eqz p0, :cond_1

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
