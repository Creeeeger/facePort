.class public final Lcom/android/systemui/statusbar/disableflags/DisableStateTracker;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;


# instance fields
.field public final callback:Lcom/android/systemui/statusbar/disableflags/DisableStateTracker$Callback;

.field public displayId:Ljava/lang/Integer;

.field public isDisabled:Z

.field public final mask1:I

.field public final mask2:I


# direct methods
.method public constructor <init>(IILcom/android/systemui/statusbar/disableflags/DisableStateTracker$Callback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/statusbar/disableflags/DisableStateTracker;->mask1:I

    iput p2, p0, Lcom/android/systemui/statusbar/disableflags/DisableStateTracker;->mask2:I

    iput-object p3, p0, Lcom/android/systemui/statusbar/disableflags/DisableStateTracker;->callback:Lcom/android/systemui/statusbar/disableflags/DisableStateTracker$Callback;

    return-void
.end method


# virtual methods
.method public final disable(IIIZ)V
    .locals 0

    iget-object p4, p0, Lcom/android/systemui/statusbar/disableflags/DisableStateTracker;->displayId:Ljava/lang/Integer;

    if-eqz p4, :cond_4

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    if-eq p1, p4, :cond_0

    goto :goto_2

    :cond_0
    iget p1, p0, Lcom/android/systemui/statusbar/disableflags/DisableStateTracker;->mask1:I

    and-int/2addr p1, p2

    if-nez p1, :cond_2

    iget p1, p0, Lcom/android/systemui/statusbar/disableflags/DisableStateTracker;->mask2:I

    and-int/2addr p1, p3

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/disableflags/DisableStateTracker;->isDisabled:Z

    if-ne p2, p1, :cond_3

    goto :goto_2

    :cond_3
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/disableflags/DisableStateTracker;->isDisabled:Z

    iget-object p0, p0, Lcom/android/systemui/statusbar/disableflags/DisableStateTracker;->callback:Lcom/android/systemui/statusbar/disableflags/DisableStateTracker$Callback;

    check-cast p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$$ExternalSyntheticLambda2;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->updateViewState()V

    :cond_4
    :goto_2
    return-void
.end method
