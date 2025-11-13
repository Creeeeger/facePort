.class public Lcom/android/settings/localepicker/NotificationActionActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mStartForResult:Landroidx/activity/result/ActivityResultRegistry$2;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>(I)V

    new-instance v1, Lcom/android/settings/localepicker/NotificationActionActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    check-cast v0, Landroidx/activity/result/ActivityResultRegistry$2;

    iput-object v0, p0, Lcom/android/settings/localepicker/NotificationActionActivity;->mStartForResult:Landroidx/activity/result/ActivityResultRegistry$2;

    return-void
.end method


# virtual methods
.method public getLauncher()Landroidx/activity/result/ActivityResultLauncher;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/activity/result/ActivityResultLauncher;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/settings/localepicker/NotificationActionActivity;->mStartForResult:Landroidx/activity/result/ActivityResultRegistry$2;

    return-object p0
.end method

.method public getNotificationController(Landroid/content/Context;)Lcom/android/settings/localepicker/NotificationController;
    .locals 0

    invoke-static {p1}, Lcom/android/settings/localepicker/NotificationController;->getInstance(Landroid/content/Context;)Lcom/android/settings/localepicker/NotificationController;

    move-result-object p0

    return-object p0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "notification_id"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "app_locale"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p0}, Lcom/android/settings/localepicker/NotificationActionActivity;->getNotificationController(Landroid/content/Context;)Lcom/android/settings/localepicker/NotificationController;

    move-result-object v3

    iget-object v3, v3, Lcom/android/settings/localepicker/NotificationController;->mDataManager:Lcom/android/settings/localepicker/LocaleNotificationDataManager;

    invoke-virtual {v3, p1}, Lcom/android/settings/localepicker/LocaleNotificationDataManager;->getNotificationInfo(Ljava/lang/String;)Lcom/android/settings/localepicker/NotificationInfo;

    move-result-object v3

    if-eqz v3, :cond_1

    iget v1, v3, Lcom/android/settings/localepicker/NotificationInfo;->mNotificationId:I

    :cond_1
    if-ne v1, v0, :cond_3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.LOCALE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "system_locale_dialog_type"

    const-string v3, "locale_suggestion"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x24000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/localepicker/NotificationActionActivity;->getLauncher()Landroidx/activity/result/ActivityResultLauncher;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    sget-object p1, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/android/settings/overlay/FeatureFactoryImpl;->getMetricsFeatureProvider()Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Landroid/util/Pair;

    const/16 v1, 0x768

    invoke-virtual {p1, p0, v1, v0}, Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "No feature factory configured"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    return-void

    :cond_4
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
