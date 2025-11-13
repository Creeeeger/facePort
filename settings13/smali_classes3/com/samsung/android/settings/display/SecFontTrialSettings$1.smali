.class Lcom/samsung/android/settings/display/SecFontTrialSettings$1;
.super Ljava/lang/Object;
.source "SecFontTrialSettings.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/display/SecFontTrialSettings;->generateContent(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/SecFontTrialSettings;

.field final synthetic val$res:Landroid/content/res/Resources;

.field final synthetic val$simpleTrialBubbleCountTextView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/SecFontTrialSettings;Landroid/widget/TextView;Landroid/content/res/Resources;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/samsung/android/settings/display/SecFontTrialSettings$1;->this$0:Lcom/samsung/android/settings/display/SecFontTrialSettings;

    iput-object p2, p0, Lcom/samsung/android/settings/display/SecFontTrialSettings$1;->val$simpleTrialBubbleCountTextView:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/samsung/android/settings/display/SecFontTrialSettings$1;->val$res:Landroid/content/res/Resources;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    .line 97
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    const/4 p3, 0x0

    if-nez p2, :cond_0

    .line 98
    iget-object p2, p0, Lcom/samsung/android/settings/display/SecFontTrialSettings$1;->val$simpleTrialBubbleCountTextView:Landroid/widget/TextView;

    const/16 p4, 0x8

    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 99
    :cond_0
    iget-object p2, p0, Lcom/samsung/android/settings/display/SecFontTrialSettings$1;->val$simpleTrialBubbleCountTextView:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getVisibility()I

    move-result p2

    if-eqz p2, :cond_1

    .line 100
    iget-object p2, p0, Lcom/samsung/android/settings/display/SecFontTrialSettings$1;->val$simpleTrialBubbleCountTextView:Landroid/widget/TextView;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 103
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/samsung/android/settings/display/SecFontTrialSettings$1;->val$simpleTrialBubbleCountTextView:Landroid/widget/TextView;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " / "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x64

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lt p1, v0, :cond_2

    .line 106
    iget-object p1, p0, Lcom/samsung/android/settings/display/SecFontTrialSettings$1;->val$res:Landroid/content/res/Resources;

    sget p2, Lcom/android/settings/R$string;->font_preview_max_characters_toast_message:I

    const/4 p4, 0x1

    new-array p4, p4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p4, p3

    invoke-virtual {p1, p2, p4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 107
    iget-object p0, p0, Lcom/samsung/android/settings/display/SecFontTrialSettings$1;->this$0:Lcom/samsung/android/settings/display/SecFontTrialSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/display/SecFontTrialSettings;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/display/SecFontTrialSettings;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_2
    return-void
.end method
