.class public final synthetic Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda42;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/wifitrackerlib/WifiPickerTracker;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wifitrackerlib/WifiPickerTracker;I)V
    .locals 0

    iput p2, p0, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda42;->$r8$classId:I

    iput-object p1, p0, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda42;->f$0:Lcom/android/wifitrackerlib/WifiPickerTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda42;->$r8$classId:I

    iget-object p0, p0, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda42;->f$0:Lcom/android/wifitrackerlib/WifiPickerTracker;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lcom/android/wifitrackerlib/StandardWifiEntry;

    iget-boolean p0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mNetworkScoringUiEnabled:Z

    iget-object p1, p1, Lcom/android/wifitrackerlib/WifiEntry;->mSemFlags:Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;

    iput-boolean p0, p1, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;->networkScoringUiEnabled:Z

    return-void

    :pswitch_0
    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/wifitrackerlib/PasspointWifiEntry;

    iget-boolean p0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mNetworkScoringUiEnabled:Z

    iget-object p1, p1, Lcom/android/wifitrackerlib/WifiEntry;->mSemFlags:Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;

    iput-boolean p0, p1, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;->networkScoringUiEnabled:Z

    return-void

    :pswitch_1
    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/wifitrackerlib/OsuWifiEntry;

    iget-boolean p0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mNetworkScoringUiEnabled:Z

    iget-object p1, p1, Lcom/android/wifitrackerlib/WifiEntry;->mSemFlags:Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;

    iput-boolean p0, p1, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;->networkScoringUiEnabled:Z

    return-void

    :pswitch_2
    check-cast p1, Lcom/android/wifitrackerlib/StandardWifiEntry;

    iget-boolean p0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mNetworkScoringUiEnabled:Z

    iget-object p1, p1, Lcom/android/wifitrackerlib/WifiEntry;->mSemFlags:Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;

    iput-boolean p0, p1, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;->networkScoringUiEnabled:Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
