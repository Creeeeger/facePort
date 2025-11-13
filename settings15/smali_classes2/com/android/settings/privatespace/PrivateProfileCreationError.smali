.class public Lcom/android/settings/privatespace/PrivateProfileCreationError;
.super Lcom/android/settings/core/InstrumentedFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x80c

    return p0
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    const p3, 0x7f0d055d

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/setupdesign/GlifLayout;

    const-class p2, Lcom/google/android/setupcompat/template/FooterBarMixin;

    invoke-virtual {p1, p2}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object p2

    check-cast p2, Lcom/google/android/setupcompat/template/FooterBarMixin;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p3

    const v1, 0x7f141d7f

    invoke-virtual {p3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    new-instance v1, Lcom/android/settings/privatespace/PrivateProfileCreationError$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings/privatespace/PrivateProfileCreationError$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/privatespace/PrivateProfileCreationError;I)V

    new-instance v2, Lcom/google/android/setupcompat/template/FooterButton;

    const/4 v3, 0x5

    const v4, 0x7f15045d

    invoke-direct {v2, p3, v1, v3, v4}, Lcom/google/android/setupcompat/template/FooterButton;-><init>(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;II)V

    invoke-virtual {p2, v2}, Lcom/google/android/setupcompat/template/FooterBarMixin;->setPrimaryButton(Lcom/google/android/setupcompat/template/FooterButton;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p3

    const v1, 0x7f141d34

    invoke-virtual {p3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    new-instance v1, Lcom/android/settings/privatespace/PrivateProfileCreationError$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/settings/privatespace/PrivateProfileCreationError$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/privatespace/PrivateProfileCreationError;I)V

    new-instance v2, Lcom/google/android/setupcompat/template/FooterButton;

    const/4 v3, 0x2

    const v4, 0x7f15045e

    invoke-direct {v2, p3, v1, v3, v4}, Lcom/google/android/setupcompat/template/FooterButton;-><init>(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;II)V

    invoke-virtual {p2, v2, v0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->setSecondaryButton(Lcom/google/android/setupcompat/template/FooterButton;Z)V

    new-instance p2, Lcom/android/settings/privatespace/PrivateProfileCreationError$1;

    const/4 p3, 0x1

    invoke-direct {p2, p3}, Landroidx/activity/OnBackPressedCallback;-><init>(Z)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object p3

    invoke-virtual {p3, p0, p2}, Landroidx/activity/OnBackPressedDispatcher;->addCallback(Landroidx/lifecycle/LifecycleOwner;Landroidx/activity/OnBackPressedCallback;)V

    return-object p1
.end method
