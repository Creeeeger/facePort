.class public final Lcom/android/settings/accessibility/DaltonizerSaturationSeekbarPreferenceController$1;
.super Landroid/database/ContentObserver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/android/settings/accessibility/DaltonizerSaturationSeekbarPreferenceController;


# direct methods
.method public constructor <init>(Lcom/android/settings/accessibility/DaltonizerSaturationSeekbarPreferenceController;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/accessibility/DaltonizerSaturationSeekbarPreferenceController$1;->this$0:Lcom/android/settings/accessibility/DaltonizerSaturationSeekbarPreferenceController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 0

    const-string p1, "accessibility_display_daltonizer_saturation_level"

    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/settings/accessibility/DaltonizerSaturationSeekbarPreferenceController$1;->this$0:Lcom/android/settings/accessibility/DaltonizerSaturationSeekbarPreferenceController;

    invoke-static {p0}, Lcom/android/settings/accessibility/DaltonizerSaturationSeekbarPreferenceController;->-$$Nest$mupdateSeekBar(Lcom/android/settings/accessibility/DaltonizerSaturationSeekbarPreferenceController;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/settings/accessibility/DaltonizerSaturationSeekbarPreferenceController$1;->this$0:Lcom/android/settings/accessibility/DaltonizerSaturationSeekbarPreferenceController;

    iget-object p1, p0, Lcom/android/settings/accessibility/DaltonizerSaturationSeekbarPreferenceController;->preference:Lcom/samsung/android/settings/accessibility/base/widget/A11ySeekBarPreference;

    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/DaltonizerSaturationSeekbarPreferenceController;->updateState(Landroidx/preference/Preference;)V

    :goto_0
    return-void
.end method
