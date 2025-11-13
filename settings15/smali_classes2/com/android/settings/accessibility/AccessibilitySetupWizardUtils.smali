.class public abstract Lcom/android/settings/accessibility/AccessibilitySetupWizardUtils;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static setPrimaryButton(Landroid/content/Context;Lcom/google/android/setupcompat/template/FooterBarMixin;Ljava/lang/Runnable;)V
    .locals 3

    const v0, 0x7f140d53

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lcom/android/settings/accessibility/AccessibilitySetupWizardUtils$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2}, Lcom/android/settings/accessibility/AccessibilitySetupWizardUtils$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Runnable;)V

    new-instance p2, Lcom/google/android/setupcompat/template/FooterButton;

    const/4 v1, 0x4

    const v2, 0x7f15045d

    invoke-direct {p2, p0, v0, v1, v2}, Lcom/google/android/setupcompat/template/FooterButton;-><init>(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;II)V

    invoke-virtual {p1, p2}, Lcom/google/android/setupcompat/template/FooterBarMixin;->setPrimaryButton(Lcom/google/android/setupcompat/template/FooterButton;)V

    return-void
.end method

.method public static updateGlifPreferenceLayout(Landroid/content/Context;Lcom/google/android/setupdesign/GlifPreferenceLayout;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1, p2}, Lcom/google/android/setupdesign/GlifLayout;->setHeaderText(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {p1, p3}, Lcom/google/android/setupdesign/GlifLayout;->setDescriptionText(Ljava/lang/CharSequence;)V

    :cond_1
    if-eqz p4, :cond_2

    invoke-virtual {p1, p4}, Lcom/google/android/setupdesign/GlifLayout;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    iget-object p2, p1, Lcom/google/android/setupdesign/GlifRecyclerLayout;->recyclerMixin:Lcom/google/android/setupdesign/template/RecyclerMixin;

    const p3, 0x7fffffff

    iput p3, p2, Lcom/google/android/setupdesign/template/RecyclerMixin;->dividerInsetStart:I

    const/4 p3, 0x0

    iput p3, p2, Lcom/google/android/setupdesign/template/RecyclerMixin;->dividerInsetEnd:I

    invoke-virtual {p2}, Lcom/google/android/setupdesign/template/RecyclerMixin;->updateDivider()V

    sget-object p2, Lcom/google/android/setupdesign/util/ThemeHelper;->LOG:Lcom/google/android/setupcompat/util/Logger;

    invoke-static {p0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->shouldApplyMaterialYouStyle(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_3

    const p0, 0x7f0a0f60

    invoke-virtual {p1, p0}, Lcom/google/android/setupdesign/GlifRecyclerLayout;->findManagedViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout;

    if-eqz p0, :cond_3

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result p2

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result p1

    invoke-virtual {p0, p3, p2, p3, p1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    :cond_3
    return-void
.end method
