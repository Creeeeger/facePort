.class public Lcom/android/settings/security/InstallCaCertificateWarning;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mContentView:Landroid/view/View;

.field public mContext:Landroid/content/Context;

.field public mFooterButtonContainer:Landroid/widget/LinearLayout;

.field public mFooterButtonNegative:Landroid/widget/Button;

.field public mFooterButtonPositive:Landroid/widget/Button;

.field public mFooterButtonViews:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final getMetricsCategory()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final onAttach(Landroid/app/Activity;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/app/Activity;)V

    const-string p0, "InstallCaCertificateWarning"

    const-string v0, "onAttach, setTitle"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const p0, 0x7f140889

    invoke-virtual {p1, p0}, Landroid/app/Activity;->setTitle(I)V

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const p2, 0x7f0d0855

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/security/InstallCaCertificateWarning;->mContentView:Landroid/view/View;

    const-string p1, "InstallCaCertificateWarning"

    const-string p2, "onCreateView"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/security/InstallCaCertificateWarning;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 p2, 0x80000

    invoke-virtual {p1, p2}, Landroid/view/Window;->addSystemFlags(I)V

    iget-object p1, p0, Lcom/android/settings/security/InstallCaCertificateWarning;->mContentView:Landroid/view/View;

    const p2, 0x7f0a0e24

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iget-object p2, p0, Lcom/android/settings/security/InstallCaCertificateWarning;->mContentView:Landroid/view/View;

    const p3, 0x7f0a029e

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/android/settings/security/InstallCaCertificateWarning;->mFooterButtonContainer:Landroid/widget/LinearLayout;

    iget-object p2, p0, Lcom/android/settings/security/InstallCaCertificateWarning;->mContentView:Landroid/view/View;

    const p3, 0x7f0a02b2

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/android/settings/security/InstallCaCertificateWarning;->mFooterButtonPositive:Landroid/widget/Button;

    new-instance p3, Lcom/android/settings/security/InstallCaCertificateWarning$$ExternalSyntheticLambda0;

    const/4 v0, 0x1

    invoke-direct {p3, p0, v0}, Lcom/android/settings/security/InstallCaCertificateWarning$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/security/InstallCaCertificateWarning;I)V

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lcom/android/settings/security/InstallCaCertificateWarning;->mFooterButtonPositive:Landroid/widget/Button;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setFilterTouchesWhenObscured(Z)V

    iget-object p2, p0, Lcom/android/settings/security/InstallCaCertificateWarning;->mContentView:Landroid/view/View;

    const v0, 0x7f0a02ac

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/android/settings/security/InstallCaCertificateWarning;->mFooterButtonNegative:Landroid/widget/Button;

    new-instance v0, Lcom/android/settings/security/InstallCaCertificateWarning$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/security/InstallCaCertificateWarning$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/security/InstallCaCertificateWarning;I)V

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lcom/android/settings/security/InstallCaCertificateWarning;->mFooterButtonNegative:Landroid/widget/Button;

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setFilterTouchesWhenObscured(Z)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/settings/security/InstallCaCertificateWarning;->mFooterButtonViews:Ljava/util/ArrayList;

    const/4 p2, 0x0

    :goto_0
    iget-object p3, p0, Lcom/android/settings/security/InstallCaCertificateWarning;->mFooterButtonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p3

    if-ge p2, p3, :cond_0

    iget-object p3, p0, Lcom/android/settings/security/InstallCaCertificateWarning;->mFooterButtonViews:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/settings/security/InstallCaCertificateWarning;->mFooterButtonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p2

    new-instance p3, Lcom/android/settings/security/InstallCaCertificateWarning$1;

    invoke-direct {p3, p0, p1}, Lcom/android/settings/security/InstallCaCertificateWarning$1;-><init>(Lcom/android/settings/security/InstallCaCertificateWarning;Landroid/widget/LinearLayout;)V

    invoke-virtual {p2, p3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object p0, p0, Lcom/android/settings/security/InstallCaCertificateWarning;->mContentView:Landroid/view/View;

    return-object p0
.end method

.method public final onResume()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    const-string v0, "InstallCaCertificateWarning"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/security/InstallCaCertificateWarning;->orderingFooterButton()V

    return-void
.end method

.method public final orderingFooterButton()V
    .locals 6

    iget-object v0, p0, Lcom/android/settings/security/InstallCaCertificateWarning;->mFooterButtonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/android/settings/security/InstallCaCertificateWarning;->mFooterButtonPositive:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/security/InstallCaCertificateWarning;->mFooterButtonNegative:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/security/InstallCaCertificateWarning;->mFooterButtonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/settings/security/InstallCaCertificateWarning;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0709f4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iget-object v4, p0, Lcom/android/settings/security/InstallCaCertificateWarning;->mFooterButtonPositive:Landroid/widget/Button;

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5, v3, v5}, Landroid/widget/Button;->setPadding(IIII)V

    iget-object v4, p0, Lcom/android/settings/security/InstallCaCertificateWarning;->mFooterButtonNegative:Landroid/widget/Button;

    invoke-virtual {v4, v3, v5, v3, v5}, Landroid/widget/Button;->setPadding(IIII)V

    add-int/2addr v0, v1

    if-le v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/settings/security/InstallCaCertificateWarning;->mFooterButtonViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v2, p0, Lcom/android/settings/security/InstallCaCertificateWarning;->mFooterButtonContainer:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/settings/security/InstallCaCertificateWarning;->mFooterButtonViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/security/InstallCaCertificateWarning;->mFooterButtonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    goto :goto_2

    :cond_1
    move v0, v5

    :goto_1
    iget-object v1, p0, Lcom/android/settings/security/InstallCaCertificateWarning;->mFooterButtonViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/security/InstallCaCertificateWarning;->mFooterButtonContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/settings/security/InstallCaCertificateWarning;->mFooterButtonViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/settings/security/InstallCaCertificateWarning;->mFooterButtonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    :goto_2
    iget-object p0, p0, Lcom/android/settings/security/InstallCaCertificateWarning;->mFooterButtonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method
