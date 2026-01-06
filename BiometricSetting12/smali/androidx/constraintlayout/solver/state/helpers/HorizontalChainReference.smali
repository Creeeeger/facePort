.class public Landroidx/constraintlayout/solver/state/helpers/HorizontalChainReference;
.super Landroidx/constraintlayout/solver/state/helpers/ChainReference;
.source "HorizontalChainReference.java"


# instance fields
.field private mEndToEnd:Ljava/lang/Object;

.field private mEndToStart:Ljava/lang/Object;

.field private mStartToEnd:Ljava/lang/Object;

.field private mStartToStart:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/solver/state/State;)V
    .locals 1

    sget-object v0, Landroidx/constraintlayout/solver/state/State$Helper;->HORIZONTAL_CHAIN:Landroidx/constraintlayout/solver/state/State$Helper;

    invoke-direct {p0, p1, v0}, Landroidx/constraintlayout/solver/state/helpers/ChainReference;-><init>(Landroidx/constraintlayout/solver/state/State;Landroidx/constraintlayout/solver/state/State$Helper;)V

    return-void
.end method


# virtual methods
.method public apply()V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Landroidx/constraintlayout/solver/state/helpers/HorizontalChainReference;->mReferences:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Landroidx/constraintlayout/solver/state/helpers/HorizontalChainReference;->mState:Landroidx/constraintlayout/solver/state/State;

    invoke-virtual {v4, v3}, Landroidx/constraintlayout/solver/state/State;->constraints(Ljava/lang/Object;)Landroidx/constraintlayout/solver/state/ConstraintReference;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/constraintlayout/solver/state/ConstraintReference;->clearHorizontal()Landroidx/constraintlayout/solver/state/ConstraintReference;

    goto :goto_0

    :cond_0
    iget-object v2, p0, Landroidx/constraintlayout/solver/state/helpers/HorizontalChainReference;->mReferences:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Landroidx/constraintlayout/solver/state/helpers/HorizontalChainReference;->mState:Landroidx/constraintlayout/solver/state/State;

    invoke-virtual {v4, v3}, Landroidx/constraintlayout/solver/state/State;->constraints(Ljava/lang/Object;)Landroidx/constraintlayout/solver/state/ConstraintReference;

    move-result-object v4

    if-nez v0, :cond_3

    move-object v0, v4

    iget-object v5, p0, Landroidx/constraintlayout/solver/state/helpers/HorizontalChainReference;->mStartToStart:Ljava/lang/Object;

    if-eqz v5, :cond_1

    invoke-virtual {v0, v5}, Landroidx/constraintlayout/solver/state/ConstraintReference;->startToStart(Ljava/lang/Object;)Landroidx/constraintlayout/solver/state/ConstraintReference;

    goto :goto_2

    :cond_1
    iget-object v5, p0, Landroidx/constraintlayout/solver/state/helpers/HorizontalChainReference;->mStartToEnd:Ljava/lang/Object;

    if-eqz v5, :cond_2

    invoke-virtual {v0, v5}, Landroidx/constraintlayout/solver/state/ConstraintReference;->startToEnd(Ljava/lang/Object;)Landroidx/constraintlayout/solver/state/ConstraintReference;

    goto :goto_2

    :cond_2
    sget-object v5, Landroidx/constraintlayout/solver/state/State;->PARENT:Ljava/lang/Integer;

    invoke-virtual {v0, v5}, Landroidx/constraintlayout/solver/state/ConstraintReference;->startToStart(Ljava/lang/Object;)Landroidx/constraintlayout/solver/state/ConstraintReference;

    :cond_3
    :goto_2
    if-eqz v1, :cond_4

    invoke-virtual {v4}, Landroidx/constraintlayout/solver/state/ConstraintReference;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroidx/constraintlayout/solver/state/ConstraintReference;->endToStart(Ljava/lang/Object;)Landroidx/constraintlayout/solver/state/ConstraintReference;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/state/ConstraintReference;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/solver/state/ConstraintReference;->startToEnd(Ljava/lang/Object;)Landroidx/constraintlayout/solver/state/ConstraintReference;

    :cond_4
    move-object v1, v4

    goto :goto_1

    :cond_5
    if-eqz v1, :cond_8

    iget-object v2, p0, Landroidx/constraintlayout/solver/state/helpers/HorizontalChainReference;->mEndToStart:Ljava/lang/Object;

    if-eqz v2, :cond_6

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/solver/state/ConstraintReference;->endToStart(Ljava/lang/Object;)Landroidx/constraintlayout/solver/state/ConstraintReference;

    goto :goto_3

    :cond_6
    iget-object v2, p0, Landroidx/constraintlayout/solver/state/helpers/HorizontalChainReference;->mEndToEnd:Ljava/lang/Object;

    if-eqz v2, :cond_7

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/solver/state/ConstraintReference;->endToEnd(Ljava/lang/Object;)Landroidx/constraintlayout/solver/state/ConstraintReference;

    goto :goto_3

    :cond_7
    sget-object v2, Landroidx/constraintlayout/solver/state/State;->PARENT:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/solver/state/ConstraintReference;->endToEnd(Ljava/lang/Object;)Landroidx/constraintlayout/solver/state/ConstraintReference;

    :cond_8
    :goto_3
    if-eqz v0, :cond_9

    iget v2, p0, Landroidx/constraintlayout/solver/state/helpers/HorizontalChainReference;->mBias:F

    const/high16 v3, 0x3f000000    # 0.5f

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_9

    iget v2, p0, Landroidx/constraintlayout/solver/state/helpers/HorizontalChainReference;->mBias:F

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/solver/state/ConstraintReference;->horizontalBias(F)Landroidx/constraintlayout/solver/state/ConstraintReference;

    :cond_9
    sget-object v2, Landroidx/constraintlayout/solver/state/helpers/HorizontalChainReference$1;->$SwitchMap$androidx$constraintlayout$solver$state$State$Chain:[I

    iget-object v3, p0, Landroidx/constraintlayout/solver/state/helpers/HorizontalChainReference;->mStyle:Landroidx/constraintlayout/solver/state/State$Chain;

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/state/State$Chain;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_4

    :pswitch_0
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/solver/state/ConstraintReference;->setHorizontalChainStyle(I)V

    goto :goto_4

    :pswitch_1
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/solver/state/ConstraintReference;->setHorizontalChainStyle(I)V

    goto :goto_4

    :pswitch_2
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/solver/state/ConstraintReference;->setHorizontalChainStyle(I)V

    nop

    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public endToEnd(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Landroidx/constraintlayout/solver/state/helpers/HorizontalChainReference;->mEndToEnd:Ljava/lang/Object;

    return-void
.end method

.method public endToStart(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Landroidx/constraintlayout/solver/state/helpers/HorizontalChainReference;->mEndToStart:Ljava/lang/Object;

    return-void
.end method

.method public startToEnd(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Landroidx/constraintlayout/solver/state/helpers/HorizontalChainReference;->mStartToEnd:Ljava/lang/Object;

    return-void
.end method

.method public startToStart(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Landroidx/constraintlayout/solver/state/helpers/HorizontalChainReference;->mStartToStart:Ljava/lang/Object;

    return-void
.end method
