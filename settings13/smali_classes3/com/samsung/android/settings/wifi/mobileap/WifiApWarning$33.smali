.class Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$33;
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

    .line 834
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$33;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p1, "TETH_010"

    const-string p2, "8046"

    .line 836
    invoke-static {p1, p2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;)V

    .line 837
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$33;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->-$$Nest$mstartProvisioningIfNecessary(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;I)V

    return-void
.end method
