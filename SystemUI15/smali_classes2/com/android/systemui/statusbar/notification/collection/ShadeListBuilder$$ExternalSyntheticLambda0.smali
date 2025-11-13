.class public final synthetic Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/Pluggable$PluggableListener;
.implements Lcom/android/systemui/statusbar/notification/collection/listbuilder/SemiStableSort$StableOrder;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;I)V
    .locals 0

    iput p2, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getRank(Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 3

    check-cast p1, Lcom/android/systemui/statusbar/notification/collection/ListEntry;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->getStabilityManager()Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifStabilityManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifStabilityManager;->isEntryReorderingAllowed(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    goto :goto_2

    :cond_0
    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->mAttachState:Lcom/android/systemui/statusbar/notification/collection/ListAttachState;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->checkNull(Lcom/android/systemui/statusbar/notification/collection/ListAttachState;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->section:Lcom/android/systemui/statusbar/notification/collection/listbuilder/NotifSection;

    const/4 v1, -0x1

    if-eqz p0, :cond_1

    iget p0, p0, Lcom/android/systemui/statusbar/notification/collection/listbuilder/NotifSection;->index:I

    goto :goto_0

    :cond_1
    move p0, v1

    :goto_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->getPreviousAttachState()Lcom/android/systemui/statusbar/notification/collection/ListAttachState;

    move-result-object v2

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->section:Lcom/android/systemui/statusbar/notification/collection/listbuilder/NotifSection;

    if-eqz v2, :cond_2

    iget v2, v2, Lcom/android/systemui/statusbar/notification/collection/listbuilder/NotifSection;->index:I

    goto :goto_1

    :cond_2
    move v2, v1

    :goto_1
    if-eq p0, v2, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->getPreviousAttachState()Lcom/android/systemui/statusbar/notification/collection/ListAttachState;

    move-result-object p0

    iget p0, p0, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->stableIndex:I

    if-ne p0, v1, :cond_4

    goto :goto_2

    :cond_4
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_2
    return-object v0
.end method

.method public onPluggableInvalidated(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    iget v0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    check-cast p1, Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mPipelineState:Lcom/android/systemui/statusbar/notification/collection/listbuilder/PipelineState;

    iget v0, v0, Lcom/android/systemui/statusbar/notification/collection/listbuilder/PipelineState;->mState:I

    const-string v1, "Pre-group NotifFilter"

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mLogger:Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger;

    invoke-virtual {v2, v1, p1, v0, p2}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger;->logPluggableInvalidated(Ljava/lang/String;Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/Pluggable;ILjava/lang/String;)V

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->rebuildListIfBefore(I)V

    return-void

    :pswitch_1
    check-cast p1, Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifComparator;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mPipelineState:Lcom/android/systemui/statusbar/notification/collection/listbuilder/PipelineState;

    iget v0, v0, Lcom/android/systemui/statusbar/notification/collection/listbuilder/PipelineState;->mState:I

    const-string v1, "NotifComparator"

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mLogger:Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger;

    invoke-virtual {v2, v1, p1, v0, p2}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger;->logPluggableInvalidated(Ljava/lang/String;Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/Pluggable;ILjava/lang/String;)V

    const/4 p1, 0x7

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->rebuildListIfBefore(I)V

    return-void

    :pswitch_2
    check-cast p1, Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifSectioner;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mPipelineState:Lcom/android/systemui/statusbar/notification/collection/listbuilder/PipelineState;

    iget v0, v0, Lcom/android/systemui/statusbar/notification/collection/listbuilder/PipelineState;->mState:I

    const-string v1, "NotifSection"

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mLogger:Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger;

    invoke-virtual {v2, v1, p1, v0, p2}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger;->logPluggableInvalidated(Ljava/lang/String;Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/Pluggable;ILjava/lang/String;)V

    const/4 p1, 0x7

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->rebuildListIfBefore(I)V

    return-void

    :pswitch_3
    check-cast p1, Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifStabilityManager;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mPipelineState:Lcom/android/systemui/statusbar/notification/collection/listbuilder/PipelineState;

    iget v0, v0, Lcom/android/systemui/statusbar/notification/collection/listbuilder/PipelineState;->mState:I

    const-string v1, "ReorderingNowAllowed"

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mLogger:Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger;

    invoke-virtual {v2, v1, p1, v0, p2}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger;->logPluggableInvalidated(Ljava/lang/String;Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/Pluggable;ILjava/lang/String;)V

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->rebuildListIfBefore(I)V

    return-void

    :pswitch_4
    check-cast p1, Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifPromoter;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mPipelineState:Lcom/android/systemui/statusbar/notification/collection/listbuilder/PipelineState;

    iget v0, v0, Lcom/android/systemui/statusbar/notification/collection/listbuilder/PipelineState;->mState:I

    const-string v1, "NotifPromoter"

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mLogger:Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger;

    invoke-virtual {v2, v1, p1, v0, p2}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger;->logPluggableInvalidated(Ljava/lang/String;Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/Pluggable;ILjava/lang/String;)V

    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->rebuildListIfBefore(I)V

    return-void

    :pswitch_5
    check-cast p1, Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mPipelineState:Lcom/android/systemui/statusbar/notification/collection/listbuilder/PipelineState;

    iget v0, v0, Lcom/android/systemui/statusbar/notification/collection/listbuilder/PipelineState;->mState:I

    const-string v1, "Finalize NotifFilter"

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mLogger:Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger;

    invoke-virtual {v2, v1, p1, v0, p2}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger;->logPluggableInvalidated(Ljava/lang/String;Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/Pluggable;ILjava/lang/String;)V

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->rebuildListIfBefore(I)V

    return-void

    :pswitch_6
    check-cast p1, Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/Invalidator;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mPipelineState:Lcom/android/systemui/statusbar/notification/collection/listbuilder/PipelineState;

    iget v0, v0, Lcom/android/systemui/statusbar/notification/collection/listbuilder/PipelineState;->mState:I

    const-string v1, "Pre-render Invalidator"

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mLogger:Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger;

    invoke-virtual {v2, v1, p1, v0, p2}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger;->logPluggableInvalidated(Ljava/lang/String;Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/Pluggable;ILjava/lang/String;)V

    const/16 p1, 0x9

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->rebuildListIfBefore(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
