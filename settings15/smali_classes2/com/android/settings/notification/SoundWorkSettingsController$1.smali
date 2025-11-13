.class public final Lcom/android/settings/notification/SoundWorkSettingsController$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/android/settings/notification/SoundWorkSettingsController;


# direct methods
.method public constructor <init>(Lcom/android/settings/notification/SoundWorkSettingsController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/notification/SoundWorkSettingsController$1;->this$0:Lcom/android/settings/notification/SoundWorkSettingsController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string p1, "android.intent.extra.USER"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserHandle;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "android.intent.action.MANAGED_PROFILE_ADDED"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "android.intent.action.MANAGED_PROFILE_REMOVED"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/settings/notification/SoundWorkSettingsController$1;->this$0:Lcom/android/settings/notification/SoundWorkSettingsController;

    iget p2, p0, Lcom/android/settings/notification/SoundWorkSettingsController;->mManagedProfileId:I

    if-ne p2, p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/notification/SoundWorkSettingsController;->mUserManager:Landroid/os/UserManager;

    iget-object p2, p0, Lcom/android/settings/notification/SoundWorkSettingsController;->mHelper:Lcom/android/settings/notification/AudioHelper;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/settings/notification/AudioHelper;->getManagedProfileId(Landroid/os/UserManager;)I

    move-result p1

    iput p1, p0, Lcom/android/settings/notification/SoundWorkSettingsController;->mManagedProfileId:I

    invoke-virtual {p0}, Lcom/android/settings/notification/SoundWorkSettingsController;->updateWorkPreferences()V

    :cond_1
    return-void

    :cond_2
    iget-object p0, p0, Lcom/android/settings/notification/SoundWorkSettingsController$1;->this$0:Lcom/android/settings/notification/SoundWorkSettingsController;

    iget p2, p0, Lcom/android/settings/notification/SoundWorkSettingsController;->mManagedProfileId:I

    const/16 v0, -0x2710

    if-ne p2, v0, :cond_3

    iput p1, p0, Lcom/android/settings/notification/SoundWorkSettingsController;->mManagedProfileId:I

    invoke-virtual {p0}, Lcom/android/settings/notification/SoundWorkSettingsController;->updateWorkPreferences()V

    :cond_3
    return-void
.end method
