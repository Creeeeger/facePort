.class public final Lcom/android/keyguard/ConnectedDisplayKeyguardPresentation$layoutChangeListener$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/ConnectedDisplayKeyguardPresentation;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/ConnectedDisplayKeyguardPresentation;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/ConnectedDisplayKeyguardPresentation$layoutChangeListener$1;->this$0:Lcom/android/keyguard/ConnectedDisplayKeyguardPresentation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/ConnectedDisplayKeyguardPresentation$layoutChangeListener$1;->this$0:Lcom/android/keyguard/ConnectedDisplayKeyguardPresentation;

    iget-object p1, p0, Lcom/android/keyguard/ConnectedDisplayKeyguardPresentation;->clock:Landroid/view/View;

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/keyguard/ConnectedDisplayKeyguardPresentation;->faceController:Lcom/android/systemui/plugins/clocks/ClockFaceController;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    :cond_0
    invoke-interface {p0}, Lcom/android/systemui/plugins/clocks/ClockFaceController;->getEvents()Lcom/android/systemui/plugins/clocks/ClockFaceEvents;

    move-result-object p0

    new-instance p2, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p3

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p5

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    invoke-direct {p2, p3, p4, p5, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-interface {p0, p2}, Lcom/android/systemui/plugins/clocks/ClockFaceEvents;->onTargetRegionChanged(Landroid/graphics/Rect;)V

    :cond_1
    return-void
.end method
