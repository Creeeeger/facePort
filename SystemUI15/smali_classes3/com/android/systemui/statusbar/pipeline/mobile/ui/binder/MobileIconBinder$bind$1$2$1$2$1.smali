.class public final Lcom/android/systemui/statusbar/pipeline/mobile/ui/binder/MobileIconBinder$bind$1$2$1$2$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $configuration:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field public final synthetic $iconView:Landroid/widget/ImageView;

.field public final synthetic $view:Landroid/view/ViewGroup;

.field public final synthetic $viewModel:Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/LocationBasedMobileViewModel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/LocationBasedMobileViewModel;Landroid/view/ViewGroup;Landroid/widget/ImageView;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/settingslib/graph/SignalDrawable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/binder/MobileIconBinder$bind$1$2$1$2$1;->$viewModel:Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/LocationBasedMobileViewModel;

    iput-object p2, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/binder/MobileIconBinder$bind$1$2$1$2$1;->$view:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/binder/MobileIconBinder$bind$1$2$1$2$1;->$iconView:Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/binder/MobileIconBinder$bind$1$2$1$2$1;->$configuration:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    check-cast p1, Lcom/android/systemui/statusbar/pipeline/mobile/domain/model/SignalIconModel;

    iget-object p2, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/binder/MobileIconBinder$bind$1$2$1$2$1;->$viewModel:Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/LocationBasedMobileViewModel;

    iget-object v0, p2, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/LocationBasedMobileViewModel;->verboseLogger:Lcom/android/systemui/statusbar/pipeline/mobile/ui/VerboseMobileViewLogger;

    iget-object v1, p2, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/LocationBasedMobileViewModel;->commonImpl:Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconViewModelCommon;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/binder/MobileIconBinder$bind$1$2$1$2$1;->$view:Landroid/view/ViewGroup;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconViewModelCommon;->getSubscriptionId()I

    move-result v3

    invoke-virtual {v0, v2, v3, p1}, Lcom/android/systemui/statusbar/pipeline/mobile/ui/VerboseMobileViewLogger;->logBinderReceivedSignalIcon(Landroid/view/View;ILcom/android/systemui/statusbar/pipeline/mobile/domain/model/SignalIconModel;)V

    :cond_0
    instance-of v0, p1, Lcom/android/systemui/statusbar/pipeline/mobile/domain/model/SignalIconModel$Cellular;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/systemui/statusbar/phone/StatusBarLocation;->QS:Lcom/android/systemui/statusbar/phone/StatusBarLocation;

    iget-object p2, p2, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/LocationBasedMobileViewModel;->location:Lcom/android/systemui/statusbar/phone/StatusBarLocation;

    if-ne p2, v0, :cond_2

    iget-object p2, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/binder/MobileIconBinder$bind$1$2$1$2$1;->$iconView:Landroid/widget/ImageView;

    check-cast p1, Lcom/android/systemui/statusbar/pipeline/mobile/domain/model/SignalIconModel$Cellular;

    iget p1, p1, Lcom/android/systemui/statusbar/pipeline/mobile/domain/model/SignalIconModel$Cellular;->iconId:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/binder/MobileIconBinder$bind$1$2$1$2$1;->$view:Landroid/view/ViewGroup;

    invoke-interface {v1, v0, p1}, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconViewModelCommon;->getShadowDrawable(Landroid/view/View;I)Lcom/android/systemui/statusbar/phone/DoubleShadowStatusBarIconDrawable;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/binder/MobileIconBinder$bind$1$2$1$2$1;->$configuration:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    if-eqz p1, :cond_1

    check-cast p1, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->isLayoutRtl()Z

    move-result p1

    if-eqz p1, :cond_1

    const/high16 p1, -0x40800000    # -1.0f

    goto :goto_0

    :cond_1
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/binder/MobileIconBinder$bind$1$2$1$2$1;->$iconView:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setScaleX(F)V

    goto :goto_1

    :cond_2
    sget-object p2, Lcom/android/systemui/common/ui/binder/IconViewBinder;->INSTANCE:Lcom/android/systemui/common/ui/binder/IconViewBinder;

    new-instance v0, Lcom/android/systemui/common/shared/model/Icon$Resource;

    check-cast p1, Lcom/android/systemui/statusbar/pipeline/mobile/domain/model/SignalIconModel$Cellular;

    iget p1, p1, Lcom/android/systemui/statusbar/pipeline/mobile/domain/model/SignalIconModel$Cellular;->iconId:I

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/systemui/common/shared/model/Icon$Resource;-><init>(ILcom/android/systemui/common/shared/model/ContentDescription;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/binder/MobileIconBinder$bind$1$2$1$2$1;->$iconView:Landroid/widget/ImageView;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, p0}, Lcom/android/systemui/common/ui/binder/IconViewBinder;->bind(Lcom/android/systemui/common/shared/model/Icon;Landroid/widget/ImageView;)V

    goto :goto_1

    :cond_3
    instance-of p2, p1, Lcom/android/systemui/statusbar/pipeline/mobile/domain/model/SignalIconModel$Satellite;

    if-eqz p2, :cond_4

    sget-object p2, Lcom/android/systemui/common/ui/binder/IconViewBinder;->INSTANCE:Lcom/android/systemui/common/ui/binder/IconViewBinder;

    check-cast p1, Lcom/android/systemui/statusbar/pipeline/mobile/domain/model/SignalIconModel$Satellite;

    iget-object p1, p1, Lcom/android/systemui/statusbar/pipeline/mobile/domain/model/SignalIconModel$Satellite;->icon:Lcom/android/systemui/common/shared/model/Icon$Resource;

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/binder/MobileIconBinder$bind$1$2$1$2$1;->$iconView:Landroid/widget/ImageView;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p0}, Lcom/android/systemui/common/ui/binder/IconViewBinder;->bind(Lcom/android/systemui/common/shared/model/Icon;Landroid/widget/ImageView;)V

    :cond_4
    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
