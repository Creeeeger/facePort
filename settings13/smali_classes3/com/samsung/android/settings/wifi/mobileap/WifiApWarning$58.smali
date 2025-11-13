.class Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$58;
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

.field final synthetic val$doNotShow:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;Landroid/widget/CheckBox;)V
    .locals 0

    .line 1277
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$58;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$58;->val$doNotShow:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 1279
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$58;->val$doNotShow:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1281
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$58;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->-$$Nest$fgetmSharedPref(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)Landroid/content/SharedPreferences;

    move-result-object p1

    if-nez p1, :cond_0

    .line 1282
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$58;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$58;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)Landroid/content/Context;

    const/4 v0, 0x0

    const-string v1, "SAMSUNG_HOTSPOT"

    invoke-virtual {p2, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->-$$Nest$fputmSharedPref(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;Landroid/content/SharedPreferences;)V

    .line 1283
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$58;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->-$$Nest$fgetmSharedPref(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const/4 p2, 0x1

    const-string v0, "wifi_disconnect_do_not_show"

    .line 1284
    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1285
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1287
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$58;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->dismiss()V

    return-void
.end method
