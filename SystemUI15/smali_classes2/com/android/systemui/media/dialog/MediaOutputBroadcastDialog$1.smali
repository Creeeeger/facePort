.class public final Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog$1;->this$0:Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog$1;->this$0:Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;

    iget-object v1, v0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_8

    iget-object v0, v0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;->mBroadcastErrorMessage:Landroid/widget/TextView;

    if-nez v0, :cond_0

    goto/16 :goto_5

    :cond_0
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v0, :cond_1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-ge v0, v1, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    const/16 v4, 0x10

    if-le p1, v4, :cond_2

    move p1, v3

    goto :goto_1

    :cond_2
    move p1, v2

    :goto_1
    if-nez v0, :cond_4

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    move v5, v2

    goto :goto_3

    :cond_4
    :goto_2
    move v5, v3

    :goto_3
    if-eqz v0, :cond_5

    iget-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog$1;->this$0:Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;

    iget-object p1, p1, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;->mBroadcastErrorMessage:Landroid/widget/TextView;

    const v0, 0x7f130bba

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_4

    :cond_5
    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog$1;->this$0:Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;

    iget-object v0, p1, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;->mBroadcastErrorMessage:Landroid/widget/TextView;

    iget-object p1, p1, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const v6, 0x7f130bbc

    invoke-virtual {p1, v6, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    :goto_4
    iget-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog$1;->this$0:Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;

    iget-object p1, p1, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;->mBroadcastErrorMessage:Landroid/widget/TextView;

    if-eqz v5, :cond_7

    move v1, v2

    :cond_7
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog$1;->this$0:Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;

    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;->mAlertDialog:Landroid/app/AlertDialog;

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p0

    if-eqz p0, :cond_8

    xor-int/lit8 p1, v5, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_8
    :goto_5
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
