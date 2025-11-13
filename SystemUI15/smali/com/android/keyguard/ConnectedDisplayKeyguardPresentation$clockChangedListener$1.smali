.class public final Lcom/android/keyguard/ConnectedDisplayKeyguardPresentation$clockChangedListener$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/shared/clocks/ClockRegistry$ClockChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/ConnectedDisplayKeyguardPresentation;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/ConnectedDisplayKeyguardPresentation;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/ConnectedDisplayKeyguardPresentation$clockChangedListener$1;->this$0:Lcom/android/keyguard/ConnectedDisplayKeyguardPresentation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCurrentClockChanged()V
    .locals 1

    iget-object p0, p0, Lcom/android/keyguard/ConnectedDisplayKeyguardPresentation$clockChangedListener$1;->this$0:Lcom/android/keyguard/ConnectedDisplayKeyguardPresentation;

    iget-object v0, p0, Lcom/android/keyguard/ConnectedDisplayKeyguardPresentation;->clockRegistry:Lcom/android/systemui/shared/clocks/ClockRegistry;

    invoke-virtual {v0}, Lcom/android/systemui/shared/clocks/ClockRegistry;->createCurrentClock()Lcom/android/systemui/plugins/clocks/ClockController;

    iget-object v0, p0, Lcom/android/keyguard/ConnectedDisplayKeyguardPresentation;->clock:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/keyguard/ConnectedDisplayKeyguardPresentation;->layoutChangeListener:Lcom/android/keyguard/ConnectedDisplayKeyguardPresentation$layoutChangeListener$1;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method
