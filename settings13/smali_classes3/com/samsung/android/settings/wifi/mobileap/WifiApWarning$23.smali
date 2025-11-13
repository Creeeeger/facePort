.class Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$23;
.super Ljava/lang/Object;
.source "WifiApWarning.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->showNextHotspotDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V
    .locals 0

    .line 716
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$23;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const-string p1, "WifiApWarning"

    .line 718
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$23;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-static {p2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)Landroid/content/Context;

    move-result-object p2

    const-string v0, "smart_tethering_d2dfamilyid"

    invoke-static {p2, v0}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "smart_tethering_d2d_Wifimac"

    if-eqz p2, :cond_0

    .line 719
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$23;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->-$$Nest$fgetm_ST_D2D_FamilyID(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 720
    :cond_0
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$23;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-static {p2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)Landroid/content/Context;

    move-result-object p2

    const/4 v2, 0x0

    invoke-static {p2, v1, v2}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->insert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    :cond_1
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$23;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-static {p2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)Landroid/content/Context;

    move-result-object p2

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$23;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->-$$Nest$fgetm_ST_D2D_FamilyID(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v0, v2}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->insert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$23;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-static {p2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)Landroid/content/Context;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$23;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->-$$Nest$fgetm_ST_D2D_FamilyIDHash(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "hash_value_based_on_d2dFamilyid"

    invoke-static {p2, v2, v0}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->insert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 724
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$23;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-static {p2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v1}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 726
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$23;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->-$$Nest$fgetm_ST_D2D_WiFiMAC(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->-$$Nest$fputm_ST_D2D_WiFiMAC(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 728
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "java.lang.StringIndexOutOfBoundsException:m_ST_D2D_WiFiMAC:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$23;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->-$$Nest$fgetm_ST_D2D_WiFiMAC(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-eqz p2, :cond_4

    .line 730
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const-string v0, "\n"

    .line 733
    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 734
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$23;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->-$$Nest$fgetm_ST_D2D_WiFiMAC(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 736
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$23;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-static {p2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->-$$Nest$fgetm_ST_D2D_WiFiMAC(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "added D2D AutoHotspot MAC"

    .line 737
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$23;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)Landroid/content/Context;

    move-result-object p1

    const-string v0, "SMART_TETHERING_D2D_WIFIMAC"

    invoke-static {p1, v0, p2}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->insert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    const-string p2, "same D2D AutoHotspot MAC"

    .line 741
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 731
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$23;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$23;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-static {p2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->-$$Nest$fgetm_ST_D2D_WiFiMAC(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v1, p2}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->insert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 744
    :goto_2
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$23;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->-$$Nest$msendIntentToAutoHotspotD2DFamilyUpdate(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;Z)V

    .line 745
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string p2, "com.samsung.android.server.wifi.softap.smarttethering.d2dfamilyid"

    .line 746
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 747
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$23;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-static {p2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)Landroid/content/Context;

    move-result-object p2

    const-string v0, "android.permission.OVERRIDE_WIFI_CONFIG"

    invoke-virtual {p2, p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 748
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$23;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    return-void
.end method
