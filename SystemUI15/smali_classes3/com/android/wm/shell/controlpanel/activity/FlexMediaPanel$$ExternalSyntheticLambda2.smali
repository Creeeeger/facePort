.class public final synthetic Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;I)V
    .locals 0

    iput p2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel$$ExternalSyntheticLambda2;->$r8$classId:I

    iput-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel$$ExternalSyntheticLambda2;->f$0:Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel$$ExternalSyntheticLambda2;->$r8$classId:I

    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel$$ExternalSyntheticLambda2;->f$0:Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;

    packed-switch p1, :pswitch_data_0

    const p1, 0x7f0a0094

    const v0, 0x7f131264

    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->onClickButton(II)V

    return-void

    :pswitch_0
    const p1, 0x7f0a0095

    const v0, 0x7f131263

    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->onClickButton(II)V

    return-void

    :pswitch_1
    const p1, 0x7f0a0097

    const v0, 0x7f130cea

    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->onClickButton(II)V

    return-void

    :pswitch_2
    const p1, 0x7f0a0098

    const v0, 0x7f130def

    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->onClickButton(II)V

    return-void

    :pswitch_3
    const p1, 0x7f0a0093

    const v0, 0x7f130dcb

    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->onClickButton(II)V

    return-void

    :pswitch_4
    const p1, 0x7f0a008e

    const v0, 0x7f130dcb

    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->onClickButton(II)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
