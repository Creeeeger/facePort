.class public final Lcom/android/systemui/controls/util/SALogger$Event$SettingsControlDevicesOnOff;
.super Lcom/android/systemui/controls/util/SALogger$Event;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final checked:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/controls/util/SALogger$Event;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-boolean p1, p0, Lcom/android/systemui/controls/util/SALogger$Event$SettingsControlDevicesOnOff;->checked:Z

    return-void
.end method


# virtual methods
.method public final sendEvent(Lcom/android/systemui/controls/util/SystemUIAnalyticsWrapper;)V
    .locals 3

    sget-object v0, Lcom/android/systemui/controls/util/SystemUIAnalyticsWrapper$ScreenId$Settings;->INSTANCE:Lcom/android/systemui/controls/util/SystemUIAnalyticsWrapper$ScreenId$Settings;

    sget-object v1, Lcom/android/systemui/controls/util/SystemUIAnalyticsWrapper$EventId$SettingsControlDevicesOnOff;->INSTANCE:Lcom/android/systemui/controls/util/SystemUIAnalyticsWrapper$EventId$SettingsControlDevicesOnOff;

    sget-object v2, Lcom/android/systemui/controls/util/SALogger;->Companion:Lcom/android/systemui/controls/util/SALogger$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    iget-boolean p0, p0, Lcom/android/systemui/controls/util/SALogger$Event$SettingsControlDevicesOnOff;->checked:Z

    invoke-static {p0, v2}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "Dvcs083"

    const-string v0, "Dvcs08"

    invoke-static {v0, p1, p0}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
