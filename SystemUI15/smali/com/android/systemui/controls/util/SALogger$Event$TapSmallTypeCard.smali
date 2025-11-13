.class public final Lcom/android/systemui/controls/util/SALogger$Event$TapSmallTypeCard;
.super Lcom/android/systemui/controls/util/SALogger$Event;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final deviceName:Ljava/lang/String;

.field public final deviceType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/controls/util/SALogger$Event;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/android/systemui/controls/util/SALogger$Event$TapSmallTypeCard;->deviceName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/systemui/controls/util/SALogger$Event$TapSmallTypeCard;->deviceType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final sendEvent(Lcom/android/systemui/controls/util/SystemUIAnalyticsWrapper;)V
    .locals 10

    sget-object v0, Lcom/android/systemui/controls/util/SystemUIAnalyticsWrapper$ScreenId$MainScreen;->INSTANCE:Lcom/android/systemui/controls/util/SystemUIAnalyticsWrapper$ScreenId$MainScreen;

    sget-object v1, Lcom/android/systemui/controls/util/SystemUIAnalyticsWrapper$EventId$TapSmallTypeCard;->INSTANCE:Lcom/android/systemui/controls/util/SystemUIAnalyticsWrapper$EventId$TapSmallTypeCard;

    sget-object v2, Lcom/android/systemui/controls/util/SystemUIAnalyticsWrapper$KeyId$DeviceName;->INSTANCE:Lcom/android/systemui/controls/util/SystemUIAnalyticsWrapper$KeyId$DeviceName;

    sget-object v3, Lcom/android/systemui/controls/util/SystemUIAnalyticsWrapper$KeyId$DeviceType;->INSTANCE:Lcom/android/systemui/controls/util/SystemUIAnalyticsWrapper$KeyId$DeviceType;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v8, "Device type"

    const-string v4, "Dvcs05"

    const-string v5, "Dvcs054"

    const-string v6, "Device name"

    iget-object v7, p0, Lcom/android/systemui/controls/util/SALogger$Event$TapSmallTypeCard;->deviceName:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/systemui/controls/util/SALogger$Event$TapSmallTypeCard;->deviceType:Ljava/lang/String;

    invoke-static/range {v4 .. v9}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventCDLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
