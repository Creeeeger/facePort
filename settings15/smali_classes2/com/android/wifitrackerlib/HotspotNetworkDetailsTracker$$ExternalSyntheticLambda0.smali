.class public final synthetic Lcom/android/wifitrackerlib/HotspotNetworkDetailsTracker$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/wifitrackerlib/HotspotNetworkDetailsTracker;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wifitrackerlib/HotspotNetworkDetailsTracker;I)V
    .locals 0

    iput p2, p0, Lcom/android/wifitrackerlib/HotspotNetworkDetailsTracker$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/wifitrackerlib/HotspotNetworkDetailsTracker$$ExternalSyntheticLambda0;->f$0:Lcom/android/wifitrackerlib/HotspotNetworkDetailsTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    iget v0, p0, Lcom/android/wifitrackerlib/HotspotNetworkDetailsTracker$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/android/wifitrackerlib/HotspotNetworkDetailsTracker$$ExternalSyntheticLambda0;->f$0:Lcom/android/wifitrackerlib/HotspotNetworkDetailsTracker;

    check-cast p1, Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p1}, Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;->getDeviceId()J

    move-result-wide v0

    iget-object p0, p0, Lcom/android/wifitrackerlib/HotspotNetworkDetailsTracker;->mChosenEntry:Lcom/android/wifitrackerlib/HotspotNetworkEntry;

    iget-object p0, p0, Lcom/android/wifitrackerlib/HotspotNetworkEntry;->mKey:Lcom/android/wifitrackerlib/HotspotNetworkEntry$HotspotNetworkEntryKey;

    iget-wide p0, p0, Lcom/android/wifitrackerlib/HotspotNetworkEntry$HotspotNetworkEntryKey;->mDeviceId:J

    cmp-long p0, v0, p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :pswitch_0
    invoke-virtual {p1}, Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;->getDeviceId()J

    move-result-wide v0

    iget-object p0, p0, Lcom/android/wifitrackerlib/HotspotNetworkDetailsTracker;->mChosenEntry:Lcom/android/wifitrackerlib/HotspotNetworkEntry;

    iget-object p0, p0, Lcom/android/wifitrackerlib/HotspotNetworkEntry;->mKey:Lcom/android/wifitrackerlib/HotspotNetworkEntry$HotspotNetworkEntryKey;

    iget-wide p0, p0, Lcom/android/wifitrackerlib/HotspotNetworkEntry$HotspotNetworkEntryKey;->mDeviceId:J

    cmp-long p0, v0, p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
