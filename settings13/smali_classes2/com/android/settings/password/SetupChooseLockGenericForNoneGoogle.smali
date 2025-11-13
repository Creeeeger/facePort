.class public Lcom/android/settings/password/SetupChooseLockGenericForNoneGoogle;
.super Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;
.source "SetupChooseLockGenericForNoneGoogle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/password/SetupChooseLockGenericForNoneGoogle$SetupChooseLockGenericForNoneGoogleFragment;
    }
.end annotation


# direct methods
.method public static synthetic $r8$lambda$ENncSBog8SSJEpmGg-PObSMY9ok(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/android/settings/password/SetupChooseLockGenericForNoneGoogle;->lambda$onCreate$0(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;-><init>()V

    return-void
.end method

.method private static synthetic lambda$onCreate$0(Landroid/view/View;)V
    .locals 0

    .line 90
    sget-object p0, Lcom/android/settings/password/SetupChooseLockGenericForNoneGoogle$SetupChooseLockGenericForNoneGoogleFragment;->mSetupChooseLockGenericForNoneGoogleFragment:Lcom/android/settings/password/SetupChooseLockGenericForNoneGoogle$SetupChooseLockGenericForNoneGoogleFragment;

    invoke-static {p0}, Lcom/android/settings/password/SetupChooseLockGenericForNoneGoogle$SetupChooseLockGenericForNoneGoogleFragment;->-$$Nest$msetLockDoLater(Lcom/android/settings/password/SetupChooseLockGenericForNoneGoogle$SetupChooseLockGenericForNoneGoogleFragment;)V

    return-void
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 2

    .line 67
    new-instance v0, Landroid/content/Intent;

    invoke-super {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const-string p0, "firstRun"

    const/4 v1, 0x1

    .line 68
    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p0, "fromSetupWizard"

    .line 69
    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 75
    invoke-super {p0, p1}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 76
    invoke-static {p0}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isLockSettingsBlockonDexMode(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 77
    sget p1, Lcom/android/settings/R$string;->lock_screen_disable_samsung_dex:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    const/4 p1, 0x1

    .line 78
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 79
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 82
    :cond_0
    sget p1, Lcom/android/settings/R$layout;->sec_protect_your_phone_setupwizard:I

    invoke-virtual {p0, p1}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->setContentView(I)V

    .line 83
    sget p1, Lcom/android/settings/R$string;->sec_setup_lock_screen_title_text:I

    invoke-virtual {p0, p1}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->setHeaderTitle(I)V

    .line 84
    sget p1, Lcom/android/settings/R$drawable;->ic_lock:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->setHeaderIcon(Landroid/graphics/drawable/Drawable;)V

    .line 85
    sget p1, Lcom/android/settings/R$string;->sec_setup_lock_screen_sub_text:I

    invoke-virtual {p0, p1}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->setDescriptionText(I)V

    .line 87
    sget-boolean p1, Lcom/samsung/android/settings/Rune;->LOCKSCREEN_SECURITY_HIDE_SKIP_SUW_BUTTON:Z

    if-nez p1, :cond_1

    .line 88
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->setPrimaryActionButtonEnabled(Ljava/lang/Boolean;)V

    .line 89
    sget p1, Lcom/android/settings/R$string;->unlock_set_do_later_title:I

    new-instance v0, Lcom/android/settings/password/SetupChooseLockGenericForNoneGoogle$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/settings/password/SetupChooseLockGenericForNoneGoogle$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->setPrimaryActionButton(ILandroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method
