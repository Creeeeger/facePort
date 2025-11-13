.class public final Lcom/google/android/setupcompat/template/FooterButton;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public buttonListener:Lcom/google/android/setupcompat/template/FooterBarMixin$1;

.field public final buttonType:I

.field public clickCount:I

.field public enabled:Z

.field public onClickListener:Landroid/view/View$OnClickListener;

.field public onClickListenerWhenDisabled:Landroid/view/View$OnClickListener;

.field public text:Ljava/lang/CharSequence;

.field public final theme:I

.field public visibility:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/setupcompat/template/FooterButton;->enabled:Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/setupcompat/template/FooterButton;->visibility:I

    iput v1, p0, Lcom/google/android/setupcompat/template/FooterButton;->clickCount:I

    sget-object v2, Lcom/google/android/setupcompat/R$styleable;->SucFooterButton:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/setupcompat/template/FooterButton;->text:Ljava/lang/CharSequence;

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/google/android/setupcompat/template/FooterButton;->onClickListener:Landroid/view/View$OnClickListener;

    const/4 p2, 0x2

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    if-ltz p2, :cond_0

    const/16 v0, 0x8

    if-gt p2, v0, :cond_0

    iput p2, p0, Lcom/google/android/setupcompat/template/FooterButton;->buttonType:I

    invoke-virtual {p1, v1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/setupcompat/template/FooterButton;->theme:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Not a ButtonType"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/setupcompat/template/FooterButton;->enabled:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/setupcompat/template/FooterButton;->visibility:I

    iput v0, p0, Lcom/google/android/setupcompat/template/FooterButton;->clickCount:I

    iput-object p1, p0, Lcom/google/android/setupcompat/template/FooterButton;->text:Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/google/android/setupcompat/template/FooterButton;->onClickListener:Landroid/view/View$OnClickListener;

    iput p3, p0, Lcom/google/android/setupcompat/template/FooterButton;->buttonType:I

    iput p4, p0, Lcom/google/android/setupcompat/template/FooterButton;->theme:I

    return-void
.end method


# virtual methods
.method public final getMetrics(Ljava/lang/String;)Landroid/os/PersistableBundle;
    .locals 5

    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    const-string v1, "_text"

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/setupcompat/template/FooterButton;->text:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/android/setupcompat/logging/CustomEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x32

    if-gt v3, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    const/16 v4, 0x31

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "\u2026"

    invoke-static {v2, v3}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "_type"

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/android/setupcompat/template/FooterButton;->buttonType:I

    packed-switch v2, :pswitch_data_0

    const-string v2, "OTHER"

    goto :goto_1

    :pswitch_0
    const-string v2, "STOP"

    goto :goto_1

    :pswitch_1
    const-string v2, "SKIP"

    goto :goto_1

    :pswitch_2
    const-string v2, "OPT_IN"

    goto :goto_1

    :pswitch_3
    const-string v2, "NEXT"

    goto :goto_1

    :pswitch_4
    const-string v2, "DONE"

    goto :goto_1

    :pswitch_5
    const-string v2, "CLEAR"

    goto :goto_1

    :pswitch_6
    const-string v2, "CANCEL"

    goto :goto_1

    :pswitch_7
    const-string v2, "ADD_ANOTHER"

    :goto_1
    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "_onClickCount"

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget p0, p0, Lcom/google/android/setupcompat/template/FooterButton;->clickCount:I

    invoke-virtual {v0, p1, p0}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterButton;->onClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/google/android/setupcompat/template/FooterButton;->clickCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/setupcompat/template/FooterButton;->clickCount:I

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public final setEnabled(Z)V
    .locals 3

    iput-boolean p1, p0, Lcom/google/android/setupcompat/template/FooterButton;->enabled:Z

    iget-object p0, p0, Lcom/google/android/setupcompat/template/FooterButton;->buttonListener:Lcom/google/android/setupcompat/template/FooterBarMixin$1;

    if-eqz p0, :cond_5

    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin$1;->this$0:Lcom/google/android/setupcompat/template/FooterBarMixin;

    iget-object v1, v0, Lcom/google/android/setupcompat/template/FooterBarMixin;->buttonContainer:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_5

    iget p0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin$1;->val$id:I

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    if-eqz v1, :cond_5

    invoke-virtual {v1, p1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-boolean p1, v0, Lcom/google/android/setupcompat/template/FooterBarMixin;->applyPartnerResources:Z

    if-eqz p1, :cond_5

    iget-boolean p1, v0, Lcom/google/android/setupcompat/template/FooterBarMixin;->applyDynamicColor:Z

    if-nez p1, :cond_5

    iget p1, v0, Lcom/google/android/setupcompat/template/FooterBarMixin;->primaryButtonId:I

    if-eq p0, p1, :cond_1

    iget-boolean v2, v0, Lcom/google/android/setupcompat/template/FooterBarMixin;->isSecondaryButtonInPrimaryStyle:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_SECONDARY_BUTTON_TEXT_COLOR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    goto :goto_1

    :cond_1
    :goto_0
    sget-object v2, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_PRIMARY_BUTTON_TEXT_COLOR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    :goto_1
    if-eq p0, p1, :cond_3

    iget-boolean p0, v0, Lcom/google/android/setupcompat/template/FooterBarMixin;->isSecondaryButtonInPrimaryStyle:Z

    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    sget-object p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_SECONDARY_BUTTON_DISABLED_TEXT_COLOR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    goto :goto_3

    :cond_3
    :goto_2
    sget-object p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_PRIMARY_BUTTON_DISABLED_TEXT_COLOR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    :goto_3
    invoke-virtual {v1}, Landroid/widget/Button;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p0, v0, Lcom/google/android/setupcompat/template/FooterBarMixin;->context:Landroid/content/Context;

    sget-object p1, Lcom/google/android/setupcompat/template/FooterButtonStyleUtils;->defaultTextColor:Ljava/util/HashMap;

    invoke-static {p0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object p1

    invoke-virtual {p1, p0, v2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getColor(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)I

    move-result p0

    if-eqz p0, :cond_5

    invoke-static {p0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_4

    :cond_4
    iget-object p1, v0, Lcom/google/android/setupcompat/template/FooterBarMixin;->context:Landroid/content/Context;

    invoke-static {p1, v1, p0}, Lcom/google/android/setupcompat/template/FooterButtonStyleUtils;->updateButtonTextDisabledColorWithPartnerConfig(Landroid/content/Context;Landroid/widget/Button;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)V

    :cond_5
    :goto_4
    return-void
.end method

.method public final setText(Landroid/content/Context;I)V
    .locals 0

    invoke-virtual {p1, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/setupcompat/template/FooterButton;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setText(Ljava/lang/CharSequence;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/setupcompat/template/FooterButton;->text:Ljava/lang/CharSequence;

    iget-object p0, p0, Lcom/google/android/setupcompat/template/FooterButton;->buttonListener:Lcom/google/android/setupcompat/template/FooterBarMixin$1;

    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin$1;->this$0:Lcom/google/android/setupcompat/template/FooterBarMixin;

    iget-object v0, v0, Lcom/google/android/setupcompat/template/FooterBarMixin;->buttonContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin$1;->val$id:I

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/Button;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final setVisibility(I)V
    .locals 2

    iput p1, p0, Lcom/google/android/setupcompat/template/FooterButton;->visibility:I

    iget-object p0, p0, Lcom/google/android/setupcompat/template/FooterButton;->buttonListener:Lcom/google/android/setupcompat/template/FooterBarMixin$1;

    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin$1;->this$0:Lcom/google/android/setupcompat/template/FooterBarMixin;

    iget-object v1, v0, Lcom/google/android/setupcompat/template/FooterBarMixin;->buttonContainer:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    iget p0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin$1;->val$id:I

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/Button;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setVisibility(I)V

    invoke-virtual {v0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->autoSetButtonBarVisibility()V

    :cond_0
    return-void
.end method
