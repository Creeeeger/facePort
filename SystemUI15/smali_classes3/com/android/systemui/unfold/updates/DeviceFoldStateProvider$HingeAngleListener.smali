.class public final Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider$HingeAngleListener;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/core/util/Consumer;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;


# direct methods
.method public constructor <init>(Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider$HingeAngleListener;->this$0:Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 11

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider$HingeAngleListener;->this$0:Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;

    invoke-virtual {v0}, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->assertInProgressThread$2()V

    iget-object p0, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider$HingeAngleListener;->this$0:Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;

    invoke-virtual {p0}, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->assertInProgressThread$2()V

    sget-boolean v0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProviderKt;->DEBUG:Z

    const-string v1, "DeviceFoldProvider"

    if-eqz v0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Hinge angle: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", lastHingeAngle: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->lastHingeAngle:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", lastHingeAngleBeforeTransition: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->lastHingeAngleBeforeTransition:F

    invoke-static {v2, v3, v1}, Landroidx/picker3/widget/SeslColorSpectrumView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/lang/String;)V

    :cond_0
    iget v2, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->lastHingeAngle:F

    cmpg-float v2, p1, v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-gez v2, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->isTransitionInProgress()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->lastFoldUpdate:Ljava/lang/Integer;

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eq v2, v5, :cond_3

    :goto_1
    iget v2, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->lastHingeAngle:F

    iput v2, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->lastHingeAngleBeforeTransition:F

    :cond_3
    iget v2, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->lastHingeAngleBeforeTransition:F

    cmpg-float v5, p1, v2

    if-gez v5, :cond_4

    move v5, v4

    goto :goto_2

    :cond_4
    move v5, v3

    :goto_2
    sub-float v2, p1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v6, 0x40f00000    # 7.5f

    cmpl-float v2, v2, v6

    if-lez v2, :cond_5

    move v2, v4

    goto :goto_3

    :cond_5
    move v2, v3

    :goto_3
    const/high16 v6, 0x43340000    # 180.0f

    sub-float/2addr v6, p1

    const/high16 v7, 0x41700000    # 15.0f

    cmpg-float v6, v6, v7

    if-gez v6, :cond_6

    move v6, v4

    goto :goto_4

    :cond_6
    move v6, v3

    :goto_4
    iget-object v7, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->lastFoldUpdate:Ljava/lang/Integer;

    if-nez v7, :cond_7

    goto :goto_5

    :cond_7
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eq v7, v5, :cond_8

    :goto_5
    move v7, v4

    goto :goto_6

    :cond_8
    move v7, v3

    :goto_6
    iget-boolean v8, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->isUnfoldHandled:Z

    iget-object v9, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->context:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget v9, v9, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v10, 0x258

    if-le v9, v10, :cond_9

    move v3, v4

    :cond_9
    if-eqz v2, :cond_e

    if-eqz v7, :cond_e

    if-nez v6, :cond_e

    if-eqz v8, :cond_e

    iget-object v2, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->activityTypeProvider:Lcom/android/systemui/unfold/util/CurrentActivityTypeProvider;

    check-cast v2, Lcom/android/systemui/unfold/system/ActivityManagerActivityTypeProvider;

    iget-object v2, v2, Lcom/android/systemui/unfold/system/ActivityManagerActivityTypeProvider;->_isHomeActivity:Ljava/lang/Boolean;

    const/4 v4, 0x0

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iget-object v7, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->unfoldKeyguardVisibilityProvider:Lcom/android/systemui/unfold/util/UnfoldKeyguardVisibilityProvider;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v0, :cond_a

    const-string v0, "isHomeActivity="

    const-string v8, ", isOnKeyguard="

    invoke-static {v0, v8, v1, v2, v7}, Lcom/android/keyguard/KeyguardKnoxGuardViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    :cond_a
    if-nez v2, :cond_c

    if-eqz v7, :cond_b

    goto :goto_7

    :cond_b
    const/16 v0, 0x3c

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :cond_c
    :goto_7
    if-eqz v4, :cond_d

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_e

    :cond_d
    if-eqz v3, :cond_e

    iget v0, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->lastHingeAngle:F

    invoke-virtual {p0, v0, v5}, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->notifyFoldUpdate(FI)V

    :cond_e
    invoke-virtual {p0}, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->isTransitionInProgress()Z

    move-result v0

    if-eqz v0, :cond_11

    if-eqz v6, :cond_f

    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->notifyFoldUpdate(FI)V

    iget-object v0, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->timeoutRunnable:Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider$timeoutRunnable$1;

    iget-object v1, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->progressHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_8

    :cond_f
    invoke-virtual {p0}, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->isTransitionInProgress()Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->progressHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->timeoutRunnable:Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider$timeoutRunnable$1;

    if-eqz v0, :cond_10

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_10
    iget v0, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->halfOpenedTimeoutMillis:I

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_11
    :goto_8
    iput p1, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->lastHingeAngle:F

    iget-object p0, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->outputListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/unfold/updates/FoldStateProvider$FoldUpdatesListener;

    invoke-interface {v0, p1}, Lcom/android/systemui/unfold/updates/FoldStateProvider$FoldUpdatesListener;->onHingeAngleUpdate(F)V

    goto :goto_9

    :cond_12
    return-void
.end method
