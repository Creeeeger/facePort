.class public final synthetic Lcom/android/settingslib/bluetooth/HearingAidStatsLogUtils$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/android/settingslib/bluetooth/HearingAidStatsLogUtils$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget p0, p0, Lcom/android/settingslib/bluetooth/HearingAidStatsLogUtils$$ExternalSyntheticLambda0;->$r8$classId:I

    check-cast p1, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    packed-switch p0, :pswitch_data_0

    instance-of p0, p1, Lcom/android/settingslib/bluetooth/A2dpSinkProfile;

    if-nez p0, :cond_1

    instance-of p0, p1, Lcom/android/settingslib/bluetooth/HeadsetProfile;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0

    :pswitch_0
    instance-of p0, p1, Lcom/android/settingslib/bluetooth/HearingAidProfile;

    if-nez p0, :cond_3

    instance-of p0, p1, Lcom/android/settingslib/bluetooth/HapClientProfile;

    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    const/4 p0, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 p0, 0x1

    :goto_3
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
