.class public Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsPickerFragment;
.super Lcom/samsung/android/settings/accessibility/base/widget/PickerFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/base/widget/PickerFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final getLayoutId()I
    .locals 0

    const p0, 0x7f0d0453

    return p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final launchFragment$1(ILjava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "fromPicker"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance v1, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsPickerFragment;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    iget-object v2, v1, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iput-object p2, v2, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mDestinationName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsPickerFragment;->getMetricsCategory()I

    move-result p0

    iput p0, v2, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mSourceMetricsCategory:I

    const/high16 p0, 0x14000000

    invoke-virtual {v1, p0}, Lcom/android/settings/core/SubSettingLauncher;->addFlags(I)V

    const/4 p0, 0x0

    invoke-virtual {v1, p1, p0}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(ILjava/lang/String;)V

    iput-object v0, v2, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v1}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method

.method public final onAttach(Landroid/content/Context;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedFragment;->onAttach(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsPickerFragment;->mContext:Landroid/content/Context;

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/base/widget/PickerFragment;->mTestBtn:Landroid/widget/Button;

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsPickerFragment;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/samsung/android/settings/accessibility/SecAccessibilityUtils;->setButtonsColor(Landroid/content/Context;Landroid/widget/Button;)V

    return-void
.end method
