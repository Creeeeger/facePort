.class public final synthetic Lcom/android/systemui/media/dialog/MediaOutputBaseDialog$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/media/dialog/MediaOutputBaseDialog$1;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/media/dialog/MediaOutputBaseDialog$1;I)V
    .locals 0

    iput p2, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog$1$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/media/dialog/MediaOutputBaseDialog$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog$1$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/media/dialog/MediaOutputBaseDialog$1;

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog$1;->this$0:Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;

    invoke-virtual {p0}, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->handleLeBroadcastStopFailed()V

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog$1;->this$0:Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;

    invoke-virtual {p0}, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->handleLeBroadcastMetadataChanged()V

    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog$1;->this$0:Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;

    invoke-virtual {p0}, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->handleLeBroadcastStartFailed()V

    return-void

    :pswitch_2
    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog$1;->this$0:Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;

    invoke-virtual {p0}, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->handleLeBroadcastUpdateFailed()V

    return-void

    :pswitch_3
    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog$1;->this$0:Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;

    invoke-virtual {p0}, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->handleLeBroadcastStopped()V

    return-void

    :pswitch_4
    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog$1;->this$0:Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;

    invoke-virtual {p0}, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->handleLeBroadcastStarted()V

    return-void

    :pswitch_5
    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog$1;->this$0:Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;

    invoke-virtual {p0}, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->handleLeBroadcastUpdated()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
