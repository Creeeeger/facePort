.class public final Lcom/android/systemui/statusbar/chips/call/ui/viewmodel/CallChipViewModel$chip$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $state:Lcom/android/systemui/statusbar/phone/ongoingcall/shared/model/OngoingCallModel;

.field public final synthetic this$0:Lcom/android/systemui/statusbar/chips/call/ui/viewmodel/CallChipViewModel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/ongoingcall/shared/model/OngoingCallModel;Lcom/android/systemui/statusbar/chips/call/ui/viewmodel/CallChipViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/chips/call/ui/viewmodel/CallChipViewModel$chip$1$1;->$state:Lcom/android/systemui/statusbar/phone/ongoingcall/shared/model/OngoingCallModel;

    iput-object p2, p0, Lcom/android/systemui/statusbar/chips/call/ui/viewmodel/CallChipViewModel$chip$1$1;->this$0:Lcom/android/systemui/statusbar/chips/call/ui/viewmodel/CallChipViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/chips/call/ui/viewmodel/CallChipViewModel$chip$1$1;->$state:Lcom/android/systemui/statusbar/phone/ongoingcall/shared/model/OngoingCallModel;

    check-cast v0, Lcom/android/systemui/statusbar/phone/ongoingcall/shared/model/OngoingCallModel$InCall;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/ongoingcall/shared/model/OngoingCallModel$InCall;->intent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    const v0, 0x7f0a0843

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/chips/ui/view/ChipBackgroundContainer;

    iget-object v0, p0, Lcom/android/systemui/statusbar/chips/call/ui/viewmodel/CallChipViewModel$chip$1$1;->this$0:Lcom/android/systemui/statusbar/chips/call/ui/viewmodel/CallChipViewModel;

    iget-object v0, v0, Lcom/android/systemui/statusbar/chips/call/ui/viewmodel/CallChipViewModel;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    iget-object p0, p0, Lcom/android/systemui/statusbar/chips/call/ui/viewmodel/CallChipViewModel$chip$1$1;->$state:Lcom/android/systemui/statusbar/phone/ongoingcall/shared/model/OngoingCallModel;

    check-cast p0, Lcom/android/systemui/statusbar/phone/ongoingcall/shared/model/OngoingCallModel$InCall;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/shared/model/OngoingCallModel$InCall;->intent:Landroid/app/PendingIntent;

    sget-object v1, Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;->Companion:Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller$Companion;

    const/16 v2, 0x22

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x1c

    invoke-static {v1, p1, v2, v3}, Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller$Companion;->fromView$default(Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller$Companion;Landroid/view/View;Ljava/lang/Integer;I)Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/app/PendingIntent;Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;)V

    :cond_0
    return-void
.end method
