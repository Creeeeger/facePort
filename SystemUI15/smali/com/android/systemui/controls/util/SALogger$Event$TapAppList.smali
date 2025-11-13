.class public final Lcom/android/systemui/controls/util/SALogger$Event$TapAppList;
.super Lcom/android/systemui/controls/util/SALogger$Event;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final INSTANCE:Lcom/android/systemui/controls/util/SALogger$Event$TapAppList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/controls/util/SALogger$Event$TapAppList;

    invoke-direct {v0}, Lcom/android/systemui/controls/util/SALogger$Event$TapAppList;-><init>()V

    sput-object v0, Lcom/android/systemui/controls/util/SALogger$Event$TapAppList;->INSTANCE:Lcom/android/systemui/controls/util/SALogger$Event$TapAppList;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/controls/util/SALogger$Event;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of p0, p1, Lcom/android/systemui/controls/util/SALogger$Event$TapAppList;

    if-nez p0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    return v0
.end method

.method public final hashCode()I
    .locals 0

    const p0, -0x173f573

    return p0
.end method

.method public final sendEvent(Lcom/android/systemui/controls/util/SystemUIAnalyticsWrapper;)V
    .locals 1

    sget-object p0, Lcom/android/systemui/controls/util/SystemUIAnalyticsWrapper$ScreenId$Intro;->INSTANCE:Lcom/android/systemui/controls/util/SystemUIAnalyticsWrapper$ScreenId$Intro;

    sget-object v0, Lcom/android/systemui/controls/util/SystemUIAnalyticsWrapper$EventId$TapAppList;->INSTANCE:Lcom/android/systemui/controls/util/SystemUIAnalyticsWrapper$EventId$TapAppList;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, v0}, Lcom/android/systemui/controls/util/SystemUIAnalyticsWrapper;->sendEventLog(Lcom/android/systemui/controls/util/SystemUIAnalyticsWrapper$ScreenId;Lcom/android/systemui/controls/util/SystemUIAnalyticsWrapper$EventId;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    const-string p0, "TapAppList"

    return-object p0
.end method
