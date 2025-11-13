.class public final Lcom/samsung/android/settings/accessibility/vision/HighLightButtonFragment$1;
.super Landroid/database/ContentObserver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/accessibility/vision/HighLightButtonFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/accessibility/vision/HighLightButtonFragment;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/vision/HighLightButtonFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/vision/HighLightButtonFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/vision/HighLightButtonFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/vision/HighLightButtonFragment;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo p2, "show_button_background"

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    move v0, p2

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/vision/HighLightButtonFragment;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    iget-object p1, p1, Landroidx/appcompat/widget/SeslSwitchBar;->mSwitch:Landroidx/appcompat/widget/SeslToggleSwitch;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    if-eq p1, v0, :cond_1

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/vision/HighLightButtonFragment;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setCheckedInternal(Z)V

    :cond_1
    return-void
.end method
