.class Lcom/samsung/android/settings/as/audio/SecDualNotificationSoundSettings$2;
.super Landroid/content/BroadcastReceiver;
.source "SecDualNotificationSoundSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/as/audio/SecDualNotificationSoundSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/as/audio/SecDualNotificationSoundSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/as/audio/SecDualNotificationSoundSettings;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/samsung/android/settings/as/audio/SecDualNotificationSoundSettings$2;->this$0:Lcom/samsung/android/settings/as/audio/SecDualNotificationSoundSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 138
    iget-object p0, p0, Lcom/samsung/android/settings/as/audio/SecDualNotificationSoundSettings$2;->this$0:Lcom/samsung/android/settings/as/audio/SecDualNotificationSoundSettings;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void
.end method
