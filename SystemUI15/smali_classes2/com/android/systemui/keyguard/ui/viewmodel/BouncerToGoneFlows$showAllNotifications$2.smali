.class final Lcom/android/systemui/keyguard/ui/viewmodel/BouncerToGoneFlows$showAllNotifications$2;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation


# instance fields
.field final synthetic $leaveShadeOpen:Lkotlin/jvm/internal/Ref$BooleanRef;

.field final synthetic this$0:Lcom/android/systemui/keyguard/ui/viewmodel/BouncerToGoneFlows;


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/android/systemui/keyguard/ui/viewmodel/BouncerToGoneFlows;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/ui/viewmodel/BouncerToGoneFlows$showAllNotifications$2;->$leaveShadeOpen:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p2, p0, Lcom/android/systemui/keyguard/ui/viewmodel/BouncerToGoneFlows$showAllNotifications$2;->this$0:Lcom/android/systemui/keyguard/ui/viewmodel/BouncerToGoneFlows;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/keyguard/ui/viewmodel/BouncerToGoneFlows$showAllNotifications$2;->$leaveShadeOpen:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object p0, p0, Lcom/android/systemui/keyguard/ui/viewmodel/BouncerToGoneFlows$showAllNotifications$2;->this$0:Lcom/android/systemui/keyguard/ui/viewmodel/BouncerToGoneFlows;

    iget-object p0, p0, Lcom/android/systemui/keyguard/ui/viewmodel/BouncerToGoneFlows;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    check-cast p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mLeaveOpenOnKeyguardHide:Z

    iput-boolean p0, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
