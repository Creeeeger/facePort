.class public final synthetic Lcom/android/wm/shell/pip/PipMenuControlService$MessageHandler$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/wm/shell/pip/PipMenuControlService$MessageHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/pip/PipMenuControlService$MessageHandler;I)V
    .locals 0

    iput p2, p0, Lcom/android/wm/shell/pip/PipMenuControlService$MessageHandler$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/wm/shell/pip/PipMenuControlService$MessageHandler$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/pip/PipMenuControlService$MessageHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/android/wm/shell/pip/PipMenuControlService$MessageHandler$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/android/wm/shell/pip/PipMenuControlService$MessageHandler$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/pip/PipMenuControlService$MessageHandler;

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/android/wm/shell/pip/PipMenuControlService$MessageHandler;->this$0:Lcom/android/wm/shell/pip/PipMenuControlService;

    iget-object p0, p0, Lcom/android/wm/shell/pip/PipMenuControlService;->mPhonePipMenuController:Lcom/android/wm/shell/pip/phone/PhonePipMenuController;

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->hideMenu()V

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipMenuControlService$MessageHandler;->this$0:Lcom/android/wm/shell/pip/PipMenuControlService;

    iget-object p0, p0, Lcom/android/wm/shell/pip/PipMenuControlService;->mPhonePipMenuController:Lcom/android/wm/shell/pip/phone/PhonePipMenuController;

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mListeners:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController$$ExternalSyntheticLambda2;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
