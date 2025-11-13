.class public Lcom/android/systemui/tuner/TunerActivity;
.super Landroid/app/Activity;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;
.implements Landroidx/preference/PreferenceFragment$OnPreferenceStartScreenCallback;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mDemoModeController:Lcom/android/systemui/demomode/DemoModeController;

.field public final mGlobalSettings:Lcom/android/systemui/util/settings/GlobalSettings;

.field public final mTunerService:Lcom/android/systemui/tuner/TunerService;


# direct methods
.method public constructor <init>(Lcom/android/systemui/demomode/DemoModeController;Lcom/android/systemui/tuner/TunerService;Lcom/android/systemui/util/settings/GlobalSettings;)V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/tuner/TunerActivity;->mDemoModeController:Lcom/android/systemui/demomode/DemoModeController;

    iput-object p2, p0, Lcom/android/systemui/tuner/TunerActivity;->mTunerService:Lcom/android/systemui/tuner/TunerService;

    iput-object p3, p0, Lcom/android/systemui/tuner/TunerActivity;->mGlobalSettings:Lcom/android/systemui/util/settings/GlobalSettings;

    return-void
.end method


# virtual methods
.method public final onBackPressed()V
    .locals 1

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStackImmediate()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    :cond_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f14055d

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTheme(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "com.android.settings.action.DEMO_MODE"

    if-eqz p1, :cond_0

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    if-eqz p1, :cond_1

    const-string p1, "Demo mode"

    goto :goto_1

    :cond_1
    const-string p1, "SystemUI tuner"

    :goto_1
    const-string v3, " isn\'t supported on this device"

    invoke-virtual {p1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, -0x80000000

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0, v1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    const p1, 0x7f0d0534

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    const p1, 0x7f0a0066

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Toolbar;

    if-eqz p1, :cond_2

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setActionBar(Landroid/widget/Toolbar;)V

    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    const-string/jumbo v0, "tuner"

    invoke-virtual {p1, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object p1

    if-nez p1, :cond_4

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    new-instance p1, Lcom/android/systemui/tuner/DemoModeFragment;

    iget-object v1, p0, Lcom/android/systemui/tuner/TunerActivity;->mDemoModeController:Lcom/android/systemui/demomode/DemoModeController;

    iget-object v2, p0, Lcom/android/systemui/tuner/TunerActivity;->mGlobalSettings:Lcom/android/systemui/util/settings/GlobalSettings;

    invoke-direct {p1, v1, v2}, Lcom/android/systemui/tuner/DemoModeFragment;-><init>(Lcom/android/systemui/demomode/DemoModeController;Lcom/android/systemui/util/settings/GlobalSettings;)V

    goto :goto_2

    :cond_3
    new-instance p1, Lcom/android/systemui/tuner/TunerFragment;

    iget-object v1, p0, Lcom/android/systemui/tuner/TunerActivity;->mTunerService:Lcom/android/systemui/tuner/TunerService;

    invoke-direct {p1, v1}, Lcom/android/systemui/tuner/TunerFragment;-><init>(Lcom/android/systemui/tuner/TunerService;)V

    :goto_2
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p0

    const v1, 0x7f0a02d6

    invoke-virtual {p0, v1, p1, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/FragmentTransaction;->commit()I

    :cond_4
    return-void
.end method

.method public final onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    new-instance p0, Lcom/android/systemui/tuner/TunerActivity$$ExternalSyntheticLambda0;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/tuner/TunerActivity$$ExternalSyntheticLambda0;-><init>(I)V

    const-class v0, Lcom/android/systemui/fragments/FragmentService;

    invoke-static {v0, p0}, Lcom/android/systemui/Dependency;->destroy(Ljava/lang/Class;Ljava/util/function/Consumer;)V

    new-instance p0, Lcom/android/systemui/tuner/TunerActivity$$ExternalSyntheticLambda0;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/tuner/TunerActivity$$ExternalSyntheticLambda0;-><init>(I)V

    const-class v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-static {v0, p0}, Lcom/android/systemui/Dependency;->destroy(Ljava/lang/Class;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/tuner/TunerActivity;->onBackPressed()V

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method
