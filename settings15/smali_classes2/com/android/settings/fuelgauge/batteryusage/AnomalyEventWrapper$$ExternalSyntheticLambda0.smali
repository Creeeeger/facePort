.class public final synthetic Lcom/android/settings/fuelgauge/batteryusage/AnomalyEventWrapper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/android/settings/fuelgauge/batteryusage/AnomalyEventWrapper$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lcom/android/settings/fuelgauge/batteryusage/AnomalyEventWrapper$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Lcom/android/settings/fuelgauge/batteryusage/WarningBannerInfo;

    invoke-virtual {p1}, Lcom/android/settings/fuelgauge/batteryusage/WarningBannerInfo;->getMainButtonSourceMetricsCategory()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Lcom/android/settings/fuelgauge/batteryusage/WarningBannerInfo;

    invoke-virtual {p1}, Lcom/android/settings/fuelgauge/batteryusage/WarningBannerInfo;->getMainButtonDestination()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p1, Lcom/android/settings/fuelgauge/batteryusage/WarningItemInfo;

    invoke-virtual {p1}, Lcom/android/settings/fuelgauge/batteryusage/WarningItemInfo;->getMainButtonString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p1, Lcom/android/settings/fuelgauge/batteryusage/WarningBannerInfo;

    invoke-virtual {p1}, Lcom/android/settings/fuelgauge/batteryusage/WarningBannerInfo;->getMainButtonString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p1, Lcom/android/settings/fuelgauge/batteryusage/WarningItemInfo;

    invoke-virtual {p1}, Lcom/android/settings/fuelgauge/batteryusage/WarningItemInfo;->getCancelButtonString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_4
    check-cast p1, Lcom/android/settings/fuelgauge/batteryusage/WarningBannerInfo;

    invoke-virtual {p1}, Lcom/android/settings/fuelgauge/batteryusage/WarningBannerInfo;->getCancelButtonString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_5
    check-cast p1, Lcom/android/settings/fuelgauge/batteryusage/WarningItemInfo;

    invoke-virtual {p1}, Lcom/android/settings/fuelgauge/batteryusage/WarningItemInfo;->getTitleString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_6
    check-cast p1, Lcom/android/settings/fuelgauge/batteryusage/WarningBannerInfo;

    invoke-virtual {p1}, Lcom/android/settings/fuelgauge/batteryusage/WarningBannerInfo;->getTitleString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_7
    check-cast p1, Lcom/android/settings/fuelgauge/batteryusage/WarningItemInfo;

    invoke-virtual {p1}, Lcom/android/settings/fuelgauge/batteryusage/WarningItemInfo;->getWarningInfoString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_8
    check-cast p1, Lcom/android/settings/fuelgauge/batteryusage/WarningBannerInfo;

    invoke-virtual {p1}, Lcom/android/settings/fuelgauge/batteryusage/WarningBannerInfo;->getMainButtonConfigSettingsValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_9
    check-cast p1, Lcom/android/settings/fuelgauge/batteryusage/WarningBannerInfo;

    invoke-virtual {p1}, Lcom/android/settings/fuelgauge/batteryusage/WarningBannerInfo;->getMainButtonConfigSettingsName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_a
    check-cast p1, Lcom/android/settings/fuelgauge/batteryusage/WarningBannerInfo;

    invoke-virtual {p1}, Lcom/android/settings/fuelgauge/batteryusage/WarningBannerInfo;->getMainButtonSourceHighlightKey()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_b
    check-cast p1, Lcom/android/settings/fuelgauge/batteryusage/WarningItemInfo;

    invoke-virtual {p1}, Lcom/android/settings/fuelgauge/batteryusage/WarningItemInfo;->getAnomalyHintPrefKey()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
