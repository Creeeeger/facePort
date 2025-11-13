.class Lcom/samsung/android/settings/as/work/SecWorkSoundDualRingtoneSettings$3;
.super Landroid/content/BroadcastReceiver;
.source "SecWorkSoundDualRingtoneSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/as/work/SecWorkSoundDualRingtoneSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/as/work/SecWorkSoundDualRingtoneSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/as/work/SecWorkSoundDualRingtoneSettings;)V
    .locals 0

    .line 304
    iput-object p1, p0, Lcom/samsung/android/settings/as/work/SecWorkSoundDualRingtoneSettings$3;->this$0:Lcom/samsung/android/settings/as/work/SecWorkSoundDualRingtoneSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string p1, "android.intent.extra.USER"

    .line 307
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserHandle;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    .line 308
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.MANAGED_PROFILE_ADDED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 309
    iget-object p0, p0, Lcom/samsung/android/settings/as/work/SecWorkSoundDualRingtoneSettings$3;->this$0:Lcom/samsung/android/settings/as/work/SecWorkSoundDualRingtoneSettings;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/as/work/SecWorkSoundDualRingtoneSettings;->onManagedProfileAdded(I)V

    goto :goto_0

    .line 310
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "android.intent.action.MANAGED_PROFILE_REMOVED"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 311
    iget-object p0, p0, Lcom/samsung/android/settings/as/work/SecWorkSoundDualRingtoneSettings$3;->this$0:Lcom/samsung/android/settings/as/work/SecWorkSoundDualRingtoneSettings;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/as/work/SecWorkSoundDualRingtoneSettings;->onManagedProfileRemoved(I)V

    :cond_1
    :goto_0
    return-void
.end method
