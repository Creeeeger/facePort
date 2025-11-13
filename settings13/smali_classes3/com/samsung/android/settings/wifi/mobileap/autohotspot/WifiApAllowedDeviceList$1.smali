.class Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList$1;
.super Landroid/os/Handler;
.source "WifiApAllowedDeviceList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 91
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 100
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 101
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;->-$$Nest$fgetmAllowedDeviceListPreferenceCategory(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;)Landroidx/preference/SecPreferenceCategory;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 102
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;->-$$Nest$fgetmAllowedDeviceListPreferenceCategory(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;)Landroidx/preference/SecPreferenceCategory;

    move-result-object v0

    monitor-enter v0

    .line 103
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;

    invoke-static {v1, p1}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;->-$$Nest$mfindPreferenceFromAllowedList(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;Ljava/lang/String;)Landroidx/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 105
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;->-$$Nest$fgetmAllowedDeviceListPreferenceCategory(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;)Landroidx/preference/SecPreferenceCategory;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 106
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removed preference:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x9

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 97
    :cond_2
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;->-$$Nest$mshowAllowedListPreference(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;)V

    goto :goto_0

    .line 93
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 94
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->d2d_ble_bonding_failed_toast:I

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_4
    :goto_0
    return-void
.end method
