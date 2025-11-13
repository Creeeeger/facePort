.class public final Lcom/samsung/android/settings/accessibility/vision/HighContrastFontFragment$2;
.super Landroid/database/ContentObserver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/accessibility/vision/HighContrastFontFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/accessibility/vision/HighContrastFontFragment;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/vision/HighContrastFontFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/vision/HighContrastFontFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/vision/HighContrastFontFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/vision/HighContrastFontFragment;

    sget-object p1, Lcom/samsung/android/settings/accessibility/vision/HighContrastFontFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/vision/HighContrastFontFragment;->mainSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p2, "high_text_contrast_enabled"

    const/4 v0, 0x0

    invoke-static {p0, p2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p1, v0}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setCheckedInternal(Z)V

    :cond_1
    return-void
.end method
