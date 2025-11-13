.class public final synthetic Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$$ExternalSyntheticLambda5;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$$ExternalSyntheticLambda5;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$$ExternalSyntheticLambda5;->$r8$classId:I

    iget-object p0, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$$ExternalSyntheticLambda5;->f$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$6;

    iget-object v0, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$6;->this$0:Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;

    invoke-static {v0}, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->access$500(Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/customize/view/QSTileCustomizerBase;

    iget-boolean v0, v0, Lcom/android/systemui/qs/customize/view/QSTileCustomizerBase;->mIsDragging:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$6;->this$0:Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;

    iget-object v0, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->mLongClickedViewInfo:Lcom/android/systemui/qs/customize/CustomTileInfo;

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->animationDrop(Lcom/android/systemui/qs/customize/CustomTileInfo;)V

    :cond_0
    return-void

    :pswitch_0
    check-cast p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->mIsReadyToClick:Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
