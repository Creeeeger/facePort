.class Lcom/android/settings/network/apn/ApnSettings$11;
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

    .line 1398
    iput-object p1, p0, Lcom/android/settings/network/apn/ApnSettings$11;->this$0:Lcom/android/settings/network/apn/ApnSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1400
    new-instance p1, Landroid/content/Intent;

    sget-object v0, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "android.intent.action.INSERT"

    invoke-direct {p1, v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v0, "ApnSettings"

    const-string v1, "addNewApn"

    .line 1401
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1402
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnSettings$11;->this$0:Lcom/android/settings/network/apn/ApnSettings;

    invoke-static {v0}, Lcom/android/settings/network/apn/ApnSettings;->-$$Nest$fgetmSubId(Lcom/android/settings/network/apn/ApnSettings;)I

    move-result v0

    const-string/jumbo v1, "sub_id"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 1403
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1404
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnSettings$11;->this$0:Lcom/android/settings/network/apn/ApnSettings;

    invoke-static {v0}, Lcom/android/settings/network/apn/ApnSettings;->-$$Nest$fgetmMvnoType(Lcom/android/settings/network/apn/ApnSettings;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/network/apn/ApnSettings$11;->this$0:Lcom/android/settings/network/apn/ApnSettings;

    invoke-static {v0}, Lcom/android/settings/network/apn/ApnSettings;->-$$Nest$fgetmMvnoMatchData(Lcom/android/settings/network/apn/ApnSettings;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1405
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnSettings$11;->this$0:Lcom/android/settings/network/apn/ApnSettings;

    invoke-static {v0}, Lcom/android/settings/network/apn/ApnSettings;->-$$Nest$fgetmMvnoType(Lcom/android/settings/network/apn/ApnSettings;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "mvno_type"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1406
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnSettings$11;->this$0:Lcom/android/settings/network/apn/ApnSettings;

    invoke-static {v0}, Lcom/android/settings/network/apn/ApnSettings;->-$$Nest$fgetmMvnoMatchData(Lcom/android/settings/network/apn/ApnSettings;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "mvno_match_data"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1408
    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnSettings$11;->this$0:Lcom/android/settings/network/apn/ApnSettings;

    invoke-static {v0}, Lcom/android/settings/network/apn/ApnSettings;->-$$Nest$fgetmCpaAlertDialog(Lcom/android/settings/network/apn/ApnSettings;)Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1409
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnSettings$11;->this$0:Lcom/android/settings/network/apn/ApnSettings;

    invoke-static {v0}, Lcom/android/settings/network/apn/ApnSettings;->-$$Nest$fgetmCpaAlertDialog(Lcom/android/settings/network/apn/ApnSettings;)Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    .line 1411
    :cond_1
    iget-object p0, p0, Lcom/android/settings/network/apn/ApnSettings$11;->this$0:Lcom/android/settings/network/apn/ApnSettings;

    const/16 v0, 0x7e

    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
