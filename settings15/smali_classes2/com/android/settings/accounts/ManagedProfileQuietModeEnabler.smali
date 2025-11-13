.class public final Lcom/android/settings/accounts/ManagedProfileQuietModeEnabler;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/lifecycle/DefaultLifecycleObserver;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mListener:Lcom/android/settings/accounts/ManagedProfileQuietModeEnabler$QuietModeChangeListener;

.field public final mManagedProfile:Landroid/os/UserHandle;

.field final mReceiver:Landroid/content/BroadcastReceiver;

.field public final mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/accounts/ManagedProfileQuietModeEnabler$QuietModeChangeListener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/settings/accounts/ManagedProfileQuietModeEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings/accounts/ManagedProfileQuietModeEnabler$1;-><init>(Lcom/android/settings/accounts/ManagedProfileQuietModeEnabler;)V

    iput-object v0, p0, Lcom/android/settings/accounts/ManagedProfileQuietModeEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/settings/accounts/ManagedProfileQuietModeEnabler;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/accounts/ManagedProfileQuietModeEnabler;->mListener:Lcom/android/settings/accounts/ManagedProfileQuietModeEnabler$QuietModeChangeListener;

    const-class p2, Landroid/os/UserManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/settings/accounts/ManagedProfileQuietModeEnabler;->mUserManager:Landroid/os/UserManager;

    invoke-static {p1}, Lcom/android/settings/Utils;->getManagedProfile(Landroid/os/UserManager;)Landroid/os/UserHandle;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/accounts/ManagedProfileQuietModeEnabler;->mManagedProfile:Landroid/os/UserHandle;

    return-void
.end method


# virtual methods
.method public final isQuietModeEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accounts/ManagedProfileQuietModeEnabler;->mManagedProfile:Landroid/os/UserHandle;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/accounts/ManagedProfileQuietModeEnabler;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p0, v0}, Landroid/os/UserManager;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final onStart(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 2

    const-string p1, "android.intent.action.MANAGED_PROFILE_AVAILABLE"

    const-string v0, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    invoke-static {p1, v0}, Lcom/android/settings/accounts/ManagedProfileQuietModeEnabler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/accounts/ManagedProfileQuietModeEnabler;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/accounts/ManagedProfileQuietModeEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    const/4 v1, 0x4

    invoke-virtual {v0, p0, p1, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method

.method public final onStop(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    iget-object p1, p0, Lcom/android/settings/accounts/ManagedProfileQuietModeEnabler;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/accounts/ManagedProfileQuietModeEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
