.class public final Lcom/android/settings/remoteauth/introduction/RemoteAuthEnrollIntroduction;
.super Lcom/android/settings/remoteauth/RemoteAuthEnrollBase;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/android/settings/remoteauth/introduction/RemoteAuthEnrollIntroduction;",
        "Lcom/android/settings/remoteauth/RemoteAuthEnrollBase;",
        "<init>",
        "()V",
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
.field public final navController$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .locals 1

    const v0, 0x7f0d05ca

    invoke-direct {p0, v0}, Lcom/android/settings/remoteauth/RemoteAuthEnrollBase;-><init>(I)V

    new-instance v0, Lcom/android/settings/remoteauth/introduction/RemoteAuthEnrollIntroduction$navController$2;

    invoke-direct {v0, p0}, Lcom/android/settings/remoteauth/introduction/RemoteAuthEnrollIntroduction$navController$2;-><init>(Lcom/android/settings/remoteauth/introduction/RemoteAuthEnrollIntroduction;)V

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/remoteauth/introduction/RemoteAuthEnrollIntroduction;->navController$delegate:Lkotlin/Lazy;

    return-void
.end method


# virtual methods
.method public final initializePrimaryFooterButton()Lcom/google/android/setupcompat/template/FooterButton;
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const v1, 0x7f142a36

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/android/settings/remoteauth/introduction/RemoteAuthEnrollIntroduction$initializeRequireScrollMixin$1;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/settings/remoteauth/introduction/RemoteAuthEnrollIntroduction$initializeRequireScrollMixin$1;-><init>(Lcom/android/settings/remoteauth/introduction/RemoteAuthEnrollIntroduction;I)V

    new-instance p0, Lcom/google/android/setupcompat/template/FooterButton;

    const/4 v2, 0x6

    const v3, 0x7f15045d

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/setupcompat/template/FooterButton;-><init>(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;II)V

    return-object p0
.end method

.method public final initializeSecondaryFooterButton()Lcom/google/android/setupcompat/template/FooterButton;
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const v1, 0x7f142a39

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/android/settings/remoteauth/introduction/RemoteAuthEnrollIntroduction$initializeRequireScrollMixin$1;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/android/settings/remoteauth/introduction/RemoteAuthEnrollIntroduction$initializeRequireScrollMixin$1;-><init>(Lcom/android/settings/remoteauth/introduction/RemoteAuthEnrollIntroduction;I)V

    new-instance p0, Lcom/google/android/setupcompat/template/FooterButton;

    const/4 v2, 0x5

    const v3, 0x7f15045d

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/setupcompat/template/FooterButton;-><init>(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;II)V

    return-object p0
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/remoteauth/RemoteAuthEnrollBase;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    iget p2, p0, Lcom/android/settings/remoteauth/RemoteAuthEnrollBase;->glifLayoutId:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/setupdesign/GlifLayout;

    if-eqz p2, :cond_1

    iget-object p3, p0, Lcom/android/settings/remoteauth/RemoteAuthEnrollBase;->secondaryFooterButton$delegate:Lkotlin/Lazy;

    invoke-interface {p3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/setupcompat/template/FooterButton;

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p3, v0}, Lcom/google/android/setupcompat/template/FooterButton;->setVisibility(I)V

    :goto_0
    const-class p3, Lcom/google/android/setupdesign/template/RequireScrollMixin;

    invoke-virtual {p2, p3}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object p2

    check-cast p2, Lcom/google/android/setupdesign/template/RequireScrollMixin;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p0}, Lcom/android/settings/remoteauth/RemoteAuthEnrollBase;->getPrimaryFooterButton()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object v0

    new-instance v1, Lcom/android/settings/remoteauth/introduction/RemoteAuthEnrollIntroduction$initializeRequireScrollMixin$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings/remoteauth/introduction/RemoteAuthEnrollIntroduction$initializeRequireScrollMixin$1;-><init>(Lcom/android/settings/remoteauth/introduction/RemoteAuthEnrollIntroduction;I)V

    const v2, 0x7f142a3f

    invoke-virtual {p2, p3, v0, v2, v1}, Lcom/google/android/setupdesign/template/RequireScrollMixin;->requireScrollWithButton(Landroid/content/Context;Lcom/google/android/setupcompat/template/FooterButton;ILandroid/view/View$OnClickListener;)V

    new-instance p3, Lcom/android/settings/remoteauth/introduction/RemoteAuthEnrollIntroduction$initializeRequireScrollMixin$2;

    invoke-direct {p3, p0}, Lcom/android/settings/remoteauth/introduction/RemoteAuthEnrollIntroduction$initializeRequireScrollMixin$2;-><init>(Lcom/android/settings/remoteauth/introduction/RemoteAuthEnrollIntroduction;)V

    iput-object p3, p2, Lcom/google/android/setupdesign/template/RequireScrollMixin;->listener:Lcom/google/android/setupdesign/template/RequireScrollMixin$OnRequireScrollStateChangedListener;

    return-object p1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Required value was null."

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
