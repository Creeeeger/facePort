.class public final Lcom/android/systemui/qs/animator/PanelAffordanceAnimator$hideGlowRunnable$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator$hideGlowRunnable$1;->this$0:Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    const-string v0, "PanelAffordanceAnimator"

    const-string v1, "hiding waiting 3s"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator$hideGlowRunnable$1;->this$0:Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;

    invoke-static {p0}, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;->hiding$default(Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;)V

    return-void
.end method
