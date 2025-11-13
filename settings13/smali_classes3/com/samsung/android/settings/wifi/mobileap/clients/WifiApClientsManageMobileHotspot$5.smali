.class Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot$5;
.super Ljava/lang/Object;
.source "WifiApClientsManageMobileHotspot.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;->refreshConnectedPreferenceCategory()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;

.field final synthetic val$percentage:I


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;I)V
    .locals 0

    .line 342
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot$5;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;

    iput p2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot$5;->val$percentage:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 345
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot$5;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v0, Lcom/android/settings/R$string;->wifi_ap_data_limit_almost_reached:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot$5;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;

    sget v1, Lcom/android/settings/R$string;->wifi_ap_data_limit_reached_message_1:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot$5;->val$percentage:I

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

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    .line 346
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method
