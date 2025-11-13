.class public final synthetic Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController$$ExternalSyntheticLambda13;->f$0:Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;

    iput-boolean p2, p0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController$$ExternalSyntheticLambda13;->f$1:Z

    iput-boolean p3, p0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController$$ExternalSyntheticLambda13;->f$2:Z

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController$$ExternalSyntheticLambda13;->f$0:Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;

    iget-boolean v1, p0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController$$ExternalSyntheticLambda13;->f$1:Z

    iget-boolean p0, p0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController$$ExternalSyntheticLambda13;->f$2:Z

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    if-nez v1, :cond_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p1, p0}, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->updatePanelExpansion(FZ)V

    return-void
.end method
