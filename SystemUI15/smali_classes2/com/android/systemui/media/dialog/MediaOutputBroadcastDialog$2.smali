.class public final Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog$2;->this$0:Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog$2;->this$0:Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;

    iget-object v1, v0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_6

    iget-object v0, v0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;->mBroadcastErrorMessage:Landroid/widget/TextView;

    if-nez v0, :cond_0

    goto :goto_4

    :cond_0
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    const/16 v1, 0xfe

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-le v0, v1, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    if-nez v0, :cond_3

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    move p1, v2

    goto :goto_2

    :cond_3
    :goto_1
    move p1, v3

    :goto_2
    if-eqz v0, :cond_4

    iget-object v4, p0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog$2;->this$0:Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;

    iget-object v5, v4, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;->mBroadcastErrorMessage:Landroid/widget/TextView;

    iget-object v4, v4, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const v6, 0x7f130bbc

    invoke-virtual {v4, v6, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog$2;->this$0:Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;

    iget-object v1, v1, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;->mBroadcastErrorMessage:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    goto :goto_3

    :cond_5
    const/4 v2, 0x4

    :goto_3
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog$2;->this$0:Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;

    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;->mAlertDialog:Landroid/app/AlertDialog;

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p0

    if-eqz p0, :cond_6

    xor-int/2addr p1, v3

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_6
    :goto_4
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
