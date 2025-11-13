.class Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference$3;
.super Ljava/lang/Object;
.source "WifiApClientPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;->updatePreference(Lcom/samsung/android/wifi/SemWifiApClientDetails;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;

.field final synthetic val$percentage:I


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;I)V
    .locals 0

    .line 202
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;

    iput p2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference$3;->val$percentage:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 205
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v0, Lcom/android/settings/R$string;->wifi_ap_data_limit_almost_reached:I

    .line 206
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->wifi_ap_data_limit_reached_message_1:I

    .line 207
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference$3;->val$percentage:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->ok:I

    const/4 v0, 0x0

    .line 208
    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 209
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    .line 210
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method
