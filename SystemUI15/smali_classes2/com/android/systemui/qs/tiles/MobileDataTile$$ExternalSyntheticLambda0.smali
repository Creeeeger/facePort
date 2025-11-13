.class public final synthetic Lcom/android/systemui/qs/tiles/MobileDataTile$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/qs/tiles/MobileDataTile;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/tiles/MobileDataTile;I)V
    .locals 0

    iput p2, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget p1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    return-void

    :pswitch_0
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/android/settingslib/net/DataUsageController;->setMobileDataEnabled(Z)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    return-void

    :pswitch_1
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    return-void

    :pswitch_2
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/android/settingslib/net/DataUsageController;->setMobileDataEnabled(Z)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    return-void

    :pswitch_3
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    return-void

    :pswitch_4
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    return-void

    :pswitch_5
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    return-void

    :pswitch_6
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/android/settingslib/net/DataUsageController;->setMobileDataEnabled(Z)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    return-void

    :pswitch_7
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    return-void

    :pswitch_8
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
