.class public final synthetic Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter$$ExternalSyntheticLambda3;->f$0:Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter$$ExternalSyntheticLambda3;->f$0:Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;

    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;->this$0:Lcom/android/settings/TrustedCredentialsFragment;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/TrustedCredentialsFragment$CertHolder;

    iput-object v1, v0, Lcom/android/settings/TrustedCredentialsFragment;->mSelectedCertHolder:Lcom/android/settings/TrustedCredentialsFragment$CertHolder;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;->this$0:Lcom/android/settings/TrustedCredentialsFragment;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/TrustedCredentialsFragment$CertHolder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/settings/TrustedCredentialsFragment$AliasOperation;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/TrustedCredentialsFragment$AliasOperation;-><init>(Lcom/android/settings/TrustedCredentialsFragment;Lcom/android/settings/TrustedCredentialsFragment$CertHolder;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
