.class public final Lcom/android/settings/remoteauth/finish/RemoteAuthEnrollFinish;
.super Lcom/android/settings/remoteauth/RemoteAuthEnrollBase;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/android/settings/remoteauth/finish/RemoteAuthEnrollFinish;",
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


# direct methods
.method public constructor <init>()V
    .locals 1

    const v0, 0x7f0d05c9

    invoke-direct {p0, v0}, Lcom/android/settings/remoteauth/RemoteAuthEnrollBase;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final initializePrimaryFooterButton()Lcom/google/android/setupcompat/template/FooterButton;
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f142a33

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/android/settings/remoteauth/finish/RemoteAuthEnrollFinish$initializePrimaryFooterButton$1;

    invoke-direct {v1, p0}, Lcom/android/settings/remoteauth/finish/RemoteAuthEnrollFinish$initializePrimaryFooterButton$1;-><init>(Lcom/android/settings/remoteauth/finish/RemoteAuthEnrollFinish;)V

    new-instance p0, Lcom/google/android/setupcompat/template/FooterButton;

    const/4 v2, 0x5

    const v3, 0x7f15045d

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/setupcompat/template/FooterButton;-><init>(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;II)V

    return-object p0
.end method

.method public final initializeSecondaryFooterButton()Lcom/google/android/setupcompat/template/FooterButton;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    const-string p2, "view"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    const p2, 0x7f0a05bf

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-static {p0, p1}, Lcom/android/settingslib/widget/LottieColorUtils;->applyDynamicColors(Landroid/content/Context;Lcom/airbnb/lottie/LottieAnimationView;)V

    return-void
.end method
