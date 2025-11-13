.class public final Lcom/android/settings/datausage/DataSaverBackend$1;
.super Landroid/net/NetworkPolicyManager$Listener;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/android/settings/datausage/DataSaverBackend;


# direct methods
.method public constructor <init>(Lcom/android/settings/datausage/DataSaverBackend;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/datausage/DataSaverBackend$1;->this$0:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-direct {p0}, Landroid/net/NetworkPolicyManager$Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRestrictBackgroundChanged(Z)V
    .locals 1

    new-instance v0, Lcom/android/settings/datausage/DataSaverBackend$1$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/datausage/DataSaverBackend$1$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/datausage/DataSaverBackend$1;Z)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onUidPoliciesChanged(II)V
    .locals 1

    new-instance v0, Lcom/android/settings/datausage/DataSaverBackend$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/settings/datausage/DataSaverBackend$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/datausage/DataSaverBackend$1;II)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method
