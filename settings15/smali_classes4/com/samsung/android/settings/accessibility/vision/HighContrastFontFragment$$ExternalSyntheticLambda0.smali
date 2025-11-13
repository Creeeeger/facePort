.class public final synthetic Lcom/samsung/android/settings/accessibility/vision/HighContrastFontFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/accessibility/vision/HighContrastFontFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/accessibility/vision/HighContrastFontFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/vision/HighContrastFontFragment$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/accessibility/vision/HighContrastFontFragment;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/vision/HighContrastFontFragment$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/accessibility/vision/HighContrastFontFragment;

    sget-object v0, Lcom/samsung/android/settings/accessibility/vision/HighContrastFontFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "high_text_contrast_enabled"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-eqz p2, :cond_0

    const p2, 0x7f142e1f

    goto :goto_0

    :cond_0
    const p2, 0x7f142e1e

    :goto_0
    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/CompoundButton;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return-void
.end method
