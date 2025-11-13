.class Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiApFamilySharingSwitchEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler;


# direct methods
.method public static synthetic $r8$lambda$9JGKQ23xpNSCvl01Re4o7FSd7I8(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler$1;->lambda$onReceive$0()V

    return-void
.end method

.method constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private synthetic lambda$onReceive$0()V
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler;->updateSwitchState()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 85
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 86
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Broadcast Received: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "com.samsung.android.server.wifi.softap.smarttethering.familySharingDisabledIntent"

    .line 87
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 88
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler;->updateSwitchState()V

    goto/16 :goto_0

    :cond_0
    const-string p2, "com.samsung.android.server.wifi.softap.smarttethering.changed"

    .line 89
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 90
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler;->updateSwitchState()V

    goto/16 :goto_0

    :cond_1
    const-string p2, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 91
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 92
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance p2, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler$1$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler$1$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler$1;)V

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_2
    const-string p2, "com.samsung.account.SAMSUNGACCOUNT_SIGNOUT_COMPLETED"

    .line 93
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 94
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler;->updateSwitchState()V

    goto :goto_0

    :cond_3
    const-string p2, "com.samsung.android.server.wifi.softap.smarttethering.ACTION_WIFI_AP_FAMILY_LOCAL_GROUP_UPDATED"

    .line 95
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 96
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler;->updateSwitchState()V

    goto :goto_0

    :cond_4
    const-string p2, "com.sec.mhs.smarttethering.MY_INVITATION_LIST_CHANGED"

    .line 97
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 98
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler;->updateSwitchState()V

    goto :goto_0

    :cond_5
    const-string p2, "com.samsung.android.server.wifi.softap.smarttethering.familyid"

    .line 99
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 100
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSmartTetheringApkUtils;->getFamilyGroupId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 101
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler;

    invoke-static {p2}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p2, p1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->setFamilySharingDB(Landroid/content/Context;Z)V

    .line 102
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler;->updateSwitchState()V

    goto :goto_0

    :cond_6
    const-string p2, "com.sec.mhs.smarttethering.GROUP_API_RESULT_AND_DB_READ_REQUEST"

    .line 103
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 104
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler;->updateSwitchState()V

    :cond_7
    :goto_0
    return-void
.end method
