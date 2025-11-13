.class public final Lcom/android/systemui/controls/util/SALogger$StatusEvent$NumberOfApps;
.super Lcom/android/systemui/controls/util/SALogger$StatusEvent;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final selectedApps:I

.field public final totalApps:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/controls/util/SALogger$StatusEvent;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput p1, p0, Lcom/android/systemui/controls/util/SALogger$StatusEvent$NumberOfApps;->selectedApps:I

    iput p2, p0, Lcom/android/systemui/controls/util/SALogger$StatusEvent$NumberOfApps;->totalApps:I

    return-void
.end method


# virtual methods
.method public final getKey()Lcom/android/systemui/controls/util/SystemUIAnalyticsWrapper$StatusEventId;
    .locals 0

    sget-object p0, Lcom/android/systemui/controls/util/SystemUIAnalyticsWrapper$StatusEventId$NumberOfAppsInDevices;->INSTANCE:Lcom/android/systemui/controls/util/SystemUIAnalyticsWrapper$StatusEventId$NumberOfAppsInDevices;

    return-object p0
.end method

.method public final getValue()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/android/systemui/controls/util/SALogger$StatusEvent$NumberOfApps;->selectedApps:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/controls/util/SALogger$StatusEvent$NumberOfApps;->totalApps:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
