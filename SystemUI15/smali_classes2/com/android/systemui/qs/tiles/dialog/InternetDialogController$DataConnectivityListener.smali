.class public final Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$DataConnectivityListener;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;


# direct methods
.method private constructor <init>(Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$DataConnectivityListener;->this$0:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$DataConnectivityListener;-><init>(Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;)V

    return-void
.end method


# virtual methods
.method public final onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 1

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$DataConnectivityListener;->this$0:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;

    const/4 v0, 0x3

    invoke-virtual {p2, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    iput-boolean v0, p1, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mHasEthernet:Z

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$DataConnectivityListener;->this$0:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;

    iget-boolean v0, p1, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mCanConfigWifi:Z

    if-eqz v0, :cond_1

    iget-boolean p1, p1, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mHasEthernet:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p2, p1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$DataConnectivityListener;->this$0:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;

    invoke-virtual {p1}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->scanWifiAccessPoints()V

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$DataConnectivityListener;->this$0:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mCallback:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$InternetDialogCallback;

    if-eqz p0, :cond_2

    check-cast p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate$$ExternalSyntheticLambda0;

    const/4 p2, 0x4

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;I)V

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method public final onLost(Landroid/net/Network;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$DataConnectivityListener;->this$0:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mHasEthernet:Z

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mCallback:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$InternetDialogCallback;

    if-eqz p0, :cond_0

    check-cast p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate$$ExternalSyntheticLambda0;

    const/16 v0, 0xa

    invoke-direct {p1, p0, v0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;I)V

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
