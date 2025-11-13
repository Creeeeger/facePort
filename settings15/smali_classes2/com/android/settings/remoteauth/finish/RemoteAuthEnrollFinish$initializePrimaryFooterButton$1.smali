.class public final synthetic Lcom/android/settings/remoteauth/finish/RemoteAuthEnrollFinish$initializePrimaryFooterButton$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $tmp0:Lcom/android/settings/remoteauth/finish/RemoteAuthEnrollFinish;


# direct methods
.method public constructor <init>(Lcom/android/settings/remoteauth/finish/RemoteAuthEnrollFinish;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/remoteauth/finish/RemoteAuthEnrollFinish$initializePrimaryFooterButton$1;->$tmp0:Lcom/android/settings/remoteauth/finish/RemoteAuthEnrollFinish;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/settings/remoteauth/finish/RemoteAuthEnrollFinish$initializePrimaryFooterButton$1;->$tmp0:Lcom/android/settings/remoteauth/finish/RemoteAuthEnrollFinish;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Landroidx/navigation/fragment/NavHostFragment$Companion;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object p0

    const p1, 0x7f0a0081

    invoke-virtual {p0, p1}, Landroidx/navigation/NavController;->navigate(I)V

    return-void
.end method
