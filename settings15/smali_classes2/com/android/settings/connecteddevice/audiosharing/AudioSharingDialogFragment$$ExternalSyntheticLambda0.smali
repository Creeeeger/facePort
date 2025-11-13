.class public final synthetic Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogFragment$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogFragment;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogFragment$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogFragment;

    sget-object p1, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogFragment;->sEventData:[Landroid/util/Pair;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Landroidx/fragment/app/DialogFragment;->dismissInternal(ZZ)V

    return-void
.end method
