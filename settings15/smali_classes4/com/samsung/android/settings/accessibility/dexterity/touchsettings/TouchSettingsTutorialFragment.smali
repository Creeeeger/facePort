.class public Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsTutorialFragment;
.super Lcom/android/settings/core/InstrumentedFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mContext:Landroid/content/Context;

.field public mHorizontalPadding:I

.field public mImageView:Landroid/widget/ImageView;

.field public mRootView:Landroid/view/View;

.field public mSetButton:Landroid/widget/Button;

.field public mTutorialDescription:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getSharedPreferenceKey()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final launchFragment$1(ILjava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsTutorialFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    iget-object v1, v0, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iput-object p2, v1, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mDestinationName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsTutorialFragment;->getMetricsCategory()I

    move-result p0

    iput p0, v1, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mSourceMetricsCategory:I

    const/high16 p0, 0x14000000

    invoke-virtual {v0, p0}, Lcom/android/settings/core/SubSettingLauncher;->addFlags(I)V

    const/4 p0, 0x0

    invoke-virtual {v0, p1, p0}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(ILjava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method

.method public final onAttach(Landroid/content/Context;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedFragment;->onAttach(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsTutorialFragment;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/settings/accessibility/SecAccessibilityUtils;->getAccessibilitySharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsTutorialFragment;->getSharedPreferenceKey()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    const p3, 0x7f0d0454

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsTutorialFragment;->mRootView:Landroid/view/View;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/Utils;->getListHorizontalPadding(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsTutorialFragment;->mHorizontalPadding:I

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsTutorialFragment;->mRootView:Landroid/view/View;

    const p2, 0x7f0a1096

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsTutorialFragment;->mTutorialDescription:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsTutorialFragment;->mRootView:Landroid/view/View;

    const p2, 0x7f0a0e15

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsTutorialFragment;->mSetButton:Landroid/widget/Button;

    iget-object p2, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsTutorialFragment;->mContext:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/samsung/android/settings/accessibility/SecAccessibilityUtils;->setButtonsColor(Landroid/content/Context;Landroid/widget/Button;)V

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsTutorialFragment;->mRootView:Landroid/view/View;

    const p2, 0x7f0a1097

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsTutorialFragment;->mImageView:Landroid/widget/ImageView;

    const/16 p2, 0xf

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->semSetRoundedCorners(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsTutorialFragment;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p3

    const v1, 0x7f0604f4

    invoke-virtual {p3, v1}, Landroid/content/Context;->getColor(I)I

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/widget/ImageView;->semSetRoundedCornerColor(II)V

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsTutorialFragment;->mRootView:Landroid/view/View;

    iget p2, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsTutorialFragment;->mHorizontalPadding:I

    invoke-virtual {p1, p2, v0, p2, v0}, Landroid/view/View;->setPadding(IIII)V

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsTutorialFragment;->mRootView:Landroid/view/View;

    return-object p0
.end method

.method public final setDescription(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsTutorialFragment;->mTutorialDescription:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsTutorialFragment;->mTutorialDescription:Landroid/widget/TextView;

    new-instance v0, Landroid/text/method/ScrollingMovementMethod;

    invoke-direct {v0}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsTutorialFragment;->mTutorialDescription:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setClickable(Z)V

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsTutorialFragment;->mTutorialDescription:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setLongClickable(Z)V

    return-void
.end method
