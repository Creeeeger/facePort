.class Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$82;
.super Ljava/lang/Object;
.source "WifiApWarning.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->showFirstTimePoup(Landroid/content/Context;)V
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

    .line 2278
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$82;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    const-string p1, "com.samsung.helphub"

    const-string p2, "WifiApWarning"

    .line 2280
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$82;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->-$$Nest$fgetnevershowagain(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2281
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$82;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    const-string v3, "dontshowmemhsfirsttime"

    invoke-static {v0, v1, v3, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->-$$Nest$mputBooleanSharedPreference(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;Landroid/content/Context;Ljava/lang/String;Z)V

    .line 2283
    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->isMetroPCS()Z

    move-result v0

    const/16 v1, 0x10

    if-eqz v0, :cond_1

    .line 2284
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$82;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-static {p0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->-$$Nest$mshowNextHotspotDialog(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;I)V

    goto :goto_1

    .line 2289
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$82;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "com.samsung.helphub.HELP"

    if-eqz v0, :cond_3

    .line 2290
    :try_start_1
    iget v3, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    rem-int/lit8 v3, v3, 0xa

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 2291
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2292
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2293
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->isMetroPCS()Z

    move-result p1
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v2, "helphub:section"

    if-nez p1, :cond_2

    :try_start_2
    const-string p1, "tethering_tmo"

    .line 2294
    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_2
    const-string p1, "tethering_mtr"

    .line 2296
    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2298
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$82;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-virtual {p1, v0}, Lcom/android/internal/app/AlertActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_4

    .line 2299
    iget p1, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    rem-int/lit8 p1, p1, 0xa

    const/4 v0, 0x3

    if-ne p1, v0, :cond_4

    .line 2300
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "helphub:appid"

    const-string v2, "tethering"

    .line 2301
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2302
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$82;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/AlertActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :cond_4
    const-string p1, "Help info == null"

    .line 2304
    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2305
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$82;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-static {p1, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->-$$Nest$mshowNextHotspotDialog(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;I)V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    const-string p1, "Exception!! help NameNotFoundException"

    .line 2308
    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2309
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$82;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-static {p0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->-$$Nest$mshowNextHotspotDialog(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;I)V

    :goto_1
    return-void
.end method
