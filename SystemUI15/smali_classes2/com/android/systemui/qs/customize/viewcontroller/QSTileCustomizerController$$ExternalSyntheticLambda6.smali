.class public final synthetic Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;

.field public final synthetic f$1:Lcom/android/systemui/qs/customize/CustomizerTileViewPager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;Lcom/android/systemui/qs/customize/CustomizerTileViewPager;I)V
    .locals 0

    iput p3, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$$ExternalSyntheticLambda6;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$$ExternalSyntheticLambda6;->f$0:Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;

    iput-object p2, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$$ExternalSyntheticLambda6;->f$1:Lcom/android/systemui/qs/customize/CustomizerTileViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$$ExternalSyntheticLambda6;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$$ExternalSyntheticLambda6;->f$0:Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;

    iget-object p0, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$$ExternalSyntheticLambda6;->f$1:Lcom/android/systemui/qs/customize/CustomizerTileViewPager;

    check-cast p1, Lcom/android/systemui/qs/customize/CustomTileInfo;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->moveTile(Lcom/android/systemui/qs/customize/CustomTileInfo;I)V

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->animationDrop(Lcom/android/systemui/qs/customize/CustomTileInfo;)V

    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->sendAnnouncementEvent()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$$ExternalSyntheticLambda6;->f$0:Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;

    iget-object p0, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$$ExternalSyntheticLambda6;->f$1:Lcom/android/systemui/qs/customize/CustomizerTileViewPager;

    check-cast p1, Lcom/android/systemui/qs/customize/CustomTileInfo;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->getColumnMaxCountInPage()I

    move-result p0

    rem-int/2addr p2, p0

    new-instance p0, Lcom/android/systemui/qs/customize/MessageObjectAnim;

    invoke-direct {p0}, Lcom/android/systemui/qs/customize/MessageObjectAnim;-><init>()V

    const/16 v1, 0x3e8

    iput v1, p0, Lcom/android/systemui/qs/customize/MessageObjectAnim;->animationType:I

    iput p2, p0, Lcom/android/systemui/qs/customize/MessageObjectAnim;->touchedPos:I

    iput-object p1, p0, Lcom/android/systemui/qs/customize/MessageObjectAnim;->longClickedTileInfo:Lcom/android/systemui/qs/customize/CustomTileInfo;

    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->moveToArea(Lcom/android/systemui/qs/customize/MessageObjectAnim;)V

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->animationDrop(Lcom/android/systemui/qs/customize/CustomTileInfo;)V

    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->sendAnnouncementEvent()V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$$ExternalSyntheticLambda6;->f$0:Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;

    iget-object p0, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$$ExternalSyntheticLambda6;->f$1:Lcom/android/systemui/qs/customize/CustomizerTileViewPager;

    check-cast p1, Lcom/android/systemui/qs/customize/CustomTileInfo;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->moveTile(Lcom/android/systemui/qs/customize/CustomTileInfo;I)V

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->animationDrop(Lcom/android/systemui/qs/customize/CustomTileInfo;)V

    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->sendAnnouncementEvent()V

    return-void

    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$$ExternalSyntheticLambda6;->f$0:Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;

    iget-object p0, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$$ExternalSyntheticLambda6;->f$1:Lcom/android/systemui/qs/customize/CustomizerTileViewPager;

    check-cast p1, Lcom/android/systemui/qs/customize/CustomTileInfo;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->getColumnMaxCountInPage()I

    move-result p0

    rem-int/2addr p2, p0

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, p0}, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->animationStart(Lcom/android/systemui/qs/customize/CustomTileInfo;Ljava/lang/Boolean;)V

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->animateCurrentPage(Lcom/android/systemui/qs/customize/CustomTileInfo;I)V

    return-void

    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$$ExternalSyntheticLambda6;->f$0:Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;

    iget-object p0, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$$ExternalSyntheticLambda6;->f$1:Lcom/android/systemui/qs/customize/CustomizerTileViewPager;

    check-cast p1, Lcom/android/systemui/qs/customize/CustomTileInfo;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->getColumnMaxCountInPage()I

    move-result p0

    rem-int/2addr p2, p0

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, p0}, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->animationStart(Lcom/android/systemui/qs/customize/CustomTileInfo;Ljava/lang/Boolean;)V

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->animateCurrentPage(Lcom/android/systemui/qs/customize/CustomTileInfo;I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
