.class public Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;
.super Landroid/widget/FrameLayout;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final CAMERA_LAUNCH_SOURCE_POWER_DOUBLE_TAP:Ljava/lang/String;

.field public static final Companion:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$Companion;


# instance fields
.field public ambientIndicationArea:Landroid/view/View;

.field public final binder:Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder;

.field public binding:Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$Binding;

.field public final indicationArea$delegate:Lkotlin/Lazy;

.field public isLockscreenLandscapeEnabled:Z

.field public keyguardIndicationArea:Landroid/view/View;

.field public final leftView$delegate:Lkotlin/Lazy;

.field public lockIconViewController:Lcom/android/keyguard/SecLockIconViewController;

.field public pluginLockData:Lcom/android/systemui/pluginlock/PluginLockData;

.field public pluginLockStarManagerLazy:Ldagger/Lazy;

.field public final rightView$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->Companion:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$Companion;

    const-string/jumbo v0, "power_double_tap"

    sput-object v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->CAMERA_LAUNCH_SOURCE_POWER_DOUBLE_TAP:Ljava/lang/String;

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

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

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

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

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

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance p1, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$leftView$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$leftView$2;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->leftView$delegate:Lkotlin/Lazy;

    new-instance p1, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$rightView$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$rightView$2;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->rightView$delegate:Lkotlin/Lazy;

    new-instance p1, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$indicationArea$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$indicationArea$2;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->indicationArea$delegate:Lkotlin/Lazy;

    sget-object p1, Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder;->Companion:Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder;->INSTANCE:Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->binder:Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder;

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
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public getBinder()Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->binder:Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder;

    return-object p0
.end method

.method public getBinding()Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$Binding;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->binding:Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$Binding;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getLeftView()Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->leftView$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    return-object p0
.end method

.method public getRightView()Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->rightView$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    return-object p0
.end method

.method public hasOverlappingRendering()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public init(Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/keyguard/SecLockIconViewController;Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$MessageDisplayer;Lcom/android/systemui/statusbar/VibratorHelper;Lcom/android/systemui/plugins/ActivityStarter;Ldagger/Lazy;)V
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->binding:Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$Binding;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getBinding()Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$Binding;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$Binding;->destroy()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getBinder()Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder;

    move-result-object v1

    new-instance v7, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$init$1;

    invoke-direct {v7, p4}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$init$1;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$MessageDisplayer;)V

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v1 .. v7}, Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder;->bind(Landroid/view/ViewGroup;Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/statusbar/VibratorHelper;Lcom/android/systemui/plugins/ActivityStarter;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$bind$4;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setBinding(Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$bind$4;)V

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->lockIconViewController:Lcom/android/keyguard/SecLockIconViewController;

    iput-object p7, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->pluginLockStarManagerLazy:Ldagger/Lazy;

    return-void
.end method

.method public initEmergencyButton(Lcom/android/keyguard/EmergencyButtonController$Factory;)V
    .locals 0

    return-void
.end method

.method public isInEmergencyButtonArea(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->binding:Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$Binding;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getBinding()Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$Binding;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$Binding;->onConfigurationChanged()V

    :cond_0
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->isLockscreenLandscapeEnabled:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->keyguardIndicationArea:Landroid/view/View;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f0704c7

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    iput p0, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method public onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f0a00d8

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->ambientIndicationArea:Landroid/view/View;

    const v0, 0x7f0a0597

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->keyguardIndicationArea:Landroid/view/View;

    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 2

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    const p1, 0x7f0a00d8

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getLocationOnScreen()[I

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 p3, 0x0

    aget p5, p2, p3

    const/4 v0, 0x1

    aget p2, p2, v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getBinding()Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$Binding;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$Binding;->shouldConstrainToTopOfLockIcon()Z

    move-result v1

    if-ne v1, v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->lockIconViewController:Lcom/android/keyguard/SecLockIconViewController;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/keyguard/SecLockIconViewController;->mView:Lcom/android/keyguard/SecLockIconView;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iget-object p0, p0, Lcom/android/keyguard/LockIconView;->mLockIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, p3}, Landroid/widget/ImageView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    iget p0, p3, Landroid/graphics/Rect;->bottom:I

    int-to-float p0, p0

    float-to-int p3, p0

    :cond_0
    sub-int/2addr p4, p5

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    add-int/2addr p0, p2

    invoke-virtual {p1, p5, p3, p4, p0}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->lockIconViewController:Lcom/android/keyguard/SecLockIconViewController;

    if-eqz p0, :cond_2

    iget-object p0, p0, Lcom/android/keyguard/SecLockIconViewController;->mView:Lcom/android/keyguard/SecLockIconView;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iget-object p0, p0, Lcom/android/keyguard/LockIconView;->mLockIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    iget p0, p2, Landroid/graphics/Rect;->top:I

    int-to-float p0, p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    goto :goto_0

    :cond_2
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    sub-int/2addr p2, p3

    sub-int/2addr p4, p5

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-virtual {p1, p5, p2, p4, p0}, Landroid/view/View;->layout(IIII)V

    :cond_3
    :goto_1
    return-void
.end method

.method public setAllChildEnabled(Landroid/view/View;Z)V
    .locals 0

    return-void
.end method

.method public setBinding(Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$bind$4;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->binding:Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$Binding;

    return-void
.end method
