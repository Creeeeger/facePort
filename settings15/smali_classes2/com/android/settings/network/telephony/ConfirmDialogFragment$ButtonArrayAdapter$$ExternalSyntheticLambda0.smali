.class public final synthetic Lcom/android/settings/network/telephony/ConfirmDialogFragment$ButtonArrayAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/network/telephony/ConfirmDialogFragment$ButtonArrayAdapter;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/network/telephony/ConfirmDialogFragment$ButtonArrayAdapter;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/network/telephony/ConfirmDialogFragment$ButtonArrayAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/network/telephony/ConfirmDialogFragment$ButtonArrayAdapter;

    iput p2, p0, Lcom/android/settings/network/telephony/ConfirmDialogFragment$ButtonArrayAdapter$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/android/settings/network/telephony/ConfirmDialogFragment$ButtonArrayAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/network/telephony/ConfirmDialogFragment$ButtonArrayAdapter;

    iget p0, p0, Lcom/android/settings/network/telephony/ConfirmDialogFragment$ButtonArrayAdapter$$ExternalSyntheticLambda0;->f$1:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "list onClick ="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConfirmDialogFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "list item ="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/android/settings/network/telephony/ConfirmDialogFragment$ButtonArrayAdapter;->mList:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v0, v2, v1}, Lcom/android/settings/Utils$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/android/settings/network/telephony/ConfirmDialogFragment$ButtonArrayAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ne p0, v0, :cond_0

    iget-object p0, p1, Lcom/android/settings/network/telephony/ConfirmDialogFragment$ButtonArrayAdapter;->this$0:Lcom/android/settings/network/telephony/ConfirmDialogFragment;

    const/4 p1, 0x0

    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/settings/network/telephony/ConfirmDialogFragment;->informCaller(IZ)V

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lcom/android/settings/network/telephony/ConfirmDialogFragment$ButtonArrayAdapter;->this$0:Lcom/android/settings/network/telephony/ConfirmDialogFragment;

    invoke-virtual {p1, p0, v1}, Lcom/android/settings/network/telephony/ConfirmDialogFragment;->informCaller(IZ)V

    :goto_0
    return-void
.end method
