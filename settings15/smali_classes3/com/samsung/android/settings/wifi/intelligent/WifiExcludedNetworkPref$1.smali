.class public final Lcom/samsung/android/settings/wifi/intelligent/WifiExcludedNetworkPref$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/wifi/intelligent/WifiExcludedNetworkPref;

.field public final synthetic val$networkId:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/wifi/intelligent/WifiExcludedNetworkPref;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiExcludedNetworkPref$1;->this$0:Lcom/samsung/android/settings/wifi/intelligent/WifiExcludedNetworkPref;

    iput p2, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiExcludedNetworkPref$1;->val$networkId:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiExcludedNetworkPref$1;->this$0:Lcom/samsung/android/settings/wifi/intelligent/WifiExcludedNetworkPref;

    iget p0, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiExcludedNetworkPref$1;->val$networkId:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setSkipInternetCheck(), networkId :  "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiExcludedNetworkPref"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p1, Lcom/samsung/android/settings/wifi/intelligent/WifiExcludedNetworkPref;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "sem_wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {p1, p0}, Lcom/samsung/android/wifi/SemWifiManager;->removeExcludedNetwork(I)V

    const/16 p0, 0xc30

    const/16 p1, 0xc36

    invoke-static {p0, p1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    return-void
.end method
