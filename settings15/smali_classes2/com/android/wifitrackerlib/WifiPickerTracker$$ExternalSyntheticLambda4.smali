.class public final synthetic Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/BinaryOperator;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda4;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda4;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;

    check-cast p2, Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;

    const-string p0, "WifiPickerTracker"

    const-string p2, "Encountered duplicate key data in updateHotspotNetworkEntries"

    invoke-static {p0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    :pswitch_0
    check-cast p1, Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;

    check-cast p2, Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;

    const-string p0, "WifiPickerTracker"

    const-string p2, "Encountered duplicate key data in updateKnownNetworkEntryScans"

    invoke-static {p0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
