.class public final synthetic Lcom/android/systemui/statusbar/policy/QSClockBellTower$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/policy/QSClockBellSound;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/policy/QSClockBellSound;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/statusbar/policy/QSClockBellSound;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/statusbar/policy/QSClockBellSound;

    check-cast p1, Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeAudience;

    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeAudience;->notifyTimeChanged(Lcom/android/systemui/statusbar/policy/QSClockBellSound;)V

    return-void
.end method
