.class public final Lcom/android/settings/connecteddevice/threadnetwork/ThreadNetworkFragmentController$newStateCallback$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/net/thread/ThreadNetworkController$StateCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/connecteddevice/threadnetwork/ThreadNetworkFragmentController;


# direct methods
.method public constructor <init>(Lcom/android/settings/connecteddevice/threadnetwork/ThreadNetworkFragmentController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/connecteddevice/threadnetwork/ThreadNetworkFragmentController$newStateCallback$1;->this$0:Lcom/android/settings/connecteddevice/threadnetwork/ThreadNetworkFragmentController;

    return-void
.end method


# virtual methods
.method public final onDeviceRoleChanged(I)V
    .locals 0

    return-void
.end method

.method public final onThreadEnableStateChanged(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/connecteddevice/threadnetwork/ThreadNetworkFragmentController$newStateCallback$1;->this$0:Lcom/android/settings/connecteddevice/threadnetwork/ThreadNetworkFragmentController;

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Lcom/android/settings/connecteddevice/threadnetwork/ThreadNetworkFragmentController;->access$setThreadEnabled$p(Lcom/android/settings/connecteddevice/threadnetwork/ThreadNetworkFragmentController;Z)V

    iget-object p1, p0, Lcom/android/settings/connecteddevice/threadnetwork/ThreadNetworkFragmentController$newStateCallback$1;->this$0:Lcom/android/settings/connecteddevice/threadnetwork/ThreadNetworkFragmentController;

    invoke-static {p1}, Lcom/android/settings/connecteddevice/threadnetwork/ThreadNetworkFragmentController;->access$getPreference$p(Lcom/android/settings/connecteddevice/threadnetwork/ThreadNetworkFragmentController;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/settings/connecteddevice/threadnetwork/ThreadNetworkFragmentController$newStateCallback$1;->this$0:Lcom/android/settings/connecteddevice/threadnetwork/ThreadNetworkFragmentController;

    invoke-static {p0, p1}, Lcom/android/settings/connecteddevice/threadnetwork/ThreadNetworkFragmentController;->access$refreshSummary(Lcom/android/settings/connecteddevice/threadnetwork/ThreadNetworkFragmentController;Landroidx/preference/Preference;)V

    :cond_1
    return-void
.end method
