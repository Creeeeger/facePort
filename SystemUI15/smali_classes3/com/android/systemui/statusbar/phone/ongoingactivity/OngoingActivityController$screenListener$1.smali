.class public final Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController$screenListener$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/unfold/updates/screen/ScreenStatusProvider$ScreenListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController$screenListener$1;->this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScreenTurnedOn()V
    .locals 0

    return-void
.end method

.method public final onScreenTurningOff()V
    .locals 2

    const-string/jumbo v0, "{OngoingActivityController}"

    const-string v1, " screen OFF "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController$screenListener$1;->this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->mOngoingCardController:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;->isScreenTurnedOn:Z

    :goto_0
    return-void
.end method

.method public final onScreenTurningOn()V
    .locals 0

    return-void
.end method
