.class public final Lcom/android/systemui/keyguard/ui/binder/DeviceEntryIconViewBinder$bind$2$1$1$1;
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

    iput-object p1, p0, Lcom/android/systemui/keyguard/ui/binder/DeviceEntryIconViewBinder$bind$2$1$1$1;->$longPressHandlingView:Lcom/android/systemui/common/ui/view/LongPressHandlingView;

    iput-object p2, p0, Lcom/android/systemui/keyguard/ui/binder/DeviceEntryIconViewBinder$bind$2$1$1$1;->$view:Lcom/android/systemui/keyguard/ui/view/DeviceEntryIconView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    xor-int/lit8 p2, p1, 0x1

    if-eqz p2, :cond_0

    const/4 p2, 0x4

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/ui/binder/DeviceEntryIconViewBinder$bind$2$1$1$1;->$longPressHandlingView:Lcom/android/systemui/common/ui/view/LongPressHandlingView;

    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/systemui/keyguard/ui/binder/DeviceEntryIconViewBinder$bind$2$1$1$1;->$view:Lcom/android/systemui/keyguard/ui/view/DeviceEntryIconView;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
