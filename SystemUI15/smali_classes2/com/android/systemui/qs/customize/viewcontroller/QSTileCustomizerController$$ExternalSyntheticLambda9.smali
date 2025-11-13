.class public final synthetic Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;

.field public final synthetic f$1:Lcom/android/systemui/qs/customize/CustomizerTileViewPager;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;Lcom/android/systemui/qs/customize/CustomizerTileViewPager;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$$ExternalSyntheticLambda9;->f$0:Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;

    iput-object p2, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$$ExternalSyntheticLambda9;->f$1:Lcom/android/systemui/qs/customize/CustomizerTileViewPager;

    iput-boolean p3, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$$ExternalSyntheticLambda9;->f$2:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$$ExternalSyntheticLambda9;->f$0:Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;

    iget-object v1, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$$ExternalSyntheticLambda9;->f$1:Lcom/android/systemui/qs/customize/CustomizerTileViewPager;

    iget-boolean p0, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$$ExternalSyntheticLambda9;->f$2:Z

    check-cast p1, Lcom/android/systemui/qs/customize/CustomTileInfo;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {v1}, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->getColumnMaxCountInPage()I

    move-result v1

    rem-int/2addr p2, v1

    new-instance v1, Lcom/android/systemui/qs/customize/MessageObjectAnim;

    invoke-direct {v1}, Lcom/android/systemui/qs/customize/MessageObjectAnim;-><init>()V

    const/16 v2, 0x7d0

    iput v2, v1, Lcom/android/systemui/qs/customize/MessageObjectAnim;->animationType:I

    iput p2, v1, Lcom/android/systemui/qs/customize/MessageObjectAnim;->touchedPos:I

    iput-object p1, v1, Lcom/android/systemui/qs/customize/MessageObjectAnim;->longClickedTileInfo:Lcom/android/systemui/qs/customize/CustomTileInfo;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->moveToArea(Lcom/android/systemui/qs/customize/MessageObjectAnim;)V

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->animationDrop(Lcom/android/systemui/qs/customize/CustomTileInfo;)V

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->sendAnnouncementEvent()V

    :cond_0
    return-void
.end method
