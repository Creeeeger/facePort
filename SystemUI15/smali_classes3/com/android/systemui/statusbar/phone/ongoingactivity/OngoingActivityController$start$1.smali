.class public final Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController$start$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController$start$1;->this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onHeadsUpPinnedModeChanged(Z)V
    .locals 4

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController$start$1;->this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->mIsHeadsUpPinned:Z

    const-string v1, " onHeadsUpPinnedModeChanged - "

    const-string v2, " : "

    const-string/jumbo v3, "{OngoingActivityController}"

    invoke-static {v1, v2, v3, v0, p1}, Lcom/android/keyguard/KeyguardKnoxGuardViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->mIsHeadsUpPinned:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->mIsHeadsUpPinned:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->mOngoingCardController:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;->fadeOutCard()V

    :cond_0
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->updateParentViewVisibility(Z)V

    :cond_1
    return-void
.end method
