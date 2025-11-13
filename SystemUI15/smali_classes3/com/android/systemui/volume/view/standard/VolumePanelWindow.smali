.class public final Lcom/android/systemui/volume/view/standard/VolumePanelWindow;
.super Landroid/app/Dialog;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/samsung/systemui/splugins/volume/VolumeObserver;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final infraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

.field public final log:Lcom/android/systemui/basic/util/LogWrapper;

.field public final panelView:Lcom/android/systemui/volume/view/standard/VolumePanelView;

.field public final store$delegate:Lkotlin/Lazy;

.field public final storeInteractor$delegate:Lkotlin/Lazy;

.field public final systemConfig:Lcom/android/systemui/volume/config/SystemConfigImpl;

.field public final volDeps:Lcom/android/systemui/volume/VolumeDependencyBase;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/volume/view/standard/VolumePanelWindow$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/volume/view/standard/VolumePanelWindow$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/volume/VolumeDependencyBase;)V
    .locals 8

    const-class v0, Landroid/content/Context;

    move-object v1, p1

    check-cast v1, Lcom/android/systemui/volume/VolumeDependency;

    invoke-virtual {v1, v0}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {p0, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/systemui/volume/view/standard/VolumePanelWindow;->volDeps:Lcom/android/systemui/volume/VolumeDependencyBase;

    new-instance v0, Lcom/android/systemui/volume/view/standard/VolumePanelWindow$store$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/view/standard/VolumePanelWindow$store$2;-><init>(Lcom/android/systemui/volume/view/standard/VolumePanelWindow;)V

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/view/standard/VolumePanelWindow;->store$delegate:Lkotlin/Lazy;

    new-instance v0, Lcom/android/systemui/volume/view/standard/VolumePanelWindow$storeInteractor$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/view/standard/VolumePanelWindow$storeInteractor$2;-><init>(Lcom/android/systemui/volume/view/standard/VolumePanelWindow;)V

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/view/standard/VolumePanelWindow;->storeInteractor$delegate:Lkotlin/Lazy;

    const-class v0, Lcom/android/systemui/volume/config/VolumeConfigs;

    invoke-virtual {v1, v0}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/config/VolumeConfigs;

    iget-object v0, v0, Lcom/android/systemui/volume/config/VolumeConfigs;->systemConfig$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/config/SystemConfigImpl;

    iput-object v0, p0, Lcom/android/systemui/volume/view/standard/VolumePanelWindow;->systemConfig:Lcom/android/systemui/volume/config/SystemConfigImpl;

    const-class v2, Lcom/android/systemui/basic/util/LogWrapper;

    invoke-virtual {v1, v2}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/basic/util/LogWrapper;

    iput-object v2, p0, Lcom/android/systemui/volume/view/standard/VolumePanelWindow;->log:Lcom/android/systemui/basic/util/LogWrapper;

    const-class v2, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    invoke-virtual {v1, v2}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    iput-object v2, p0, Lcom/android/systemui/volume/view/standard/VolumePanelWindow;->infraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    invoke-virtual {v2, v3}, Landroid/view/Window;->requestFeature(I)Z

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v4}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Landroid/view/Window;->clearFlags(I)V

    const v4, 0x10c0128

    invoke-virtual {v2, v4}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    const/16 v6, 0x7e4

    iput v6, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v6, -0x3

    iput v6, v4, Landroid/view/WindowManager$LayoutParams;->format:I

    const-string v6, "VolumePanelWindow"

    invoke-virtual {v4, v6}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v6, -0x1

    iput v6, v4, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    invoke-virtual {v2}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f13146f

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    iget-object v0, v0, Lcom/android/systemui/volume/config/SystemConfigImpl;->hasCutout$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v6, 0x4000400

    or-int/2addr v0, v6

    iput v0, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    :cond_0
    invoke-virtual {v2, v4}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_1
    const v0, 0x7f0d055a

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setContentView(I)V

    const v0, 0x7f0a0e72

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/view/standard/VolumePanelView;

    iput-object v0, p0, Lcom/android/systemui/volume/view/standard/VolumePanelWindow;->panelView:Lcom/android/systemui/volume/view/standard/VolumePanelView;

    const-string v2, "VolumePanelView"

    const-string v4, "VolumePanelView: bind"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p0, v0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->dialog:Landroid/app/Dialog;

    const-class v2, Lcom/android/systemui/volume/util/HandlerWrapper;

    invoke-virtual {v1, v2}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/volume/util/HandlerWrapper;

    iput-object v2, v0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->handlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    const-class v2, Lcom/android/systemui/volume/store/VolumePanelStore;

    invoke-virtual {v1, v2}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/volume/store/VolumePanelStore;

    iput-object v2, v0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->store:Lcom/android/systemui/volume/store/VolumePanelStore;

    iget-object v4, v0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    const/4 v5, 0x0

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    move-object v2, v5

    :goto_0
    iput-object v2, v4, Lcom/android/systemui/volume/store/StoreInteractor;->store:Lcom/android/systemui/volume/store/VolumePanelStore;

    iput-object p1, v0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->volDeps:Lcom/android/systemui/volume/VolumeDependencyBase;

    const-class v2, Lcom/android/systemui/volume/util/ToastWrapper;

    invoke-virtual {v1, v2}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/volume/util/ToastWrapper;

    const-class v2, Lcom/android/systemui/volume/view/VolumePanelMotion;

    invoke-virtual {v1, v2}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/volume/view/VolumePanelMotion;

    iput-object v2, v0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->volumePanelMotion:Lcom/android/systemui/volume/view/VolumePanelMotion;

    new-instance v2, Lcom/android/systemui/volume/util/BlurEffect;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4, p1}, Lcom/android/systemui/volume/util/BlurEffect;-><init>(Landroid/content/Context;Lcom/android/systemui/volume/VolumeDependencyBase;)V

    iput-object v2, v0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->blurEffect:Lcom/android/systemui/volume/util/BlurEffect;

    const-class p1, Lcom/android/systemui/volume/util/DisplayManagerWrapper;

    invoke-virtual {v1, p1}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/volume/util/DisplayManagerWrapper;

    const-class p1, Lcom/android/systemui/volume/util/IDisplayManagerWrapper;

    invoke-virtual {v1, p1}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/volume/util/IDisplayManagerWrapper;

    iput-object p1, v0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->iDisplayManagerWrapper:Lcom/android/systemui/volume/util/IDisplayManagerWrapper;

    const-class p1, Lcom/android/systemui/volume/util/VibratorWrapper;

    invoke-virtual {v1, p1}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/volume/util/VibratorWrapper;

    iput-object p1, v0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->vibratorWrapper:Lcom/android/systemui/volume/util/VibratorWrapper;

    const-class p1, Lcom/android/systemui/volume/util/PowerManagerWrapper;

    invoke-virtual {v1, p1}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/volume/util/PowerManagerWrapper;

    iput-object p1, v0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->powerManagerWrapper:Lcom/android/systemui/volume/util/PowerManagerWrapper;

    const-class p1, Lcom/android/systemui/volume/util/PluginAODManagerWrapper;

    invoke-virtual {v1, p1}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/volume/util/PluginAODManagerWrapper;

    iput-object p1, v0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->pluginAODManagerWrapper:Lcom/android/systemui/volume/util/PluginAODManagerWrapper;

    iget-object p1, v0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->volumePanelDualView:Landroid/view/ViewGroup;

    if-nez p1, :cond_3

    move-object p1, v5

    :cond_3
    new-instance v1, Lcom/android/systemui/volume/view/standard/VolumePanelView$bind$1;

    invoke-direct {v1, v0}, Lcom/android/systemui/volume/view/standard/VolumePanelView$bind$1;-><init>(Lcom/android/systemui/volume/view/standard/VolumePanelView;)V

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object p1, v0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->volumePanelDualView:Landroid/view/ViewGroup;

    if-nez p1, :cond_4

    move-object p1, v5

    :cond_4
    const v1, 0x7f0a0e62

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    sget-object v1, Lcom/android/systemui/volume/view/standard/VolumePanelView$bind$2;->INSTANCE:Lcom/android/systemui/volume/view/standard/VolumePanelView$bind$2;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object p1, v0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->dialog:Landroid/app/Dialog;

    if-nez p1, :cond_5

    move-object p1, v5

    :cond_5
    new-instance v1, Lcom/android/systemui/volume/view/standard/VolumePanelView$bind$3;

    invoke-direct {v1, v0}, Lcom/android/systemui/volume/view/standard/VolumePanelView$bind$3;-><init>(Lcom/android/systemui/volume/view/standard/VolumePanelView;)V

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    iget-object p1, v0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->dialog:Landroid/app/Dialog;

    if-nez p1, :cond_6

    move-object p1, v5

    :cond_6
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    new-instance v1, Lcom/android/systemui/volume/view/standard/VolumePanelView$bind$4;

    invoke-direct {v1, v0}, Lcom/android/systemui/volume/view/standard/VolumePanelView$bind$4;-><init>(Lcom/android/systemui/volume/view/standard/VolumePanelView;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    iget-object p1, v0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->volumePanelMotion:Lcom/android/systemui/volume/view/VolumePanelMotion;

    if-nez p1, :cond_7

    move-object p1, v5

    :cond_7
    iget-object v1, v0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->dialog:Landroid/app/Dialog;

    if-nez v1, :cond_8

    move-object v1, v5

    :cond_8
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/android/systemui/volume/view/VolumePanelMotion;->getSeekBarTouchUpAnimation(Landroid/view/View;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    iput-object p1, v0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->touchUpAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object p1, v0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->volumePanelMotion:Lcom/android/systemui/volume/view/VolumePanelMotion;

    if-nez p1, :cond_9

    move-object p1, v5

    :cond_9
    iget-object v1, v0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->dialog:Landroid/app/Dialog;

    if-nez v1, :cond_a

    move-object v1, v5

    :cond_a
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/android/systemui/volume/view/VolumePanelMotion;->getSeekBarTouchDownAnimation(Landroid/view/View;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    iput-object p1, v0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->touchDownAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object p1, v0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->volumePanelMotion:Lcom/android/systemui/volume/view/VolumePanelMotion;

    if-nez p1, :cond_b

    move-object p1, v5

    :cond_b
    iget-object v1, v0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->dialog:Landroid/app/Dialog;

    if-nez v1, :cond_c

    move-object v1, v5

    :cond_c
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/android/systemui/volume/view/VolumePanelMotion;->getSeekBarKeyDownAnimation(Landroid/view/View;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    iput-object p1, v0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->keyDownAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object p1, v0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->volumePanelMotion:Lcom/android/systemui/volume/view/VolumePanelMotion;

    if-nez p1, :cond_d

    move-object p1, v5

    :cond_d
    iget-object v1, v0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->dialog:Landroid/app/Dialog;

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

    invoke-static {v1}, Lcom/android/systemui/volume/view/VolumePanelMotion;->getSeekBarKeyUpAnimation(Landroid/view/View;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    iput-object p1, v0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->keyUpAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f0717dd

    invoke-static {v1, p1}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenFloat(ILandroid/content/Context;)F

    move-result p1

    iput p1, v0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->swipeDistance:F

    invoke-virtual {p0, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    return-void
.end method


# virtual methods
.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/volume/view/standard/VolumePanelWindow;->panelView:Lcom/android/systemui/volume/view/standard/VolumePanelView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/view/standard/VolumePanelView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 p0, 0x1

    return p0
.end method

.method public final dispose()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/view/standard/VolumePanelWindow;->storeInteractor$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/store/StoreInteractor;

    invoke-virtual {v0}, Lcom/android/systemui/volume/store/StoreInteractor;->dispose()V

    iget-object p0, p0, Lcom/android/systemui/volume/view/standard/VolumePanelWindow;->panelView:Lcom/android/systemui/volume/view/standard/VolumePanelView;

    iget-object v0, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    invoke-virtual {v0}, Lcom/android/systemui/volume/store/StoreInteractor;->dispose()V

    iget-object p0, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->volumePanelMotion:Lcom/android/systemui/volume/view/VolumePanelMotion;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumePanelMotion;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    invoke-virtual {p0}, Lcom/android/systemui/volume/store/StoreInteractor;->dispose()V

    return-void
.end method

.method public final getBaseHeight$1()I
    .locals 3

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/volume/util/ContextUtils;->getDisplayHeight(Landroid/content/Context;)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/volume/view/standard/VolumePanelWindow;->systemConfig:Lcom/android/systemui/volume/config/SystemConfigImpl;

    invoke-virtual {v1}, Lcom/android/systemui/volume/config/SystemConfigImpl;->isTablet()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/volume/util/ContextUtils;->isScreenWideMobileDevice(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/volume/util/ContextUtils;->isLandscape(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v2, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v1, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/SettingsHelper;

    sget v2, Lcom/android/systemui/volume/util/SettingsHelperExt;->$r8$clinit:I

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isNavigationBarGestureHintEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isNavigationBarGestureWhileHidden()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/volume/util/ContextUtils;->isLandscape(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p0

    const v1, 0x10502c9

    invoke-static {v1, p0}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenInt(ILandroid/content/Context;)I

    move-result p0

    add-int/2addr v0, p0

    :cond_2
    return v0
.end method

.method public final getSeekBarY(I)F
    .locals 3

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0717f2

    invoke-static {v1, v0}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenInt(ILandroid/content/Context;)I

    move-result v0

    sub-int v0, p1, v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/systemui/volume/view/standard/VolumePanelWindow;->systemConfig:Lcom/android/systemui/volume/config/SystemConfigImpl;

    invoke-virtual {v1}, Lcom/android/systemui/volume/config/SystemConfigImpl;->isTablet()Z

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/volume/util/ContextUtils;->isScreenWideMobileDevice(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/volume/util/ContextUtils;->isLandscape(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    int-to-float p0, p1

    div-float/2addr p0, v2

    sub-float/2addr v0, p0

    :cond_0
    :goto_0
    div-float/2addr v0, v2

    goto :goto_2

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/volume/view/standard/VolumePanelWindow;->systemConfig:Lcom/android/systemui/volume/config/SystemConfigImpl;

    invoke-virtual {p1}, Lcom/android/systemui/volume/config/SystemConfigImpl;->isTablet()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/systemui/volume/util/ContextUtils;->isLandscape(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    sget-boolean p1, Lcom/android/systemui/BasicRune;->FOLDABLE_TYPE_FLIP:Z

    if-eqz p1, :cond_3

    sget-object p0, Lcom/android/systemui/volume/purefunction/VolumePanelLayout;->INSTANCE:Lcom/android/systemui/volume/purefunction/VolumePanelLayout;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget p0, Lcom/android/systemui/volume/purefunction/VolumePanelLayout;->VERTICAL_PADDING_TOP_FOR_FLIP_RATIO:F

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/systemui/volume/util/ContextUtils;->isScreenWideMobileDevice(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_4

    sget-object p0, Lcom/android/systemui/volume/purefunction/VolumePanelLayout;->INSTANCE:Lcom/android/systemui/volume/purefunction/VolumePanelLayout;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget p0, Lcom/android/systemui/volume/purefunction/VolumePanelLayout;->VERTICAL_WIDE_SCREEN_TOP_RATIO:F

    goto :goto_1

    :cond_4
    sget-object p0, Lcom/android/systemui/volume/purefunction/VolumePanelLayout;->INSTANCE:Lcom/android/systemui/volume/purefunction/VolumePanelLayout;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget p0, Lcom/android/systemui/volume/purefunction/VolumePanelLayout;->VERTICAL_PADDING_TOP_RATIO:F

    :goto_1
    mul-float/2addr v0, p0

    :goto_2
    return v0
.end method

.method public final getStore$2()Lcom/android/systemui/volume/store/VolumePanelStore;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/volume/view/standard/VolumePanelWindow;->store$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/volume/store/VolumePanelStore;

    return-object p0
.end method

.method public final observeStore()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/volume/view/standard/VolumePanelWindow;->storeInteractor$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/store/StoreInteractor;

    invoke-virtual {v0}, Lcom/android/systemui/volume/store/StoreInteractor;->observeStore()V

    iget-object p0, p0, Lcom/android/systemui/volume/view/standard/VolumePanelWindow;->panelView:Lcom/android/systemui/volume/view/standard/VolumePanelView;

    iget-object v0, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    invoke-virtual {v0}, Lcom/android/systemui/volume/store/StoreInteractor;->observeStore()V

    iget-object v0, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->volumePanelMotion:Lcom/android/systemui/volume/view/VolumePanelMotion;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->store:Lcom/android/systemui/volume/store/VolumePanelStore;

    if-eqz v2, :cond_1

    move-object v1, v2

    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    iget-object v2, v0, Lcom/android/systemui/volume/view/VolumePanelMotion;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    iput-object v1, v2, Lcom/android/systemui/volume/store/StoreInteractor;->store:Lcom/android/systemui/volume/store/VolumePanelStore;

    iput-object p0, v0, Lcom/android/systemui/volume/view/VolumePanelMotion;->context:Landroid/content/Context;

    return-void
.end method

.method public final onChanged(Ljava/lang/Object;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getStateType()Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/volume/view/standard/VolumePanelWindow$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v3, v2

    const-class v6, Lcom/android/systemui/util/SettingsHelper;

    const/4 v7, 0x0

    const/4 v9, 0x3

    const/4 v10, 0x0

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_2b

    :pswitch_0
    iget-object v2, v0, Lcom/android/systemui/volume/view/standard/VolumePanelWindow;->panelView:Lcom/android/systemui/volume/view/standard/VolumePanelView;

    invoke-virtual {v2}, Lcom/android/systemui/volume/view/standard/VolumePanelView;->startDismissAnimation()V

    sget-boolean v2, Lcom/android/systemui/BasicRune;->VOLUME_SUB_DISPLAY_FULL_LAYOUT_VOLUME_DIALOG:Z

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isFolded()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2b

    :cond_0
    new-instance v1, Lcom/android/systemui/volume/view/expand/VolumePanelExpandWindow;

    iget-object v0, v0, Lcom/android/systemui/volume/view/standard/VolumePanelWindow;->volDeps:Lcom/android/systemui/volume/VolumeDependencyBase;

    invoke-direct {v1, v0}, Lcom/android/systemui/volume/view/expand/VolumePanelExpandWindow;-><init>(Lcom/android/systemui/volume/VolumeDependencyBase;)V

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v11, 0x40000000    # 2.0f

    const v12, 0x7f0717a3

    const/4 v13, 0x2

    const v14, 0x7f0717c5

    const v15, 0x7f0717c4

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v8

    sget-boolean v16, Lcom/android/systemui/BasicRune;->VOLUME_LEFT_DISPLAY_VOLUME_DIALOG:Z

    if-eqz v16, :cond_1

    goto :goto_0

    :cond_1
    const/4 v9, 0x5

    :goto_0
    or-int/lit8 v9, v9, 0x30

    iput v9, v8, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iput v10, v8, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v9, v1, Lcom/android/systemui/volume/view/expand/VolumePanelExpandWindow;->systemConfig:Lcom/android/systemui/volume/config/SystemConfigImpl;

    invoke-virtual {v9}, Lcom/android/systemui/volume/config/SystemConfigImpl;->isTablet()Z

    move-result v9

    if-nez v9, :cond_6

    invoke-virtual {v1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/android/systemui/volume/util/ContextUtils;->isLandscape(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-virtual {v1}, Lcom/android/systemui/volume/view/expand/VolumePanelExpandWindow;->getStore()Lcom/android/systemui/volume/store/VolumePanelStore;

    move-result-object v9

    iget-object v9, v9, Lcom/android/systemui/volume/store/VolumePanelStore;->currentState:Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    invoke-virtual {v9}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isZenMode()Z

    move-result v9

    if-nez v9, :cond_3

    invoke-virtual {v1}, Lcom/android/systemui/volume/view/expand/VolumePanelExpandWindow;->getStore()Lcom/android/systemui/volume/store/VolumePanelStore;

    move-result-object v9

    iget-object v9, v9, Lcom/android/systemui/volume/store/VolumePanelStore;->currentState:Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    invoke-virtual {v9}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isAllSoundOff()Z

    move-result v9

    if-nez v9, :cond_3

    invoke-virtual {v1}, Lcom/android/systemui/volume/view/expand/VolumePanelExpandWindow;->getStore()Lcom/android/systemui/volume/store/VolumePanelStore;

    move-result-object v9

    iget-object v9, v9, Lcom/android/systemui/volume/store/VolumePanelStore;->currentState:Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    invoke-virtual {v9}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isLeBroadcasting()Z

    move-result v9

    if-eqz v9, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v15, v9}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenInt(ILandroid/content/Context;)I

    move-result v9

    goto :goto_2

    :cond_3
    :goto_1
    invoke-virtual {v1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v14, v9}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenInt(ILandroid/content/Context;)I

    move-result v9

    :goto_2
    invoke-virtual {v1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/android/systemui/volume/util/ContextUtils;->isScreenWideMobileDevice(Landroid/content/Context;)Z

    move-result v16

    if-eqz v16, :cond_4

    invoke-virtual {v1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/android/systemui/volume/util/ContextUtils;->getDisplayHeight(Landroid/content/Context;)I

    move-result v16

    div-int/lit8 v16, v16, 0x2

    goto :goto_3

    :cond_4
    invoke-virtual {v1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/android/systemui/volume/util/ContextUtils;->getDisplayHeight(Landroid/content/Context;)I

    move-result v16

    :goto_3
    sub-int v16, v16, v9

    div-int/lit8 v16, v16, 0x2

    invoke-virtual {v1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v12, v9}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenInt(ILandroid/content/Context;)I

    move-result v9

    sub-int v16, v16, v9

    if-gez v16, :cond_5

    move/from16 v16, v10

    :cond_5
    move/from16 v3, v16

    goto :goto_6

    :cond_6
    invoke-virtual {v1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v9

    const v3, 0x7f0717f2

    invoke-static {v3, v9}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenInt(ILandroid/content/Context;)I

    move-result v3

    invoke-virtual {v1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/android/systemui/volume/util/ContextUtils;->getDisplayHeight(Landroid/content/Context;)I

    move-result v9

    sub-int/2addr v9, v3

    int-to-float v3, v9

    iget-object v9, v1, Lcom/android/systemui/volume/view/expand/VolumePanelExpandWindow;->systemConfig:Lcom/android/systemui/volume/config/SystemConfigImpl;

    invoke-virtual {v9}, Lcom/android/systemui/volume/config/SystemConfigImpl;->isTablet()Z

    move-result v9

    if-eqz v9, :cond_7

    div-float/2addr v3, v11

    goto :goto_5

    :cond_7
    sget-boolean v9, Lcom/android/systemui/BasicRune;->FOLDABLE_TYPE_FLIP:Z

    if-eqz v9, :cond_8

    sget-object v9, Lcom/android/systemui/volume/purefunction/VolumePanelLayout;->INSTANCE:Lcom/android/systemui/volume/purefunction/VolumePanelLayout;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v9, Lcom/android/systemui/volume/purefunction/VolumePanelLayout;->VERTICAL_PADDING_TOP_FOR_FLIP_RATIO:F

    goto :goto_4

    :cond_8
    invoke-virtual {v1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/android/systemui/volume/util/ContextUtils;->isScreenWideMobileDevice(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_9

    sget-object v9, Lcom/android/systemui/volume/purefunction/VolumePanelLayout;->INSTANCE:Lcom/android/systemui/volume/purefunction/VolumePanelLayout;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v9, Lcom/android/systemui/volume/purefunction/VolumePanelLayout;->VERTICAL_WIDE_SCREEN_TOP_RATIO:F

    goto :goto_4

    :cond_9
    sget-object v9, Lcom/android/systemui/volume/purefunction/VolumePanelLayout;->INSTANCE:Lcom/android/systemui/volume/purefunction/VolumePanelLayout;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v9, Lcom/android/systemui/volume/purefunction/VolumePanelLayout;->VERTICAL_PADDING_TOP_RATIO:F

    :goto_4
    mul-float/2addr v3, v9

    :goto_5
    iget-object v9, v1, Lcom/android/systemui/volume/view/expand/VolumePanelExpandWindow;->panelView:Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;

    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v3, v9

    invoke-virtual {v1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v9

    const v4, 0x7f0717c8

    invoke-static {v4, v9}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenInt(ILandroid/content/Context;)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    :goto_6
    iput v3, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v3

    invoke-virtual {v8, v3}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    invoke-virtual {v0, v8}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_a
    invoke-virtual {v1}, Lcom/android/systemui/volume/view/expand/VolumePanelExpandWindow;->getStore()Lcom/android/systemui/volume/store/VolumePanelStore;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/volume/store/VolumePanelStore;->currentState:Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    if-eqz v3, :cond_c

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isShowA11yStream()Z

    move-result v0

    if-eqz v0, :cond_b

    iget v0, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v0, v0, -0x9

    iput v0, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    :cond_b
    invoke-virtual {v3, v4}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_c
    iget-object v0, v1, Lcom/android/systemui/volume/view/expand/VolumePanelExpandWindow;->panelView:Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;

    invoke-virtual {v1}, Lcom/android/systemui/volume/view/expand/VolumePanelExpandWindow;->getStore()Lcom/android/systemui/volume/store/VolumePanelStore;

    move-result-object v1

    iget-object v1, v1, Lcom/android/systemui/volume/store/VolumePanelStore;->currentState:Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;->addRows(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    const v3, 0x7f0a0e65

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Space;

    const v4, 0x7f0a0e70

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    const v8, 0x7f0a0e6e

    invoke-virtual {v0, v8}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const v9, 0x7f0a0e6f

    invoke-virtual {v0, v9}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    const v11, 0x7f060add

    invoke-static {v11, v5}, Lcom/android/systemui/volume/util/ColorUtils;->getSingleColorStateList(ILandroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v9, v5}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isAllSoundOff()Z

    move-result v5

    const/4 v11, 0x1

    if-nez v5, :cond_e

    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isZenMode()Z

    move-result v5

    if-nez v5, :cond_e

    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isLeBroadcasting()Z

    move-result v5

    if-eqz v5, :cond_d

    goto :goto_7

    :cond_d
    move v5, v10

    goto :goto_8

    :cond_e
    :goto_7
    move v5, v11

    :goto_8
    sget-object v17, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->INSTANCE:Lcom/android/systemui/volume/util/ViewVisibilityUtil;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v5, :cond_f

    invoke-static {v3}, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->setGone(Landroid/view/View;)V

    goto :goto_9

    :cond_f
    invoke-virtual {v3, v10}, Landroid/view/View;->setVisibility(I)V

    :goto_9
    sget-object v3, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->INSTANCE:Lcom/android/systemui/volume/util/ViewVisibilityUtil;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v5, :cond_10

    invoke-virtual {v4, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_a

    :cond_10
    invoke-static {v4}, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->setGone(Landroid/view/View;)V

    :goto_a
    if-eqz v5, :cond_15

    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isAllSoundOff()Z

    move-result v3

    if-eqz v3, :cond_11

    const v3, 0x7f13145a

    goto :goto_b

    :cond_11
    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isZenMode()Z

    move-result v3

    if-eqz v3, :cond_12

    const v3, 0x7f131480

    goto :goto_b

    :cond_12
    const v3, 0x7f13145f

    :goto_b
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isAllSoundOff()Z

    move-result v3

    if-nez v3, :cond_14

    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isZenMode()Z

    move-result v3

    if-eqz v3, :cond_13

    goto :goto_c

    :cond_13
    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isLeBroadcasting()Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f08081f

    invoke-virtual {v3, v5, v7}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v9, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v3, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView$updateStatusMsgArea$2;

    invoke-direct {v3, v0}, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView$updateStatusMsgArea$2;-><init>(Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;)V

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_d

    :cond_14
    :goto_c
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f080b5a

    invoke-virtual {v3, v5, v7}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v9, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v3, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView$updateStatusMsgArea$1;

    invoke-direct {v3, v0, v1}, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView$updateStatusMsgArea$1;-><init>(Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_15
    :goto_d
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/systemui/volume/util/ContextUtils;->getDisplayWidth(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/systemui/volume/util/ContextUtils;->getDisplayHeight(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    const v8, 0x7f0717d7

    invoke-static {v8, v5}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenInt(ILandroid/content/Context;)I

    move-result v5

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/android/systemui/volume/util/ContextUtils;->isLandscape(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_16

    move v8, v4

    goto :goto_e

    :cond_16
    move v8, v3

    :goto_e
    if-le v8, v5, :cond_17

    move v5, v11

    goto :goto_f

    :cond_17
    move v5, v10

    :goto_f
    sget-boolean v8, Lcom/android/systemui/BasicRune;->VOLUME_FOLDABLE_WIDE_SCREEN_VOLUME_DIALOG:Z

    if-eqz v8, :cond_18

    if-eqz v5, :cond_18

    move v5, v11

    goto :goto_10

    :cond_18
    move v5, v10

    :goto_10
    sget-object v8, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v8, v6}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v8}, Lcom/android/systemui/util/SettingsHelper;->isNavigationBarGestureHintEnabled()Z

    move-result v8

    if-eqz v8, :cond_19

    sget-object v8, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v8, v6}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v8}, Lcom/android/systemui/util/SettingsHelper;->isNavigationBarGestureWhileHidden()Z

    move-result v8

    if-eqz v8, :cond_19

    move v8, v11

    goto :goto_11

    :cond_19
    move v8, v10

    :goto_11
    iget-object v9, v0, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;->systemConfig:Lcom/android/systemui/volume/config/SystemConfigImpl;

    if-nez v9, :cond_1a

    move-object v9, v7

    :cond_1a
    invoke-virtual {v9}, Lcom/android/systemui/volume/config/SystemConfigImpl;->isTablet()Z

    move-result v9

    if-nez v9, :cond_1c

    if-nez v5, :cond_1c

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/android/systemui/volume/util/ContextUtils;->isLandscape(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_1b

    if-nez v8, :cond_1c

    :cond_1b
    sget-object v8, Lcom/android/systemui/volume/util/ContextUtils;->INSTANCE:Lcom/android/systemui/volume/util/ContextUtils;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->orientation:I

    if-ne v8, v11, :cond_1d

    :cond_1c
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x10502c9

    invoke-static {v9, v8}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenInt(ILandroid/content/Context;)I

    move-result v8

    add-int/2addr v4, v8

    :cond_1d
    iget-object v8, v0, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;->contentsView:Landroid/view/ViewGroup;

    if-nez v8, :cond_1e

    move-object v8, v7

    :cond_1e
    invoke-virtual {v8}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v9

    const v7, 0x7f0717a1

    invoke-static {v7, v9}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenInt(ILandroid/content/Context;)I

    move-result v7

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v9

    const v11, 0x7f0717d0

    invoke-static {v11, v9}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenInt(ILandroid/content/Context;)I

    move-result v9

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/android/systemui/volume/util/ContextUtils;->isLandscape(Landroid/content/Context;)Z

    move-result v11

    iget-object v10, v0, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;->systemConfig:Lcom/android/systemui/volume/config/SystemConfigImpl;

    if-nez v10, :cond_1f

    const/4 v10, 0x0

    :cond_1f
    invoke-virtual {v10}, Lcom/android/systemui/volume/config/SystemConfigImpl;->isTablet()Z

    move-result v10

    sget-object v18, Lcom/android/systemui/volume/purefunction/VolumePanelLayout;->INSTANCE:Lcom/android/systemui/volume/purefunction/VolumePanelLayout;

    if-nez v10, :cond_22

    if-eqz v5, :cond_20

    goto :goto_13

    :cond_20
    if-eqz v11, :cond_21

    move v9, v4

    goto :goto_12

    :cond_21
    move v9, v3

    :goto_12
    mul-int/2addr v7, v13

    sub-int/2addr v9, v7

    :cond_22
    :goto_13
    iput v9, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    const v9, 0x7f0717a0

    invoke-static {v9, v7}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenInt(ILandroid/content/Context;)I

    move-result v7

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v12, v9}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenInt(ILandroid/content/Context;)I

    move-result v9

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v15, v10}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenInt(ILandroid/content/Context;)I

    move-result v10

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v14, v11}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenInt(ILandroid/content/Context;)I

    move-result v11

    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isZenMode()Z

    move-result v12

    if-nez v12, :cond_24

    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isAllSoundOff()Z

    move-result v12

    if-nez v12, :cond_24

    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isLeBroadcasting()Z

    move-result v12

    if-eqz v12, :cond_23

    goto :goto_14

    :cond_23
    const/4 v12, 0x0

    goto :goto_15

    :cond_24
    :goto_14
    const/4 v12, 0x1

    :goto_15
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v14}, Lcom/android/systemui/volume/util/ContextUtils;->isLandscape(Landroid/content/Context;)Z

    move-result v14

    iget v15, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v13, v0, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;->systemConfig:Lcom/android/systemui/volume/config/SystemConfigImpl;

    if-nez v13, :cond_25

    const/4 v13, 0x0

    :cond_25
    invoke-virtual {v13}, Lcom/android/systemui/volume/config/SystemConfigImpl;->isTablet()Z

    move-result v13

    if-nez v13, :cond_27

    if-eqz v5, :cond_27

    if-eqz v14, :cond_27

    int-to-float v4, v4

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v4, v13

    if-eqz v12, :cond_26

    move v13, v11

    goto :goto_16

    :cond_26
    move v13, v10

    :goto_16
    int-to-float v13, v13

    sub-float/2addr v4, v13

    move/from16 p0, v10

    const/4 v13, 0x2

    int-to-float v10, v13

    div-float/2addr v4, v10

    const/4 v10, 0x0

    invoke-static {v4, v10}, Lkotlin/ranges/RangesKt___RangesKt;->coerceAtLeast(FF)F

    move-result v4

    float-to-int v4, v4

    new-instance v10, Landroid/util/Pair;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v10, v4, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1a

    :cond_27
    move/from16 p0, v10

    if-nez v13, :cond_2b

    if-nez v5, :cond_2b

    if-nez v14, :cond_28

    goto :goto_19

    :cond_28
    if-eqz v12, :cond_29

    move v10, v11

    goto :goto_17

    :cond_29
    move/from16 v10, p0

    :goto_17
    sub-int/2addr v4, v10

    const/4 v10, 0x2

    div-int/2addr v4, v10

    if-le v4, v9, :cond_2a

    goto :goto_18

    :cond_2a
    move v9, v4

    :goto_18
    new-instance v10, Landroid/util/Pair;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v10, v4, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1a

    :cond_2b
    :goto_19
    new-instance v10, Landroid/util/Pair;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v10, v4, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_1a
    iget-object v4, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    iget-object v9, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    iget-object v10, v0, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;->systemConfig:Lcom/android/systemui/volume/config/SystemConfigImpl;

    if-nez v10, :cond_2c

    const/4 v10, 0x0

    :cond_2c
    invoke-virtual {v10}, Lcom/android/systemui/volume/config/SystemConfigImpl;->isTablet()Z

    move-result v10

    if-nez v14, :cond_2f

    if-nez v5, :cond_2f

    if-eqz v10, :cond_2d

    goto :goto_1b

    :cond_2d
    sub-int/2addr v3, v15

    const/4 v5, 0x2

    div-int/2addr v3, v5

    if-le v3, v7, :cond_2e

    goto :goto_1b

    :cond_2e
    move v7, v3

    :cond_2f
    :goto_1b
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0, v7, v3, v7, v4}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    iget v3, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    const v4, 0x7f0a0e68

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iput v3, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eqz v12, :cond_30

    move v10, v11

    goto :goto_1c

    :cond_30
    move/from16 v10, p0

    :goto_1c
    iput v10, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    sget-object v3, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v3, v6}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v3}, Lcom/android/systemui/util/SettingsHelper;->isReduceTransparencyEnabled()Z

    move-result v3

    if-nez v3, :cond_32

    sget-boolean v3, Lcom/android/systemui/BasicRune;->VOLUME_PARTIAL_BLUR:Z

    if-nez v3, :cond_31

    sget-boolean v3, Lcom/android/systemui/BasicRune;->VOLUME_CAPTURED_BLUR:Z

    if-eqz v3, :cond_32

    :cond_31
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const v5, 0x7f0814b4

    invoke-virtual {v3, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1d

    :cond_32
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const v5, 0x7f0814b3

    invoke-virtual {v3, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_1d
    new-instance v3, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView$adjustTouchEventForOutsideTouch$1;

    invoke-direct {v3, v0}, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView$adjustTouchEventForOutsideTouch$1;-><init>(Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;)V

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v3, v0, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;->contentsView:Landroid/view/ViewGroup;

    if-nez v3, :cond_33

    const/4 v3, 0x0

    :cond_33
    sget-object v4, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView$adjustTouchEventForOutsideTouch$2;->INSTANCE:Lcom/android/systemui/volume/view/expand/VolumePanelExpandView$adjustTouchEventForOutsideTouch$2;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isSetupWizardComplete()Z

    move-result v3

    if-eqz v3, :cond_36

    sget-object v3, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->INSTANCE:Lcom/android/systemui/volume/util/ViewVisibilityUtil;

    iget-object v4, v0, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;->settingButton:Landroid/widget/ImageButton;

    if-nez v4, :cond_34

    const/4 v4, 0x0

    :cond_34
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, v0, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;->settingButton:Landroid/widget/ImageButton;

    if-nez v3, :cond_35

    const/4 v3, 0x0

    :cond_35
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_1e

    :cond_36
    const/4 v4, 0x1

    sget-object v3, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->INSTANCE:Lcom/android/systemui/volume/util/ViewVisibilityUtil;

    iget-object v5, v0, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;->settingButton:Landroid/widget/ImageButton;

    if-nez v5, :cond_37

    const/4 v5, 0x0

    :cond_37
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5}, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->setGone(Landroid/view/View;)V

    iget-object v3, v0, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;->settingButton:Landroid/widget/ImageButton;

    if-nez v3, :cond_38

    const/4 v3, 0x0

    :cond_38
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/ImageButton;->setEnabled(Z)V

    :goto_1e
    iget-object v3, v0, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;->dialog:Landroid/app/Dialog;

    if-nez v3, :cond_39

    const/4 v3, 0x0

    :cond_39
    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    if-eqz v3, :cond_3a

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_3a

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/view/View;->setAlpha(F)V

    const v5, 0x3f733333    # 0.95f

    invoke-virtual {v3, v5}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setScaleY(F)V

    :cond_3a
    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isFolded()Z

    move-result v3

    if-eqz v3, :cond_3b

    if-eqz v2, :cond_3b

    move v11, v4

    goto :goto_1f

    :cond_3b
    const/4 v11, 0x0

    :goto_1f
    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isCaptionComponentEnabled()Z

    move-result v2

    if-eqz v2, :cond_3d

    if-nez v11, :cond_3d

    sget-object v2, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->INSTANCE:Lcom/android/systemui/volume/util/ViewVisibilityUtil;

    iget-object v3, v0, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;->liveCaptionButton:Landroid/widget/ImageButton;

    if-nez v3, :cond_3c

    const/4 v3, 0x0

    :cond_3c
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isCaptionEnabled()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;->toggleLiveCaptionButton(Z)V

    goto :goto_20

    :cond_3d
    sget-object v2, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->INSTANCE:Lcom/android/systemui/volume/util/ViewVisibilityUtil;

    iget-object v3, v0, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;->liveCaptionButton:Landroid/widget/ImageButton;

    if-nez v3, :cond_3e

    const/4 v3, 0x0

    :cond_3e
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->setGone(Landroid/view/View;)V

    :goto_20
    sget-object v2, Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;->INSTANCE:Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;

    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getActiveStream()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;->findRow(Lcom/samsung/systemui/splugins/volume/VolumePanelState;I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    move-result-object v2

    if-eqz v2, :cond_40

    invoke-virtual {v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getRemoteLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3f

    goto :goto_21

    :cond_3f
    const/4 v2, 0x0

    :goto_21
    if-eqz v2, :cond_40

    invoke-virtual {v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;->updateVolumeTitle(I)V

    :cond_40
    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isShowA11yStream()Z

    move-result v1

    if-eqz v1, :cond_43

    iget-object v1, v0, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;->dialog:Landroid/app/Dialog;

    if-nez v1, :cond_41

    const/4 v1, 0x0

    :cond_41
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v2, v2, -0x9

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v2, v0, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;->dialog:Landroid/app/Dialog;

    if-nez v2, :cond_42

    const/4 v2, 0x0

    :cond_42
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_43
    iget-object v0, v0, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;->dialog:Landroid/app/Dialog;

    if-nez v0, :cond_44

    const/4 v7, 0x0

    goto :goto_22

    :cond_44
    move-object v7, v0

    :goto_22
    invoke-virtual {v7}, Landroid/app/Dialog;->show()V

    goto/16 :goto_2b

    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_69

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->dismiss()V

    goto/16 :goto_2b

    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_69

    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isAnimating()Z

    move-result v1

    if-nez v1, :cond_69

    iget-object v0, v0, Lcom/android/systemui/volume/view/standard/VolumePanelWindow;->panelView:Lcom/android/systemui/volume/view/standard/VolumePanelView;

    invoke-virtual {v0}, Lcom/android/systemui/volume/view/standard/VolumePanelView;->startDismissAnimation()V

    goto/16 :goto_2b

    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_49

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/volume/view/standard/VolumePanelWindow;->getStore$2()Lcom/android/systemui/volume/store/VolumePanelStore;

    move-result-object v3

    iget-object v3, v3, Lcom/android/systemui/volume/store/VolumePanelStore;->currentState:Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    invoke-static {v3}, Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;->isAODVolumePanel(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)Z

    move-result v3

    const/high16 v4, 0x40000

    if-eqz v3, :cond_45

    const/16 v3, 0x7e5

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {v2, v4}, Landroid/view/WindowManager$LayoutParams;->semAddExtensionFlags(I)V

    const/4 v3, 0x0

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_24

    :cond_45
    const/4 v3, 0x0

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/volume/view/standard/VolumePanelWindow;->getStore$2()Lcom/android/systemui/volume/store/VolumePanelStore;

    move-result-object v3

    iget-object v3, v3, Lcom/android/systemui/volume/store/VolumePanelStore;->currentState:Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    invoke-virtual {v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isDualAudio()Z

    move-result v3

    if-eqz v3, :cond_46

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    const v5, 0x7f0717c2

    invoke-static {v5, v3}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenInt(ILandroid/content/Context;)I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v5

    const v7, 0x7f0717ba

    invoke-static {v7, v5}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenInt(ILandroid/content/Context;)I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/volume/view/standard/VolumePanelWindow;->getBaseHeight$1()I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/android/systemui/volume/view/standard/VolumePanelWindow;->getSeekBarY(I)F

    move-result v7

    int-to-float v5, v5

    sub-float/2addr v7, v5

    int-to-float v3, v3

    sub-float/2addr v7, v3

    float-to-int v3, v7

    goto :goto_23

    :cond_46
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/volume/view/standard/VolumePanelWindow;->getBaseHeight$1()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/systemui/volume/view/standard/VolumePanelWindow;->getSeekBarY(I)F

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v5

    const v7, 0x7f0717ed    # 1.7957E38f

    invoke-static {v7, v5}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenInt(ILandroid/content/Context;)I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v3, v5

    float-to-int v3, v3

    :goto_23
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    const/16 v3, 0x7e4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {v2, v4}, Landroid/view/WindowManager$LayoutParams;->semClearExtensionFlags(I)V

    :goto_24
    sget-boolean v3, Lcom/android/systemui/BasicRune;->VOLUME_LEFT_DISPLAY_VOLUME_DIALOG:Z

    if-eqz v3, :cond_47

    move v8, v9

    goto :goto_25

    :cond_47
    const/4 v8, 0x5

    :goto_25
    or-int/lit8 v3, v8, 0x30

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v3, v0, Lcom/android/systemui/volume/view/standard/VolumePanelWindow;->infraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    invoke-interface {v3}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isSupportTvVolumeSync()Z

    move-result v3

    const/high16 v4, -0x80000000

    if-eqz v3, :cond_48

    invoke-virtual {v2, v4}, Landroid/view/WindowManager$LayoutParams;->semAddExtensionFlags(I)V

    goto :goto_26

    :cond_48
    invoke-virtual {v2, v4}, Landroid/view/WindowManager$LayoutParams;->semClearExtensionFlags(I)V

    :goto_26
    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_49
    iget-object v1, v0, Lcom/android/systemui/volume/view/standard/VolumePanelWindow;->panelView:Lcom/android/systemui/volume/view/standard/VolumePanelView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/volume/view/standard/VolumePanelWindow;->getStore$2()Lcom/android/systemui/volume/store/VolumePanelStore;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/volume/store/VolumePanelStore;->currentState:Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isLockscreen()Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/systemui/volume/view/standard/VolumePanelView;->isLockscreen:Z

    invoke-static {v0}, Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;->isDualViewEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/systemui/volume/view/standard/VolumePanelView;->isDualViewEnabled:Z

    sget-boolean v2, Lcom/android/systemui/BasicRune;->VOLUME_REFRESH_RATE_FIXED:Z

    if-eqz v2, :cond_4c

    iget-object v2, v1, Lcom/android/systemui/volume/view/standard/VolumePanelView;->handlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    if-nez v2, :cond_4a

    const/4 v2, 0x0

    :cond_4a
    iget-object v3, v1, Lcom/android/systemui/volume/view/standard/VolumePanelView;->iDisplayManagerWrapper:Lcom/android/systemui/volume/util/IDisplayManagerWrapper;

    if-nez v3, :cond_4b

    const/4 v3, 0x0

    :cond_4b
    iget-object v3, v3, Lcom/android/systemui/volume/util/IDisplayManagerWrapper;->refreshRateLimitOnRunnable:Lcom/android/systemui/volume/util/IDisplayManagerWrapper$refreshRateLimitOnRunnable$1;

    invoke-virtual {v2, v3}, Lcom/android/systemui/volume/util/HandlerWrapper;->post(Ljava/lang/Runnable;)V

    :cond_4c
    invoke-static {v0}, Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;->isAODVolumePanel(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)Z

    move-result v2

    const v3, 0x7f0a0e66

    const v4, 0x7f0a0e6c

    if-eqz v2, :cond_4f

    iget-object v2, v1, Lcom/android/systemui/volume/view/standard/VolumePanelView;->volumePanelView:Landroid/view/ViewGroup;

    if-nez v2, :cond_4d

    const/4 v2, 0x0

    :cond_4d
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, v1, Lcom/android/systemui/volume/view/standard/VolumePanelView;->rowContainer:Landroid/view/ViewGroup;

    iget-object v2, v1, Lcom/android/systemui/volume/view/standard/VolumePanelView;->volumePanelView:Landroid/view/ViewGroup;

    if-nez v2, :cond_4e

    const/4 v2, 0x0

    :cond_4e
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/android/systemui/volume/view/standard/VolumePanelView;->expandButton:Landroid/widget/ImageView;

    goto :goto_27

    :cond_4f
    iget-boolean v2, v1, Lcom/android/systemui/volume/view/standard/VolumePanelView;->isDualViewEnabled:Z

    if-eqz v2, :cond_53

    iget-object v2, v1, Lcom/android/systemui/volume/view/standard/VolumePanelView;->volumePanelDualView:Landroid/view/ViewGroup;

    if-nez v2, :cond_50

    const/4 v2, 0x0

    :cond_50
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, v1, Lcom/android/systemui/volume/view/standard/VolumePanelView;->rowContainer:Landroid/view/ViewGroup;

    iget-object v2, v1, Lcom/android/systemui/volume/view/standard/VolumePanelView;->volumePanelDualView:Landroid/view/ViewGroup;

    if-nez v2, :cond_51

    const/4 v2, 0x0

    :cond_51
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/android/systemui/volume/view/standard/VolumePanelView;->expandButton:Landroid/widget/ImageView;

    iget-object v2, v1, Lcom/android/systemui/volume/view/standard/VolumePanelView;->volumePanelDualView:Landroid/view/ViewGroup;

    if-nez v2, :cond_52

    const/4 v2, 0x0

    :cond_52
    const v3, 0x7f0a0e63

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/android/systemui/volume/view/standard/VolumePanelView;->dualViewTitle:Landroid/widget/TextView;

    goto :goto_27

    :cond_53
    iget-object v2, v1, Lcom/android/systemui/volume/view/standard/VolumePanelView;->volumePanelView:Landroid/view/ViewGroup;

    if-nez v2, :cond_54

    const/4 v2, 0x0

    :cond_54
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, v1, Lcom/android/systemui/volume/view/standard/VolumePanelView;->rowContainer:Landroid/view/ViewGroup;

    iget-object v2, v1, Lcom/android/systemui/volume/view/standard/VolumePanelView;->volumePanelView:Landroid/view/ViewGroup;

    if-nez v2, :cond_55

    const/4 v2, 0x0

    :cond_55
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/android/systemui/volume/view/standard/VolumePanelView;->expandButton:Landroid/widget/ImageView;

    :goto_27
    invoke-static {v0}, Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;->isAODVolumePanel(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)Z

    move-result v2

    if-eqz v2, :cond_5a

    iget-object v2, v1, Lcom/android/systemui/volume/view/standard/VolumePanelView;->volumeAODPanelView:Landroid/view/ViewGroup;

    if-nez v2, :cond_56

    const/4 v2, 0x0

    :cond_56
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/systemui/volume/util/ContextUtils;->getDisplayWidth(Landroid/content/Context;)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/systemui/volume/util/ContextUtils;->getDisplayHeight(Landroid/content/Context;)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v3, v1, Lcom/android/systemui/volume/view/standard/VolumePanelView;->volumeAODPanelView:Landroid/view/ViewGroup;

    if-nez v3, :cond_57

    const/4 v3, 0x0

    :cond_57
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, v1, Lcom/android/systemui/volume/view/standard/VolumePanelView;->volumePanelView:Landroid/view/ViewGroup;

    if-nez v2, :cond_58

    const/4 v2, 0x0

    :cond_58
    iget-object v3, v1, Lcom/android/systemui/volume/view/standard/VolumePanelView;->dialog:Landroid/app/Dialog;

    if-nez v3, :cond_59

    const/4 v3, 0x0

    :cond_59
    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3, v4, v4}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto :goto_28

    :cond_5a
    const/4 v4, 0x0

    iget-object v2, v1, Lcom/android/systemui/volume/view/standard/VolumePanelView;->volumePanelView:Landroid/view/ViewGroup;

    if-nez v2, :cond_5b

    const/4 v2, 0x0

    :cond_5b
    invoke-virtual {v2, v4, v4, v4, v4}, Landroid/view/ViewGroup;->setPadding(IIII)V

    :goto_28
    invoke-virtual {v1, v0}, Lcom/android/systemui/volume/view/standard/VolumePanelView;->initViewVisibility(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    invoke-static {v0}, Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;->isAODVolumePanel(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)Z

    move-result v2

    if-eqz v2, :cond_5e

    sget-object v2, Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;->INSTANCE:Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;

    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getActiveStream()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;->findRow(Lcom/samsung/systemui/splugins/volume/VolumePanelState;I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    move-result-object v2

    if-eqz v2, :cond_5c

    invoke-virtual {v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getRealLevel()I

    move-result v2

    iput v2, v1, Lcom/android/systemui/volume/view/standard/VolumePanelView;->currentVolume:I

    :cond_5c
    iget-object v2, v1, Lcom/android/systemui/volume/view/standard/VolumePanelView;->vibratorWrapper:Lcom/android/systemui/volume/util/VibratorWrapper;

    if-nez v2, :cond_5d

    const/4 v2, 0x0

    :cond_5d
    invoke-virtual {v2}, Lcom/android/systemui/volume/util/VibratorWrapper;->vibrate()V

    :cond_5e
    iget-boolean v2, v1, Lcom/android/systemui/volume/view/standard/VolumePanelView;->isDualViewEnabled:Z

    if-eqz v2, :cond_63

    iget-object v2, v1, Lcom/android/systemui/volume/view/standard/VolumePanelView;->dualViewTitle:Landroid/widget/TextView;

    if-nez v2, :cond_5f

    const/4 v2, 0x0

    :cond_5f
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f13146f

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lcom/android/systemui/volume/view/standard/VolumePanelView;->volumePanelDualView:Landroid/view/ViewGroup;

    if-nez v2, :cond_60

    const/4 v2, 0x0

    :cond_60
    const v3, 0x7f0a0e61

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    sget-object v3, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v3, v6}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v3}, Lcom/android/systemui/util/SettingsHelper;->isReduceTransparencyEnabled()Z

    move-result v3

    if-nez v3, :cond_62

    sget-boolean v3, Lcom/android/systemui/BasicRune;->VOLUME_PARTIAL_BLUR:Z

    if-nez v3, :cond_61

    sget-boolean v3, Lcom/android/systemui/BasicRune;->VOLUME_CAPTURED_BLUR:Z

    if-eqz v3, :cond_62

    :cond_61
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0814b4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_29

    :cond_62
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0814b3

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    :goto_29
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_63
    iget-object v2, v1, Lcom/android/systemui/volume/view/standard/VolumePanelView;->expandButton:Landroid/widget/ImageView;

    if-nez v2, :cond_64

    const/4 v2, 0x0

    :cond_64
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f1310c7

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lcom/android/systemui/volume/view/standard/VolumePanelView;->expandButton:Landroid/widget/ImageView;

    if-nez v2, :cond_65

    const/4 v2, 0x0

    :cond_65
    new-instance v3, Lcom/android/systemui/volume/view/standard/VolumePanelView$initExpandButton$1;

    invoke-direct {v3, v1}, Lcom/android/systemui/volume/view/standard/VolumePanelView$initExpandButton$1;-><init>(Lcom/android/systemui/volume/view/standard/VolumePanelView;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, v1, Lcom/android/systemui/volume/view/standard/VolumePanelView;->expandButton:Landroid/widget/ImageView;

    if-nez v2, :cond_66

    const/4 v2, 0x0

    :cond_66
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isShowA11yStream()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setClickable(Z)V

    invoke-virtual {v1, v0}, Lcom/android/systemui/volume/view/standard/VolumePanelView;->addVolumeRows(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    iget-object v0, v1, Lcom/android/systemui/volume/view/standard/VolumePanelView;->dialog:Landroid/app/Dialog;

    if-nez v0, :cond_67

    const/4 v0, 0x0

    :cond_67
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, v1, Lcom/android/systemui/volume/view/standard/VolumePanelView;->dialog:Landroid/app/Dialog;

    if-nez v0, :cond_68

    const/4 v7, 0x0

    goto :goto_2a

    :cond_68
    move-object v7, v0

    :goto_2a
    invoke-virtual {v7}, Landroid/app/Dialog;->show()V

    :cond_69
    :goto_2b
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

    iget-object p0, p0, Lcom/android/systemui/volume/view/standard/VolumePanelWindow;->log:Lcom/android/systemui/basic/util/LogWrapper;

    const-string v0, "VolumePanelWindow"

    const-string v1, "onStart"

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/basic/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onStop()V
    .locals 4

    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    iget-object v0, p0, Lcom/android/systemui/volume/view/standard/VolumePanelWindow;->log:Lcom/android/systemui/basic/util/LogWrapper;

    invoke-virtual {p0}, Lcom/android/systemui/volume/view/standard/VolumePanelWindow;->getStore$2()Lcom/android/systemui/volume/store/VolumePanelStore;

    move-result-object v1

    iget-object v1, v1, Lcom/android/systemui/volume/store/VolumePanelStore;->currentState:Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isExpanded()Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onStop : panelState.isExpanded="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VolumePanelWindow"

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/basic/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/volume/view/standard/VolumePanelWindow;->panelView:Lcom/android/systemui/volume/view/standard/VolumePanelView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v1, Lcom/android/systemui/BasicRune;->VOLUME_REFRESH_RATE_FIXED:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->handlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    if-nez v1, :cond_0

    move-object v1, v2

    :cond_0
    iget-object v3, v0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->iDisplayManagerWrapper:Lcom/android/systemui/volume/util/IDisplayManagerWrapper;

    if-nez v3, :cond_1

    move-object v3, v2

    :cond_1
    iget-object v3, v3, Lcom/android/systemui/volume/util/IDisplayManagerWrapper;->refreshRateLimitOffRunnable:Lcom/android/systemui/volume/util/IDisplayManagerWrapper$refreshRateLimitOffRunnable$1;

    invoke-virtual {v1, v3}, Lcom/android/systemui/volume/util/HandlerWrapper;->post(Ljava/lang/Runnable;)V

    :cond_2
    iget-object v1, v0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->panelState:Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    move-object v1, v2

    :goto_0
    invoke-static {v1}, Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;->isAODVolumePanel(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, v0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->powerManagerWrapper:Lcom/android/systemui/volume/util/PowerManagerWrapper;

    if-nez v1, :cond_4

    move-object v1, v2

    :cond_4
    iget-object v3, v1, Lcom/android/systemui/volume/util/PowerManagerWrapper;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_5
    iput-object v2, v1, Lcom/android/systemui/volume/util/PowerManagerWrapper;->wakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v1, v0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->pluginAODManagerWrapper:Lcom/android/systemui/volume/util/PluginAODManagerWrapper;

    if-nez v1, :cond_6

    move-object v1, v2

    :cond_6
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/systemui/volume/util/PluginAODManagerWrapper;->requestAODVolumePanel(Z)V

    :cond_7
    iget-object v0, v0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->rowContainer:Landroid/view/ViewGroup;

    if-nez v0, :cond_8

    goto :goto_1

    :cond_8
    move-object v2, v0

    :goto_1
    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {p0}, Lcom/android/systemui/volume/view/standard/VolumePanelWindow;->getStore$2()Lcom/android/systemui/volume/store/VolumePanelStore;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/volume/store/VolumePanelStore;->currentState:Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isExpanded()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object p0, p0, Lcom/android/systemui/volume/view/standard/VolumePanelWindow;->storeInteractor$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/volume/store/StoreInteractor;

    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_DISMISS_VOLUME_PANEL:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-direct {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/volume/store/StoreInteractor;->sendAction(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    :cond_9
    return-void
.end method
