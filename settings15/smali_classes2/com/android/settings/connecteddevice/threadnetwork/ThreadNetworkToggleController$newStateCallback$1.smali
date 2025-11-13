.class public final Lcom/android/settings/connecteddevice/threadnetwork/ThreadNetworkToggleController$newStateCallback$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/net/thread/ThreadNetworkController$StateCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/connecteddevice/threadnetwork/ThreadNetworkToggleController;


# direct methods
.method public constructor <init>(Lcom/android/settings/connecteddevice/threadnetwork/ThreadNetworkToggleController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/connecteddevice/threadnetwork/ThreadNetworkToggleController$newStateCallback$1;->this$0:Lcom/android/settings/connecteddevice/threadnetwork/ThreadNetworkToggleController;

    return-void
.end method


# virtual methods
.method public final onDeviceRoleChanged(I)V
    .locals 0

    return-void
.end method

.method public final onThreadEnableStateChanged(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/connecteddevice/threadnetwork/ThreadNetworkToggleController$newStateCallback$1;->this$0:Lcom/android/settings/connecteddevice/threadnetwork/ThreadNetworkToggleController;

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Lcom/android/settings/connecteddevice/threadnetwork/ThreadNetworkToggleController;->access$setThreadEnabled$p(Lcom/android/settings/connecteddevice/threadnetwork/ThreadNetworkToggleController;Z)V

    iget-object p1, p0, Lcom/android/settings/connecteddevice/threadnetwork/ThreadNetworkToggleController$newStateCallback$1;->this$0:Lcom/android/settings/connecteddevice/threadnetwork/ThreadNetworkToggleController;

    invoke-static {p1}, Lcom/android/settings/connecteddevice/threadnetwork/ThreadNetworkToggleController;->access$getPreference$p(Lcom/android/settings/connecteddevice/threadnetwork/ThreadNetworkToggleController;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/settings/connecteddevice/threadnetwork/ThreadNetworkToggleController$newStateCallback$1;->this$0:Lcom/android/settings/connecteddevice/threadnetwork/ThreadNetworkToggleController;

    invoke-virtual {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->updateState(Landroidx/preference/Preference;)V

    :cond_1
    return-void
.end method
