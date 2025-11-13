.class public final Lcom/android/keyguard/KeyguardCarrierTextViewController;
.super Lcom/android/systemui/util/ViewController;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/widget/SystemUIWidgetCallback;
.implements Lcom/android/systemui/statusbar/phone/IndicatorGarden;


# instance fields
.field public mBouncerStatusBarAreaRootView:Landroid/view/ViewGroup;

.field public mBouncerStatusBarAreaView:Landroid/view/ViewGroup;

.field public final mCarrierTextController:Lcom/android/keyguard/CarrierTextController;

.field public mEssentialLeftWidth:I

.field public mGardenLeftContainer:Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;

.field public mGardenRightContainer:Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;

.field public final mGardener:Lcom/android/keyguard/KeyguardCarrierTextViewController$2;

.field public final mIndicatorGardenPresenter:Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

.field public final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;


# direct methods
.method public static $r8$lambda$ALKzW_bxVWrgAYAViyzvOhBChas(Lcom/android/keyguard/KeyguardCarrierTextViewController;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierTextViewController;->mIndicatorGardenPresenter:Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->onGardenApplyWindowInsets(Lcom/android/systemui/statusbar/phone/IndicatorGarden;)V

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardCarrierTextView;

    const v0, 0x7f0a01bc

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/CarrierText;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/android/keyguard/KeyguardCarrierTextView;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/CarrierTextController;Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/util/ViewController;-><init>(Landroid/view/View;)V

    new-instance p1, Lcom/android/keyguard/KeyguardCarrierTextViewController$1;

    invoke-direct {p1, p0}, Lcom/android/keyguard/KeyguardCarrierTextViewController$1;-><init>(Lcom/android/keyguard/KeyguardCarrierTextViewController;)V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardCarrierTextViewController;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    new-instance p1, Lcom/android/keyguard/KeyguardCarrierTextViewController$2;

    const-class v0, Lcom/android/keyguard/KeyguardCarrierTextViewController;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p0, p0, v0}, Lcom/android/keyguard/KeyguardCarrierTextViewController$2;-><init>(Lcom/android/keyguard/KeyguardCarrierTextViewController;Lcom/android/systemui/statusbar/phone/IndicatorGarden;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardCarrierTextViewController;->mGardener:Lcom/android/keyguard/KeyguardCarrierTextViewController$2;

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/keyguard/KeyguardCarrierTextViewController;->mEssentialLeftWidth:I

    iput-object p2, p0, Lcom/android/keyguard/KeyguardCarrierTextViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iput-object p3, p0, Lcom/android/keyguard/KeyguardCarrierTextViewController;->mCarrierTextController:Lcom/android/keyguard/CarrierTextController;

    iput-object p4, p0, Lcom/android/keyguard/KeyguardCarrierTextViewController;->mIndicatorGardenPresenter:Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/keyguard/KeyguardCarrierTextViewController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/keyguard/KeyguardCarrierTextViewController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method


# virtual methods
.method public final getCenterContainer()Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getEssentialLeftWidth()I
    .locals 2

    iget v0, p0, Lcom/android/keyguard/KeyguardCarrierTextViewController;->mEssentialLeftWidth:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0701b1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/KeyguardCarrierTextViewController;->mEssentialLeftWidth:I

    :cond_0
    iget p0, p0, Lcom/android/keyguard/KeyguardCarrierTextViewController;->mEssentialLeftWidth:I

    return p0
.end method

.method public final getEssentialRightWidth()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getGardenWindowInsets()Landroid/view/WindowInsets;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardCarrierTextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method public final getHeightContainer()Landroid/view/ViewGroup;
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierTextViewController;->mBouncerStatusBarAreaRootView:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardCarrierTextView;

    const v1, 0x7f0a01c7

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardCarrierTextViewController;->mBouncerStatusBarAreaRootView:Landroid/view/ViewGroup;

    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardCarrierTextViewController;->mBouncerStatusBarAreaRootView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public final getLeftContainer()Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierTextViewController;->mGardenLeftContainer:Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardCarrierTextView;

    const v1, 0x7f0a01bd

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardCarrierTextViewController;->mGardenLeftContainer:Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;

    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardCarrierTextViewController;->mGardenLeftContainer:Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;

    return-object p0
.end method

.method public final getRightContainer()Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierTextViewController;->mGardenRightContainer:Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardCarrierTextView;

    const v1, 0x7f0a01c4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardCarrierTextViewController;->mGardenRightContainer:Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;

    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardCarrierTextViewController;->mGardenRightContainer:Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;

    return-object p0
.end method

.method public final getSidePaddingContainer()Landroid/view/ViewGroup;
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierTextViewController;->mBouncerStatusBarAreaView:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardCarrierTextView;

    const v1, 0x7f0a01c6

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardCarrierTextViewController;->mBouncerStatusBarAreaView:Landroid/view/ViewGroup;

    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardCarrierTextViewController;->mBouncerStatusBarAreaView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public final onInit()V
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardCarrierTextViewController;->mCarrierTextController:Lcom/android/keyguard/CarrierTextController;

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->init()V

    return-void
.end method

.method public final onViewAttached()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierTextViewController;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardCarrierTextViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardCarrierTextView;

    const v1, 0x7f0a01bc

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/CarrierText;

    new-instance v1, Lcom/android/keyguard/KeyguardCarrierTextViewController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardCarrierTextViewController$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/KeyguardCarrierTextViewController;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierTextViewController;->mIndicatorGardenPresenter:Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->updateGardenWithNewModel(Lcom/android/systemui/statusbar/phone/IndicatorGarden;)V

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardCarrierTextView;

    new-instance v1, Lcom/android/keyguard/KeyguardCarrierTextViewController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardCarrierTextViewController$$ExternalSyntheticLambda1;-><init>(Lcom/android/keyguard/KeyguardCarrierTextViewController;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    const-wide/16 v0, 0x200

    invoke-static {p0, v0, v1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->registerSystemUIWidgetCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;J)V

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardCarrierTextView;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardCarrierTextView;->updateVisibility()V

    return-void
.end method

.method public final onViewDetached()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierTextViewController;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardCarrierTextViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    invoke-static {p0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->removeSystemUIWidgetCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;)V

    return-void
.end method

.method public final updateGarden(Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;)V
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardCarrierTextViewController;->mGardener:Lcom/android/keyguard/KeyguardCarrierTextViewController$2;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/IndicatorBasicGardener;->updateGarden(Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;)V

    return-void
.end method

.method public final updateStyle(JLandroid/app/SemWallpaperColors;)V
    .locals 0

    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p1, Lcom/android/keyguard/KeyguardCarrierTextView;

    const p2, 0x7f0a01bc

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/keyguard/CarrierText;

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string p2, "background"

    invoke-static {p2}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isWhiteKeyguardWallpaper(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    const p2, 0x7f060afc

    goto :goto_0

    :cond_0
    const p2, 0x7f060542

    :goto_0
    const/4 p3, 0x0

    invoke-virtual {p0, p2, p3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method
