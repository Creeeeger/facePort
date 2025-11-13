.class public final Lcom/samsung/android/settings/wifi/InstantHotspotListAdapter$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic val$bleAp:Lcom/android/wifitrackerlib/HotspotNetworkEntry;


# direct methods
.method public constructor <init>(Lcom/android/wifitrackerlib/HotspotNetworkEntry;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/InstantHotspotListAdapter$1;->val$bleAp:Lcom/android/wifitrackerlib/HotspotNetworkEntry;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/InstantHotspotListAdapter$1;->val$bleAp:Lcom/android/wifitrackerlib/HotspotNetworkEntry;

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/wifitrackerlib/HotspotNetworkEntry;->connect(Lcom/android/wifitrackerlib/WifiEntry$ConnectCallback;)V

    :cond_0
    return-void
.end method
