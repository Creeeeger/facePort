.class public final synthetic Lcom/android/systemui/qs/tiles/HotspotTile$$ExternalSyntheticLambda1;
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

    iput p2, p0, Lcom/android/systemui/qs/tiles/HotspotTile$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$$ExternalSyntheticLambda1;->$r8$classId:I

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->getToggleState()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->setToggleState(Z)V

    return-void

    :pswitch_0
    check-cast p0, Lcom/android/systemui/qs/tiles/HotspotTile;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/HotspotTile;->handleSecondaryClick(Z)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
