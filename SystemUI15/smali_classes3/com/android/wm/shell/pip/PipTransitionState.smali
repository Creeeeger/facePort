.class public final Lcom/android/wm/shell/pip/PipTransitionState;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mInSwipePipToHomeTransition:Z

.field public final mOnPipTransitionStateChangedListeners:Ljava/util/List;

.field public mState:I

.field public mTaskAppearedTime:J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/pip/PipTransitionState;->mOnPipTransitionStateChangedListeners:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/wm/shell/pip/PipTransitionState;->mState:I

    return-void
.end method

.method public static isInPip(I)Z
    .locals 2

    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    const/4 v1, 0x5

    if-eq p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static transitStateToString(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_5

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "EXITING_PIP"

    return-object p0

    :cond_1
    const-string p0, "ENTERED_PIP"

    return-object p0

    :cond_2
    const-string p0, "ENTERING_PIP"

    return-object p0

    :cond_3
    const-string p0, "ENTRY_SCHEDULED"

    return-object p0

    :cond_4
    const-string p0, "TASK_APPEARED"

    return-object p0

    :cond_5
    const-string p0, "UNDEFINED"

    return-object p0
.end method


# virtual methods
.method public final setTransitionState(I)V
    .locals 5

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/wm/shell/pip/PipTransitionState;->mState:I

    if-eq v1, p1, :cond_4

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/wm/shell/pip/PipTransitionState;->mOnPipTransitionStateChangedListeners:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/wm/shell/pip/PipTransitionState;->mOnPipTransitionStateChangedListeners:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wm/shell/pip/phone/PipController$$ExternalSyntheticLambda10;

    iget v3, p0, Lcom/android/wm/shell/pip/PipTransitionState;->mState:I

    iget-object v2, v2, Lcom/android/wm/shell/pip/phone/PipController$$ExternalSyntheticLambda10;->f$0:Lcom/android/wm/shell/pip/phone/PipController;

    iget-object v4, v2, Lcom/android/wm/shell/pip/phone/PipController;->mOnIsInPipStateChangedListener:Ljava/util/function/Consumer;

    if-eqz v4, :cond_0

    invoke-static {v3}, Lcom/android/wm/shell/pip/PipTransitionState;->isInPip(I)Z

    move-result v3

    invoke-static {p1}, Lcom/android/wm/shell/pip/PipTransitionState;->isInPip(I)Z

    move-result v4

    if-eq v4, v3, :cond_0

    iget-object v2, v2, Lcom/android/wm/shell/pip/phone/PipController;->mOnIsInPipStateChangedListener:Ljava/util/function/Consumer;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    add-int/2addr v1, v0

    goto :goto_0

    :cond_1
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_PIP_SHELL_TRANSITION:Z

    if-eqz v1, :cond_3

    if-ne p1, v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    goto :goto_1

    :cond_2
    const-wide/16 v1, 0x0

    :goto_1
    iput-wide v1, p0, Lcom/android/wm/shell/pip/PipTransitionState;->mTaskAppearedTime:J

    :cond_3
    sget v1, Lcom/android/wm/shell/pip/PipTaskOrganizer;->EXTRA_CONTENT_OVERLAY_FADE_OUT_DELAY_MS:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[PipTransitionState] setState: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/wm/shell/pip/PipTransitionState;->mState:I

    invoke-static {v2}, Lcom/android/wm/shell/pip/PipTransitionState;->transitStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/wm/shell/pip/PipTransitionState;->transitStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", Callers="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "PipTaskOrganizer"

    invoke-static {v0, v2, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    iput p1, p0, Lcom/android/wm/shell/pip/PipTransitionState;->mState:I

    :cond_4
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lcom/android/wm/shell/pip/PipTransitionState;->mState:I

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const-string v0, "exiting-pip"

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown state: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/wm/shell/pip/PipTransitionState;->mState:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string v0, "entered-pip"

    goto :goto_0

    :cond_2
    const-string v0, "entering-pip"

    goto :goto_0

    :cond_3
    const-string v0, "entry-scheduled"

    goto :goto_0

    :cond_4
    const-string/jumbo v0, "task-appeared"

    goto :goto_0

    :cond_5
    const-string/jumbo v0, "undefined"

    :goto_0
    iget-boolean p0, p0, Lcom/android/wm/shell/pip/PipTransitionState;->mInSwipePipToHomeTransition:Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PipTransitionState(mState="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", mInSwipePipToHomeTransition="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
