.class public final Lcom/android/systemui/user/ui/binder/StatusBarUserChipViewBinder$bind$1$1$2$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $view:Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserSwitcherContainer;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserSwitcherContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/user/ui/binder/StatusBarUserChipViewBinder$bind$1$1$2$1;->$view:Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserSwitcherContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/systemui/common/shared/model/Text;

    sget-object p2, Lcom/android/systemui/common/ui/binder/TextViewBinder;->INSTANCE:Lcom/android/systemui/common/ui/binder/TextViewBinder;

    iget-object p0, p0, Lcom/android/systemui/user/ui/binder/StatusBarUserChipViewBinder$bind$1$1$2$1;->$view:Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserSwitcherContainer;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserSwitcherContainer;->text:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, p1}, Lcom/android/systemui/common/ui/binder/TextViewBinder;->bind(Landroid/widget/TextView;Lcom/android/systemui/common/shared/model/Text;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
