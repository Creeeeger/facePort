.class Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView$1;
.super Ljava/lang/Object;
.source "WifiApQrInfoBottomView.java"

# interfaces
.implements Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->initBottomNavigation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNavigationItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 88
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    .line 89
    sget v0, Lcom/android/settings/R$id;->qr_code_button:I

    const-string v1, "TETH_010"

    if-ne p1, v0, :cond_0

    const-string p1, "8011"

    .line 90
    invoke-static {v1, p1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;

    iget-object p1, p1, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mButtonBar:Landroid/widget/RelativeLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 92
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->-$$Nest$mlaunchQrCodeActivity(Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;)V

    goto :goto_0

    .line 93
    :cond_0
    sget v0, Lcom/android/settings/R$id;->info_button:I

    if-ne p1, v0, :cond_1

    const-string p1, "8012"

    .line 94
    invoke-static {v1, p1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->-$$Nest$mshowInfoDialog(Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;)V

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method
