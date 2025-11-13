.class public Lcom/android/settings/privatespace/PrivateSpaceCreationFragment;
.super Lcom/android/settings/core/InstrumentedFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final sHandler:Landroid/os/Handler;


# instance fields
.field public final mAccountLoginRunnable:Lcom/android/settings/privatespace/PrivateSpaceCreationFragment$$ExternalSyntheticLambda0;

.field public final mProfileAccessReceiver:Lcom/android/settings/privatespace/PrivateSpaceCreationFragment$1;

.field public final mRunnable:Lcom/android/settings/privatespace/PrivateSpaceCreationFragment$$ExternalSyntheticLambda0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/settings/privatespace/PrivateSpaceCreationFragment;->sHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedFragment;-><init>()V

    new-instance v0, Lcom/android/settings/privatespace/PrivateSpaceCreationFragment$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/privatespace/PrivateSpaceCreationFragment$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/privatespace/PrivateSpaceCreationFragment;I)V

    iput-object v0, p0, Lcom/android/settings/privatespace/PrivateSpaceCreationFragment;->mRunnable:Lcom/android/settings/privatespace/PrivateSpaceCreationFragment$$ExternalSyntheticLambda0;

    new-instance v0, Lcom/android/settings/privatespace/PrivateSpaceCreationFragment$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/privatespace/PrivateSpaceCreationFragment$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/privatespace/PrivateSpaceCreationFragment;I)V

    iput-object v0, p0, Lcom/android/settings/privatespace/PrivateSpaceCreationFragment;->mAccountLoginRunnable:Lcom/android/settings/privatespace/PrivateSpaceCreationFragment$$ExternalSyntheticLambda0;

    new-instance v0, Lcom/android/settings/privatespace/PrivateSpaceCreationFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/privatespace/PrivateSpaceCreationFragment$1;-><init>(Lcom/android/settings/privatespace/PrivateSpaceCreationFragment;)V

    iput-object v0, p0, Lcom/android/settings/privatespace/PrivateSpaceCreationFragment;->mProfileAccessReceiver:Lcom/android/settings/privatespace/PrivateSpaceCreationFragment$1;

    return-void
.end method


# virtual methods
.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x80b

    return p0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/os/Flags;->allowPrivateProfile()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/multiuser/Flags;->enablePrivateSpaceFeatures()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->onCreate(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d0556

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/setupdesign/GlifLayout;

    new-instance p2, Lcom/android/settings/privatespace/PrivateSpaceCreationFragment$2;

    const/4 p3, 0x1

    invoke-direct {p2, p3}, Landroidx/activity/OnBackPressedCallback;-><init>(Z)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object p3

    invoke-virtual {p3, p0, p2}, Landroidx/activity/OnBackPressedDispatcher;->addCallback(Landroidx/lifecycle/LifecycleOwner;Landroidx/activity/OnBackPressedCallback;)V

    return-object p1
.end method

.method public final onDestroy()V
    .locals 2

    sget-object v0, Lcom/android/settings/privatespace/PrivateSpaceCreationFragment;->sHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/privatespace/PrivateSpaceCreationFragment;->mRunnable:Lcom/android/settings/privatespace/PrivateSpaceCreationFragment$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->onDestroy()V

    return-void
.end method

.method public final onResume()V
    .locals 3

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedFragment;->onResume()V

    sget-object v0, Lcom/android/settings/privatespace/PrivateSpaceCreationFragment;->sHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/privatespace/PrivateSpaceCreationFragment;->mRunnable:Lcom/android/settings/privatespace/PrivateSpaceCreationFragment$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/android/settings/privatespace/PrivateSpaceCreationFragment;->mRunnable:Lcom/android/settings/privatespace/PrivateSpaceCreationFragment$$ExternalSyntheticLambda0;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
