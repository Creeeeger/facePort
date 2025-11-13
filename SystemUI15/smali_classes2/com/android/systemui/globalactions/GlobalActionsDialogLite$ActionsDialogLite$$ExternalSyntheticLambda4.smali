.class public final synthetic Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite;I)V
    .locals 0

    iput p2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite$$ExternalSyntheticLambda4;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite$$ExternalSyntheticLambda4;->f$0:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite$$ExternalSyntheticLambda4;->$r8$classId:I

    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite$$ExternalSyntheticLambda4;->f$0:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite;

    packed-switch v0, :pswitch_data_0

    sget v0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite;->$r8$clinit:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->setDismissOverride(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Landroid/app/AlertDialog;->hide()V

    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite;->dismiss()V

    return-void

    :pswitch_0
    sget v0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite;->$r8$clinit:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite$$ExternalSyntheticLambda4;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite;I)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite;->startAnimation(ZLcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite$$ExternalSyntheticLambda4;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
