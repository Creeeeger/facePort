.class public final synthetic Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/plugins/qs/QSTile;

.field public final synthetic f$1:Lcom/android/systemui/animation/Expandable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/plugins/qs/QSTile;Lcom/android/systemui/animation/Expandable$Companion$fromView$1;I)V
    .locals 0

    iput p3, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/plugins/qs/QSTile;

    iput-object p2, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView$$ExternalSyntheticLambda1;->f$1:Lcom/android/systemui/animation/Expandable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget p1, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/plugins/qs/QSTile;

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView$$ExternalSyntheticLambda1;->f$1:Lcom/android/systemui/animation/Expandable;

    invoke-interface {p1, p0}, Lcom/android/systemui/plugins/qs/QSTile;->secondaryClick(Lcom/android/systemui/animation/Expandable;)V

    return-void

    :pswitch_0
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/plugins/qs/QSTile;

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView$$ExternalSyntheticLambda1;->f$1:Lcom/android/systemui/animation/Expandable;

    invoke-interface {p1, p0}, Lcom/android/systemui/plugins/qs/QSTile;->click(Lcom/android/systemui/animation/Expandable;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
