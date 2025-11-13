.class public final Lcom/android/systemui/shade/ShadeHeadsUpTrackerEmptyImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/shade/ShadeHeadsUpTracker;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final addTrackingHeadsUpListener(Ljava/util/function/Consumer;)V
    .locals 0

    return-void
.end method

.method public final getTrackedHeadsUpNotification()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final removeTrackingHeadsUpListener(Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController$$ExternalSyntheticLambda0;)V
    .locals 0

    return-void
.end method

.method public final setHeadsUpAppearanceController(Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;)V
    .locals 0

    return-void
.end method
