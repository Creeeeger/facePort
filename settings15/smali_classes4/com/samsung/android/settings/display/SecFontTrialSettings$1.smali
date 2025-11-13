.class public final Lcom/samsung/android/settings/display/SecFontTrialSettings$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/display/SecFontTrialSettings;

.field public final synthetic val$res:Landroid/content/res/Resources;

.field public final synthetic val$simpleTrialBubbleCountTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/display/SecFontTrialSettings;Landroid/widget/TextView;Landroid/content/res/Resources;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecFontTrialSettings$1;->this$0:Lcom/samsung/android/settings/display/SecFontTrialSettings;

    iput-object p2, p0, Lcom/samsung/android/settings/display/SecFontTrialSettings$1;->val$simpleTrialBubbleCountTextView:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/samsung/android/settings/display/SecFontTrialSettings$1;->val$res:Landroid/content/res/Resources;

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    const/4 p3, 0x0

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/samsung/android/settings/display/SecFontTrialSettings$1;->val$simpleTrialBubbleCountTextView:Landroid/widget/TextView;

    const/16 p4, 0x8

    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/samsung/android/settings/display/SecFontTrialSettings$1;->val$simpleTrialBubbleCountTextView:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getVisibility()I

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/samsung/android/settings/display/SecFontTrialSettings$1;->val$simpleTrialBubbleCountTextView:Landroid/widget/TextView;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/samsung/android/settings/display/SecFontTrialSettings$1;->val$simpleTrialBubbleCountTextView:Landroid/widget/TextView;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " / 100"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const/16 p2, 0x64

    if-lt p1, p2, :cond_3

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecFontTrialSettings$1;->this$0:Lcom/samsung/android/settings/display/SecFontTrialSettings;

    iget-object p1, p1, Lcom/samsung/android/settings/display/SecFontTrialSettings;->mMaxCharacterToast:Landroid/widget/Toast;

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecFontTrialSettings$1;->val$res:Landroid/content/res/Resources;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const p4, 0x7f140fec

    invoke-virtual {p1, p4, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/settings/display/SecFontTrialSettings$1;->this$0:Lcom/samsung/android/settings/display/SecFontTrialSettings;

    iget-object p4, p2, Lcom/samsung/android/settings/display/SecFontTrialSettings;->mContext:Landroid/content/Context;

    invoke-static {p4, p1, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    iput-object p1, p2, Lcom/samsung/android/settings/display/SecFontTrialSettings;->mMaxCharacterToast:Landroid/widget/Toast;

    :cond_2
    iget-object p0, p0, Lcom/samsung/android/settings/display/SecFontTrialSettings$1;->this$0:Lcom/samsung/android/settings/display/SecFontTrialSettings;

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecFontTrialSettings;->mMaxCharacterToast:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_3
    return-void
.end method
