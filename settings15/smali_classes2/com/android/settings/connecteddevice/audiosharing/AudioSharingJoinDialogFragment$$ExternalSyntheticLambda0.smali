.class public final synthetic Lcom/android/settings/connecteddevice/audiosharing/AudioSharingJoinDialogFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/settings/connecteddevice/audiosharing/AudioSharingJoinDialogFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/connecteddevice/audiosharing/AudioSharingJoinDialogFragment;I)V
    .locals 0

    iput p2, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingJoinDialogFragment$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingJoinDialogFragment$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/connecteddevice/audiosharing/AudioSharingJoinDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    const/4 p1, 0x0

    iget v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingJoinDialogFragment$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingJoinDialogFragment$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/connecteddevice/audiosharing/AudioSharingJoinDialogFragment;

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingJoinDialogFragment;->sEventData:[Landroid/util/Pair;

    invoke-virtual {p0, p1, p1}, Landroidx/fragment/app/DialogFragment;->dismissInternal(ZZ)V

    return-void

    :pswitch_0
    sget-object v0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingJoinDialogFragment;->sEventData:[Landroid/util/Pair;

    invoke-virtual {p0, p1, p1}, Landroidx/fragment/app/DialogFragment;->dismissInternal(ZZ)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
