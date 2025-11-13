.class Lcom/samsung/android/settings/wifi/mobileap/WifiApVzwHelp$1;
.super Ljava/lang/Object;
.source "WifiApVzwHelp.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/mobileap/WifiApVzwHelp;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApVzwHelp;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApVzwHelp;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApVzwHelp$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApVzwHelp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 59
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.ACTION_MAIN"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "android.intent.category.DEFAULT"

    .line 60
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "com.android.settings"

    const-string v1, "com.android.settings.wifi.mobileap.WifiApSettings"

    .line 61
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v0, 0x8000

    .line 62
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v0, "fromHelp"

    const/4 v1, 0x1

    .line 63
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 65
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApVzwHelp$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApVzwHelp;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 67
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/WifiApVzwHelp;->-$$Nest$sfgetLOGGER()Ljava/util/logging/Logger;

    move-result-object p1

    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v1, "WifiApVzwHelp"

    invoke-virtual {p1, v0, v1, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
