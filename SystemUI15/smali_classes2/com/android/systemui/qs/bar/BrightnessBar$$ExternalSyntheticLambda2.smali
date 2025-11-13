.class public final synthetic Lcom/android/systemui/qs/bar/BrightnessBar$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lcom/android/systemui/qs/bar/BrightnessBar$$ExternalSyntheticLambda2;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/qs/bar/BrightnessBar$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar$$ExternalSyntheticLambda2;->$r8$classId:I

    iget-object p0, p0, Lcom/android/systemui/qs/bar/BrightnessBar$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Landroid/widget/LinearLayout;

    check-cast p1, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;

    iget-object p1, p1, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void

    :pswitch_0
    check-cast p0, Lcom/android/systemui/qs/bar/BrightnessBar;

    check-cast p1, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    iget-boolean v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mListening:Z

    invoke-interface {p1, p0, v0}, Lcom/android/systemui/plugins/qs/QSTile;->setListening(Ljava/lang/Object;Z)V

    return-void

    :pswitch_1
    check-cast p0, Lcom/android/systemui/qs/bar/BrightnessBar;

    check-cast p1, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mTileLayout:Landroid/widget/LinearLayout;

    iget-object v1, p1, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    iget-object p1, p1, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Lcom/android/systemui/plugins/qs/QSTile;->setListening(Ljava/lang/Object;Z)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
