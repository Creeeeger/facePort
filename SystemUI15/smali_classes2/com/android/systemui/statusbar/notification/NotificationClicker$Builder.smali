.class public final Lcom/android/systemui/statusbar/notification/NotificationClicker$Builder;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mLogger:Lcom/android/systemui/statusbar/notification/NotificationClickerLogger;

.field public final mPowerInteractor:Lcom/android/systemui/power/domain/interactor/PowerInteractor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/NotificationClickerLogger;Lcom/android/systemui/power/domain/interactor/PowerInteractor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationClicker$Builder;->mLogger:Lcom/android/systemui/statusbar/notification/NotificationClickerLogger;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/NotificationClicker$Builder;->mPowerInteractor:Lcom/android/systemui/power/domain/interactor/PowerInteractor;

    return-void
.end method
