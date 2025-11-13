.class public Lcom/android/settings/connecteddevice/audiosharing/AudioSharingStopDialogFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final sEventData:[Landroid/util/Pair;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Landroid/util/Pair;

    sput-object v0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingStopDialogFragment;->sEventData:[Landroid/util/Pair;

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

    sget-object p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingStopDialogFragment;->sEventData:[Landroid/util/Pair;

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x802

    return p0
.end method

.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "bundle_key_device_to_disconnect_items"

    const-class v1, Ljava/util/List;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const-string v1, "bundle_key_new_device_name"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v2, :cond_0

    invoke-static {v0}, Lcom/google/common/collect/Iterables;->getOnlyElement(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceItem;

    iget-object v0, v0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceItem;->mName:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const v3, 0x7f1404a1

    invoke-virtual {p0, v3, v0}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceItem;

    iget-object v3, v3, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceItem;->mName:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceItem;

    iget-object v0, v0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceItem;->mName:Ljava/lang/String;

    filled-new-array {v3, v0}, [Ljava/lang/Object;

    move-result-object v0

    const v3, 0x7f1404a4

    invoke-virtual {p0, v3, v0}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const v0, 0x7f1404a3

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v0, ""

    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogFactory;->newBuilder(Landroidx/fragment/app/FragmentActivity;)Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogFactory$DialogBuilder;

    move-result-object v3

    const v4, 0x7f1404a2

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v4, p1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v4, v3, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogFactory$DialogBuilder;->mCustomTitle:Landroid/view/View;

    const v5, 0x7f0a105d

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f08067c

    invoke-virtual {v3, p1}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogFactory$DialogBuilder;->setTitleIcon(I)V

    iput-boolean v2, v3, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogFactory$DialogBuilder;->mIsCustomBodyEnabled:Z

    iget-object p1, v3, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogFactory$DialogBuilder;->mCustomBody:Landroid/view/View;

    const v2, 0x7f0a04e0

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    new-instance p1, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingStopDialogFragment$$ExternalSyntheticLambda0;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingStopDialogFragment$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/connecteddevice/audiosharing/AudioSharingStopDialogFragment;I)V

    iget-object v0, v3, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogFactory$DialogBuilder;->mBuilder:Landroidx/appcompat/app/AlertDialog$Builder;

    const v1, 0x7f140485

    invoke-virtual {v0, v1, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    new-instance p1, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingStopDialogFragment$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {p1, p0, v1}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingStopDialogFragment$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/connecteddevice/audiosharing/AudioSharingStopDialogFragment;I)V

    const p0, 0x7f1408bf

    invoke-virtual {v0, p0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v3}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogFactory$DialogBuilder;->build()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    invoke-static {p0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogHelper;->updateMessageStyle(Landroidx/appcompat/app/AlertDialog;)V

    return-object p0
.end method
