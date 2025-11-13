.class public final synthetic Lcom/android/wm/shell/splitscreen/SplitBackgroundController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/wm/shell/splitscreen/SplitBackgroundController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/splitscreen/SplitBackgroundController;I)V
    .locals 0

    iput p2, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/splitscreen/SplitBackgroundController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/splitscreen/SplitBackgroundController;

    packed-switch v0, :pswitch_data_0

    iget-boolean v0, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mVisible:Z

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->updateBackgroundLayer(Z)V

    return-void

    :pswitch_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->updateBackgroundLayerColor(Z)V

    return-void

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->canShow()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->updateBackgroundVisibility(ZZ)V

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
