.class public final Lcom/android/systemui/qs/animator/PanelAffordanceAnimator$configurationListener$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator$configurationListener$1;->this$0:Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 5

    iget-object p0, p0, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator$configurationListener$1;->this$0:Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;

    if-eqz p1, :cond_2

    iget v0, p0, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;->lastOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const-string v2, "onConfigChange lastOrientation = "

    const-string v3, ", orientation = "

    const-string v4, ", isIfNeedReloadView, newConfig = "

    invoke-static {v0, v1, v2, v3, v4}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicyKt$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PanelAffordanceAnimator"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;->lastDensityDpi:I

    iget v1, p1, Landroid/content/res/Configuration;->densityDpi:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;->lastOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;->lastLayoutDirection:I

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;->isIfNeedReloadView:Z

    if-eqz v0, :cond_3

    :cond_0
    iget v0, p1, Landroid/content/res/Configuration;->densityDpi:I

    iput v0, p0, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;->lastDensityDpi:I

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;->lastOrientation:I

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;->lastLayoutDirection:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;->isIfNeedReloadView:Z

    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;->isNotVisible()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;->hiding(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;->loadView()V

    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;->clearAnimationState()V

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;->INIT_PROPERTY_FIELDS:[Lcom/android/systemui/util/AnimHelper$AnimationType;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_3
    :goto_0
    return-void
.end method
