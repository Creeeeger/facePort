.class public final synthetic Lcom/android/settings/TrustedCredentialsFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/TrustedCredentialsFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/TrustedCredentialsFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/TrustedCredentialsFragment$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/TrustedCredentialsFragment;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsFragment$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/TrustedCredentialsFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "ARG_SHOW_NEW_FOR_USER"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    const/16 p1, -0x2710

    iput p1, p0, Lcom/android/settings/TrustedCredentialsFragment;->mTrustAllCaUserId:I

    return-void
.end method
