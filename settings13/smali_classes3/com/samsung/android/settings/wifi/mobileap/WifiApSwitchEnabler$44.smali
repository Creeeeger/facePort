.class Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$44;
.super Ljava/lang/Object;
.source "WifiApSwitchEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showFirstTimePoup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V
    .locals 0

    .line 1580
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$44;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const-string p1, "com.samsung.helphub"

    .line 1582
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$44;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-static {p2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->-$$Nest$fgetnevershowagain(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1583
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$44;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-static {p2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "dontshowmemhsfirsttime"

    invoke-static {p2, v0, v2, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->-$$Nest$mputBooleanSharedPreference(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1585
    :cond_0
    sget-object p2, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    const-string v0, "NEWCO"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/16 v0, 0x10

    if-eqz p2, :cond_1

    .line 1586
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$44;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showDialog(I)V

    goto/16 :goto_1

    .line 1591
    :cond_1
    :try_start_0
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$44;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-static {p2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    const/4 v1, 0x0

    invoke-virtual {p2, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "com.samsung.helphub.HELP"

    if-eqz p2, :cond_3

    .line 1592
    :try_start_1
    iget v2, p2, Landroid/content/pm/PackageInfo;->versionCode:I

    rem-int/lit8 v2, v2, 0xa

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 1593
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1594
    invoke-virtual {p2, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "TMO"

    .line 1595
    sget-object v1, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v1, "helphub:section"

    if-eqz p1, :cond_2

    :try_start_2
    const-string p1, "tethering_tmo"

    .line 1596
    invoke-virtual {p2, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_2
    const-string p1, "tethering_mtr"

    .line 1598
    invoke-virtual {p2, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1600
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$44;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->-$$Nest$fgetmActivity(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :cond_3
    if-eqz p2, :cond_4

    .line 1601
    iget p1, p2, Landroid/content/pm/PackageInfo;->versionCode:I

    rem-int/lit8 p1, p1, 0xa

    const/4 p2, 0x3

    if-ne p1, p2, :cond_4

    .line 1602
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "helphub:appid"

    const-string v1, "tethering"

    .line 1603
    invoke-virtual {p1, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1604
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$44;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-static {p2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->-$$Nest$fgetmActivity(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 1606
    :cond_4
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Help info == null"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1607
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$44;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showDialog(I)V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 1610
    :catch_0
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Exception!! help NameNotFoundException"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1611
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$44;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showDialog(I)V

    :goto_1
    return-void
.end method
