.class public final Lcom/android/settingslib/NetworkPolicyEditor$1;
.super Landroid/os/AsyncTask;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/android/settingslib/NetworkPolicyEditor;

.field public final synthetic val$policies:[Landroid/net/NetworkPolicy;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/NetworkPolicyEditor;[Landroid/net/NetworkPolicy;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingslib/NetworkPolicyEditor$1;->this$0:Lcom/android/settingslib/NetworkPolicyEditor;

    iput-object p2, p0, Lcom/android/settingslib/NetworkPolicyEditor$1;->val$policies:[Landroid/net/NetworkPolicy;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    iget-object p1, p0, Lcom/android/settingslib/NetworkPolicyEditor$1;->this$0:Lcom/android/settingslib/NetworkPolicyEditor;

    iget-object p0, p0, Lcom/android/settingslib/NetworkPolicyEditor$1;->val$policies:[Landroid/net/NetworkPolicy;

    iget-object p1, p1, Lcom/android/settingslib/NetworkPolicyEditor;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {p1, p0}, Landroid/net/NetworkPolicyManager;->setNetworkPolicies([Landroid/net/NetworkPolicy;)V

    const/4 p0, 0x0

    return-object p0
.end method
