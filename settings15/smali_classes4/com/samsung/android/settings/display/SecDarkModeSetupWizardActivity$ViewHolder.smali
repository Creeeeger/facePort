.class public final Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$ViewHolder;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final imageView:Landroid/widget/ImageView;

.field public final itemView:Landroid/view/View;

.field public final titleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$ViewHolder;->itemView:Landroid/view/View;

    const v0, 0x7f0a07c4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$ViewHolder;->imageView:Landroid/widget/ImageView;

    const v0, 0x7f0a1041

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$ViewHolder;->titleView:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final bind(Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$UiMode;Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$UiMode;Landroidx/core/util/Consumer;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$ViewHolder;->titleView:Landroid/widget/TextView;

    iget v1, p1, Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$UiMode;->stringRes:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$ViewHolder;->imageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p1, Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$UiMode;->drawableRes:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$$ExternalSyntheticLambda3;

    const/4 v2, 0x1

    invoke-direct {v1, p3, p1, v2}, Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Object;Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$UiMode;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p3, p0, Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$ViewHolder;->itemView:Landroid/view/View;

    if-ne p1, p2, :cond_0

    const p1, 0x7f080a62

    goto :goto_0

    :cond_0
    const p1, 0x7f080a61

    :goto_0
    invoke-virtual {p3, p1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$ViewHolder;->itemView:Landroid/view/View;

    new-instance p1, Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$ViewHolder$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method
