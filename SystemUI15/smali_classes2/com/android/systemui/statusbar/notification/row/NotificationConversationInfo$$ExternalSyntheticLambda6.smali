.class public final synthetic Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroid/view/View;

.field public final synthetic f$1:Landroid/view/View;

.field public final synthetic f$2:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V
    .locals 0

    iput p4, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$$ExternalSyntheticLambda6;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$$ExternalSyntheticLambda6;->f$0:Landroid/view/View;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$$ExternalSyntheticLambda6;->f$1:Landroid/view/View;

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$$ExternalSyntheticLambda6;->f$2:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$$ExternalSyntheticLambda6;->$r8$classId:I

    packed-switch v2, :pswitch_data_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$$ExternalSyntheticLambda6;->f$0:Landroid/view/View;

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$$ExternalSyntheticLambda6;->f$1:Landroid/view/View;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$$ExternalSyntheticLambda6;->f$2:Landroid/view/View;

    sget v4, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->$r8$clinit:I

    invoke-virtual {v2, v1}, Landroid/view/View;->setSelected(Z)V

    invoke-virtual {v3, v0}, Landroid/view/View;->setSelected(Z)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setSelected(Z)V

    return-void

    :pswitch_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$$ExternalSyntheticLambda6;->f$0:Landroid/view/View;

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$$ExternalSyntheticLambda6;->f$1:Landroid/view/View;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$$ExternalSyntheticLambda6;->f$2:Landroid/view/View;

    sget v4, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->$r8$clinit:I

    invoke-virtual {v2, v1}, Landroid/view/View;->setSelected(Z)V

    invoke-virtual {v3, v1}, Landroid/view/View;->setSelected(Z)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setSelected(Z)V

    return-void

    :pswitch_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$$ExternalSyntheticLambda6;->f$0:Landroid/view/View;

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$$ExternalSyntheticLambda6;->f$1:Landroid/view/View;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$$ExternalSyntheticLambda6;->f$2:Landroid/view/View;

    sget v4, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->$r8$clinit:I

    invoke-virtual {v2, v0}, Landroid/view/View;->setSelected(Z)V

    invoke-virtual {v3, v1}, Landroid/view/View;->setSelected(Z)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setSelected(Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
