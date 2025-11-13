.class public final Lcom/android/systemui/controls/util/SALogger$Event$TapSpinnerApp;
.super Lcom/android/systemui/controls/util/SALogger$Event;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final selectedApp:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/controls/util/SALogger$Event;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/android/systemui/controls/util/SALogger$Event$TapSpinnerApp;->selectedApp:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final sendEvent(Lcom/android/systemui/controls/util/SystemUIAnalyticsWrapper;)V
    .locals 2

    sget-object v0, Lcom/android/systemui/controls/util/SystemUIAnalyticsWrapper$ScreenId$MainScreen;->INSTANCE:Lcom/android/systemui/controls/util/SystemUIAnalyticsWrapper$ScreenId$MainScreen;

    sget-object v1, Lcom/android/systemui/controls/util/SystemUIAnalyticsWrapper$EventId$TapSpinnerApp;->INSTANCE:Lcom/android/systemui/controls/util/SystemUIAnalyticsWrapper$EventId$TapSpinnerApp;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "Dvcs053"

    const-string v0, "Dvcs05"

    iget-object p0, p0, Lcom/android/systemui/controls/util/SALogger$Event$TapSpinnerApp;->selectedApp:Ljava/lang/String;

    invoke-static {v0, p1, p0}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
