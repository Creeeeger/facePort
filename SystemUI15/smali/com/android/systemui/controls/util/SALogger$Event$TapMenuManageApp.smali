.class public final Lcom/android/systemui/controls/util/SALogger$Event$TapMenuManageApp;
.super Lcom/android/systemui/controls/util/SALogger$Event;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final screen:Lcom/android/systemui/controls/util/SALogger$Screen;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/util/SALogger$Screen;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/controls/util/SALogger$Event;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/android/systemui/controls/util/SALogger$Event$TapMenuManageApp;->screen:Lcom/android/systemui/controls/util/SALogger$Screen;

    return-void
.end method


# virtual methods
.method public final sendEvent(Lcom/android/systemui/controls/util/SystemUIAnalyticsWrapper;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/controls/util/SALogger$Event$TapMenuManageApp;->screen:Lcom/android/systemui/controls/util/SALogger$Screen;

    invoke-virtual {p0}, Lcom/android/systemui/controls/util/SALogger$Screen;->getScreenId()Lcom/android/systemui/controls/util/SystemUIAnalyticsWrapper$ScreenId;

    move-result-object p0

    sget-object v0, Lcom/android/systemui/controls/util/SystemUIAnalyticsWrapper$EventId$MoreManageApps;->INSTANCE:Lcom/android/systemui/controls/util/SystemUIAnalyticsWrapper$EventId$MoreManageApps;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, v0}, Lcom/android/systemui/controls/util/SystemUIAnalyticsWrapper;->sendEventLog(Lcom/android/systemui/controls/util/SystemUIAnalyticsWrapper$ScreenId;Lcom/android/systemui/controls/util/SystemUIAnalyticsWrapper$EventId;)V

    return-void
.end method
