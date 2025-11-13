.class public final Lcom/android/systemui/statusbar/notification/stack/ui/viewbinder/HideNotificationsBinder$bindHideList$2$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $viewController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/ui/viewbinder/HideNotificationsBinder$bindHideList$2$1;->$viewController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    sget-object p2, Lcom/android/systemui/statusbar/notification/stack/ui/viewbinder/HideNotificationsBinder;->INSTANCE:Lcom/android/systemui/statusbar/notification/stack/ui/viewbinder/HideNotificationsBinder;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/ui/viewbinder/HideNotificationsBinder$bindHideList$2$1;->$viewController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-static {p2, p0, p1}, Lcom/android/systemui/statusbar/notification/stack/ui/viewbinder/HideNotificationsBinder;->access$bindHideState(Lcom/android/systemui/statusbar/notification/stack/ui/viewbinder/HideNotificationsBinder;Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;Z)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
