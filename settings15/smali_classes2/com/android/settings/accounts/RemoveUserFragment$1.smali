.class public final Lcom/android/settings/accounts/RemoveUserFragment$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/accounts/RemoveUserFragment;

.field public final synthetic val$userId:I


# direct methods
.method public constructor <init>(Lcom/android/settings/accounts/RemoveUserFragment;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/accounts/RemoveUserFragment$1;->this$0:Lcom/android/settings/accounts/RemoveUserFragment;

    iput p2, p0, Lcom/android/settings/accounts/RemoveUserFragment$1;->val$userId:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/android/settings/accounts/RemoveUserFragment$1;->this$0:Lcom/android/settings/accounts/RemoveUserFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string p2, "user"

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iget p0, p0, Lcom/android/settings/accounts/RemoveUserFragment$1;->val$userId:I

    invoke-virtual {p1, p0}, Landroid/os/UserManager;->removeUser(I)Z

    return-void
.end method
