.class public Lcom/android/settings/sim/smartForwarding/MDNHandlerFragment;
.super Landroidx/fragment/app/Fragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settingslib/core/instrumentation/Instrumentable;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x623

    return p0
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f170260

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f142ca3

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    const p2, 0x7f0a0bc3

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    new-instance p3, Lcom/android/settings/sim/smartForwarding/MDNHandlerFragment$$ExternalSyntheticLambda0;

    const/4 v0, 0x0

    invoke-direct {p3, p0, v0}, Lcom/android/settings/sim/smartForwarding/MDNHandlerFragment$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/sim/smartForwarding/MDNHandlerFragment;I)V

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0a02cb

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    new-instance p3, Lcom/android/settings/sim/smartForwarding/MDNHandlerFragment$$ExternalSyntheticLambda0;

    const/4 v0, 0x1

    invoke-direct {p3, p0, v0}, Lcom/android/settings/sim/smartForwarding/MDNHandlerFragment$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/sim/smartForwarding/MDNHandlerFragment;I)V

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public final switchToMainFragment(Z)V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/fragment/app/BackStackRecord;

    invoke-direct {v0, p0}, Landroidx/fragment/app/BackStackRecord;-><init>(Landroidx/fragment/app/FragmentManager;)V

    new-instance p0, Lcom/android/settings/sim/smartForwarding/SmartForwardingFragment;

    invoke-direct {p0}, Landroidx/preference/PreferenceFragmentCompat;-><init>()V

    iput-boolean p1, p0, Lcom/android/settings/sim/smartForwarding/SmartForwardingFragment;->turnOffSwitch:Z

    const/4 p1, 0x0

    const v1, 0x7f0a041c

    invoke-virtual {v0, v1, p0, p1}, Landroidx/fragment/app/BackStackRecord;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Landroidx/fragment/app/BackStackRecord;->commitInternal(Z)I

    return-void
.end method
