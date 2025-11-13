.class public final Lcom/android/systemui/keyguard/ui/binder/DeviceEntryIconViewBinder$bind$2$1$4$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $applicationScope:Lkotlinx/coroutines/CoroutineScope;

.field public final synthetic $vibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

.field public final synthetic $view:Lcom/android/systemui/keyguard/ui/view/DeviceEntryIconView;

.field public final synthetic $viewModel:Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/ui/view/DeviceEntryIconView;Lcom/android/systemui/statusbar/VibratorHelper;Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/ui/binder/DeviceEntryIconViewBinder$bind$2$1$4$1;->$view:Lcom/android/systemui/keyguard/ui/view/DeviceEntryIconView;

    iput-object p2, p0, Lcom/android/systemui/keyguard/ui/binder/DeviceEntryIconViewBinder$bind$2$1$4$1;->$vibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

    iput-object p3, p0, Lcom/android/systemui/keyguard/ui/binder/DeviceEntryIconViewBinder$bind$2$1$4$1;->$applicationScope:Lkotlinx/coroutines/CoroutineScope;

    iput-object p4, p0, Lcom/android/systemui/keyguard/ui/binder/DeviceEntryIconViewBinder$bind$2$1$4$1;->$viewModel:Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lcom/android/systemui/keyguard/ui/view/DeviceEntryIconView$AccessibilityHintType;

    iget-object p2, p0, Lcom/android/systemui/keyguard/ui/binder/DeviceEntryIconViewBinder$bind$2$1$4$1;->$view:Lcom/android/systemui/keyguard/ui/view/DeviceEntryIconView;

    iput-object p1, p2, Lcom/android/systemui/keyguard/ui/view/DeviceEntryIconView;->accessibilityHintType:Lcom/android/systemui/keyguard/ui/view/DeviceEntryIconView$AccessibilityHintType;

    sget-object v0, Lcom/android/systemui/keyguard/ui/view/DeviceEntryIconView$AccessibilityHintType;->NONE:Lcom/android/systemui/keyguard/ui/view/DeviceEntryIconView$AccessibilityHintType;

    if-eq p1, v0, :cond_0

    new-instance p1, Lcom/android/systemui/keyguard/ui/binder/DeviceEntryIconViewBinder$bind$2$1$4$1$1;

    iget-object v0, p0, Lcom/android/systemui/keyguard/ui/binder/DeviceEntryIconViewBinder$bind$2$1$4$1;->$vibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

    iget-object v1, p0, Lcom/android/systemui/keyguard/ui/binder/DeviceEntryIconViewBinder$bind$2$1$4$1;->$applicationScope:Lkotlinx/coroutines/CoroutineScope;

    iget-object p0, p0, Lcom/android/systemui/keyguard/ui/binder/DeviceEntryIconViewBinder$bind$2$1$4$1;->$viewModel:Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel;

    invoke-direct {p1, v0, p2, v1, p0}, Lcom/android/systemui/keyguard/ui/binder/DeviceEntryIconViewBinder$bind$2$1$4$1$1;-><init>(Lcom/android/systemui/statusbar/VibratorHelper;Lcom/android/systemui/keyguard/ui/view/DeviceEntryIconView;Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel;)V

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    invoke-virtual {p2, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
