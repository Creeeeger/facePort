.class public final Lcom/android/settings/remoteauth/introduction/RemoteAuthEnrollIntroduction$initializeRequireScrollMixin$2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/google/android/setupdesign/template/RequireScrollMixin$OnRequireScrollStateChangedListener;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/remoteauth/introduction/RemoteAuthEnrollIntroduction;


# direct methods
.method public constructor <init>(Lcom/android/settings/remoteauth/introduction/RemoteAuthEnrollIntroduction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/remoteauth/introduction/RemoteAuthEnrollIntroduction$initializeRequireScrollMixin$2;->this$0:Lcom/android/settings/remoteauth/introduction/RemoteAuthEnrollIntroduction;

    return-void
.end method


# virtual methods
.method public final onRequireScrollStateChanged(Z)V
    .locals 2

    iget-object p0, p0, Lcom/android/settings/remoteauth/introduction/RemoteAuthEnrollIntroduction$initializeRequireScrollMixin$2;->this$0:Lcom/android/settings/remoteauth/introduction/RemoteAuthEnrollIntroduction;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/remoteauth/RemoteAuthEnrollBase;->getPrimaryFooterButton()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x7f142a3f

    invoke-virtual {p1, p0, v0}, Lcom/google/android/setupcompat/template/FooterButton;->setText(Landroid/content/Context;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/remoteauth/RemoteAuthEnrollBase;->getPrimaryFooterButton()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f142a36

    invoke-virtual {p1, v0, v1}, Lcom/google/android/setupcompat/template/FooterButton;->setText(Landroid/content/Context;I)V

    iget-object p0, p0, Lcom/android/settings/remoteauth/RemoteAuthEnrollBase;->secondaryFooterButton$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/setupcompat/template/FooterButton;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/setupcompat/template/FooterButton;->setVisibility(I)V

    :goto_0
    return-void
.end method
