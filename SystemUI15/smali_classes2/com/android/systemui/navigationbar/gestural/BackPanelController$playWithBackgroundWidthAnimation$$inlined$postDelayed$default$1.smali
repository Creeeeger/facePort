.class public final Lcom/android/systemui/navigationbar/gestural/BackPanelController$playWithBackgroundWidthAnimation$$inlined$postDelayed$default$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $onEnd$inlined:Lcom/android/systemui/navigationbar/gestural/BackPanelController$DelayedOnAnimationEndListener;

.field public final synthetic this$0:Lcom/android/systemui/navigationbar/gestural/BackPanelController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/navigationbar/gestural/BackPanelController;Lcom/android/systemui/navigationbar/gestural/BackPanelController$DelayedOnAnimationEndListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController$playWithBackgroundWidthAnimation$$inlined$postDelayed$default$1;->this$0:Lcom/android/systemui/navigationbar/gestural/BackPanelController;

    iput-object p2, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController$playWithBackgroundWidthAnimation$$inlined$postDelayed$default$1;->$onEnd$inlined:Lcom/android/systemui/navigationbar/gestural/BackPanelController$DelayedOnAnimationEndListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController$playWithBackgroundWidthAnimation$$inlined$postDelayed$default$1;->this$0:Lcom/android/systemui/navigationbar/gestural/BackPanelController;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController$playWithBackgroundWidthAnimation$$inlined$postDelayed$default$1;->$onEnd$inlined:Lcom/android/systemui/navigationbar/gestural/BackPanelController$DelayedOnAnimationEndListener;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->playWithBackgroundWidthAnimation(Lcom/android/systemui/navigationbar/gestural/BackPanelController$DelayedOnAnimationEndListener;J)V

    return-void
.end method
