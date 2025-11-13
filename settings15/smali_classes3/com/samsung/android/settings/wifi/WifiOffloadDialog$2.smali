.class public final Lcom/samsung/android/settings/wifi/WifiOffloadDialog$2;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/wifi/WifiOffloadDialog;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/wifi/WifiOffloadDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiOffloadDialog$2;->this$0:Lcom/samsung/android/settings/wifi/WifiOffloadDialog;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 0

    const/16 p1, 0x10

    invoke-virtual {p2, p1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiOffloadDialog$2;->this$0:Lcom/samsung/android/settings/wifi/WifiOffloadDialog;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/samsung/android/settings/wifi/WifiOffloadDialog;->-$$Nest$mdoFinish(Lcom/samsung/android/settings/wifi/WifiOffloadDialog;Z)V

    :cond_0
    return-void
.end method
