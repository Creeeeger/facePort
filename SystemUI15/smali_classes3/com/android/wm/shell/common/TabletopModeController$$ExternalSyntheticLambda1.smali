.class public final synthetic Lcom/android/wm/shell/common/TabletopModeController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/wm/shell/common/TabletopModeController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/common/TabletopModeController;I)V
    .locals 0

    iput p2, p0, Lcom/android/wm/shell/common/TabletopModeController$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/wm/shell/common/TabletopModeController$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/common/TabletopModeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lcom/android/wm/shell/common/TabletopModeController$$ExternalSyntheticLambda1;->$r8$classId:I

    iget-object p0, p0, Lcom/android/wm/shell/common/TabletopModeController$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/common/TabletopModeController;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lcom/android/wm/shell/common/TabletopModeController;->onInit()V

    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/wm/shell/common/TabletopModeController;->isInTabletopMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/wm/shell/common/TabletopModeController;->mLastIsInTabletopModeForCallback:Ljava/lang/Boolean;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eq v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/common/TabletopModeController;->mListeners:Ljava/util/List;

    new-instance v2, Lcom/android/wm/shell/common/TabletopModeController$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/android/wm/shell/common/TabletopModeController$$ExternalSyntheticLambda0;-><init>(Z)V

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/android/wm/shell/common/TabletopModeController;->mLastIsInTabletopModeForCallback:Ljava/lang/Boolean;

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
