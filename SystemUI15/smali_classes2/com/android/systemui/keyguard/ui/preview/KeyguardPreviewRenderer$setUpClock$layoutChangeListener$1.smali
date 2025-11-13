.class public final Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer$setUpClock$layoutChangeListener$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic $parentView:Landroid/view/ViewGroup;

.field public final synthetic this$0:Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer$setUpClock$layoutChangeListener$1;->this$0:Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;

    iput-object p2, p0, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer$setUpClock$layoutChangeListener$1;->$parentView:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    iget-object p1, p0, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer$setUpClock$layoutChangeListener$1;->this$0:Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;

    iget-object p1, p1, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;->clockController:Lcom/android/keyguard/ClockEventController;

    iget-object p1, p1, Lcom/android/keyguard/ClockEventController;->clock:Lcom/android/systemui/plugins/clocks/ClockController;

    instance-of p2, p1, Lcom/android/systemui/shared/clocks/DefaultClockController;

    if-nez p2, :cond_1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/android/systemui/plugins/clocks/ClockController;->getLargeClock()Lcom/android/systemui/plugins/clocks/ClockFaceController;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/android/systemui/plugins/clocks/ClockFaceController;->getEvents()Lcom/android/systemui/plugins/clocks/ClockFaceEvents;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer$setUpClock$layoutChangeListener$1;->$parentView:Landroid/view/ViewGroup;

    invoke-static {p2}, Lcom/android/keyguard/KeyguardClockSwitch;->getLargeClockRegion(Landroid/view/ViewGroup;)Landroid/graphics/Rect;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/android/systemui/plugins/clocks/ClockFaceEvents;->onTargetRegionChanged(Landroid/graphics/Rect;)V

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer$setUpClock$layoutChangeListener$1;->this$0:Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;

    iget-object p1, p1, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;->clockController:Lcom/android/keyguard/ClockEventController;

    iget-object p1, p1, Lcom/android/keyguard/ClockEventController;->clock:Lcom/android/systemui/plugins/clocks/ClockController;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/android/systemui/plugins/clocks/ClockController;->getSmallClock()Lcom/android/systemui/plugins/clocks/ClockFaceController;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/android/systemui/plugins/clocks/ClockFaceController;->getEvents()Lcom/android/systemui/plugins/clocks/ClockFaceEvents;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer$setUpClock$layoutChangeListener$1;->$parentView:Landroid/view/ViewGroup;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardClockSwitch;->getSmallClockRegion(Landroid/view/ViewGroup;)Landroid/graphics/Rect;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/systemui/plugins/clocks/ClockFaceEvents;->onTargetRegionChanged(Landroid/graphics/Rect;)V

    :cond_1
    return-void
.end method
