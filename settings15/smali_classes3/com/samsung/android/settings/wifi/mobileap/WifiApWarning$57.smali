.class public final Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$57;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

.field public final synthetic val$doNotShow:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;Landroid/widget/CheckBox;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$57;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$57;->val$doNotShow:Landroid/widget/CheckBox;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$57;->val$doNotShow:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$57;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    iget-object p2, p1, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mSharedPref:Landroid/content/SharedPreferences;

    if-nez p2, :cond_0

    iget-object p2, p1, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    const-string v1, "SAMSUNG_HOTSPOT"

    invoke-virtual {p2, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    iput-object p2, p1, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mSharedPref:Landroid/content/SharedPreferences;

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$57;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    iget-object p1, p1, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string/jumbo p2, "wifi_disconnect_do_not_show"

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$57;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->dismiss()V

    return-void
.end method
