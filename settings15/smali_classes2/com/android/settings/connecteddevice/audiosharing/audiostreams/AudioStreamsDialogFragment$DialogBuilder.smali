.class public final Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsDialogFragment$DialogBuilder;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mBuilder:Landroid/app/AlertDialog$Builder;

.field public final mContext:Landroid/content/Context;

.field public mLeftButtonOnClickListener:Ljava/util/function/Consumer;

.field public mLeftButtonText:Ljava/lang/String;

.field public mRightButtonOnClickListener:Ljava/util/function/Consumer;

.field public mRightButtonText:Ljava/lang/String;

.field public mSubTitle1:Ljava/lang/String;

.field public mSubTitle2:Ljava/lang/String;

.field public mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsDialogFragment$DialogBuilder;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsDialogFragment$DialogBuilder;->mBuilder:Landroid/app/AlertDialog$Builder;

    return-void
.end method


# virtual methods
.method public final build()Landroid/app/AlertDialog;
    .locals 6

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsDialogFragment$DialogBuilder;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f17005f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsDialogFragment$DialogBuilder;->mBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    const v3, 0x7f0a0529

    invoke-virtual {v0, v3}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsDialogFragment$DialogBuilder;->mTitle:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsDialogFragment$DialogBuilder;->mSubTitle1:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/common/base/Platform;->stringIsNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const v3, 0x7f0a0525

    invoke-virtual {v0, v3}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsDialogFragment$DialogBuilder;->mSubTitle1:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    iget-object v3, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsDialogFragment$DialogBuilder;->mSubTitle2:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/common/base/Platform;->stringIsNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const v3, 0x7f0a0526

    invoke-virtual {v0, v3}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsDialogFragment$DialogBuilder;->mSubTitle2:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    iget-object v3, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsDialogFragment$DialogBuilder;->mLeftButtonText:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/common/base/Platform;->stringIsNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const v3, 0x7f0a08aa

    invoke-virtual {v0, v3}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsDialogFragment$DialogBuilder;->mLeftButtonText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setVisibility(I)V

    new-instance v4, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsDialogFragment$DialogBuilder$$ExternalSyntheticLambda0;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v1, v5}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsDialogFragment$DialogBuilder$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsDialogFragment$DialogBuilder;Landroid/app/AlertDialog;I)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    iget-object v3, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsDialogFragment$DialogBuilder;->mRightButtonText:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/common/base/Platform;->stringIsNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const v3, 0x7f0a0cb6

    invoke-virtual {v0, v3}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsDialogFragment$DialogBuilder;->mRightButtonText:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    new-instance v2, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsDialogFragment$DialogBuilder$$ExternalSyntheticLambda0;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v1, v3}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsDialogFragment$DialogBuilder$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsDialogFragment$DialogBuilder;Landroid/app/AlertDialog;I)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    return-object v1
.end method
