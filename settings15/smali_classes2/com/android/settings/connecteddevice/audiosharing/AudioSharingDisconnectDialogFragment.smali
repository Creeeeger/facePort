.class public Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDisconnectDialogFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final sEventData:[Landroid/util/Pair;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Landroid/util/Pair;

    sput-object v0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDisconnectDialogFragment;->sEventData:[Landroid/util/Pair;

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

    sget-object p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDisconnectDialogFragment;->sEventData:[Landroid/util/Pair;

    return-object p0
.end method

.method public getListener()Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDisconnectDialogFragment$DialogEventListener;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x803

    return p0
.end method

.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "bundle_key_device_to_disconnect_items"

    const-class v1, Ljava/util/List;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogFactory;->newBuilder(Landroidx/fragment/app/FragmentActivity;)Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogFactory$DialogBuilder;

    move-result-object v0

    const v1, 0x7f14048e

    invoke-virtual {v0, v1}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogFactory$DialogBuilder;->setTitle(I)V

    const v1, 0x7f08039e

    invoke-virtual {v0, v1}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogFactory$DialogBuilder;->setTitleIcon(I)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogFactory$DialogBuilder;->mIsCustomBodyEnabled:Z

    const v2, 0x7f140489

    invoke-virtual {v0, v2}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogFactory$DialogBuilder;->setCustomMessage(I)V

    new-instance v2, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDisconnectDialogFragment$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDisconnectDialogFragment$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDisconnectDialogFragment;)V

    const v3, 0x7f1408bf

    invoke-virtual {v0, v3, v2}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogFactory$DialogBuilder;->setCustomNegativeButton(ILandroid/view/View$OnClickListener;)V

    if-nez p1, :cond_0

    const-string p0, "AudioSharingDisconnectDialog"

    const-string p1, "Create dialog error: null deviceItems"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogFactory$DialogBuilder;->build()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v2, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDisconnectDialogFragment$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDisconnectDialogFragment$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDisconnectDialogFragment;)V

    sget-object p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceAdapter$ActionType;->REMOVE:Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceAdapter$ActionType;

    invoke-direct {v2, v3, p1, v4, p0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceAdapter$OnClickListener;Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceAdapter$ActionType;)V

    iget-object p0, v0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogFactory$DialogBuilder;->mCustomBody:Landroid/view/View;

    const p1, 0x7f0a04f0

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {p1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    invoke-virtual {v0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogFactory$DialogBuilder;->build()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method
