.class public final Lcom/android/systemui/keyguard/ui/binder/DeviceEntryIconViewBinder$bind$2$1$3$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $longPressHandlingView:Lcom/android/systemui/common/ui/view/LongPressHandlingView;

.field public final synthetic $view:Lcom/android/systemui/keyguard/ui/view/DeviceEntryIconView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/common/ui/view/LongPressHandlingView;Lcom/android/systemui/keyguard/ui/view/DeviceEntryIconView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/ui/binder/DeviceEntryIconViewBinder$bind$2$1$3$1;->$longPressHandlingView:Lcom/android/systemui/common/ui/view/LongPressHandlingView;

    iput-object p2, p0, Lcom/android/systemui/keyguard/ui/binder/DeviceEntryIconViewBinder$bind$2$1$3$1;->$view:Lcom/android/systemui/keyguard/ui/view/DeviceEntryIconView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object p2, p0, Lcom/android/systemui/keyguard/ui/binder/DeviceEntryIconViewBinder$bind$2$1$3$1;->$view:Lcom/android/systemui/keyguard/ui/view/DeviceEntryIconView;

    if-eqz p1, :cond_0

    new-instance p1, Lcom/android/systemui/keyguard/ui/binder/DeviceEntryIconViewBinder$bind$2$1$3$1$1;

    invoke-direct {p1, p2}, Lcom/android/systemui/keyguard/ui/binder/DeviceEntryIconViewBinder$bind$2$1$3$1$1;-><init>(Lcom/android/systemui/keyguard/ui/view/DeviceEntryIconView;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/android/systemui/keyguard/ui/binder/DeviceEntryIconViewBinder$bind$2$1$3$1$2;

    invoke-direct {p1, p2}, Lcom/android/systemui/keyguard/ui/binder/DeviceEntryIconViewBinder$bind$2$1$3$1$2;-><init>(Lcom/android/systemui/keyguard/ui/view/DeviceEntryIconView;)V

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/keyguard/ui/binder/DeviceEntryIconViewBinder$bind$2$1$3$1;->$longPressHandlingView:Lcom/android/systemui/common/ui/view/LongPressHandlingView;

    iget-object p0, p0, Lcom/android/systemui/common/ui/view/LongPressHandlingView;->interactionHandler$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/common/ui/view/LongPressHandlingViewInteractionHandler;

    iput-object p1, p0, Lcom/android/systemui/common/ui/view/LongPressHandlingViewInteractionHandler;->longPressDuration:Lkotlin/jvm/functions/Function0;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
