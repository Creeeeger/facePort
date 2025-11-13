.class public Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerDisclaimerFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mBundle:Landroid/os/Bundle;

.field public mLoggingEventValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerDisclaimerFragment;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final getMetricsCategory()I
    .locals 0

    const p0, 0xd358

    return p0
.end method

.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    check-cast p0, Lcom/android/settings/SettingsActivity;

    invoke-virtual {p0}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->hideAppBar()V

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const p3, 0x7f0d0563

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getIntent()Landroid/content/Intent;

    move-result-object p2

    const-string p3, "pp_security_delay_bundle"

    invoke-virtual {p2, p3}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerDisclaimerFragment;->mBundle:Landroid/os/Bundle;

    if-eqz p2, :cond_1

    const-string p3, "pp_package_name"

    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerDisclaimerFragment;->mBundle:Landroid/os/Bundle;

    const-string v0, "pp_security_delay_title_res"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p3

    if-ltz p3, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p3, p2}, Lcom/samsung/android/settings/theftprotection/TheftProtectionUtils;->getStringFromPackage(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const p3, 0x7f0a053a

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object p2, p0, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerDisclaimerFragment;->mBundle:Landroid/os/Bundle;

    const-string p3, "pp_caller_name"

    const-string v0, "0"

    invoke-virtual {p2, p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerDisclaimerFragment;->mLoggingEventValue:Ljava/lang/String;

    :cond_1
    const p2, 0x7f0a1032

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerTimeView;

    invoke-static {}, Lcom/samsung/android/settings/theftprotection/TheftProtectionUtils;->isSecurityDelayTest()V

    sget-wide v0, Lcom/samsung/android/settings/theftprotection/TheftProtectionConstants;->SECURITY_DELAY_DURATION_MILLIS:J

    invoke-virtual {p2, v0, v1}, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerTimeView;->setTimeTextView(J)V

    const p2, 0x7f0a1028

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/android/settings/Utils;->setMaxFontScale$1(Landroid/content/Context;Landroid/widget/TextView;)V

    const p0, 0x7f0a04d6

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-static {p0}, Lcom/samsung/android/settings/theftprotection/TheftProtectionUtils;->setLinkableText(Landroid/widget/TextView;)V

    return-object p1
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f0a028a

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    const p2, 0x7f141db9

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f07046e

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setMinWidth(I)V

    new-instance p2, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerDisclaimerFragment$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerDisclaimerFragment$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerDisclaimerFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
