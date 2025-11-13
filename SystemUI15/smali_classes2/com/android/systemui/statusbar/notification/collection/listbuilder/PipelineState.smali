.class public final Lcom/android/systemui/statusbar/notification/collection/listbuilder/PipelineState;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mState:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/collection/listbuilder/PipelineState;->mState:I

    return-void
.end method

.method public static getStateName(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const-string v0, "STATE:"

    invoke-static {p0, v0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "STATE_FINALIZING"

    return-object p0

    :pswitch_1
    const-string p0, "STATE_FINALIZE_FILTERING"

    return-object p0

    :pswitch_2
    const-string p0, "STATE_SORTING"

    return-object p0

    :pswitch_3
    const-string p0, "STATE_GROUP_STABILIZING"

    return-object p0

    :pswitch_4
    const-string p0, "STATE_TRANSFORMING"

    return-object p0

    :pswitch_5
    const-string p0, "STATE_GROUPING"

    return-object p0

    :pswitch_6
    const-string p0, "STATE_PRE_GROUP_FILTERING"

    return-object p0

    :pswitch_7
    const-string p0, "STATE_RESETTING"

    return-object p0

    :pswitch_8
    const-string p0, "STATE_BUILD_STARTED"

    return-object p0

    :pswitch_9
    const-string p0, "STATE_IDLE"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final incrementTo(I)V
    .locals 3

    iget v0, p0, Lcom/android/systemui/statusbar/notification/collection/listbuilder/PipelineState;->mState:I

    add-int/lit8 v1, p1, -0x1

    if-ne v0, v1, :cond_0

    iput p1, p0, Lcom/android/systemui/statusbar/notification/collection/listbuilder/PipelineState;->mState:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot increment from state "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/systemui/statusbar/notification/collection/listbuilder/PipelineState;->mState:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " to state "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final requireState()V
    .locals 3

    iget v0, p0, Lcom/android/systemui/statusbar/notification/collection/listbuilder/PipelineState;->mState:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Required state is <0 but actual state is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/systemui/statusbar/notification/collection/listbuilder/PipelineState;->mState:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
