.class public final Lcom/android/settings/sim/SimListDialogFragment$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/sim/SimListDialogFragment;


# direct methods
.method public constructor <init>(Lcom/android/settings/sim/SimListDialogFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/sim/SimListDialogFragment$1;->this$0:Lcom/android/settings/sim/SimListDialogFragment;

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/sim/SimListDialogFragment$1;->this$0:Lcom/android/settings/sim/SimListDialogFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/android/settings/sim/SimDialogActivity;

    if-ltz p3, :cond_1

    iget-object p2, p0, Lcom/android/settings/sim/SimListDialogFragment;->mSubscriptions:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge p3, p2, :cond_1

    iget-object p2, p0, Lcom/android/settings/sim/SimListDialogFragment;->mSubscriptions:Ljava/util/List;

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telephony/SubscriptionInfo;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p2

    goto :goto_0

    :cond_0
    const/4 p2, -0x1

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/sim/SimDialogFragment;->getDialogType()I

    move-result p3

    invoke-virtual {p1, p3, p2}, Lcom/android/settings/sim/SimDialogActivity;->onSubscriptionSelected(II)V

    :cond_1
    const-string p2, "SimListDialogFragment"

    const-string p3, "Start showing auto data switch dialog"

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/android/settings/sim/SimDialogActivity;->showEnableAutoDataSwitchDialog()V

    iget-object p0, p0, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_2
    return-void
.end method
