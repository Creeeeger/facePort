.class public final Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;

.field public final synthetic val$certHolder:Lcom/android/settings/TrustedCredentialsFragment$CertHolder;


# direct methods
.method public constructor <init>(Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;Lcom/android/settings/TrustedCredentialsFragment$CertHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler$1;->this$0:Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;

    iput-object p2, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler$1;->val$certHolder:Lcom/android/settings/TrustedCredentialsFragment$CertHolder;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p1, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler$1;->this$0:Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;

    iget-object p1, p1, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mDelegate:Lcom/android/settings/TrustedCredentialsDialogBuilder$DelegateInterface;

    iget-object p2, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler$1;->val$certHolder:Lcom/android/settings/TrustedCredentialsFragment$CertHolder;

    check-cast p1, Lcom/android/settings/TrustedCredentialsFragment;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/settings/TrustedCredentialsFragment$AliasOperation;

    invoke-direct {v0, p1, p2}, Lcom/android/settings/TrustedCredentialsFragment$AliasOperation;-><init>(Lcom/android/settings/TrustedCredentialsFragment;Lcom/android/settings/TrustedCredentialsFragment$CertHolder;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler$1;->this$0:Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;

    invoke-virtual {p0}, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->nextOrDismiss()V

    return-void
.end method
