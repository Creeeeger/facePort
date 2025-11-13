.class public final synthetic Lcom/android/systemui/qs/tiles/SBluetoothTile$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/qs/tiles/SBluetoothTile;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/tiles/SBluetoothTile;I)V
    .locals 0

    iput p2, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/tiles/SBluetoothTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/tiles/SBluetoothTile;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/SBluetoothTile;->handleSecondaryClick()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mController:Lcom/android/systemui/statusbar/policy/SBluetoothController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;->mState:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tileimpl/SQSTileImpl;->fireToggleStateChanged(Z)V

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
