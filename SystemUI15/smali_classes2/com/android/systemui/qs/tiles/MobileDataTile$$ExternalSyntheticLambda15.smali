.class public final synthetic Lcom/android/systemui/qs/tiles/MobileDataTile$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/qs/tiles/MobileDataTile;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/tiles/MobileDataTile;I)V
    .locals 0

    iput p2, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$$ExternalSyntheticLambda15;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$$ExternalSyntheticLambda15;->f$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    iget p1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$$ExternalSyntheticLambda15;->$r8$classId:I

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$$ExternalSyntheticLambda15;->f$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    return-void

    :pswitch_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
