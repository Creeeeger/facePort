.class public final Lcom/android/systemui/keyguard/ui/binder/DeviceEntryIconViewBinder$bind$2$1$6$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $view:Lcom/android/systemui/keyguard/ui/view/DeviceEntryIconView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/ui/view/DeviceEntryIconView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/ui/binder/DeviceEntryIconViewBinder$bind$2$1$6$1;->$view:Lcom/android/systemui/keyguard/ui/view/DeviceEntryIconView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/systemui/keyguard/ui/viewmodel/BurnInOffsets;

    iget p2, p1, Lcom/android/systemui/keyguard/ui/viewmodel/BurnInOffsets;->x:I

    int-to-float p2, p2

    iget-object p0, p0, Lcom/android/systemui/keyguard/ui/binder/DeviceEntryIconViewBinder$bind$2$1$6$1;->$view:Lcom/android/systemui/keyguard/ui/view/DeviceEntryIconView;

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    iget p2, p1, Lcom/android/systemui/keyguard/ui/viewmodel/BurnInOffsets;->y:I

    int-to-float p2, p2

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    iget-object p0, p0, Lcom/android/systemui/keyguard/ui/view/DeviceEntryIconView;->aodFpDrawable:Lcom/airbnb/lottie/LottieDrawable;

    iget p1, p1, Lcom/android/systemui/keyguard/ui/viewmodel/BurnInOffsets;->progress:F

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieDrawable;->setProgress(F)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
