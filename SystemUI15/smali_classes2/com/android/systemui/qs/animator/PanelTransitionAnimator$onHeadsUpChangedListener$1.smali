.class public final Lcom/android/systemui/qs/animator/PanelTransitionAnimator$onHeadsUpChangedListener$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/animator/PanelTransitionAnimator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/animator/PanelTransitionAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/animator/PanelTransitionAnimator$onHeadsUpChangedListener$1;->this$0:Lcom/android/systemui/qs/animator/PanelTransitionAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onHeadsUpPinnedModeChanged(Z)V
    .locals 2

    const-string v0, "onHeadsUpPinnedModeChanged: "

    const-string v1, "PanelTransitionAnimator"

    invoke-static {v0, v1, p1}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/android/systemui/qs/animator/PanelTransitionAnimator$onHeadsUpChangedListener$1;->this$0:Lcom/android/systemui/qs/animator/PanelTransitionAnimator;

    iput-boolean p1, p0, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->inPinnedMode:Z

    return-void
.end method
