.class public final Lcom/android/systemui/controls/util/SALogger$StatusEvent$DeviceAppStatus;
.super Lcom/android/systemui/controls/util/SALogger$StatusEvent;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final appList:Lcom/android/systemui/controls/util/SALogger$AppStatusList;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/util/SALogger$AppStatusList;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/controls/util/SALogger$StatusEvent;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/android/systemui/controls/util/SALogger$StatusEvent$DeviceAppStatus;->appList:Lcom/android/systemui/controls/util/SALogger$AppStatusList;

    return-void
.end method


# virtual methods
.method public final getKey()Lcom/android/systemui/controls/util/SystemUIAnalyticsWrapper$StatusEventId;
    .locals 0

    sget-object p0, Lcom/android/systemui/controls/util/SystemUIAnalyticsWrapper$StatusEventId$DevicesAppsStatus;->INSTANCE:Lcom/android/systemui/controls/util/SystemUIAnalyticsWrapper$StatusEventId$DevicesAppsStatus;

    return-object p0
.end method

.method public final getValue()Ljava/lang/String;
    .locals 1

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iget-object p0, p0, Lcom/android/systemui/controls/util/SALogger$StatusEvent$DeviceAppStatus;->appList:Lcom/android/systemui/controls/util/SALogger$AppStatusList;

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
