.class Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApInvitationList$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiApInvitationList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApInvitationList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApInvitationList;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApInvitationList;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApInvitationList$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApInvitationList;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 62
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    .line 63
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApInvitationList;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received Broadcast: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "com.samsung.android.server.wifi.softap.smarttethering.familyid"

    .line 64
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p2, "hash_value_based_on_familyid"

    .line 66
    invoke-static {p1, p2}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 67
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    const-wide/16 v0, -0x1

    if-nez p2, :cond_0

    .line 68
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    goto :goto_0

    :cond_0
    move-wide p1, v0

    :goto_0
    cmp-long p1, p1, v0

    if-nez p1, :cond_2

    .line 71
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApInvitationList;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string p2, "familyID is -1, so closing activity"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApInvitationList$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApInvitationList;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    goto :goto_1

    :cond_1
    const-string p1, "com.sec.mhs.smarttethering.MY_INVITATION_LIST_CHANGED"

    .line 74
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 75
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApInvitationList$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApInvitationList;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApInvitationList;->-$$Nest$mupdateInvitationPreferenceList(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApInvitationList;)V

    :cond_2
    :goto_1
    return-void
.end method
