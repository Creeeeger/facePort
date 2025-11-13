.class Lcom/android/settings/wifi/WifiNoInternetDialog$4;
.super Ljava/lang/Object;
.source "WifiNoInternetDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiNoInternetDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiNoInternetDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiNoInternetDialog;)V
    .locals 0

    .line 277
    iput-object p1, p0, Lcom/android/settings/wifi/WifiNoInternetDialog$4;->this$0:Lcom/android/settings/wifi/WifiNoInternetDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 280
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNoInternetDialog$4;->this$0:Lcom/android/settings/wifi/WifiNoInternetDialog;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiNoInternetDialog;->-$$Nest$fgetmWifiNoInternetDialog(Lcom/android/settings/wifi/WifiNoInternetDialog;)Landroid/app/AlertDialog;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 282
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/android/settings/R$id;->keep_btn:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v4, Lcom/android/settings/R$id;->switch_btn:I

    if-ne v0, v4, :cond_1

    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v2

    .line 285
    :goto_1
    iget-object v4, p0, Lcom/android/settings/wifi/WifiNoInternetDialog$4;->this$0:Lcom/android/settings/wifi/WifiNoInternetDialog;

    invoke-static {v4}, Lcom/android/settings/wifi/WifiNoInternetDialog;->-$$Nest$fgetmAction(Lcom/android/settings/wifi/WifiNoInternetDialog;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3

    return-void

    .line 287
    :cond_3
    iget-object v4, p0, Lcom/android/settings/wifi/WifiNoInternetDialog$4;->this$0:Lcom/android/settings/wifi/WifiNoInternetDialog;

    invoke-static {v4}, Lcom/android/settings/wifi/WifiNoInternetDialog;->-$$Nest$fgetmAction(Lcom/android/settings/wifi/WifiNoInternetDialog;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "PROMPT_UNVALIDATED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_a

    iget-object v4, p0, Lcom/android/settings/wifi/WifiNoInternetDialog$4;->this$0:Lcom/android/settings/wifi/WifiNoInternetDialog;

    invoke-static {v4}, Lcom/android/settings/wifi/WifiNoInternetDialog;->-$$Nest$fgetmAction(Lcom/android/settings/wifi/WifiNoInternetDialog;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "PROMPT_PARTIAL_CONNECTIVITY"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_6

    .line 309
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    if-ne p1, v1, :cond_5

    goto :goto_2

    :cond_5
    move v2, v3

    :goto_2
    if-eqz v2, :cond_6

    const-string p1, "Switch away"

    goto :goto_3

    :cond_6
    const-string p1, "Get stuck"

    :goto_3
    if-eqz v0, :cond_8

    .line 312
    iget-object v1, p0, Lcom/android/settings/wifi/WifiNoInternetDialog$4;->this$0:Lcom/android/settings/wifi/WifiNoInternetDialog;

    invoke-static {v1}, Lcom/android/settings/wifi/WifiNoInternetDialog;->access$000(Lcom/android/settings/wifi/WifiNoInternetDialog;)Lcom/android/internal/app/AlertController$AlertParams;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    if-eqz v2, :cond_7

    const-string v2, "1"

    goto :goto_4

    :cond_7
    const-string v2, "0"

    :goto_4
    const-string/jumbo v3, "network_avoid_bad_wifi"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_5

    :cond_8
    if-eqz v2, :cond_9

    .line 315
    iget-object v1, p0, Lcom/android/settings/wifi/WifiNoInternetDialog$4;->this$0:Lcom/android/settings/wifi/WifiNoInternetDialog;

    invoke-static {v1}, Lcom/android/settings/wifi/WifiNoInternetDialog;->-$$Nest$fgetmCM(Lcom/android/settings/wifi/WifiNoInternetDialog;)Landroid/net/ConnectivityManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiNoInternetDialog$4;->this$0:Lcom/android/settings/wifi/WifiNoInternetDialog;

    invoke-static {v2}, Lcom/android/settings/wifi/WifiNoInternetDialog;->-$$Nest$fgetmNetwork(Lcom/android/settings/wifi/WifiNoInternetDialog;)Landroid/net/Network;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->setAvoidUnvalidated(Landroid/net/Network;)V

    :cond_9
    :goto_5
    const-string v1, "LOST_INTERNET"

    goto :goto_b

    .line 288
    :cond_a
    :goto_6
    iget-object v4, p0, Lcom/android/settings/wifi/WifiNoInternetDialog$4;->this$0:Lcom/android/settings/wifi/WifiNoInternetDialog;

    invoke-static {v4}, Lcom/android/settings/wifi/WifiNoInternetDialog;->-$$Nest$fgetmAction(Lcom/android/settings/wifi/WifiNoInternetDialog;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.net.action.PROMPT_UNVALIDATED"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    const-string v4, "NO_INTERNET"

    goto :goto_7

    :cond_b
    const-string v4, "PARTIAL_CONNECTIVITY"

    .line 289
    :goto_7
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    if-eq v5, v1, :cond_d

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v1, Lcom/android/settings/R$id;->connect_btn:I

    if-ne p1, v1, :cond_c

    goto :goto_8

    :cond_c
    move v2, v3

    :cond_d
    :goto_8
    if-eqz v2, :cond_e

    const-string p1, "Connect"

    goto :goto_9

    :cond_e
    const-string p1, "Ignore"

    .line 291
    :goto_9
    iget-object v1, p0, Lcom/android/settings/wifi/WifiNoInternetDialog$4;->this$0:Lcom/android/settings/wifi/WifiNoInternetDialog;

    invoke-static {v1}, Lcom/android/settings/wifi/WifiNoInternetDialog;->-$$Nest$fgetmSemWifiManager(Lcom/android/settings/wifi/WifiNoInternetDialog;)Lcom/samsung/android/wifi/SemWifiManager;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 292
    iget-object v1, p0, Lcom/android/settings/wifi/WifiNoInternetDialog$4;->this$0:Lcom/android/settings/wifi/WifiNoInternetDialog;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiNoInternetDialog;->getCurrentSemWifiConfiguration()Lcom/samsung/android/wifi/SemWifiConfiguration;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 293
    iget-boolean v5, v1, Lcom/samsung/android/wifi/SemWifiConfiguration;->isNoInternetAccessExpected:Z

    if-eqz v5, :cond_f

    if-nez v0, :cond_f

    .line 295
    iput-boolean v3, v1, Lcom/samsung/android/wifi/SemWifiConfiguration;->isNoInternetAccessExpected:Z

    .line 296
    iget-object v3, p0, Lcom/android/settings/wifi/WifiNoInternetDialog$4;->this$0:Lcom/android/settings/wifi/WifiNoInternetDialog;

    invoke-static {v3}, Lcom/android/settings/wifi/WifiNoInternetDialog;->-$$Nest$fgetmSemWifiManager(Lcom/android/settings/wifi/WifiNoInternetDialog;)Lcom/samsung/android/wifi/SemWifiManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/samsung/android/wifi/SemWifiManager;->addOrUpdateNetwork(Lcom/samsung/android/wifi/SemWifiConfiguration;)Z

    :cond_f
    if-eqz v2, :cond_11

    if-eqz v0, :cond_10

    const/4 v1, 0x2

    goto :goto_a

    :cond_10
    const/4 v1, 0x3

    goto :goto_a

    :cond_11
    const/4 v1, 0x4

    .line 301
    :goto_a
    iget-object v3, p0, Lcom/android/settings/wifi/WifiNoInternetDialog$4;->this$0:Lcom/android/settings/wifi/WifiNoInternetDialog;

    invoke-virtual {v3, v2, v0, v1}, Lcom/android/settings/wifi/WifiNoInternetDialog;->sendResultToWCM(ZZI)V

    move-object v1, v4

    .line 318
    :goto_b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " network="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/settings/wifi/WifiNoInternetDialog$4;->this$0:Lcom/android/settings/wifi/WifiNoInternetDialog;

    invoke-static {p1}, Lcom/android/settings/wifi/WifiNoInternetDialog;->-$$Nest$fgetmNetwork(Lcom/android/settings/wifi/WifiNoInternetDialog;)Landroid/net/Network;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_12

    const-string p1, " and remember"

    goto :goto_c

    :cond_12
    const-string p1, ""

    .line 319
    :goto_c
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WifiNoInternetDialog"

    .line 318
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    iget-object p0, p0, Lcom/android/settings/wifi/WifiNoInternetDialog$4;->this$0:Lcom/android/settings/wifi/WifiNoInternetDialog;

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    return-void
.end method
