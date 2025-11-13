.class public final synthetic Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchHoldDelayPickerFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchHoldDelayPickerFragment;

.field public final synthetic f$1:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchHoldDelayPickerFragment;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchHoldDelayPickerFragment$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchHoldDelayPickerFragment;

    iput-object p2, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchHoldDelayPickerFragment$$ExternalSyntheticLambda0;->f$1:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchHoldDelayPickerFragment$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchHoldDelayPickerFragment;

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchHoldDelayPickerFragment$$ExternalSyntheticLambda0;->f$1:Landroid/os/Bundle;

    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    iget-object p1, p1, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchHoldDelayPickerFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, p1}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class p1, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchHoldDelayExperienceFragment;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    iget-object v1, v0, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iput-object p1, v1, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mDestinationName:Ljava/lang/String;

    const/16 p1, 0x138d

    iput p1, v1, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mSourceMetricsCategory:I

    const/high16 p1, 0x14000000

    invoke-virtual {v0, p1}, Lcom/android/settings/core/SubSettingLauncher;->addFlags(I)V

    const/4 p1, 0x0

    const v2, 0x7f142f4e

    invoke-virtual {v0, v2, p1}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(ILjava/lang/String;)V

    iput-object p0, v1, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method
