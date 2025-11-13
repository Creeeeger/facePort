.class public final Lcom/android/systemui/controls/util/SALogger$Event$IntroStart;
.super Lcom/android/systemui/controls/util/SALogger$Event;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final selectedApps:I

.field public final totalApps:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/controls/util/SALogger$Event;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput p1, p0, Lcom/android/systemui/controls/util/SALogger$Event$IntroStart;->selectedApps:I

    iput p2, p0, Lcom/android/systemui/controls/util/SALogger$Event$IntroStart;->totalApps:I

    return-void
.end method


# virtual methods
.method public final sendEvent(Lcom/android/systemui/controls/util/SystemUIAnalyticsWrapper;)V
    .locals 10

    sget-object v0, Lcom/android/systemui/controls/util/SystemUIAnalyticsWrapper$ScreenId$Intro;->INSTANCE:Lcom/android/systemui/controls/util/SystemUIAnalyticsWrapper$ScreenId$Intro;

    sget-object v1, Lcom/android/systemui/controls/util/SystemUIAnalyticsWrapper$EventId$IntroStart;->INSTANCE:Lcom/android/systemui/controls/util/SystemUIAnalyticsWrapper$EventId$IntroStart;

    sget-object v2, Lcom/android/systemui/controls/util/SystemUIAnalyticsWrapper$KeyId$NumberOfSelectedApps;->INSTANCE:Lcom/android/systemui/controls/util/SystemUIAnalyticsWrapper$KeyId$NumberOfSelectedApps;

    iget v3, p0, Lcom/android/systemui/controls/util/SALogger$Event$IntroStart;->selectedApps:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    sget-object v3, Lcom/android/systemui/controls/util/SystemUIAnalyticsWrapper$KeyId$NumberOfTotalApps;->INSTANCE:Lcom/android/systemui/controls/util/SystemUIAnalyticsWrapper$KeyId$NumberOfTotalApps;

    iget p0, p0, Lcom/android/systemui/controls/util/SALogger$Event$IntroStart;->totalApps:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v8, "num of total apps"

    const-string v4, "Dvcs01"

    const-string v5, "Dvcs013"

    const-string v6, "num of selected apps"

    invoke-static/range {v4 .. v9}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventCDLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
