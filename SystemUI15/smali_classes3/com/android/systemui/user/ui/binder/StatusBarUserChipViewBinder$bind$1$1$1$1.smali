.class public final Lcom/android/systemui/user/ui/binder/StatusBarUserChipViewBinder$bind$1$1$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $view:Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserSwitcherContainer;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserSwitcherContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/user/ui/binder/StatusBarUserChipViewBinder$bind$1$1$1$1;->$view:Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserSwitcherContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/user/ui/binder/StatusBarUserChipViewBinder$bind$1$1$1$1;->$view:Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserSwitcherContainer;

    invoke-virtual {p0, p1}, Lcom/android/systemui/animation/view/LaunchableLinearLayout;->setVisibility(I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
