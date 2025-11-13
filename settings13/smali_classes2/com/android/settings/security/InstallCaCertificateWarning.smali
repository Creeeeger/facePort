.class public Lcom/android/settings/security/InstallCaCertificateWarning;
.super Landroid/app/Activity;
.source "InstallCaCertificateWarning.java"


# instance fields
.field private mFooterButtonContainer:Landroid/widget/LinearLayout;

.field private mFooterButtonNegative:Landroid/widget/Button;

.field private mFooterButtonPositive:Landroid/widget/Button;

.field private mFooterButtonViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$uM6MGAsdF_dk3JXGEMCQPYqJBH0(Lcom/android/settings/security/InstallCaCertificateWarning;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/security/InstallCaCertificateWarning;->lambda$returnToInstallCertificateFromStorage$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wDMkfIz9WL3ID66z2BfcJQDEoJU(Lcom/android/settings/security/InstallCaCertificateWarning;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/security/InstallCaCertificateWarning;->lambda$installCaCertificate$0(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$morderingFooterButton(Lcom/android/settings/security/InstallCaCertificateWarning;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/security/InstallCaCertificateWarning;->orderingFooterButton()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private installCaCertificate()Landroid/view/View$OnClickListener;
    .locals 1

    .line 149
    new-instance v0, Lcom/android/settings/security/InstallCaCertificateWarning$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settings/security/InstallCaCertificateWarning$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/security/InstallCaCertificateWarning;)V

    return-object v0
.end method

.method private synthetic lambda$installCaCertificate$0(Landroid/view/View;)V
    .locals 2

    .line 150
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "android.credentials.INSTALL"

    .line 151
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "certificate_install_usage"

    const-string v1, "ca"

    .line 152
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 153
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 154
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private synthetic lambda$returnToInstallCertificateFromStorage$1(Landroid/view/View;)V
    .locals 1

    .line 160
    sget p1, Lcom/android/settings/R$string;->cert_not_installed:I

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 161
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private orderingFooterButton()V
    .locals 4

    .line 127
    iget-object v0, p0, Lcom/android/settings/security/InstallCaCertificateWarning;->mFooterButtonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 128
    iget-object v0, p0, Lcom/android/settings/security/InstallCaCertificateWarning;->mFooterButtonPositive:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getMeasuredWidth()I

    move-result v0

    .line 129
    iget-object v1, p0, Lcom/android/settings/security/InstallCaCertificateWarning;->mFooterButtonNegative:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getMeasuredWidth()I

    move-result v1

    .line 130
    iget-object v2, p0, Lcom/android/settings/security/InstallCaCertificateWarning;->mFooterButtonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v0, v1

    if-le v0, v2, :cond_1

    .line 134
    iget-object v0, p0, Lcom/android/settings/security/InstallCaCertificateWarning;->mFooterButtonViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_0

    .line 135
    iget-object v2, p0, Lcom/android/settings/security/InstallCaCertificateWarning;->mFooterButtonContainer:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/settings/security/InstallCaCertificateWarning;->mFooterButtonViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/android/settings/security/InstallCaCertificateWarning;->mFooterButtonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    move v1, v0

    .line 139
    :goto_1
    iget-object v2, p0, Lcom/android/settings/security/InstallCaCertificateWarning;->mFooterButtonViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 140
    iget-object v2, p0, Lcom/android/settings/security/InstallCaCertificateWarning;->mFooterButtonContainer:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/settings/security/InstallCaCertificateWarning;->mFooterButtonViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 142
    :cond_2
    iget-object v1, p0, Lcom/android/settings/security/InstallCaCertificateWarning;->mFooterButtonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 144
    :goto_2
    iget-object p0, p0, Lcom/android/settings/security/InstallCaCertificateWarning;->mFooterButtonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method private returnToInstallCertificateFromStorage()Landroid/view/View$OnClickListener;
    .locals 1

    .line 159
    new-instance v0, Lcom/android/settings/security/InstallCaCertificateWarning$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/settings/security/InstallCaCertificateWarning$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/security/InstallCaCertificateWarning;)V

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 57
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    sget p1, Lcom/android/settings/R$layout;->sec_ca_certificate_warning_dialog:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 61
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, 0x80000

    invoke-virtual {p1, v0}, Landroid/view/Window;->addSystemFlags(I)V

    .line 63
    sget p1, Lcom/android/settings/R$id;->setup_wizard_layout:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 65
    sget v0, Lcom/android/settings/R$id;->button_container:I

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/settings/security/InstallCaCertificateWarning;->mFooterButtonContainer:Landroid/widget/LinearLayout;

    .line 66
    sget v0, Lcom/android/settings/R$id;->button_positive:I

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/security/InstallCaCertificateWarning;->mFooterButtonPositive:Landroid/widget/Button;

    .line 67
    invoke-direct {p0}, Lcom/android/settings/security/InstallCaCertificateWarning;->installCaCertificate()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    iget-object v0, p0, Lcom/android/settings/security/InstallCaCertificateWarning;->mFooterButtonPositive:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setFilterTouchesWhenObscured(Z)V

    .line 70
    sget v0, Lcom/android/settings/R$id;->button_negative:I

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/security/InstallCaCertificateWarning;->mFooterButtonNegative:Landroid/widget/Button;

    .line 71
    invoke-direct {p0}, Lcom/android/settings/security/InstallCaCertificateWarning;->returnToInstallCertificateFromStorage()Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    iget-object v0, p0, Lcom/android/settings/security/InstallCaCertificateWarning;->mFooterButtonNegative:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setFilterTouchesWhenObscured(Z)V

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/security/InstallCaCertificateWarning;->mFooterButtonViews:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 75
    :goto_0
    iget-object v1, p0, Lcom/android/settings/security/InstallCaCertificateWarning;->mFooterButtonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 76
    iget-object v1, p0, Lcom/android/settings/security/InstallCaCertificateWarning;->mFooterButtonViews:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/settings/security/InstallCaCertificateWarning;->mFooterButtonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 79
    :cond_0
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/android/settings/security/InstallCaCertificateWarning$1;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/security/InstallCaCertificateWarning$1;-><init>(Lcom/android/settings/security/InstallCaCertificateWarning;Landroid/widget/LinearLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 122
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 123
    invoke-direct {p0}, Lcom/android/settings/security/InstallCaCertificateWarning;->orderingFooterButton()V

    return-void
.end method
