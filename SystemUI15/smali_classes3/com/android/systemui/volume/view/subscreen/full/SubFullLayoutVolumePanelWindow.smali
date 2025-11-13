.class public final Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelWindow;
.super Landroid/app/Dialog;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/samsung/systemui/splugins/volume/VolumeObserver;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final infraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

.field public final log:Lcom/android/systemui/basic/util/LogWrapper;

.field public final panelView:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;

.field public final store$delegate:Lkotlin/Lazy;

.field public final storeInteractor$delegate:Lkotlin/Lazy;

.field public final volDeps:Lcom/android/systemui/volume/VolumeDependencyBase;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelWindow$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelWindow$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/volume/VolumeDependencyBase;)V
    .locals 10

    const-class v0, Landroid/content/Context;

    move-object v1, p1

    check-cast v1, Lcom/android/systemui/volume/VolumeDependency;

    invoke-virtual {v1, v0}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-class v2, Lcom/android/systemui/volume/util/DisplayManagerWrapper;

    invoke-virtual {v1, v2}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/volume/util/DisplayManagerWrapper;

    invoke-virtual {v3}, Lcom/android/systemui/volume/util/DisplayManagerWrapper;->getFrontSubDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/16 v4, 0x7e4

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/Context;->createWindowContext(Landroid/view/Display;ILandroid/os/Bundle;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelWindow;->volDeps:Lcom/android/systemui/volume/VolumeDependencyBase;

    new-instance v0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelWindow$store$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelWindow$store$2;-><init>(Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelWindow;)V

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelWindow;->store$delegate:Lkotlin/Lazy;

    new-instance v0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelWindow$storeInteractor$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelWindow$storeInteractor$2;-><init>(Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelWindow;)V

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelWindow;->storeInteractor$delegate:Lkotlin/Lazy;

    const-class v0, Lcom/android/systemui/volume/config/VolumeConfigs;

    invoke-virtual {v1, v0}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/config/VolumeConfigs;

    iget-object v0, v0, Lcom/android/systemui/volume/config/VolumeConfigs;->systemConfig$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/config/SystemConfigImpl;

    const-class v3, Lcom/android/systemui/basic/util/LogWrapper;

    invoke-virtual {v1, v3}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/basic/util/LogWrapper;

    iput-object v3, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelWindow;->log:Lcom/android/systemui/basic/util/LogWrapper;

    const-class v3, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    invoke-virtual {v1, v3}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    iput-object v3, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelWindow;->infraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v6, 0x1

    if-eqz v3, :cond_1

    invoke-virtual {v3, v6}, Landroid/view/Window;->requestFeature(I)Z

    new-instance v7, Landroid/graphics/drawable/ColorDrawable;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v7}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v7, 0x2

    invoke-virtual {v3, v7}, Landroid/view/Window;->clearFlags(I)V

    const v8, 0x10c0028

    invoke-virtual {v3, v8}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v8

    iput v4, v8, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v4, -0x3

    iput v4, v8, Landroid/view/WindowManager$LayoutParams;->format:I

    const-string v4, "SubFullLayoutVolumePanelWindow"

    invoke-virtual {v8, v4}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v4, -0x2

    iput v4, v8, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v4, -0x1

    iput v4, v8, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v9, 0x15

    iput v9, v8, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iput v4, v8, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    invoke-virtual {v3}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v4

    const v9, 0x7f13146f

    invoke-virtual {v4, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v8, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    iget-object v0, v0, Lcom/android/systemui/volume/config/SystemConfigImpl;->hasCutout$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, v8, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v4, 0x4000400

    or-int/2addr v0, v4

    iput v0, v8, Landroid/view/WindowManager$LayoutParams;->flags:I

    iput v7, v8, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    :cond_0
    invoke-virtual {v3, v8}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_1
    const v0, 0x7f0d046d

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setContentView(I)V

    const v0, 0x7f0a0e72

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;

    iput-object v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelWindow;->panelView:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;

    const-string v3, "SubFullLayoutVolumePanelView"

    const-string v4, "SubFullLayoutVolumePanelView: bind"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p0, v0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->dialog:Landroid/app/Dialog;

    const-class v3, Lcom/android/systemui/volume/util/HandlerWrapper;

    invoke-virtual {v1, v3}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/volume/util/HandlerWrapper;

    iput-object v3, v0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->handlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    const-class v3, Lcom/android/systemui/volume/store/VolumePanelStore;

    invoke-virtual {v1, v3}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/volume/store/VolumePanelStore;

    iput-object v3, v0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->store:Lcom/android/systemui/volume/store/VolumePanelStore;

    iget-object v4, v0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move-object v3, v5

    :goto_0
    iput-object v3, v4, Lcom/android/systemui/volume/store/StoreInteractor;->store:Lcom/android/systemui/volume/store/VolumePanelStore;

    iput-object p1, v0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->volDeps:Lcom/android/systemui/volume/VolumeDependencyBase;

    const-class v3, Lcom/android/systemui/volume/util/ToastWrapper;

    invoke-virtual {v1, v3}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/volume/util/ToastWrapper;

    const-class v3, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;

    invoke-virtual {v1, v3}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;

    iput-object v3, v0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->volumePanelMotion:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;

    new-instance v3, Lcom/android/systemui/volume/util/BlurEffect;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, p1}, Lcom/android/systemui/volume/util/BlurEffect;-><init>(Landroid/content/Context;Lcom/android/systemui/volume/VolumeDependencyBase;)V

    iput-object v3, v0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->blurEffect:Lcom/android/systemui/volume/util/BlurEffect;

    invoke-virtual {v1, v2}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/volume/util/DisplayManagerWrapper;

    const-class p1, Lcom/android/systemui/volume/util/IDisplayManagerWrapper;

    invoke-virtual {v1, p1}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/volume/util/IDisplayManagerWrapper;

    iput-object p1, v0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->iDisplayManagerWrapper:Lcom/android/systemui/volume/util/IDisplayManagerWrapper;

    const-class p1, Lcom/android/systemui/volume/util/VibratorWrapper;

    invoke-virtual {v1, p1}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/volume/util/VibratorWrapper;

    iput-object p1, v0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->vibratorWrapper:Lcom/android/systemui/volume/util/VibratorWrapper;

    const-class p1, Lcom/android/systemui/volume/util/PowerManagerWrapper;

    invoke-virtual {v1, p1}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/volume/util/PowerManagerWrapper;

    iput-object p1, v0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->powerManagerWrapper:Lcom/android/systemui/volume/util/PowerManagerWrapper;

    const-class p1, Lcom/android/systemui/volume/util/PluginAODManagerWrapper;

    invoke-virtual {v1, p1}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/volume/util/PluginAODManagerWrapper;

    iput-object p1, v0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->pluginAODManagerWrapper:Lcom/android/systemui/volume/util/PluginAODManagerWrapper;

    iget-object p1, v0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->volumePanelDualView:Landroid/view/ViewGroup;

    if-nez p1, :cond_3

    move-object p1, v5

    :cond_3
    new-instance v1, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView$bind$1;

    invoke-direct {v1, v0}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView$bind$1;-><init>(Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;)V

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object p1, v0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->volumePanelDualView:Landroid/view/ViewGroup;

    if-nez p1, :cond_4

    move-object p1, v5

    :cond_4
    const v1, 0x7f0a0e62

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    sget-object v1, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView$bind$2;->INSTANCE:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView$bind$2;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object p1, v0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->dialog:Landroid/app/Dialog;

    if-nez p1, :cond_5

    move-object p1, v5

    :cond_5
    new-instance v1, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView$bind$3;

    invoke-direct {v1, v0}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView$bind$3;-><init>(Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;)V

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    iget-object p1, v0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->dialog:Landroid/app/Dialog;

    if-nez p1, :cond_6

    move-object p1, v5

    :cond_6
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    new-instance v1, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView$bind$4;

    invoke-direct {v1, v0}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView$bind$4;-><init>(Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    iget-object p1, v0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->volumePanelMotion:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;

    if-nez p1, :cond_7

    move-object p1, v5

    :cond_7
    iget-object v1, v0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->dialog:Landroid/app/Dialog;

    if-nez v1, :cond_8

    move-object v1, v5

    :cond_8
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;->getSeekBarTouchUpAnimation(Landroid/view/View;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    iput-object p1, v0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->touchUpAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object p1, v0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->volumePanelMotion:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;

    if-nez p1, :cond_9

    move-object p1, v5

    :cond_9
    iget-object v1, v0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->dialog:Landroid/app/Dialog;

    if-nez v1, :cond_a

    move-object v1, v5

    :cond_a
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;->getSeekBarTouchDownAnimation(Landroid/view/View;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    iput-object p1, v0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->touchDownAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object p1, v0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->volumePanelMotion:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;

    if-nez p1, :cond_b

    move-object p1, v5

    :cond_b
    iget-object v1, v0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->dialog:Landroid/app/Dialog;

    if-nez v1, :cond_c

    move-object v1, v5

    :cond_c
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v2, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_X:Landroidx/dynamicanimation/animation/DynamicAnimation$4;

    invoke-direct {p1, v1, v2}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    new-instance v3, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion$getSeekBarKeyDownAnimation$1$1;

    invoke-direct {v3, v1}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion$getSeekBarKeyDownAnimation$1$1;-><init>(Landroid/view/View;)V

    invoke-virtual {p1, v3}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)V

    new-instance v1, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v1}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    const/high16 v3, 0x43fa0000    # 500.0f

    invoke-virtual {v1, v3}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)V

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1, v3}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)V

    iput-object v1, p1, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    iput-object p1, v0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->keyDownAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object p1, v0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->volumePanelMotion:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;

    if-nez p1, :cond_d

    move-object p1, v5

    :cond_d
    iget-object v1, v0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->dialog:Landroid/app/Dialog;

    if-nez v1, :cond_e

    goto :goto_1

    :cond_e
    move-object v5, v1

    :goto_1
    invoke-virtual {v5}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-direct {p1, v1, v2}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    new-instance v2, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion$getSeekBarKeyUpAnimation$1$1;

    invoke-direct {v2, v1}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion$getSeekBarKeyUpAnimation$1$1;-><init>(Landroid/view/View;)V

    invoke-virtual {p1, v2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)V

    new-instance v1, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v1}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    const/high16 v2, 0x43e10000    # 450.0f

    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)V

    invoke-virtual {v1, v3}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)V

    iput-object v1, p1, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    iput-object p1, v0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->keyUpAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f0714f6

    invoke-static {v1, p1}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenFloat(ILandroid/content/Context;)F

    move-result p1

    iput p1, v0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->swipeDistance:F

    invoke-virtual {p0, v6}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    return-void
.end method


# virtual methods
.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelWindow;->panelView:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 p0, 0x1

    return p0
.end method

.method public final observeStore()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelWindow;->storeInteractor$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/store/StoreInteractor;

    invoke-virtual {v0}, Lcom/android/systemui/volume/store/StoreInteractor;->observeStore()V

    iget-object p0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelWindow;->panelView:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;

    iget-object v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    invoke-virtual {v0}, Lcom/android/systemui/volume/store/StoreInteractor;->observeStore()V

    iget-object v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->volumePanelMotion:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->store:Lcom/android/systemui/volume/store/VolumePanelStore;

    if-eqz v2, :cond_1

    move-object v1, v2

    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    iget-object v2, v0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    iput-object v1, v2, Lcom/android/systemui/volume/store/StoreInteractor;->store:Lcom/android/systemui/volume/store/VolumePanelStore;

    iput-object p0, v0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;->context:Landroid/content/Context;

    return-void
.end method

.method public final onChanged(Ljava/lang/Object;)V
    .locals 13

    check-cast p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getStateType()Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelWindow$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x0

    const v2, 0x7f0814b3

    const v3, 0x7f0813d3

    const-class v4, Lcom/android/systemui/util/SettingsHelper;

    const/4 v5, 0x0

    const/4 v6, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_e

    :pswitch_0
    iget-object p1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelWindow;->panelView:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;

    invoke-virtual {p1}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->startDismissAnimation()V

    new-instance p1, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelExpandWindow;

    iget-object p0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelWindow;->volDeps:Lcom/android/systemui/volume/VolumeDependencyBase;

    invoke-direct {p1, p0}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelExpandWindow;-><init>(Lcom/android/systemui/volume/VolumeDependencyBase;)V

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_0
    iget-object p0, p1, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelExpandWindow;->panelView:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelExpandView;

    iget-object p1, p1, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelExpandWindow;->store$delegate:Lkotlin/Lazy;

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/volume/store/VolumePanelStore;

    iget-object p1, p1, Lcom/android/systemui/volume/store/VolumePanelStore;->currentState:Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    const v0, 0x7f0a0e67

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const v7, 0x7f0a0e74

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelExpandView;->rowContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelExpandView;->addRows$1(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    const v0, 0x7f0a0e65

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Space;

    const v7, 0x7f0a0e70

    invoke-virtual {p0, v7}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    const v8, 0x7f0a0e6e

    invoke-virtual {p0, v8}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const v9, 0x7f0a0e6f

    invoke-virtual {p0, v9}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x7f060add

    invoke-static {v11, v10}, Lcom/android/systemui/volume/util/ColorUtils;->getSingleColorStateList(ILandroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isAllSoundOff()Z

    move-result v10

    const/4 v11, 0x1

    if-nez v10, :cond_2

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isZenMode()Z

    move-result v10

    if-nez v10, :cond_2

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isLeBroadcasting()Z

    move-result v10

    if-eqz v10, :cond_1

    goto :goto_0

    :cond_1
    move v10, v6

    goto :goto_1

    :cond_2
    :goto_0
    move v10, v11

    :goto_1
    sget-object v12, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->INSTANCE:Lcom/android/systemui/volume/util/ViewVisibilityUtil;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v10, :cond_3

    invoke-static {v0}, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->setGone(Landroid/view/View;)V

    goto :goto_2

    :cond_3
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    sget-object v0, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->INSTANCE:Lcom/android/systemui/volume/util/ViewVisibilityUtil;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v10, :cond_4

    invoke-virtual {v7, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_4
    invoke-static {v7}, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->setGone(Landroid/view/View;)V

    :goto_3
    if-eqz v10, :cond_9

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isAllSoundOff()Z

    move-result v0

    if-eqz v0, :cond_5

    const v0, 0x7f13145a

    goto :goto_4

    :cond_5
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isZenMode()Z

    move-result v0

    if-eqz v0, :cond_6

    const v0, 0x7f131480

    goto :goto_4

    :cond_6
    const v0, 0x7f13145f

    :goto_4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isAllSoundOff()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isZenMode()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_5

    :cond_7
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isLeBroadcasting()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v8, 0x7f08081f

    invoke-virtual {v0, v8, v5}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelExpandView$updateStatusMsgArea$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelExpandView$updateStatusMsgArea$2;-><init>(Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelExpandView;)V

    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_6

    :cond_8
    :goto_5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v8, 0x7f080b5a

    invoke-virtual {v0, v8, v5}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelExpandView$updateStatusMsgArea$1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelExpandView$updateStatusMsgArea$1;-><init>(Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelExpandView;Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_9
    :goto_6
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v7, 0x7f0714ec

    invoke-static {v7, v0}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenInt(ILandroid/content/Context;)I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f0714e1

    invoke-static {v8, v7}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenInt(ILandroid/content/Context;)I

    move-result v7

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0714e2

    invoke-static {v9, v8}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenInt(ILandroid/content/Context;)I

    move-result v8

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isZenMode()Z

    move-result v9

    if-nez v9, :cond_a

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isAllSoundOff()Z

    move-result v9

    if-eqz v9, :cond_b

    :cond_a
    move v6, v11

    :cond_b
    const v9, 0x7f0a0e68

    invoke-virtual {p0, v9}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    iput v0, v10, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eqz v6, :cond_c

    move v7, v8

    :cond_c
    iput v7, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v0, v4}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isReduceTransparencyEnabled()Z

    move-result v0

    if-nez v0, :cond_e

    sget-boolean v0, Lcom/android/systemui/BasicRune;->VOLUME_PARTIAL_BLUR:Z

    if-nez v0, :cond_d

    sget-boolean v0, Lcom/android/systemui/BasicRune;->VOLUME_CAPTURED_BLUR:Z

    if-eqz v0, :cond_e

    :cond_d
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_7

    :cond_e
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_7
    new-instance v0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelExpandView$adjustTouchEventForOutsideTouch$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelExpandView$adjustTouchEventForOutsideTouch$1;-><init>(Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelExpandView;)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelExpandView;->contentsView:Landroid/view/ViewGroup;

    if-nez v0, :cond_f

    move-object v0, v5

    :cond_f
    sget-object v2, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelExpandView$adjustTouchEventForOutsideTouch$2;->INSTANCE:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelExpandView$adjustTouchEventForOutsideTouch$2;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelExpandView;->dialog:Landroid/app/Dialog;

    if-nez v0, :cond_10

    move-object v0, v5

    :cond_10
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelExpandView;->dialog:Landroid/app/Dialog;

    if-nez v0, :cond_11

    move-object v0, v5

    :cond_11
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v1, 0x3f733333    # 0.95f

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    iget-object v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelExpandView;->dialog:Landroid/app/Dialog;

    if-nez v0, :cond_12

    move-object v0, v5

    :cond_12
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    sget-object v0, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->INSTANCE:Lcom/android/systemui/volume/util/ViewVisibilityUtil;

    iget-object v1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelExpandView;->liveCaptionButton:Landroid/widget/ImageButton;

    if-nez v1, :cond_13

    move-object v1, v5

    :cond_13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->setGone(Landroid/view/View;)V

    sget-object v0, Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;->INSTANCE:Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getActiveStream()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;->findRow(Lcom/samsung/systemui/splugins/volume/VolumePanelState;I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelExpandView;->updateVolumeTitle$1(I)V

    :cond_14
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isShowA11yStream()Z

    move-result p1

    if-eqz p1, :cond_16

    iget-object p1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelExpandView;->dialog:Landroid/app/Dialog;

    if-nez p1, :cond_15

    move-object p1, v5

    :cond_15
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V

    :cond_16
    iget-object p0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelExpandView;->dialog:Landroid/app/Dialog;

    if-nez p0, :cond_17

    goto :goto_8

    :cond_17
    move-object v5, p0

    :goto_8
    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    goto/16 :goto_e

    :pswitch_1
    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_39

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    goto/16 :goto_e

    :pswitch_2
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isShowingSubDisplayVolumePanel()Z

    move-result p1

    if-eqz p1, :cond_39

    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_39

    iget-object p0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelWindow;->panelView:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;

    invoke-virtual {p0}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->startDismissAnimation()V

    goto/16 :goto_e

    :pswitch_3
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_19

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget-object v7, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelWindow;->infraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    invoke-interface {v7}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isSupportTvVolumeSync()Z

    move-result v7

    const/high16 v8, -0x80000000

    if-eqz v7, :cond_18

    invoke-virtual {v0, v8}, Landroid/view/WindowManager$LayoutParams;->semAddExtensionFlags(I)V

    goto :goto_9

    :cond_18
    invoke-virtual {v0, v8}, Landroid/view/WindowManager$LayoutParams;->semClearExtensionFlags(I)V

    :goto_9
    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_19
    iget-object p1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelWindow;->panelView:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;

    iget-object p0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelWindow;->store$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/volume/store/VolumePanelStore;

    iget-object p0, p0, Lcom/android/systemui/volume/store/VolumePanelStore;->currentState:Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isLockscreen()Z

    move-result v0

    iput-boolean v0, p1, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->isLockscreen:Z

    invoke-static {p0}, Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;->isDualViewEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)Z

    move-result v0

    iput-boolean v0, p1, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->isDualViewEnabled:Z

    sget-boolean v0, Lcom/android/systemui/BasicRune;->VOLUME_REFRESH_RATE_FIXED:Z

    if-eqz v0, :cond_1c

    iget-object v0, p1, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->handlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    if-nez v0, :cond_1a

    move-object v0, v5

    :cond_1a
    iget-object v7, p1, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->iDisplayManagerWrapper:Lcom/android/systemui/volume/util/IDisplayManagerWrapper;

    if-nez v7, :cond_1b

    move-object v7, v5

    :cond_1b
    iget-object v7, v7, Lcom/android/systemui/volume/util/IDisplayManagerWrapper;->refreshRateLimitOnRunnable:Lcom/android/systemui/volume/util/IDisplayManagerWrapper$refreshRateLimitOnRunnable$1;

    invoke-virtual {v0, v7}, Lcom/android/systemui/volume/util/HandlerWrapper;->post(Ljava/lang/Runnable;)V

    :cond_1c
    invoke-static {p0}, Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;->isAODVolumePanel(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)Z

    move-result v0

    const v7, 0x7f0a0e66

    const v8, 0x7f0a0e6c

    if-eqz v0, :cond_1f

    iget-object v0, p1, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->volumePanelView:Landroid/view/ViewGroup;

    if-nez v0, :cond_1d

    move-object v0, v5

    :cond_1d
    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p1, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->rowContainer:Landroid/view/ViewGroup;

    iget-object v0, p1, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->volumePanelView:Landroid/view/ViewGroup;

    if-nez v0, :cond_1e

    move-object v0, v5

    :cond_1e
    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->expandButton:Landroid/widget/ImageView;

    goto :goto_a

    :cond_1f
    iget-boolean v0, p1, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->isDualViewEnabled:Z

    if-eqz v0, :cond_23

    iget-object v0, p1, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->volumePanelDualView:Landroid/view/ViewGroup;

    if-nez v0, :cond_20

    move-object v0, v5

    :cond_20
    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p1, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->rowContainer:Landroid/view/ViewGroup;

    iget-object v0, p1, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->volumePanelDualView:Landroid/view/ViewGroup;

    if-nez v0, :cond_21

    move-object v0, v5

    :cond_21
    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->expandButton:Landroid/widget/ImageView;

    iget-object v0, p1, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->volumePanelDualView:Landroid/view/ViewGroup;

    if-nez v0, :cond_22

    move-object v0, v5

    :cond_22
    const v7, 0x7f0a0e63

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->dualViewTitle:Landroid/widget/TextView;

    goto :goto_a

    :cond_23
    iget-object v0, p1, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->volumePanelView:Landroid/view/ViewGroup;

    if-nez v0, :cond_24

    move-object v0, v5

    :cond_24
    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p1, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->rowContainer:Landroid/view/ViewGroup;

    iget-object v0, p1, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->volumePanelView:Landroid/view/ViewGroup;

    if-nez v0, :cond_25

    move-object v0, v5

    :cond_25
    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->expandButton:Landroid/widget/ImageView;

    :goto_a
    invoke-static {p0}, Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;->isAODVolumePanel(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p1, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->volumeAODPanelView:Landroid/view/ViewGroup;

    if-nez v0, :cond_26

    move-object v0, v5

    :cond_26
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/android/systemui/volume/util/ContextUtils;->getDisplayWidth(Landroid/content/Context;)I

    move-result v7

    iput v7, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/android/systemui/volume/util/ContextUtils;->getDisplayHeight(Landroid/content/Context;)I

    move-result v7

    iput v7, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v7, p1, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->volumeAODPanelView:Landroid/view/ViewGroup;

    if-nez v7, :cond_27

    move-object v7, v5

    :cond_27
    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p1, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->volumePanelView:Landroid/view/ViewGroup;

    if-nez v0, :cond_28

    move-object v0, v5

    :cond_28
    iget-object v7, p1, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->dialog:Landroid/app/Dialog;

    if-nez v7, :cond_29

    move-object v7, v5

    :cond_29
    invoke-virtual {v7}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v7}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v0, v6, v7, v6, v6}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto :goto_b

    :cond_2a
    iget-object v0, p1, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->volumePanelView:Landroid/view/ViewGroup;

    if-nez v0, :cond_2b

    move-object v0, v5

    :cond_2b
    invoke-virtual {v0, v6, v6, v6, v6}, Landroid/view/ViewGroup;->setPadding(IIII)V

    :goto_b
    invoke-virtual {p1, p0}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->initViewVisibility$1(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    invoke-static {p0}, Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;->isAODVolumePanel(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)Z

    move-result v0

    if-eqz v0, :cond_2e

    sget-object v0, Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;->INSTANCE:Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;

    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getActiveStream()I

    move-result v6

    invoke-virtual {v0, p0, v6}, Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;->findRow(Lcom/samsung/systemui/splugins/volume/VolumePanelState;I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    move-result-object v0

    if-eqz v0, :cond_2c

    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getRealLevel()I

    move-result v0

    iput v0, p1, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->currentVolume:I

    :cond_2c
    iget-object v0, p1, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->vibratorWrapper:Lcom/android/systemui/volume/util/VibratorWrapper;

    if-nez v0, :cond_2d

    move-object v0, v5

    :cond_2d
    invoke-virtual {v0}, Lcom/android/systemui/volume/util/VibratorWrapper;->vibrate()V

    :cond_2e
    iget-boolean v0, p1, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->isDualViewEnabled:Z

    if-eqz v0, :cond_33

    iget-object v0, p1, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->dualViewTitle:Landroid/widget/TextView;

    if-nez v0, :cond_2f

    move-object v0, v5

    :cond_2f
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f13146f

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->volumePanelDualView:Landroid/view/ViewGroup;

    if-nez v0, :cond_30

    move-object v0, v5

    :cond_30
    const v6, 0x7f0a0e61

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    sget-object v6, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v6, v4}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v4}, Lcom/android/systemui/util/SettingsHelper;->isReduceTransparencyEnabled()Z

    move-result v4

    if-nez v4, :cond_32

    sget-boolean v4, Lcom/android/systemui/BasicRune;->VOLUME_PARTIAL_BLUR:Z

    if-nez v4, :cond_31

    sget-boolean v4, Lcom/android/systemui/BasicRune;->VOLUME_CAPTURED_BLUR:Z

    if-eqz v4, :cond_32

    :cond_31
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_c

    :cond_32
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :goto_c
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_33
    iget-object v0, p1, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->expandButton:Landroid/widget/ImageView;

    if-nez v0, :cond_34

    move-object v0, v5

    :cond_34
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f1310c7

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->expandButton:Landroid/widget/ImageView;

    if-nez v0, :cond_35

    move-object v0, v5

    :cond_35
    new-instance v2, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView$initExpandButton$1;

    invoke-direct {v2, p1}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView$initExpandButton$1;-><init>(Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p1, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->expandButton:Landroid/widget/ImageView;

    if-nez v0, :cond_36

    move-object v0, v5

    :cond_36
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isShowA11yStream()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setClickable(Z)V

    invoke-virtual {p1, p0}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->addVolumeRows$1(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    iget-object p0, p1, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->dialog:Landroid/app/Dialog;

    if-nez p0, :cond_37

    move-object p0, v5

    :cond_37
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object p0, p1, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->dialog:Landroid/app/Dialog;

    if-nez p0, :cond_38

    goto :goto_d

    :cond_38
    move-object v5, p0

    :goto_d
    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    :cond_39
    :goto_e
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onStart()V
    .locals 2

    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    iget-object p0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelWindow;->log:Lcom/android/systemui/basic/util/LogWrapper;

    const-string v0, "SubFullLayoutVolumePanelWindow"

    const-string v1, "onStart"

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/basic/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onStop()V
    .locals 4

    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    iget-object v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelWindow;->log:Lcom/android/systemui/basic/util/LogWrapper;

    iget-object v1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelWindow;->store$delegate:Lkotlin/Lazy;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/volume/store/VolumePanelStore;

    iget-object v1, v1, Lcom/android/systemui/volume/store/VolumePanelStore;->currentState:Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isExpanded()Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onStop : panelState.isExpanded="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SubFullLayoutVolumePanelWindow"

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/basic/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelWindow;->panelView:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v1, Lcom/android/systemui/BasicRune;->VOLUME_REFRESH_RATE_FIXED:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->handlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    if-nez v1, :cond_0

    move-object v1, v2

    :cond_0
    iget-object v3, v0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->iDisplayManagerWrapper:Lcom/android/systemui/volume/util/IDisplayManagerWrapper;

    if-nez v3, :cond_1

    move-object v3, v2

    :cond_1
    iget-object v3, v3, Lcom/android/systemui/volume/util/IDisplayManagerWrapper;->refreshRateLimitOffRunnable:Lcom/android/systemui/volume/util/IDisplayManagerWrapper$refreshRateLimitOffRunnable$1;

    invoke-virtual {v1, v3}, Lcom/android/systemui/volume/util/HandlerWrapper;->post(Ljava/lang/Runnable;)V

    :cond_2
    iget-object v1, v0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->panelState:Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    move-object v1, v2

    :goto_0
    invoke-static {v1}, Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;->isAODVolumePanel(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, v0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->powerManagerWrapper:Lcom/android/systemui/volume/util/PowerManagerWrapper;

    if-nez v1, :cond_4

    move-object v1, v2

    :cond_4
    iget-object v3, v1, Lcom/android/systemui/volume/util/PowerManagerWrapper;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_5
    iput-object v2, v1, Lcom/android/systemui/volume/util/PowerManagerWrapper;->wakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v1, v0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->pluginAODManagerWrapper:Lcom/android/systemui/volume/util/PluginAODManagerWrapper;

    if-nez v1, :cond_6

    move-object v1, v2

    :cond_6
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/systemui/volume/util/PluginAODManagerWrapper;->requestAODVolumePanel(Z)V

    :cond_7
    iget-object v0, v0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->rowContainer:Landroid/view/ViewGroup;

    if-nez v0, :cond_8

    goto :goto_1

    :cond_8
    move-object v2, v0

    :goto_1
    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelWindow;->store$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/store/VolumePanelStore;

    iget-object v0, v0, Lcom/android/systemui/volume/store/VolumePanelStore;->currentState:Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isExpanded()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object p0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelWindow;->storeInteractor$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/volume/store/StoreInteractor;

    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_DISMISS_SUB_DISPLAY_VOLUME_PANEL:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-direct {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/volume/store/StoreInteractor;->sendAction(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    :cond_9
    return-void
.end method
