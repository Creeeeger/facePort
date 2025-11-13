.class Lcom/samsung/android/settings/as/audio/SecDualSoundRingtoneSettings$2;
.super Landroid/content/BroadcastReceiver;
.source "SecDualSoundRingtoneSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/as/audio/SecDualSoundRingtoneSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/as/audio/SecDualSoundRingtoneSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/as/audio/SecDualSoundRingtoneSettings;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/samsung/android/settings/as/audio/SecDualSoundRingtoneSettings$2;->this$0:Lcom/samsung/android/settings/as/audio/SecDualSoundRingtoneSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/samsung/android/settings/as/audio/SecDualSoundRingtoneSettings$2;->this$0:Lcom/samsung/android/settings/as/audio/SecDualSoundRingtoneSettings;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void
.end method
