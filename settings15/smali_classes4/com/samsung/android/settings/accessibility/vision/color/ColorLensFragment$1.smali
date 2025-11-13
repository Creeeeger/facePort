.class public final Lcom/samsung/android/settings/accessibility/vision/color/ColorLensFragment$1;
.super Landroid/database/ContentObserver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/accessibility/vision/color/ColorLensFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/accessibility/vision/color/ColorLensFragment;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/vision/color/ColorLensFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/vision/color/ColorLensFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 1

    const-string p1, "color_lens_switch"

    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/vision/color/ColorLensFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/vision/color/ColorLensFragment;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/vision/color/ColorLensFragment;->updateSwitchBarToggleSwitch()V

    goto :goto_0

    :cond_0
    const-string p1, "color_lens_opacity"

    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/vision/color/ColorLensFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/vision/color/ColorLensFragment;

    sget-object p2, Lcom/samsung/android/settings/accessibility/vision/color/ColorLensFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    iget-object p2, p0, Lcom/samsung/android/settings/accessibility/vision/color/ColorLensFragment;->mSeekBarPref:Lcom/samsung/android/settings/accessibility/base/widget/A11ySeekBarPreference;

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x2

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 p1, 0x1

    invoke-virtual {p2, p0, p1}, Landroidx/preference/SeekBarPreference;->setValueInternal(IZ)V

    :cond_1
    :goto_0
    return-void
.end method
