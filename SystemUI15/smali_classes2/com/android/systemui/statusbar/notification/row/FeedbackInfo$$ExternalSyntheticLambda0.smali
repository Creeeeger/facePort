.class public final synthetic Lcom/android/systemui/statusbar/notification/row/FeedbackInfo$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/statusbar/notification/row/FeedbackInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/row/FeedbackInfo;I)V
    .locals 0

    iput p2, p0, Lcom/android/systemui/statusbar/notification/row/FeedbackInfo$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/FeedbackInfo$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/notification/row/FeedbackInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/FeedbackInfo$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/FeedbackInfo$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/notification/row/FeedbackInfo;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/notification/row/FeedbackInfo;->$r8$lambda$pngimGXdXE9MbapRjY8pWAU1A5w(Lcom/android/systemui/statusbar/notification/row/FeedbackInfo;Landroid/view/View;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/FeedbackInfo;->mGutsContainer:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->closeControls(Landroid/view/View;Z)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/FeedbackInfo;->handleFeedback(Z)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
