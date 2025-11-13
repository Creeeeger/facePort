.class public final Lcom/android/systemui/statusbar/notification/row/ui/viewbinder/NotificationViewFlipperBinder$bind$2$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $viewFlipper:Landroid/widget/ViewFlipper;


# direct methods
.method public constructor <init>(Landroid/widget/ViewFlipper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ui/viewbinder/NotificationViewFlipperBinder$bind$2$1$1;->$viewFlipper:Landroid/widget/ViewFlipper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    sget-object p2, Lcom/android/systemui/statusbar/notification/row/ui/viewbinder/NotificationViewFlipperBinder;->INSTANCE:Lcom/android/systemui/statusbar/notification/row/ui/viewbinder/NotificationViewFlipperBinder;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ui/viewbinder/NotificationViewFlipperBinder$bind$2$1$1;->$viewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/ViewFlipper;->stopFlipping()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/ViewFlipper;->isAutoStart()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/widget/ViewFlipper;->startFlipping()V

    :cond_1
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
