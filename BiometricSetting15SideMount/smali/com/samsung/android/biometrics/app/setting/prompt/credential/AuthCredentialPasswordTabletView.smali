.class public Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPasswordTabletView;
.super Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPasswordView;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPasswordView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final setDescriptionMargins()V
    .locals 0

    .line 1
    return-void
.end method

.method public final showMoreOptionButton()V
    .locals 1

    .line 1
    const v0, 0x7f0a0093

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Landroid/widget/TextView;

    .line 9
    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public final updateScrollView()V
    .locals 0

    .line 1
    return-void
.end method
