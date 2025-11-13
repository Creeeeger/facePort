.class public Lcom/android/settings/password/ChooseLockPassword$RecoveryActivity;
.super Lcom/android/settings/password/ChooseLockPassword;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/password/ChooseLockPassword;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecoveryActivity"
.end annotation


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mReceiver:Lcom/android/settings/password/ChooseLockPassword$RecoveryActivity$1;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockPassword;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPause()V
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->onPause()V

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$RecoveryActivity;->mReceiver:Lcom/android/settings/password/ChooseLockPassword$RecoveryActivity$1;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public final onResume()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsActivity;->onResume()V

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$RecoveryActivity;->mReceiver:Lcom/android/settings/password/ChooseLockPassword$RecoveryActivity$1;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "android.intent.action.USER_PRESENT"

    invoke-static {v0}, Landroidx/appcompat/app/AppCompatDelegateImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v0

    new-instance v1, Lcom/android/settings/password/ChooseLockPassword$RecoveryActivity$1;

    invoke-direct {v1, p0}, Lcom/android/settings/password/ChooseLockPassword$RecoveryActivity$1;-><init>(Lcom/android/settings/password/ChooseLockPassword$RecoveryActivity;)V

    iput-object v1, p0, Lcom/android/settings/password/ChooseLockPassword$RecoveryActivity;->mReceiver:Lcom/android/settings/password/ChooseLockPassword$RecoveryActivity$1;

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :goto_0
    return-void
.end method
