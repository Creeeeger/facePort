.class public final Lcom/android/systemui/controls/util/SALogger;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final Companion:Lcom/android/systemui/controls/util/SALogger$Companion;


# instance fields
.field public final systemUIAnalyticsWrapper:Lcom/android/systemui/controls/util/SystemUIAnalyticsWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/controls/util/SALogger$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/controls/util/SALogger$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/controls/util/SALogger;->Companion:Lcom/android/systemui/controls/util/SALogger$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/controls/util/SystemUIAnalyticsWrapper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/controls/util/SALogger;->systemUIAnalyticsWrapper:Lcom/android/systemui/controls/util/SystemUIAnalyticsWrapper;

    return-void
.end method


# virtual methods
.method public final sendEvent(Lcom/android/systemui/controls/util/SALogger$Event;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/controls/util/SALogger;->systemUIAnalyticsWrapper:Lcom/android/systemui/controls/util/SystemUIAnalyticsWrapper;

    invoke-virtual {p1, p0}, Lcom/android/systemui/controls/util/SALogger$Event;->sendEvent(Lcom/android/systemui/controls/util/SystemUIAnalyticsWrapper;)V

    return-void
.end method

.method public final sendScreenView(Lcom/android/systemui/controls/util/SALogger$Screen;)V
    .locals 0

    invoke-virtual {p1}, Lcom/android/systemui/controls/util/SALogger$Screen;->getScreenId()Lcom/android/systemui/controls/util/SystemUIAnalyticsWrapper$ScreenId;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/controls/util/SALogger;->systemUIAnalyticsWrapper:Lcom/android/systemui/controls/util/SystemUIAnalyticsWrapper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/android/systemui/controls/util/SystemUIAnalyticsWrapper$ScreenId;->getScreenId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/systemui/util/SystemUIAnalytics;->sendScreenViewLog(Ljava/lang/String;)V

    return-void
.end method

.method public final sendStatusEvent(Landroid/content/Context;Lcom/android/systemui/controls/util/SALogger$StatusEvent;)V
    .locals 2

    sget-object v0, Lcom/android/systemui/controls/util/ControlsPreference;->Companion:Lcom/android/systemui/controls/util/ControlsPreference$Companion;

    invoke-virtual {p2}, Lcom/android/systemui/controls/util/SALogger$StatusEvent;->getKey()Lcom/android/systemui/controls/util/SystemUIAnalyticsWrapper$StatusEventId;

    move-result-object v1

    iget-object p0, p0, Lcom/android/systemui/controls/util/SALogger;->systemUIAnalyticsWrapper:Lcom/android/systemui/controls/util/SystemUIAnalyticsWrapper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Lcom/android/systemui/controls/util/SystemUIAnalyticsWrapper$StatusEventId;->getStatusEventId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Lcom/android/systemui/controls/util/SALogger$StatusEvent;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "controls_prefs"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, p0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
