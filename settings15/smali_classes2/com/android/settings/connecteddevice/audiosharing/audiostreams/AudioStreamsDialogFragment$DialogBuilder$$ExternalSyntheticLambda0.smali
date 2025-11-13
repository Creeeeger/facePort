.class public final synthetic Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsDialogFragment$DialogBuilder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsDialogFragment$DialogBuilder;

.field public final synthetic f$1:Landroid/app/AlertDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsDialogFragment$DialogBuilder;Landroid/app/AlertDialog;I)V
    .locals 0

    iput p3, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsDialogFragment$DialogBuilder$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsDialogFragment$DialogBuilder$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsDialogFragment$DialogBuilder;

    iput-object p2, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsDialogFragment$DialogBuilder$$ExternalSyntheticLambda0;->f$1:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget p1, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsDialogFragment$DialogBuilder$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsDialogFragment$DialogBuilder$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsDialogFragment$DialogBuilder;

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsDialogFragment$DialogBuilder$$ExternalSyntheticLambda0;->f$1:Landroid/app/AlertDialog;

    iget-object p1, p1, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsDialogFragment$DialogBuilder;->mRightButtonOnClickListener:Ljava/util/function/Consumer;

    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void

    :pswitch_0
    iget-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsDialogFragment$DialogBuilder$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsDialogFragment$DialogBuilder;

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsDialogFragment$DialogBuilder$$ExternalSyntheticLambda0;->f$1:Landroid/app/AlertDialog;

    iget-object p1, p1, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsDialogFragment$DialogBuilder;->mLeftButtonOnClickListener:Ljava/util/function/Consumer;

    if-eqz p1, :cond_1

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
