.class Lcom/android/settings/network/apn/ApnSettings$12;
.super Ljava/lang/Object;
.source "ApnSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/network/apn/ApnSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/network/apn/ApnSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/network/apn/ApnSettings;)V
    .locals 0

    .line 1415
    iput-object p1, p0, Lcom/android/settings/network/apn/ApnSettings$12;->this$0:Lcom/android/settings/network/apn/ApnSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1417
    sget-object p1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    iget-object v0, p0, Lcom/android/settings/network/apn/ApnSettings$12;->this$0:Lcom/android/settings/network/apn/ApnSettings;

    invoke-static {v0}, Lcom/android/settings/network/apn/ApnSettings;->-$$Nest$fgetmCPAApnKey(Lcom/android/settings/network/apn/ApnSettings;)I

    move-result v0

    int-to-long v0, v0

    invoke-static {p1, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    .line 1418
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.settings.cpa.CpaAdvancedSettings"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string/jumbo p1, "new"

    const/4 v1, 0x1

    .line 1419
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1420
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnSettings$12;->this$0:Lcom/android/settings/network/apn/ApnSettings;

    invoke-static {p1}, Lcom/android/settings/network/apn/ApnSettings;->-$$Nest$fgetmCpaAlertDialog(Lcom/android/settings/network/apn/ApnSettings;)Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1421
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnSettings$12;->this$0:Lcom/android/settings/network/apn/ApnSettings;

    invoke-static {p1}, Lcom/android/settings/network/apn/ApnSettings;->-$$Nest$fgetmCpaAlertDialog(Lcom/android/settings/network/apn/ApnSettings;)Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    .line 1423
    :cond_0
    iget-object p0, p0, Lcom/android/settings/network/apn/ApnSettings$12;->this$0:Lcom/android/settings/network/apn/ApnSettings;

    const/16 p1, 0x7e

    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
