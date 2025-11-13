.class public final Lcom/android/settings/accounts/ManagedProfileQuietModeEnabler$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/android/settings/accounts/ManagedProfileQuietModeEnabler;


# direct methods
.method public constructor <init>(Lcom/android/settings/accounts/ManagedProfileQuietModeEnabler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/accounts/ManagedProfileQuietModeEnabler$1;->this$0:Lcom/android/settings/accounts/ManagedProfileQuietModeEnabler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Received broadcast: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QuietModeEnabler"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "android.intent.action.MANAGED_PROFILE_AVAILABLE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Cannot handle received broadcast: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    :goto_0
    const-string p1, "android.intent.extra.user_handle"

    const/16 v0, -0x2710

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iget-object p2, p0, Lcom/android/settings/accounts/ManagedProfileQuietModeEnabler$1;->this$0:Lcom/android/settings/accounts/ManagedProfileQuietModeEnabler;

    iget-object p2, p2, Lcom/android/settings/accounts/ManagedProfileQuietModeEnabler;->mManagedProfile:Landroid/os/UserHandle;

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    if-ne p1, p2, :cond_3

    iget-object p0, p0, Lcom/android/settings/accounts/ManagedProfileQuietModeEnabler$1;->this$0:Lcom/android/settings/accounts/ManagedProfileQuietModeEnabler;

    iget-object p0, p0, Lcom/android/settings/accounts/ManagedProfileQuietModeEnabler;->mListener:Lcom/android/settings/accounts/ManagedProfileQuietModeEnabler$QuietModeChangeListener;

    if-eqz p0, :cond_4

    invoke-interface {p0}, Lcom/android/settings/accounts/ManagedProfileQuietModeEnabler$QuietModeChangeListener;->onQuietModeChanged()V

    goto :goto_1

    :cond_3
    const-string p2, "Managed profile broadcast ID: "

    const-string v0, " does not match managed user: "

    invoke-static {p1, p2, v0}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/accounts/ManagedProfileQuietModeEnabler$1;->this$0:Lcom/android/settings/accounts/ManagedProfileQuietModeEnabler;

    iget-object p0, p0, Lcom/android/settings/accounts/ManagedProfileQuietModeEnabler;->mManagedProfile:Landroid/os/UserHandle;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_1
    return-void
.end method
