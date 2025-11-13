.class public final synthetic Lcom/android/settings/accessibility/TextReadingPreferenceFragment$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/accessibility/TextReadingPreferenceFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/accessibility/TextReadingPreferenceFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/accessibility/TextReadingPreferenceFragment$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/accessibility/TextReadingPreferenceFragment;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/accessibility/TextReadingPreferenceFragment$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/accessibility/TextReadingPreferenceFragment;

    sget-object p1, Lcom/android/settings/accessibility/TextReadingPreferenceFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    const/16 p1, 0x3f1

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->removeDialog(I)V

    iget-object p1, p0, Lcom/android/settings/accessibility/TextReadingPreferenceFragment;->mFontWeightAdjustmentController:Lcom/android/settings/accessibility/FontWeightAdjustmentPreferenceController;

    invoke-virtual {p1}, Lcom/android/settings/accessibility/FontWeightAdjustmentPreferenceController;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/settings/accessibility/TextReadingPreferenceFragment;->mNeedResetSettings:Z

    iget-object p1, p0, Lcom/android/settings/accessibility/TextReadingPreferenceFragment;->mFontWeightAdjustmentController:Lcom/android/settings/accessibility/FontWeightAdjustmentPreferenceController;

    invoke-virtual {p1}, Lcom/android/settings/accessibility/FontWeightAdjustmentPreferenceController;->resetState()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/settings/accessibility/TextReadingPreferenceFragment;->mResetStateListeners:Ljava/util/List;

    new-instance p2, Lcom/android/settings/accessibility/TextReadingPreferenceFragment$$ExternalSyntheticLambda0;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1, p2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p0

    const p1, 0x7f1401d6

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method
