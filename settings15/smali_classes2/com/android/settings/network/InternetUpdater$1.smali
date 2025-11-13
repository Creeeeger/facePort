.class public final Lcom/android/settings/network/InternetUpdater$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/android/settings/network/InternetUpdater;


# direct methods
.method public constructor <init>(Lcom/android/settings/network/InternetUpdater;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/network/InternetUpdater$1;->this$0:Lcom/android/settings/network/InternetUpdater;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/network/InternetUpdater$1;->this$0:Lcom/android/settings/network/InternetUpdater;

    invoke-virtual {p0, p2}, Lcom/android/settings/network/InternetUpdater;->updateInternetAvailable(Landroid/net/NetworkCapabilities;)V

    return-void
.end method

.method public final onLost(Landroid/net/Network;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/network/InternetUpdater$1;->this$0:Lcom/android/settings/network/InternetUpdater;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/settings/network/InternetUpdater;->mInternetAvailable:Z

    invoke-virtual {p0}, Lcom/android/settings/network/InternetUpdater;->updateInternetType()V

    return-void
.end method
