.class Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$45;
.super Ljava/lang/Object;
.source "WifiApWarning.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->showNextHotspotDialog(I)V
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

    .line 1056
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$45;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1058
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$45;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->-$$Nest$fgetmSemWifiManager(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)Lcom/samsung/android/wifi/SemWifiManager;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/samsung/android/wifi/SemWifiManager;->isClientAcceptedWifiProfileSharing(Z)V

    .line 1059
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$45;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    return-void
.end method
