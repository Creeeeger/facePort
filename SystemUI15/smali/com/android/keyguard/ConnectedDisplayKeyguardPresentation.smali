.class public final Lcom/android/keyguard/ConnectedDisplayKeyguardPresentation;
.super Landroid/app/Presentation;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public clock:Landroid/view/View;

.field public final clockEventController:Lcom/android/keyguard/ClockEventController;

.field public final clockRegistry:Lcom/android/systemui/shared/clocks/ClockRegistry;

.field public final faceController:Lcom/android/systemui/plugins/clocks/ClockFaceController;

.field public final keyguardStatusViewComponentFactory:Lcom/android/keyguard/dagger/KeyguardStatusViewComponent$Factory;

.field public final layoutChangeListener:Lcom/android/keyguard/ConnectedDisplayKeyguardPresentation$layoutChangeListener$1;


# direct methods
.method public constructor <init>(Landroid/view/Display;Landroid/content/Context;Lcom/android/keyguard/dagger/KeyguardStatusViewComponent$Factory;Lcom/android/systemui/shared/clocks/ClockRegistry;Lcom/android/keyguard/ClockEventController;)V
    .locals 1

    const p5, 0x7f14060f

    const/16 v0, 0x7d9

    invoke-direct {p0, p2, p1, p5, v0}, Landroid/app/Presentation;-><init>(Landroid/content/Context;Landroid/view/Display;II)V

    iput-object p3, p0, Lcom/android/keyguard/ConnectedDisplayKeyguardPresentation;->keyguardStatusViewComponentFactory:Lcom/android/keyguard/dagger/KeyguardStatusViewComponent$Factory;

    iput-object p4, p0, Lcom/android/keyguard/ConnectedDisplayKeyguardPresentation;->clockRegistry:Lcom/android/systemui/shared/clocks/ClockRegistry;

    new-instance p1, Lcom/android/keyguard/ConnectedDisplayKeyguardPresentation$clockChangedListener$1;

    invoke-direct {p1, p0}, Lcom/android/keyguard/ConnectedDisplayKeyguardPresentation$clockChangedListener$1;-><init>(Lcom/android/keyguard/ConnectedDisplayKeyguardPresentation;)V

    new-instance p1, Lcom/android/keyguard/ConnectedDisplayKeyguardPresentation$layoutChangeListener$1;

    invoke-direct {p1, p0}, Lcom/android/keyguard/ConnectedDisplayKeyguardPresentation$layoutChangeListener$1;-><init>(Lcom/android/keyguard/ConnectedDisplayKeyguardPresentation;)V

    iput-object p1, p0, Lcom/android/keyguard/ConnectedDisplayKeyguardPresentation;->layoutChangeListener:Lcom/android/keyguard/ConnectedDisplayKeyguardPresentation$layoutChangeListener$1;

    return-void
.end method


# virtual methods
.method public final onAttachedToWindow()V
    .locals 0

    invoke-static {}, Lcom/android/systemui/Flags;->migrateClocksToBlueprint()V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/app/Presentation;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/android/systemui/Flags;->migrateClocksToBlueprint()V

    invoke-virtual {p0}, Landroid/app/Presentation;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0d014d

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Presentation;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/app/Presentation;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x700

    invoke-virtual {v0, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    invoke-virtual {p1, v2}, Landroid/view/Window;->setNavigationBarContrastEnforced(Z)V

    invoke-virtual {p1, v2}, Landroid/view/Window;->setNavigationBarColor(I)V

    const p1, 0x7f0a02a2

    invoke-virtual {p0, p1}, Landroid/app/Presentation;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/ConnectedDisplayKeyguardPresentation;->clock:Landroid/view/View;

    if-eqz p1, :cond_0

    const v0, 0x7f0a0657

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    :cond_1
    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v0, 0x14

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/16 v0, 0xd

    const/4 v3, -0x1

    invoke-virtual {v1, v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/android/keyguard/ConnectedDisplayKeyguardPresentation;->keyguardStatusViewComponentFactory:Lcom/android/keyguard/dagger/KeyguardStatusViewComponent$Factory;

    iget-object v0, p0, Lcom/android/keyguard/ConnectedDisplayKeyguardPresentation;->clock:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardStatusView;

    invoke-virtual {p0}, Landroid/app/Presentation;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/android/keyguard/dagger/KeyguardStatusViewComponent$Factory;->build(Lcom/android/keyguard/KeyguardStatusView;Landroid/view/Display;)Lcom/android/keyguard/dagger/KeyguardStatusViewComponent;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/keyguard/dagger/KeyguardStatusViewComponent;->getKeyguardStatusViewController()Lcom/android/keyguard/KeyguardStatusViewController;

    move-result-object p1

    iget-object v0, p1, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardClockSwitchController:Lcom/android/keyguard/KeyguardClockSwitchController;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/keyguard/KeyguardClockSwitchController;->mShownOnSecondaryDisplay:Z

    invoke-virtual {p1}, Lcom/android/systemui/util/ViewController;->init()V

    invoke-virtual {p0}, Landroid/app/Presentation;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/view/View;->semSetRoundedCorners(I)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "no window available."

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final onDetachedFromWindow()V
    .locals 0

    invoke-static {}, Lcom/android/systemui/Flags;->migrateClocksToBlueprint()V

    invoke-super {p0}, Landroid/app/Presentation;->onDetachedFromWindow()V

    return-void
.end method

.method public final onDisplayChanged()V
    .locals 1

    invoke-virtual {p0}, Landroid/app/Presentation;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "no window available."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
