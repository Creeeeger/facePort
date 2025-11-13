.class public final synthetic Lcom/android/systemui/qs/SecQSPanelControllerBase$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/qs/SecQSPanelControllerBase;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/SecQSPanelControllerBase;I)V
    .locals 0

    iput p2, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase$$ExternalSyntheticLambda2;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/qs/SecQSPanelControllerBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase$$ExternalSyntheticLambda2;->$r8$classId:I

    iget-object p0, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/qs/SecQSPanelControllerBase;

    check-cast p1, Lcom/android/systemui/qs/bar/BarItemImpl;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0, p1}, Lcom/android/systemui/qs/SecQSPanelControllerBase;->$r8$lambda$1i4lGWbt4JPhc9SgoAITwPQZoew(Lcom/android/systemui/qs/SecQSPanelControllerBase;Lcom/android/systemui/qs/bar/BarItemImpl;)V

    return-void

    :pswitch_0
    invoke-static {p0, p1}, Lcom/android/systemui/qs/SecQSPanelControllerBase;->$r8$lambda$DEp4l-o7MDBmfDD2MwoTLB3AMIw(Lcom/android/systemui/qs/SecQSPanelControllerBase;Lcom/android/systemui/qs/bar/BarItemImpl;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
