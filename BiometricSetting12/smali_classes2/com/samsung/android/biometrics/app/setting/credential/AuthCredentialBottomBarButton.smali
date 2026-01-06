.class public Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialBottomBarButton;
.super Landroidx/appcompat/widget/AppCompatButton;
.source "AuthCredentialBottomBarButton.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialBottomBarButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010048

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialBottomBarButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialBottomBarButton;->isEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialBottomBarButton;->setEnabled(Z)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialBottomBarButton;->semSetButtonShapeEnabled(Z)V

    return-void
.end method


# virtual methods
.method public setEnabled(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;->setEnabled(Z)V

    if-eqz p1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const v0, 0x3ecccccd    # 0.4f

    :goto_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialBottomBarButton;->setAlpha(F)V

    return-void
.end method
