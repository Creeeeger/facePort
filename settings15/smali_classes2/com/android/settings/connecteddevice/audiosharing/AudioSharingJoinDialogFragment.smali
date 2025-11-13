.class public Lcom/android/settings/connecteddevice/audiosharing/AudioSharingJoinDialogFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final sEventData:[Landroid/util/Pair;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Landroid/util/Pair;

    sput-object v0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingJoinDialogFragment;->sEventData:[Landroid/util/Pair;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getEventData()[Landroid/util/Pair;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    sget-object p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingJoinDialogFragment;->sEventData:[Landroid/util/Pair;

    return-object p0
.end method

.method public getListener()Lcom/android/settings/connecteddevice/audiosharing/AudioSharingJoinDialogFragment$DialogEventListener;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    sget-object v0, Lcom/android/settings/bluetooth/Utils;->mOnInitCallback:Lcom/android/settings/bluetooth/Utils$2;

    invoke-static {p0, v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingUtils;->isBroadcasting(Lcom/android/settingslib/bluetooth/LocalBluetoothManager;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x826

    goto :goto_0

    :cond_0
    const/16 p0, 0x801

    :goto_0
    return p0
.end method

.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "bundle_key_device_items"

    const-class v1, Ljava/util/List;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const-string v1, "bundle_key_new_device_name"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogFactory;->newBuilder(Landroidx/fragment/app/FragmentActivity;)Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogFactory$DialogBuilder;

    move-result-object v1

    const v2, 0x7f14049a

    invoke-virtual {v1, v2}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogFactory$DialogBuilder;->setTitle(I)V

    const v2, 0x7f08039e

    invoke-virtual {v1, v2}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogFactory$DialogBuilder;->setTitleIcon(I)V

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogFactory$DialogBuilder;->mIsCustomBodyEnabled:Z

    const v2, 0x7f14048b

    invoke-virtual {v1, v2}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogFactory$DialogBuilder;->setCustomMessage(I)V

    new-instance v2, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingJoinDialogFragment$$ExternalSyntheticLambda0;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingJoinDialogFragment$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/connecteddevice/audiosharing/AudioSharingJoinDialogFragment;I)V

    iget-object v3, v1, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogFactory$DialogBuilder;->mCustomBody:Landroid/view/View;

    const v4, 0x7f0a0b7a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    const v4, 0x7f140498

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setVisibility(I)V

    new-instance v3, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingJoinDialogFragment$$ExternalSyntheticLambda0;

    const/4 v4, 0x1

    invoke-direct {v3, p0, v4}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingJoinDialogFragment$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/connecteddevice/audiosharing/AudioSharingJoinDialogFragment;I)V

    const p0, 0x7f140492

    invoke-virtual {v1, p0, v3}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogFactory$DialogBuilder;->setCustomNegativeButton(ILandroid/view/View$OnClickListener;)V

    invoke-virtual {v1}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogFactory$DialogBuilder;->build()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    if-nez v0, :cond_0

    const-string p1, "AudioSharingJoinDialog"

    const-string v0, "Fail to create dialog: null deviceItems"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceItem;

    iget-object v0, v0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceItem;->mName:Ljava/lang/String;

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    const v0, 0x7f140499

    invoke-virtual {v1, v0, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    :goto_0
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    invoke-static {p0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogHelper;->updateMessageStyle(Landroidx/appcompat/app/AlertDialog;)V

    return-object p0
.end method
