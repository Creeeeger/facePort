.class public Lcom/android/settings/privatespace/PrivateProfileContextHelperActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mAddAccountToPrivateProfile:Landroidx/activity/result/ActivityResultRegistry$2;

.field public final mSetNewPrivateProfileLock:Landroidx/activity/result/ActivityResultRegistry$2;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>(I)V

    new-instance v1, Lcom/android/settings/privatespace/PrivateProfileContextHelperActivity$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings/privatespace/PrivateProfileContextHelperActivity$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/privatespace/PrivateProfileContextHelperActivity;I)V

    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>(I)V

    new-instance v1, Lcom/android/settings/privatespace/PrivateProfileContextHelperActivity$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/settings/privatespace/PrivateProfileContextHelperActivity$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/privatespace/PrivateProfileContextHelperActivity;I)V

    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    check-cast v0, Landroidx/activity/result/ActivityResultRegistry$2;

    iput-object v0, p0, Lcom/android/settings/privatespace/PrivateProfileContextHelperActivity;->mSetNewPrivateProfileLock:Landroidx/activity/result/ActivityResultRegistry$2;

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/os/Flags;->allowPrivateProfile()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Landroid/multiuser/Flags;->enablePrivateSpaceFeatures()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/SetupWizardUtils;->getTheme(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTheme(I)V

    invoke-static {p0}, Lcom/google/android/setupdesign/util/ThemeHelper;->trySetDynamicColor(Landroid/content/Context;)V

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    if-nez p1, :cond_4

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "action_type"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    const p1, 0x7f0d055b

    invoke-virtual {p0, p1}, Landroidx/activity/ComponentActivity;->setContentView(I)V

    sget-object p1, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lcom/android/settings/overlay/FeatureFactoryImpl;->privateSpaceLoginFeatureProvider$delegate:Lkotlin/Lazy;

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/privatespace/PrivateSpaceLoginFeatureProviderImpl;

    invoke-static {p0}, Lcom/android/settings/privatespace/PrivateSpaceMaintainer;->getInstance(Landroid/content/Context;)Lcom/android/settings/privatespace/PrivateSpaceMaintainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/privatespace/PrivateSpaceMaintainer;->getPrivateProfileHandle()Landroid/os/UserHandle;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0, v2}, Landroid/app/Activity;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_1
    const-string p1, "PrivateSpaceHelperAct"

    const-string v0, "Private profile user handle is null"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "No feature factory configured"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    new-instance p1, Landroid/content/Intent;

    const-string v1, "android.app.action.SET_NEW_PASSWORD"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.app.extra.PASSWORD_COMPLEXITY"

    const/high16 v2, 0x10000

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "for_fingerprint_only"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "choose_lock_setup_screen_title"

    const v1, 0x7f141d65

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "choose_lock_setup_screen_description"

    const v1, 0x7f141d64

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/settings/privatespace/PrivateProfileContextHelperActivity;->mSetNewPrivateProfileLock:Landroidx/activity/result/ActivityResultRegistry$2;

    invoke-virtual {p0, p1}, Landroidx/activity/result/ActivityResultRegistry$2;->launch(Ljava/lang/Object;)V

    :cond_4
    :goto_0
    return-void
.end method
