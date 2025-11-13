.class Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController$1;
.super Ljava/lang/Object;
.source "WifiDetailNavigationController.java"

# interfaces
.implements Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->initBottomNavigation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController$1;->this$0:Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNavigationItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 188
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    .line 189
    sget v0, Lcom/android/settings/R$id;->qrcode_button:I

    if-ne p1, v0, :cond_0

    .line 190
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController$1;->this$0:Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->setMode(I)V

    .line 191
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController$1;->this$0:Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->-$$Nest$mlaunchWifiDppConfiguratorActivity(Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;)V

    goto :goto_0

    .line 192
    :cond_0
    sget v0, Lcom/android/settings/R$id;->forget_button:I

    if-ne p1, v0, :cond_2

    .line 193
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController$1;->this$0:Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->-$$Nest$fgetmWifiEntry(Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;)Lcom/android/wifitrackerlib/WifiEntry;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->isSubscription()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 194
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController$1;->this$0:Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->-$$Nest$mshowPasspointWarningDialog(Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;)V

    goto :goto_0

    .line 196
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController$1;->this$0:Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->-$$Nest$mforgetNetwork(Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;)V

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method
