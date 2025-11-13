.class public final Lcom/android/systemui/controls/util/SystemUIAnalyticsWrapper;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static sendEventLog(Lcom/android/systemui/controls/util/SystemUIAnalyticsWrapper$ScreenId;Lcom/android/systemui/controls/util/SystemUIAnalyticsWrapper$EventId;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/controls/util/SystemUIAnalyticsWrapper$ScreenId;->getScreenId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/systemui/controls/util/SystemUIAnalyticsWrapper$EventId;->getEventId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
