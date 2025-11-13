.class final Lcom/android/systemui/qs/customize/QSCPopupButtonController$POPUPTYPE$BRIGHTNESS;
.super Lcom/android/systemui/qs/customize/QSCPopupButtonController$POPUPTYPE;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const v5, 0x7f130e84

    const/4 v6, 0x0

    const v3, 0x7f131048

    const v4, 0x7f130e7f

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/qs/customize/QSCPopupButtonController$POPUPTYPE;-><init>(Ljava/lang/String;IIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public final getSelectedIdx(Lcom/android/systemui/tuner/TunerService;)I
    .locals 1

    const-string p0, "brightness_on_top"

    const/4 v0, 0x1

    invoke-virtual {p1, v0, p0}, Lcom/android/systemui/tuner/TunerService;->getValue(ILjava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public final isAvailable(Lcom/android/systemui/tuner/TunerService;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final updateValue(ZLcom/android/systemui/tuner/TunerService;Lcom/android/systemui/qs/customize/SecQSSettingEditResources;)V
    .locals 0

    const-string p0, "brightness_on_top"

    invoke-virtual {p2, p1, p0}, Lcom/android/systemui/tuner/TunerService;->setValue(ILjava/lang/String;)V

    const-string p0, "QPPS1023"

    invoke-virtual {p3, p0, p1}, Lcom/android/systemui/qs/customize/SecQSSettingEditResources;->updateSALog(Ljava/lang/String;Z)V

    return-void
.end method
