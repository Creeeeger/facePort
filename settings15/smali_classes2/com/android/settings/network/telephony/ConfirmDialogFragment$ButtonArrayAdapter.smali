.class public final Lcom/android/settings/network/telephony/ConfirmDialogFragment$ButtonArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mList:Ljava/util/List;

.field public final synthetic this$0:Lcom/android/settings/network/telephony/ConfirmDialogFragment;


# direct methods
.method public constructor <init>(Lcom/android/settings/network/telephony/ConfirmDialogFragment;Landroid/content/Context;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/network/telephony/ConfirmDialogFragment$ButtonArrayAdapter;->this$0:Lcom/android/settings/network/telephony/ConfirmDialogFragment;

    const p1, 0x7f0d0b36

    invoke-direct {p0, p2, p1, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object p3, p0, Lcom/android/settings/network/telephony/ConfirmDialogFragment$ButtonArrayAdapter;->mList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lcom/android/settings/network/telephony/ConfirmDialogFragment$ButtonArrayAdapter$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0, p1}, Lcom/android/settings/network/telephony/ConfirmDialogFragment$ButtonArrayAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/network/telephony/ConfirmDialogFragment$ButtonArrayAdapter;I)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method
