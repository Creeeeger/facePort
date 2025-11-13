.class public final synthetic Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;I)V
    .locals 0

    iput p2, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$$ExternalSyntheticLambda1;->$r8$classId:I

    iget-object p0, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lcom/android/systemui/qs/customize/CustomTileInfo;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->animationDropOtherPage(Lcom/android/systemui/qs/customize/CustomTileInfo;)V

    return-void

    :pswitch_0
    check-cast p1, Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->mCustomActionMoveItem:Lcom/android/systemui/qs/customize/CustomActionMoveItem;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/CustomActionMoveItem;->actionFinish()V

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/qs/customize/CustomTileInfo;

    iget-object v0, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->mAvailableTileLayout:Lcom/android/systemui/qs/customize/CustomizerTileViewPager;

    iget-object v1, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->mActiveTileLayout:Lcom/android/systemui/qs/customize/CustomizerTileViewPager;

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->createCustomActionMoveItem(Lcom/android/systemui/qs/customize/CustomTileInfo;Lcom/android/systemui/qs/customize/CustomizerTileViewPager;Lcom/android/systemui/qs/customize/CustomizerTileViewPager;)Lcom/android/systemui/qs/customize/CustomActionMoveItem;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->mCustomActionMoveItem:Lcom/android/systemui/qs/customize/CustomActionMoveItem;

    return-void

    :pswitch_1
    check-cast p1, Lcom/android/systemui/qs/customize/CustomTileInfo;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->animationDropOtherPage(Lcom/android/systemui/qs/customize/CustomTileInfo;)V

    return-void

    :pswitch_2
    check-cast p1, Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->mCustomActionMoveItem:Lcom/android/systemui/qs/customize/CustomActionMoveItem;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/CustomActionMoveItem;->actionFinish()V

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/qs/customize/CustomTileInfo;

    iget-object v0, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->mAvailableTileLayout:Lcom/android/systemui/qs/customize/CustomizerTileViewPager;

    iget-object v1, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->mActiveTileLayout:Lcom/android/systemui/qs/customize/CustomizerTileViewPager;

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->createCustomActionMoveItem(Lcom/android/systemui/qs/customize/CustomTileInfo;Lcom/android/systemui/qs/customize/CustomizerTileViewPager;Lcom/android/systemui/qs/customize/CustomizerTileViewPager;)Lcom/android/systemui/qs/customize/CustomActionMoveItem;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->mCustomActionMoveItem:Lcom/android/systemui/qs/customize/CustomActionMoveItem;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
