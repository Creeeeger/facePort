.class public Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final sEventData:[Landroid/util/Pair;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Landroid/util/Pair;

    sput-object v0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogFragment;->sEventData:[Landroid/util/Pair;

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

    sget-object p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogFragment;->sEventData:[Landroid/util/Pair;

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x826

    return p0
.end method

.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "bundle_key_device_items"

    const-class v1, Ljava/util/List;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogFactory;->newBuilder(Landroidx/fragment/app/FragmentActivity;)Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogFactory$DialogBuilder;

    move-result-object v0

    const v1, 0x7f08039e

    invoke-virtual {v0, v1}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogFactory$DialogBuilder;->setTitleIcon(I)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogFactory$DialogBuilder;->mIsCustomBodyEnabled:Z

    if-nez p1, :cond_0

    const-string p0, "AudioSharingDialog"

    const-string p1, "Create dialog error: null deviceItems"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogFactory$DialogBuilder;->build()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    const p1, 0x7f14049a

    invoke-virtual {v0, p1}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogFactory$DialogBuilder;->setTitle(I)V

    iget-object p1, v0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogFactory$DialogBuilder;->mCustomBody:Landroid/view/View;

    const v1, 0x7f0a04d8

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const v1, 0x7f0801e8

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    const p1, 0x7f140488

    invoke-virtual {v0, p1}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogFactory$DialogBuilder;->setCustomMessage(I)V

    new-instance p1, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogFragment$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogFragment$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogFragment;)V

    iget-object p0, v0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogFactory$DialogBuilder;->mBuilder:Landroidx/appcompat/app/AlertDialog$Builder;

    const v1, 0x7f140482

    invoke-virtual {p0, v1, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_0

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v1, :cond_2

    invoke-static {p1}, Lcom/google/common/collect/Iterables;->getOnlyElement(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceItem;

    iget-object v1, p1, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceItem;->mName:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const v2, 0x7f14049c

    invoke-virtual {p0, v2, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogFactory$DialogBuilder;->mCustomTitle:Landroid/view/View;

    const v4, 0x7f0a105d

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f14048b

    invoke-virtual {v0, v1}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogFactory$DialogBuilder;->setCustomMessage(I)V

    new-instance v1, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogFragment$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogFragment;Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceItem;)V

    iget-object p1, v0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogFactory$DialogBuilder;->mCustomBody:Landroid/view/View;

    const v2, 0x7f0a0b7a

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    const v2, 0x7f140498

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setText(I)V

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, v3}, Landroid/widget/Button;->setVisibility(I)V

    new-instance p1, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogFragment$$ExternalSyntheticLambda1;

    const/4 v1, 0x1

    invoke-direct {p1, p0, v1}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogFragment$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogFragment;I)V

    const p0, 0x7f140492

    invoke-virtual {v0, p0, p1}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogFactory$DialogBuilder;->setCustomNegativeButton(ILandroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_2
    const v2, 0x7f14049d

    invoke-virtual {v0, v2}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogFactory$DialogBuilder;->setTitle(I)V

    const v2, 0x7f14048c

    invoke-virtual {v0, v2}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogFactory$DialogBuilder;->setCustomMessage(I)V

    new-instance v2, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogFragment$$ExternalSyntheticLambda3;

    invoke-direct {v5, p0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogFragment$$ExternalSyntheticLambda3;-><init>(Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogFragment;)V

    sget-object v6, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceAdapter$ActionType;->SHARE:Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceAdapter$ActionType;

    invoke-direct {v2, v4, p1, v5, v6}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceAdapter$OnClickListener;Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceAdapter$ActionType;)V

    iget-object p1, v0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogFactory$DialogBuilder;->mCustomBody:Landroid/view/View;

    const v4, 0x7f0a04f0

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v2, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    new-instance p1, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogFragment$$ExternalSyntheticLambda1;

    const/4 v1, 0x2

    invoke-direct {p1, p0, v1}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogFragment$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogFragment;I)V

    const p0, 0x7f1408bf

    invoke-virtual {v0, p0, p1}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogFactory$DialogBuilder;->setCustomNegativeButton(ILandroid/view/View$OnClickListener;)V

    :goto_0
    invoke-virtual {v0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogFactory$DialogBuilder;->build()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method
