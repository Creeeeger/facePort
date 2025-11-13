.class public abstract Lcom/android/settings/remoteauth/RemoteAuthEnrollBase;
.super Landroidx/fragment/app/Fragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\'\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "Lcom/android/settings/remoteauth/RemoteAuthEnrollBase;",
        "Landroidx/fragment/app/Fragment;",
        "applications__sources__apps__SecSettings__android_common__SecSettings-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public final glifLayoutId:I

.field public final primaryFooterButton$delegate:Lkotlin/Lazy;

.field public final secondaryFooterButton$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/fragment/app/Fragment;-><init>(I)V

    const p1, 0x7f0a0e24

    iput p1, p0, Lcom/android/settings/remoteauth/RemoteAuthEnrollBase;->glifLayoutId:I

    new-instance p1, Lcom/android/settings/remoteauth/RemoteAuthEnrollBase$primaryFooterButton$2;

    invoke-direct {p1, p0}, Lcom/android/settings/remoteauth/RemoteAuthEnrollBase$primaryFooterButton$2;-><init>(Lcom/android/settings/remoteauth/RemoteAuthEnrollBase;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/remoteauth/RemoteAuthEnrollBase;->primaryFooterButton$delegate:Lkotlin/Lazy;

    new-instance p1, Lcom/android/settings/remoteauth/RemoteAuthEnrollBase$secondaryFooterButton$2;

    invoke-direct {p1, p0}, Lcom/android/settings/remoteauth/RemoteAuthEnrollBase$secondaryFooterButton$2;-><init>(Lcom/android/settings/remoteauth/RemoteAuthEnrollBase;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/remoteauth/RemoteAuthEnrollBase;->secondaryFooterButton$delegate:Lkotlin/Lazy;

    return-void
.end method


# virtual methods
.method public final getPrimaryFooterButton()Lcom/google/android/setupcompat/template/FooterButton;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/remoteauth/RemoteAuthEnrollBase;->primaryFooterButton$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/setupcompat/template/FooterButton;

    return-object p0
.end method

.method public abstract initializePrimaryFooterButton()Lcom/google/android/setupcompat/template/FooterButton;
.end method

.method public abstract initializeSecondaryFooterButton()Lcom/google/android/setupcompat/template/FooterButton;
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget p2, p0, Lcom/android/settings/remoteauth/RemoteAuthEnrollBase;->glifLayoutId:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/setupdesign/GlifLayout;

    if-eqz p2, :cond_2

    const-class p3, Lcom/google/android/setupcompat/template/FooterBarMixin;

    invoke-virtual {p2, p3}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object p2

    check-cast p2, Lcom/google/android/setupcompat/template/FooterBarMixin;

    invoke-virtual {p0}, Lcom/android/settings/remoteauth/RemoteAuthEnrollBase;->getPrimaryFooterButton()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/google/android/setupcompat/template/FooterBarMixin;->setPrimaryButton(Lcom/google/android/setupcompat/template/FooterButton;)V

    iget-object p3, p0, Lcom/android/settings/remoteauth/RemoteAuthEnrollBase;->secondaryFooterButton$delegate:Lkotlin/Lazy;

    invoke-interface {p3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/setupcompat/template/FooterButton;

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    invoke-virtual {p2, p3, v0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->setSecondaryButton(Lcom/google/android/setupcompat/template/FooterButton;Z)V

    :cond_0
    invoke-virtual {p2}, Lcom/google/android/setupcompat/template/FooterBarMixin;->getButtonContainer()Landroid/widget/LinearLayout;

    move-result-object p2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const p3, 0x1010054

    invoke-static {p0, p3}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    :cond_1
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    return-object p1

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Required value was null."

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
