.class public final Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;
.super Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final binder:Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder;

.field public binding:Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$Binding;

.field public final bottomDozeArea$delegate:Lkotlin/Lazy;

.field public currentOrientation:I

.field public currentSimState:I

.field public final disclosureIndicationText$delegate:Lkotlin/Lazy;

.field public final displayMetrics$delegate:Lkotlin/Lazy;

.field public emergencyButton:Lcom/android/keyguard/EmergencyButton;

.field public final indicationText$delegate:Lkotlin/Lazy;

.field public isKeyguardVisible:Z

.field public isLastVisibility:I

.field public isNowBarVisible:Z

.field public isPluginLockOverlayView:Z

.field public final leftShortcutArea$delegate:Lkotlin/Lazy;

.field public final leftShortcutEffectview$delegate:Lkotlin/Lazy;

.field public final leftView$delegate:Lkotlin/Lazy;

.field public final mDisplay$delegate:Lkotlin/Lazy;

.field public final rightShortcutArea$delegate:Lkotlin/Lazy;

.field public final rightShortcutEffectview$delegate:Lkotlin/Lazy;

.field public final rightView$delegate:Lkotlin/Lazy;

.field public setUsimTextAreaVisibility:Lkotlin/jvm/functions/Function0;

.field public shortcutManager:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

.field public showShortcutsIfPossible:Lkotlin/jvm/functions/Function0;

.field public updateLeftAffordanceIcon:Lkotlin/jvm/functions/Function0;

.field public updateRightAffordanceIcon:Lkotlin/jvm/functions/Function0;

.field public final upperFPIndication$delegate:Lkotlin/Lazy;

.field public usimCarrierText:Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;

.field public usimTextArea:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    const/16 v5, 0xe

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    const/16 v5, 0xc

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance p2, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView$leftView$2;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView$leftView$2;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;)V

    invoke-static {p2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->leftView$delegate:Lkotlin/Lazy;

    new-instance p2, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView$rightView$2;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView$rightView$2;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;)V

    invoke-static {p2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->rightView$delegate:Lkotlin/Lazy;

    new-instance p2, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView$leftShortcutArea$2;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView$leftShortcutArea$2;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;)V

    invoke-static {p2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->leftShortcutArea$delegate:Lkotlin/Lazy;

    new-instance p2, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView$rightShortcutArea$2;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView$rightShortcutArea$2;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;)V

    invoke-static {p2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->rightShortcutArea$delegate:Lkotlin/Lazy;

    new-instance p2, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView$leftShortcutEffectview$2;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView$leftShortcutEffectview$2;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;)V

    invoke-static {p2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->leftShortcutEffectview$delegate:Lkotlin/Lazy;

    new-instance p2, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView$rightShortcutEffectview$2;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView$rightShortcutEffectview$2;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;)V

    invoke-static {p2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->rightShortcutEffectview$delegate:Lkotlin/Lazy;

    new-instance p2, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView$indicationText$2;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView$indicationText$2;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;)V

    invoke-static {p2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->indicationText$delegate:Lkotlin/Lazy;

    new-instance p2, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView$disclosureIndicationText$2;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView$disclosureIndicationText$2;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;)V

    invoke-static {p2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->disclosureIndicationText$delegate:Lkotlin/Lazy;

    new-instance p2, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView$bottomDozeArea$2;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView$bottomDozeArea$2;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;)V

    invoke-static {p2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->bottomDozeArea$delegate:Lkotlin/Lazy;

    new-instance p2, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView$upperFPIndication$2;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView$upperFPIndication$2;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;)V

    invoke-static {p2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->upperFPIndication$delegate:Lkotlin/Lazy;

    new-instance p2, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView$mDisplay$2;

    invoke-direct {p2, p1}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView$mDisplay$2;-><init>(Landroid/content/Context;)V

    invoke-static {p2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->mDisplay$delegate:Lkotlin/Lazy;

    sget-object p1, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView$displayMetrics$2;->INSTANCE:Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView$displayMetrics$2;

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->displayMetrics$delegate:Lkotlin/Lazy;

    const/4 p1, 0x1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->currentSimState:I

    const/16 p1, 0x8

    iput p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->isLastVisibility:I

    sget-object p1, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder;->INSTANCE:Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->binder:Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_1

    move p3, v0

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    move p4, v0

    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public static final synthetic access$getLeftView$s-672475773(Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;)Landroid/widget/ImageView;
    .locals 0

    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getLeftView()Landroid/widget/ImageView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getRightView$s-672475773(Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;)Landroid/widget/ImageView;
    .locals 0

    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getRightView()Landroid/widget/ImageView;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getBinder()Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->binder:Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder;

    return-object p0
.end method

.method public final getBinding()Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$Binding;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->binding:Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$Binding;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final bridge synthetic getLeftView()Landroid/widget/ImageView;
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->getLeftView()Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    move-result-object p0

    return-object p0
.end method

.method public final getLeftView()Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->leftView$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    return-object p0
.end method

.method public final bridge synthetic getRightView()Landroid/widget/ImageView;
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->getRightView()Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    move-result-object p0

    return-object p0
.end method

.method public final getRightView()Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->rightView$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    return-object p0
.end method

.method public final hasOverlappingRendering()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final init(Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/keyguard/SecLockIconViewController;Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$MessageDisplayer;Lcom/android/systemui/statusbar/VibratorHelper;Lcom/android/systemui/plugins/ActivityStarter;Ldagger/Lazy;)V
    .locals 0

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->binding:Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$Binding;

    if-eqz p2, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-interface {p2}, Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$Binding;->destroy()V

    :cond_1
    invoke-static {p0, p1}, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder;->bind(Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel;)Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$bind$1;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->binding:Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$Binding;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->lockIconViewController:Lcom/android/keyguard/SecLockIconViewController;

    iput-object p7, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->pluginLockStarManagerLazy:Ldagger/Lazy;

    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class p2, Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    invoke-virtual {p1, p2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->shortcutManager:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    return-void
.end method

.method public final initEmergencyButton(Lcom/android/keyguard/EmergencyButtonController$Factory;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->emergencyButton:Lcom/android/keyguard/EmergencyButton;

    if-eqz p0, :cond_0

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, p0}, Lcom/android/keyguard/EmergencyButtonController$Factory;->create(Lcom/android/keyguard/EmergencyButton;)Lcom/android/keyguard/EmergencyButtonController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->init()V

    :cond_0
    return-void
.end method

.method public final isInEmergencyButtonArea(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->usimTextArea:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->emergencyButton:Lcom/android/keyguard/EmergencyButton;

    if-eqz p0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v0}, Landroid/widget/Button;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p0

    float-to-int p0, p0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {v0, p0, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    return p0

    :cond_0
    return v1

    :cond_1
    const-string p0, "KeyguardSecBottomAreaView"

    const-string p1, "isInEmergencyButtonArea() - usimTextArea is not visible"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public final onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 2

    const-class v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v1, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isFastWakeAndUnlockMode()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->binding:Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$Binding;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    check-cast v0, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$bind$1;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$bind$1;->updateShortcutPosition()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->binding:Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$Binding;

    if-eqz v0, :cond_1

    move-object v1, v0

    :cond_1
    check-cast v1, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$bind$1;

    invoke-virtual {v1}, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$bind$1;->updateIndicationPosition()V

    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->shouldEnableKeyguardScreenRotation(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->currentOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->updateLayout()V

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iput p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->currentOrientation:I

    :cond_0
    return-void
.end method

.method public final onFinishInflate()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->getRightView()Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->init()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->getRightView()Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRight:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->getLeftView()Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->init()V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->currentOrientation:I

    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->onFinishInflate()V

    sget-boolean v0, Lcom/android/systemui/CscRune;->LOCKUI_BOTTOM_USIM_TEXT:Z

    const-string v1, "KeyguardSecBottomAreaView"

    if-eqz v0, :cond_0

    const v0, 0x7f0a0e05

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->usimTextArea:Landroid/widget/LinearLayout;

    const v0, 0x7f0a03ff

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/EmergencyButton;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->emergencyButton:Lcom/android/keyguard/EmergencyButton;

    const v0, 0x7f0a0c2c

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const v0, 0x7f0a05d2

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->usimCarrierText:Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "mUsimCarrierText="

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p0, "onFinishInflate: USIM is null"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public final onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    if-ne p1, p0, :cond_3

    iget p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->isLastVisibility:I

    if-eq p1, p2, :cond_3

    iput p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->isLastVisibility:I

    if-nez p2, :cond_3

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->setUsimTextAreaVisibility:Lkotlin/jvm/functions/Function0;

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->showShortcutsIfPossible:Lkotlin/jvm/functions/Function0;

    if-eqz p0, :cond_3

    if-eqz p0, :cond_2

    move-object p2, p0

    :cond_2
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_3
    return-void
.end method

.method public final setAllChildEnabled(Landroid/view/View;Z)V
    .locals 3

    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->setAllChildEnabled(Landroid/view/View;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final setBinding(Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$bind$4;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->binding:Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$Binding;

    return-void
.end method

.method public final updateIndicationPosition(Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$ConfigurationBasedDimensions;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->isKeyguardVisible:Z

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    sget-boolean v4, Lcom/android/systemui/CscRune;->LOCKUI_BOTTOM_USIM_TEXT:Z

    const/4 v5, 0x2

    const/16 v6, 0x8

    const/4 v7, 0x0

    if-eqz v4, :cond_4

    if-ne v3, v5, :cond_2

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->disclosureIndicationText$delegate:Lkotlin/Lazy;

    invoke-interface {v4}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->usimCarrierText:Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;

    if-nez v4, :cond_1

    move-object v4, v7

    :cond_1
    invoke-virtual {v4, v6}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->usimCarrierText:Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;

    if-nez v4, :cond_3

    move-object v4, v7

    :cond_3
    iget v8, v0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->currentSimState:I

    invoke-virtual {v4, v8}, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;->updateText(I)V

    :cond_4
    :goto_0
    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->shortcutManager:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    if-nez v4, :cond_5

    move-object v4, v7

    :cond_5
    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->getShortcutBottomMargin(Z)I

    move-result v4

    iget-object v9, v0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->shortcutManager:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    if-nez v9, :cond_6

    move-object v9, v7

    :cond_6
    invoke-virtual {v9, v8}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->getShortcutIconSizeValue(Z)I

    move-result v9

    add-int/2addr v9, v4

    const v4, 0x7f0704d2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    add-int/2addr v4, v9

    iput v4, v1, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$ConfigurationBasedDimensions;->indicationAreaBottomMargin:I

    iget-boolean v4, v0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->isPluginLockOverlayView:Z

    if-nez v4, :cond_7

    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isInDisplayFpSensorPositionHigh()Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->mDisplay$delegate:Lkotlin/Lazy;

    invoke-interface {v4}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/Display;

    invoke-virtual {v4}, Landroid/view/Display;->getRotation()I

    move-result v4

    if-nez v4, :cond_7

    invoke-static {}, Lcom/android/systemui/util/DeviceState;->getInDisplayFingerprintHeight()I

    move-result v4

    iput v4, v1, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$ConfigurationBasedDimensions;->upperFPIndicationBottomMargin:I

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->upperFPIndication$delegate:Lkotlin/Lazy;

    invoke-interface {v4}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    invoke-virtual {v4, v8}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    goto :goto_1

    :cond_7
    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->upperFPIndication$delegate:Lkotlin/Lazy;

    invoke-interface {v4}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    invoke-virtual {v4, v6}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    :goto_1
    iget v4, v1, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$ConfigurationBasedDimensions;->shortcutSideMargin:I

    iput v4, v1, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$ConfigurationBasedDimensions;->indicationAreaSideMargin:I

    if-ne v3, v5, :cond_8

    iget-object v6, v1, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$ConfigurationBasedDimensions;->buttonSizePx:Landroid/util/Size;

    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v6

    add-int/2addr v6, v4

    const v4, 0x7f0704af

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    add-int/2addr v4, v6

    iput v4, v1, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$ConfigurationBasedDimensions;->indicationAreaSideMargin:I

    :cond_8
    sget-boolean v4, Lcom/android/systemui/LsRune;->SECURITY_FINGERPRINT_IN_DISPLAY:Z

    const/4 v6, 0x1

    if-eqz v4, :cond_b

    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isInDisplayFpSensorPositionHigh()Z

    move-result v4

    if-nez v4, :cond_b

    const-class v4, Lcom/android/keyguard/KeyguardUpdateMonitor;

    sget-object v9, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v9, v4}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v4}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isFingerprintOptionEnabled()Z

    move-result v4

    if-eqz v4, :cond_b

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->mDisplay$delegate:Lkotlin/Lazy;

    invoke-interface {v4}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/Display;

    invoke-virtual {v4}, Landroid/view/Display;->getRotation()I

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->mDisplay$delegate:Lkotlin/Lazy;

    invoke-interface {v4}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/Display;

    invoke-virtual {v4}, Landroid/view/Display;->getRotation()I

    move-result v4

    if-ne v4, v5, :cond_b

    :cond_9
    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-static {}, Lcom/android/systemui/util/DeviceState;->getInDisplayFingerprintHeight()I

    move-result v4

    const v9, 0x7f0704d7

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    add-int/2addr v9, v4

    goto :goto_2

    :cond_a
    invoke-static {}, Lcom/android/systemui/util/DeviceState;->getInDisplayFingerprintHeight()I

    move-result v9

    :goto_2
    iput v9, v1, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$ConfigurationBasedDimensions;->indicationAreaBottomMargin:I

    move v4, v8

    goto :goto_3

    :cond_b
    move v4, v6

    :goto_3
    iget-object v9, v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->pluginLockStarManagerLazy:Ldagger/Lazy;

    if-eqz v9, :cond_c

    invoke-interface {v9}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/lockstar/PluginLockStarManager;

    goto :goto_4

    :cond_c
    move-object v9, v7

    :goto_4
    if-eqz v9, :cond_d

    invoke-virtual {v9}, Lcom/android/systemui/lockstar/PluginLockStarManager;->isLockStarEnabled()Z

    move-result v10

    if-eqz v10, :cond_d

    invoke-virtual {v9}, Lcom/android/systemui/lockstar/PluginLockStarManager;->getLockStarValues()Lcom/samsung/systemui/splugins/lockstar/LockStarValues;

    move-result-object v9

    if-eqz v9, :cond_d

    invoke-interface {v9}, Lcom/samsung/systemui/splugins/lockstar/LockStarValues;->getIndicationBottomMargin()I

    move-result v9

    goto :goto_5

    :cond_d
    iget-object v9, v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->pluginLockData:Lcom/android/systemui/pluginlock/PluginLockData;

    const/4 v10, -0x1

    if-eqz v9, :cond_e

    invoke-interface {v9}, Lcom/android/systemui/pluginlock/PluginLockData;->isAvailable()Z

    move-result v9

    if-ne v9, v6, :cond_e

    iget-object v9, v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->pluginLockData:Lcom/android/systemui/pluginlock/PluginLockData;

    if-eqz v9, :cond_e

    const/4 v10, 0x5

    invoke-interface {v9, v10}, Lcom/android/systemui/pluginlock/PluginLockData;->getPaddingBottom(I)I

    move-result v9

    goto :goto_5

    :cond_e
    move v9, v10

    :goto_5
    if-ltz v9, :cond_f

    iput v9, v1, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$ConfigurationBasedDimensions;->indicationAreaBottomMargin:I

    :cond_f
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v9, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v10, v1, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$ConfigurationBasedDimensions;->indicationAreaSideMargin:I

    mul-int/2addr v10, v5

    sub-int v14, v9, v10

    new-instance v9, Landroid/text/StaticLayout;

    iget-object v10, v0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->indicationText$delegate:Lkotlin/Lazy;

    invoke-interface {v10}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v12

    iget-object v10, v0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->indicationText$delegate:Lkotlin/Lazy;

    invoke-interface {v10}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v13

    sget-object v15, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/16 v18, 0x0

    const/high16 v16, 0x3f800000    # 1.0f

    const/16 v17, 0x0

    move-object v11, v9

    invoke-direct/range {v11 .. v18}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    invoke-virtual {v9}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v9

    sget-boolean v10, Lcom/android/systemui/LsRune;->LOCKUI_SUB_DISPLAY_LOCK:Z

    if-eqz v10, :cond_10

    sget-object v10, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v11, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-virtual {v10, v11}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/keyguard/DisplayLifecycle;

    iget-boolean v10, v10, Lcom/android/systemui/keyguard/DisplayLifecycle;->mIsFolderOpened:Z

    if-eqz v10, :cond_10

    if-ne v3, v5, :cond_10

    const v3, 0x7f070516

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto :goto_8

    :cond_10
    if-ne v3, v6, :cond_15

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->indicationText$delegate:Lkotlin/Lazy;

    invoke-interface {v3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLineHeight()I

    move-result v3

    const v10, 0x7f070514

    if-nez v4, :cond_14

    invoke-virtual {v2, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    if-eq v9, v6, :cond_12

    if-eq v9, v5, :cond_11

    goto :goto_6

    :cond_11
    move v8, v3

    goto :goto_6

    :cond_12
    mul-int/lit8 v8, v3, 0x2

    :goto_6
    iget-boolean v3, v0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->isNowBarVisible:Z

    if-eqz v3, :cond_16

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->shortcutManager:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    if-nez v3, :cond_13

    goto :goto_7

    :cond_13
    move-object v7, v3

    :goto_7
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->getNowBarCollapsedHeight()I

    move-result v3

    iget-object v4, v7, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070bc4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    add-int/2addr v4, v3

    add-int/2addr v4, v2

    add-int v2, v4, v8

    goto :goto_8

    :cond_14
    invoke-virtual {v2, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto :goto_8

    :cond_15
    const v3, 0x7f070515

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    :cond_16
    :goto_8
    iput v2, v1, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$ConfigurationBasedDimensions;->usimTextAreaBottomMargin:I

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->isPluginLockOverlayView:Z

    iput-boolean v0, v1, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$ConfigurationBasedDimensions;->isOverlayView:Z

    return-void
.end method

.method public final updateLayout()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->mDisplay$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Display;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->displayMetrics$delegate:Lkotlin/Lazy;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->binding:Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$Binding;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    check-cast p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$bind$1;

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$bind$1;->onConfigurationChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public final updateShortcutPosition(Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$ConfigurationBasedDimensions;)V
    .locals 6

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->isKeyguardVisible:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->shortcutManager:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    move-object v0, v1

    :cond_1
    iget-boolean v2, v0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->isNowBarVisible:Z

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->getShortcutIconSizeValue(Z)I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->shortcutManager:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    if-nez v2, :cond_2

    move-object v2, v1

    :cond_2
    iget-boolean v3, v2, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->isNowBarVisible:Z

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->getShortcutBottomMargin(Z)I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->shortcutManager:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    move-object v1, v3

    :goto_0
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->getShortcutSideMargin()I

    move-result v1

    iget-object v3, p1, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$ConfigurationBasedDimensions;->buttonSizePx:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v3

    if-eq v3, v0, :cond_6

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->getLeftView()Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    const-string v5, "null cannot be cast to non-null type android.view.ViewGroup.LayoutParams"

    if-eqz v4, :cond_5

    iput v0, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v0, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->getRightView()Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    if-eqz v4, :cond_4

    iput v0, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v0, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/util/Size;

    invoke-direct {v3, v0, v0}, Landroid/util/Size;-><init>(II)V

    iput-object v3, p1, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$ConfigurationBasedDimensions;->buttonSizePx:Landroid/util/Size;

    goto :goto_1

    :cond_4
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    :goto_1
    iget v0, p1, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$ConfigurationBasedDimensions;->shortcutBottomMargin:I

    const-string v3, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams"

    if-eq v0, v2, :cond_9

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->leftShortcutArea$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    if-eqz v4, :cond_8

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    iput v2, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->rightShortcutArea$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    if-eqz v4, :cond_7

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    iput v2, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iput v2, p1, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$ConfigurationBasedDimensions;->shortcutBottomMargin:I

    goto :goto_2

    :cond_7
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    :goto_2
    iget v0, p1, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$ConfigurationBasedDimensions;->shortcutSideMargin:I

    if-eq v0, v1, :cond_c

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->leftShortcutArea$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    if-eqz v2, :cond_b

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->rightShortcutArea$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    if-eqz v2, :cond_a

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iput v1, p1, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$ConfigurationBasedDimensions;->shortcutSideMargin:I

    goto :goto_3

    :cond_a
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c
    :goto_3
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->isPluginLockOverlayView:Z

    iput-boolean p0, p1, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$ConfigurationBasedDimensions;->isOverlayView:Z

    return-void
.end method
