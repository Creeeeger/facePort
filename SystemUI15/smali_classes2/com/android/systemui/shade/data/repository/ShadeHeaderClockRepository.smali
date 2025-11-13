.class public final Lcom/android/systemui/shade/data/repository/ShadeHeaderClockRepository;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final nextAlarmCallback:Lcom/android/systemui/shade/data/repository/ShadeHeaderClockRepository$nextAlarmCallback$1;

.field public nextAlarmIntent:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/NextAlarmController;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/shade/data/repository/ShadeHeaderClockRepository$nextAlarmCallback$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/shade/data/repository/ShadeHeaderClockRepository$nextAlarmCallback$1;-><init>(Lcom/android/systemui/shade/data/repository/ShadeHeaderClockRepository;)V

    check-cast p1, Lcom/android/systemui/statusbar/policy/NextAlarmControllerImpl;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/policy/NextAlarmControllerImpl;->addCallback(Ljava/lang/Object;)V

    return-void
.end method
