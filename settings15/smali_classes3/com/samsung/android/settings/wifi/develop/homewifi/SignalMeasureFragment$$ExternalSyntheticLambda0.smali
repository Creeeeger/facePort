.class public final synthetic Lcom/samsung/android/settings/wifi/develop/homewifi/SignalMeasureFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/SignalMeasureFragment$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget p0, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/SignalMeasureFragment$$ExternalSyntheticLambda0;->$r8$classId:I

    check-cast p1, Lcom/samsung/android/settings/wifi/develop/homewifi/ExtendedBssidInfo;

    packed-switch p0, :pswitch_data_0

    iget p0, p1, Lcom/samsung/android/settings/wifi/develop/homewifi/ExtendedBssidInfo;->numOfMissingUpdate:I

    const/4 v0, 0x3

    if-lt p0, v0, :cond_0

    const/16 p0, -0x63

    iput p0, p1, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;->rssi:I

    :cond_0
    return-void

    :pswitch_0
    iget p0, p1, Lcom/samsung/android/settings/wifi/develop/homewifi/ExtendedBssidInfo;->numOfMissingUpdate:I

    add-int/lit8 p0, p0, 0x1

    iput p0, p1, Lcom/samsung/android/settings/wifi/develop/homewifi/ExtendedBssidInfo;->numOfMissingUpdate:I

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
