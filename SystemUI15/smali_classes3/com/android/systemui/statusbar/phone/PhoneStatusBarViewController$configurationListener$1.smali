.class public final Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$configurationListener$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$configurationListener$1;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$configurationListener$1;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->indicatorGardenPresenter:Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->onGardenConfigurationChanged(Lcom/android/systemui/statusbar/phone/IndicatorGarden;Landroid/content/res/Configuration;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->indicatorMarqueeGardener:Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070471

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    iget v1, v0, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener;->lastOrientation:I

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v1, v2, :cond_3

    const/4 v1, 0x1

    if-eq v2, v1, :cond_2

    const/4 v1, 0x2

    if-eq v2, v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener;->updateMarqueeValues()V

    :goto_0
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iput p1, v0, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener;->lastOrientation:I

    :cond_3
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->phoneStatusBarClockManager:Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->updateResources()V

    return-void
.end method

.method public final onDensityOrFontScaleChanged()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$configurationListener$1;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->indicatorGardenPresenter:Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->inputProperties:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;->updateWindowMetrics()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;->updatePaddingValues()V

    return-void
.end method
