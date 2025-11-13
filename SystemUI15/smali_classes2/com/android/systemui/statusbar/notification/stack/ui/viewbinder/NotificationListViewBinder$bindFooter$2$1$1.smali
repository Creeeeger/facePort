.class public final Lcom/android/systemui/statusbar/notification/stack/ui/viewbinder/NotificationListViewBinder$bindFooter$2$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $footerView:Lcom/android/systemui/statusbar/notification/footer/ui/view/FooterView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/footer/ui/view/FooterView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/ui/viewbinder/NotificationListViewBinder$bindFooter$2$1$1;->$footerView:Lcom/android/systemui/statusbar/notification/footer/ui/view/FooterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/android/systemui/util/ui/AnimatedValue;

    instance-of p2, p1, Lcom/android/systemui/util/ui/AnimatedValue$Animating;

    if-eqz p2, :cond_0

    check-cast p1, Lcom/android/systemui/util/ui/AnimatedValue$Animating;

    invoke-virtual {p1}, Lcom/android/systemui/util/ui/AnimatedValue$Animating;->getValue()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lcom/android/systemui/util/ui/AnimatedValue$NotAnimating;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/android/systemui/util/ui/AnimatedValue$NotAnimating;

    invoke-virtual {p1}, Lcom/android/systemui/util/ui/AnimatedValue$NotAnimating;->getValue()Ljava/lang/Object;

    move-result-object p1

    :goto_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/ui/viewbinder/NotificationListViewBinder$bindFooter$2$1$1;->$footerView:Lcom/android/systemui/statusbar/notification/footer/ui/view/FooterView;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->setVisible(ZZ)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_1
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method
