.class public final Lcom/android/settings/RestrictedSettingsFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/android/settings/RestrictedSettingsFragment;


# direct methods
.method public constructor <init>(Lcom/android/settings/RestrictedSettingsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/RestrictedSettingsFragment$1;->this$0:Lcom/android/settings/RestrictedSettingsFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/RestrictedSettingsFragment$1;->this$0:Lcom/android/settings/RestrictedSettingsFragment;

    iget-boolean p1, p0, Lcom/android/settings/RestrictedSettingsFragment;->mChallengeRequested:Z

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/settings/RestrictedSettingsFragment;->mChallengeSucceeded:Z

    iput-boolean p1, p0, Lcom/android/settings/RestrictedSettingsFragment;->mChallengeRequested:Z

    :cond_0
    return-void
.end method
