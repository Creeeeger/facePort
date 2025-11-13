.class public final Lcom/android/settings/location/LocationInjectedServiceBasePreferenceController$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/android/settings/location/LocationInjectedServiceBasePreferenceController;


# direct methods
.method public constructor <init>(Lcom/android/settings/location/LocationInjectedServiceBasePreferenceController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/location/LocationInjectedServiceBasePreferenceController$1;->this$0:Lcom/android/settings/location/LocationInjectedServiceBasePreferenceController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const/4 p1, 0x3

    const-string v0, "LocationPrefCtrl"

    invoke-static {v0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Received settings change intent: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Lcom/android/settings/location/LocationInjectedServiceBasePreferenceController$1;->this$0:Lcom/android/settings/location/LocationInjectedServiceBasePreferenceController;

    iget-object p0, p0, Lcom/android/settings/location/LocationInjectedServiceBasePreferenceController;->mInjector:Lcom/android/settings/location/AppSettingsInjector;

    invoke-virtual {p0}, Lcom/android/settings/location/AppSettingsInjector;->reloadStatusMessages()V

    return-void
.end method
