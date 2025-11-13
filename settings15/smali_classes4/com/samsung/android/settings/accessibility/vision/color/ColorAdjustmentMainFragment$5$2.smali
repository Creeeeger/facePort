.class public final Lcom/samsung/android/settings/accessibility/vision/color/ColorAdjustmentMainFragment$5$2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/settings/accessibility/vision/color/ColorAdjustmentMainFragment$5;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/accessibility/vision/color/ColorAdjustmentMainFragment$5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/vision/color/ColorAdjustmentMainFragment$5$2;->this$1:Lcom/samsung/android/settings/accessibility/vision/color/ColorAdjustmentMainFragment$5;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/vision/color/ColorAdjustmentMainFragment$5$2;->this$1:Lcom/samsung/android/settings/accessibility/vision/color/ColorAdjustmentMainFragment$5;

    iget-object p1, p1, Lcom/samsung/android/settings/accessibility/vision/color/ColorAdjustmentMainFragment$5;->this$0:Lcom/samsung/android/settings/accessibility/vision/color/ColorAdjustmentMainFragment;

    iget-object p1, p1, Lcom/samsung/android/settings/accessibility/vision/color/ColorAdjustmentMainFragment;->mPersonalizedPref:Lcom/samsung/android/settings/accessibility/vision/color/ColorAdjustmentResetRadioPreference;

    iget-object p2, p1, Lcom/samsung/android/settings/accessibility/vision/color/ColorAdjustmentResetRadioPreference;->mResetBtnClickListener:Landroid/view/View$OnClickListener;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    iput-object v0, p1, Lcom/samsung/android/settings/accessibility/vision/color/ColorAdjustmentResetRadioPreference;->mResetBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/vision/color/ColorAdjustmentMainFragment$5$2;->this$1:Lcom/samsung/android/settings/accessibility/vision/color/ColorAdjustmentMainFragment$5;

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/vision/color/ColorAdjustmentMainFragment$5;->this$0:Lcom/samsung/android/settings/accessibility/vision/color/ColorAdjustmentMainFragment;

    new-instance p1, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class p0, Lcom/samsung/android/settings/accessibility/vision/color/ColorAdjustmentTestFragment;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    iget-object p2, p1, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iput-object p0, p2, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mDestinationName:Ljava/lang/String;

    const p0, 0x7f141c1c

    invoke-virtual {p1, p0, v0}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(ILjava/lang/String;)V

    const/16 p0, 0xc08

    iput p0, p2, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mSourceMetricsCategory:I

    invoke-virtual {p1}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method
