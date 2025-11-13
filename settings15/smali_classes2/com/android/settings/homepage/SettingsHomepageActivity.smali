.class public Lcom/android/settings/homepage/SettingsHomepageActivity;
.super Lcom/samsung/android/settings/core/SecSettingsBaseActivity;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/core/CategoryMixin$CategoryHandler;


# static fields
.field static final EXTRA_INITIAL_REFERRER:Ljava/lang/String; = "initial_referrer"


# instance fields
.field public mCallback:Lcom/android/settings/homepage/SettingsHomepageActivity$SplitInfoCallback;

.field public mCategoryMixin:Lcom/android/settings/core/CategoryMixin;

.field public mIsRegularLayout:Z

.field public mMainFragment:Lcom/android/settings/homepage/TopLevelSettings;

.field public mSplitControllerAdapter:Landroidx/window/java/embedding/SplitControllerCallbackAdapter;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mIsRegularLayout:Z

    return-void
.end method


# virtual methods
.method public final getCategoryMixin()Lcom/android/settings/core/CategoryMixin;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mCategoryMixin:Lcom/android/settings/core/CategoryMixin;

    return-object p0
.end method

.method public final getContentViewResId()I
    .locals 0

    const p0, 0x7f0d09a2

    return p0
.end method

.method public getCurrentReferrer()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.REFERRER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    const-string v1, "android.intent.extra.REFERRER_NAME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getReferrer()Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getInitialReferrer()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/homepage/SettingsHomepageActivity;->getCurrentReferrer()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    const-string v1, "initial_referrer"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method public initSplitPairRules()V
    .locals 1

    new-instance v0, Lcom/android/settings/activityembedding/ActivityEmbeddingRulesController;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/settings/activityembedding/ActivityEmbeddingRulesController;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/android/settings/activityembedding/ActivityEmbeddingRulesController;->initRules()V

    return-void
.end method

.method public isCallingAppPermitted(Ljava/lang/String;I)Z
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0, p2}, Landroid/app/Activity;->checkPermission(Ljava/lang/String;II)I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final launchDeepLinkIntentToRight()V
    .locals 15

    instance-of v0, p0, Lcom/android/settings/homepage/DeepLinkHomepageActivity;

    const-string v1, "SettingsHomepageActivity"

    if-nez v0, :cond_0

    instance-of v0, p0, Lcom/android/settings/homepage/DeepLinkHomepageActivityInternal;

    if-nez v0, :cond_0

    const-string v0, "Not a deep link component"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    invoke-static {p0}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->isUserSetupComplete(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Cancel deep link before SUW completed"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "android.provider.extra.SETTINGS_EMBEDDED_DEEP_LINK_INTENT_URI"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v0, "No EXTRA_SETTINGS_EMBEDDED_DEEP_LINK_INTENT_URI to deep link"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_2
    const/4 v3, 0x1

    :try_start_0
    invoke-static {v2, v3}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_3

    const-string v4, "settings_large_screen_deep_link_intent_data"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v4

    if-nez v4, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "No valid target for the deep link intent: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_3
    :try_start_1
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/4 v12, 0x0

    invoke-virtual {v5, v4, v12}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v5
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    const-string v6, "user_handle"

    const-class v7, Landroid/os/UserHandle;

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    move-object v13, v6

    check-cast v13, Landroid/os/UserHandle;

    invoke-virtual {p0}, Lcom/android/settings/homepage/SettingsHomepageActivity;->getInitialReferrer()Ljava/lang/String;

    move-result-object v6

    const-wide/16 v7, 0x0

    const/4 v14, -0x1

    if-eqz v6, :cond_5

    :try_start_2
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-static {v7, v8}, Landroid/content/pm/PackageManager$ApplicationInfoFlags;->of(J)Landroid/content/pm/PackageManager$ApplicationInfoFlags;

    move-result-object v10

    if-eqz v13, :cond_4

    invoke-virtual {v13}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v11

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Landroid/app/Activity;->getUserId()I

    move-result v11

    :goto_0
    invoke-virtual {v9, v6, v10, v11}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;Landroid/content/pm/PackageManager$ApplicationInfoFlags;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Not able to get callerUid: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_5
    move v9, v14

    :goto_2
    iget-object v10, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v6, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    goto :goto_3

    :cond_6
    :try_start_3
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-static {v7, v8}, Landroid/content/pm/PackageManager$ApplicationInfoFlags;->of(J)Landroid/content/pm/PackageManager$ApplicationInfoFlags;

    move-result-object v7

    invoke-virtual {v6, v10, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$ApplicationInfoFlags;)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    invoke-static {v9, v6}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v6

    if-eqz v6, :cond_7

    goto :goto_3

    :cond_7
    invoke-static {v9}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v6

    if-eqz v6, :cond_a

    const/16 v7, 0x3e8

    if-ne v6, v7, :cond_8

    goto :goto_3

    :catch_1
    move-exception v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Not able to get targetUid: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    iget-boolean v6, v5, Landroid/content/pm/ActivityInfo;->exported:Z

    if-nez v6, :cond_9

    const-string v0, "Target Activity is not exported"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_9
    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    invoke-virtual {p0, v5, v9}, Lcom/android/settings/homepage/SettingsHomepageActivity;->isCallingAppPermitted(Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_a

    const-string v0, "Calling app must have the permission of deep link Activity"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_a
    :goto_3
    invoke-virtual {v2}, Landroid/content/Intent;->getFlags()I

    move-result v5

    and-int/lit8 v5, v5, 0x3

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    if-eqz v6, :cond_b

    if-eqz v5, :cond_b

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {p0, v6, v14, v9, v5}, Landroid/app/Activity;->checkUriPermission(Landroid/net/Uri;III)I

    move-result v5

    if-ne v5, v14, :cond_b

    const-string v0, "Calling app must have the permission to access Uri and grant permission"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_b
    invoke-virtual {v2, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10080000

    invoke-virtual {v2, v1}, Landroid/content/Intent;->removeFlags(I)V

    const/high16 v1, 0x2000000

    invoke-virtual {v2, v1}, Landroid/content/Intent;->removeFlags(I)V

    invoke-virtual {v2, v0}, Landroid/content/Intent;->replaceExtras(Landroid/content/Intent;)Landroid/content/Intent;

    const-string v1, "is_from_settings_homepage"

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "is_from_slice"

    invoke-virtual {v2, v1, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    new-instance v6, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v6, v1, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    sget-object v1, Landroidx/window/embedding/SplitRule$FinishBehavior;->ALWAYS:Landroidx/window/embedding/SplitRule$FinishBehavior;

    const/4 v11, 0x1

    move-object v5, p0

    move-object v7, v4

    move-object v9, v1

    move-object v10, v1

    invoke-static/range {v5 .. v11}, Lcom/android/settings/activityembedding/ActivityEmbeddingRulesController;->registerTwoPanePairRule(Landroid/content/Context;Landroid/content/ComponentName;Landroid/content/ComponentName;Ljava/lang/String;Landroidx/window/embedding/SplitRule$FinishBehavior;Landroidx/window/embedding/SplitRule$FinishBehavior;Z)V

    new-instance v6, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v5, Lcom/android/settings/Settings;

    invoke-direct {v6, v3, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    move-object v5, p0

    invoke-static/range {v5 .. v11}, Lcom/android/settings/activityembedding/ActivityEmbeddingRulesController;->registerTwoPanePairRule(Landroid/content/Context;Landroid/content/ComponentName;Landroid/content/ComponentName;Ljava/lang/String;Landroidx/window/embedding/SplitRule$FinishBehavior;Landroidx/window/embedding/SplitRule$FinishBehavior;Z)V

    invoke-static {p0, v0}, Lcom/android/settings/Utils;->isLaunchModeSingleInstance(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_4

    :cond_c
    const v14, 0xffff

    :goto_4
    invoke-static {p0, v12, v12}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->setDisableSplashScreen()V

    if-eqz v13, :cond_d

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v2, v14, v0, v13}, Landroid/app/Activity;->startActivityForResultAsUser(Landroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)V

    goto :goto_5

    :cond_d
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v2, v14, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    :goto_5
    return-void

    :catch_2
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to get target ActivityInfo: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :catch_3
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to parse deep link intent: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const-string v0, "Request Code : "

    const-string v1, "  , Result Code : "

    const-string v2, " , Intent : "

    invoke-static {v0, v1, p1, p2, v2}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicyKt$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "SettingsHomepageActivity"

    invoke-static {p3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean p2, p0, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->mIsEmbeddingActivityEnabled:Z

    if-eqz p2, :cond_3

    const/high16 p2, 0x10000

    if-ne p1, p2, :cond_3

    instance-of p1, p0, Lcom/android/settings/homepage/DeepLinkHomepageActivity;

    if-nez p1, :cond_0

    instance-of p1, p0, Lcom/android/settings/homepage/DeepLinkHomepageActivityInternal;

    if-nez p1, :cond_0

    const-string p0, "Not a deep link component."

    invoke-static {p3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p0, "Finishing this activity."

    invoke-static {p3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    const/4 p1, 0x1

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p2

    invoke-virtual {p0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {p2, v0}, Landroid/app/IActivityManager;->isTopOfTask(Landroid/os/IBinder;)Z

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    move p2, p1

    :goto_0
    if-nez p2, :cond_2

    const-string p0, "Not a top."

    invoke-static {p3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    new-instance p3, Landroid/content/ComponentName;

    const-class v0, Lcom/android/settings/Settings$ConnectionsSettingsActivity;

    invoke-direct {p3, p0, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p2, p3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "need_search_icon_in_action_bar"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, ":settings:show_fragment_args"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const-string v0, ":settings:is_second_layer_page"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v0, 0x0

    invoke-static {p0, p3, v0, p1, p1}, Lcom/android/settings/activityembedding/ActivityEmbeddingRulesController;->registerTwoPanePairRuleForSettingsHome(Landroid/content/Context;Landroid/content/ComponentName;Ljava/lang/String;ZZ)V

    const p1, 0xffff

    invoke-static {p0, p2, p1, v0}, Lcom/samsung/android/settings/homepage/HomepageUtils;->startActivity(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/UserHandle;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/android/settings/homepage/SettingsHomepageActivity;->updateSplitLayout()V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 11

    invoke-static {p0}, Lcom/samsung/android/settings/Rune;->isSupportGoodSettingsV2(Landroid/content/Context;)Z

    move-result v0

    const/high16 v1, 0x4000000

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v3, "is_from_good_settings_homepage"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lcom/android/settings/homepage/DeepLinkHomepageActivity;

    if-nez v0, :cond_1

    instance-of v0, p0, Lcom/android/settings/homepage/DeepLinkHomepageActivityInternal;

    if-nez v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.samsung.android.app.galaxyregistry.HOMEPAGE"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    :goto_0
    const-string v0, "SettingsHomepageActivity#onCreate"

    invoke-static {v0}, Lcom/samsung/android/settings/Trace;->beginSection(Ljava/lang/String;)V

    const-string v0, "VerificationLog"

    const-string v3, "OnCreate"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    new-instance v3, Lcom/android/settingslib/core/lifecycle/HideNonSystemOverlayMixin;

    invoke-direct {v3, p0}, Lcom/android/settingslib/core/lifecycle/HideNonSystemOverlayMixin;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v3}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    new-instance v0, Lcom/android/settings/core/CategoryMixin;

    invoke-direct {v0, p0}, Lcom/android/settings/core/CategoryMixin;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mCategoryMixin:Lcom/android/settings/core/CategoryMixin;

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mCategoryMixin:Lcom/android/settings/core/CategoryMixin;

    invoke-virtual {v0, v3}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    iget-object v0, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mCategoryMixin:Lcom/android/settings/core/CategoryMixin;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/settings/core/CategoryMixin$SecCategoriesUpdateTask;

    invoke-direct {v3, v0}, Lcom/android/settings/core/CategoryMixin$SecCategoriesUpdateTask;-><init>(Lcom/android/settings/core/CategoryMixin;)V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    new-instance v3, Lcom/samsung/android/settings/homepage/TopLevelLayoutFactory;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, v3}, Landroid/view/LayoutInflater;->setFactory2(Landroid/view/LayoutInflater$Factory2;)V

    invoke-super {p0, p1}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "device_provisioned"

    invoke-static {p1, v0, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const-string v0, "SettingsHomepageActivity"

    if-nez p1, :cond_2

    const-string p1, "Device is not provisioned, exiting Settings"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->isTaskRoot()Z

    move-result p1

    iget-boolean v3, p0, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->mIsEmbeddingActivityEnabled:Z

    const/high16 v4, 0x10000000

    const-string v5, "android.settings.SETTINGS_EMBED_DEEP_LINK_ACTIVITY"

    const-string v6, "initial_referrer"

    const-string v7, "user_handle"

    if-eqz v3, :cond_8

    const-class v3, Landroid/os/UserManager;

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    invoke-virtual {p0}, Landroid/app/Activity;->getUserId()I

    move-result v8

    invoke-virtual {v3, v8}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v8

    const-string v9, "userInfo"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v9

    if-nez v9, :cond_3

    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->isPrivateProfile()Z

    move-result v9

    if-eqz v9, :cond_4

    :cond_3
    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->isSecureFolder()Z

    move-result v9

    if-eqz v9, :cond_5

    :cond_4
    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->isCloneProfile()Z

    move-result v9

    if-eqz v9, :cond_8

    :cond_5
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const/high16 v1, 0x2000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/homepage/SettingsHomepageActivity;->getCurrentReferrer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    instance-of v1, p0, Lcom/android/settings/homepage/DeepLinkHomepageActivity;

    if-eqz v1, :cond_6

    const-class v1, Lcom/android/settings/homepage/DeepLinkHomepageActivityInternal;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :goto_1
    if-nez p1, :cond_7

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_2

    :cond_7
    invoke-virtual {v0, v4}, Landroid/content/Intent;->removeFlags(I)V

    :goto_2
    iget p1, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_8
    const/4 v3, 0x1

    if-nez p1, :cond_b

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result p1

    and-int/2addr p1, v4

    if-eqz p1, :cond_a

    const-class p1, Landroid/app/ActivityManager;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    invoke-virtual {p1, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    const-class v1, Lcom/android/settings/SubSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_9

    const-string p1, "SettingsHomepageActivity should be placed root in task, restarting"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const v0, 0x2008000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/Activity;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p1, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/settings/homepage/SettingsHomepageActivity;->getCurrentReferrer()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_9
    const-string p1, "Activity has been started, finishing"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_a
    const-string p1, "Homepage should be started with FLAG_ACTIVITY_NEW_TASK, restarting"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const/high16 v0, 0x12000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/Activity;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p1, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/settings/homepage/SettingsHomepageActivity;->getCurrentReferrer()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :goto_3
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_b
    invoke-virtual {p0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x30

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "android.provider.extra.SETTINGS_EMBEDDED_DEEP_LINK_HIGHLIGHT_MENU_KEY"

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_c

    goto :goto_4

    :cond_c
    const-string p1, "top_level_connections"

    :goto_4
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    move-result-object v4

    invoke-static {v4, v4}, Lcom/android/settings/biometrics/BiometricsEnrollEnrolling$$ExternalSyntheticOutline0;->m(Landroidx/fragment/app/FragmentManagerImpl;Landroidx/fragment/app/FragmentManagerImpl;)Landroidx/fragment/app/BackStackRecord;

    move-result-object v6

    const v7, 0x7f0a091b

    invoke-virtual {v4, v7}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v8

    if-nez v8, :cond_e

    new-instance v8, Lcom/android/settings/homepage/TopLevelSettings;

    invoke-direct {v8}, Lcom/android/settings/homepage/TopLevelSettings;-><init>()V

    invoke-virtual {v8}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v9

    const-string v10, ":settings:fragment_args_key"

    invoke-virtual {v9, v10, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "android.provider.extra.SETTINGS_EMBEDDED_DEEP_LINK_HIGHLIGHT_MENU_TITLE"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {v8}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v5, ":settings:fragment_args_title"

    invoke-virtual {v0, v5, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_d
    const/4 p1, 0x0

    invoke-virtual {v6, v7, v8, p1, v3}, Landroidx/fragment/app/BackStackRecord;->doAddOp(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    goto :goto_5

    :cond_e
    invoke-virtual {v6, v8}, Landroidx/fragment/app/BackStackRecord;->show(Landroidx/fragment/app/Fragment;)V

    :goto_5
    invoke-virtual {v6, v2}, Landroidx/fragment/app/BackStackRecord;->commitInternal(Z)I

    invoke-virtual {v4}, Landroidx/fragment/app/FragmentManager;->executePendingTransactions()V

    check-cast v8, Lcom/android/settings/homepage/TopLevelSettings;

    iput-object v8, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mMainFragment:Lcom/android/settings/homepage/TopLevelSettings;

    invoke-virtual {p0}, Lcom/android/settings/homepage/SettingsHomepageActivity;->shouldLaunchDeepLinkIntentToRight()Z

    move-result p1

    if-eqz p1, :cond_f

    invoke-virtual {p0}, Lcom/android/settings/homepage/SettingsHomepageActivity;->launchDeepLinkIntentToRight()V

    :cond_f
    iget-boolean p1, p0, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->mIsEmbeddingActivityEnabled:Z

    if-eqz p1, :cond_10

    invoke-static {}, Lcom/samsung/android/settings/homepage/SecTopLevelFeature;->getInstance()Lcom/samsung/android/settings/homepage/SecTopLevelFeature;

    move-result-object p1

    const-string v0, "flag_user_setup_complete"

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/homepage/SecTopLevelFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_10

    invoke-static {p0}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->isUserSetupComplete(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_10

    invoke-static {}, Lcom/samsung/android/settings/homepage/SecTopLevelFeature;->getInstance()Lcom/samsung/android/settings/homepage/SecTopLevelFeature;

    move-result-object p1

    invoke-virtual {p1, v0, v3}, Lcom/samsung/android/settings/homepage/SecTopLevelFeature;->setBoolean(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/samsung/android/settings/homepage/SecTopLevelFeature;->getInstance()Lcom/samsung/android/settings/homepage/SecTopLevelFeature;

    move-result-object p1

    const-string v0, "flag_settings_support_large_screen"

    invoke-virtual {p1, v0, v3}, Lcom/samsung/android/settings/homepage/SecTopLevelFeature;->setBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/settings/homepage/SettingsHomepageActivity;->initSplitPairRules()V

    :cond_10
    iget-boolean p1, p0, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->mIsEmbeddingActivityEnabled:Z

    if-eqz p1, :cond_11

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result p1

    and-int/2addr p1, v1

    if-eqz p1, :cond_11

    invoke-virtual {p0}, Lcom/android/settings/homepage/SettingsHomepageActivity;->initSplitPairRules()V

    :cond_11
    invoke-virtual {p0}, Lcom/android/settings/homepage/SettingsHomepageActivity;->updateSplitLayout()V

    invoke-virtual {p0}, Landroid/app/Activity;->enableTaskLocaleOverride()V

    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    return-void
.end method

.method public final onNewIntent(Landroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onNewIntent(Landroid/content/Intent;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/homepage/SettingsHomepageActivity;->shouldLaunchDeepLinkIntentToRight()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/homepage/SettingsHomepageActivity;->launchDeepLinkIntentToRight()V

    :cond_1
    return-void
.end method

.method public final onResume()V
    .locals 2

    const-string v0, "onResume"

    const-string v1, "VerificationLog"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->onResume()V

    invoke-virtual {p0}, Lcom/android/settings/homepage/SettingsHomepageActivity;->updateSplitLayout()V

    const-string p0, "Executed"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onStart()V
    .locals 3

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsApplication;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/android/settings/SettingsApplication;->mHomeActivity:Ljava/lang/ref/WeakReference;

    const-string v0, "SettingsHomepageActivity#PkgUtils_clearAllCaches"

    invoke-static {v0}, Lcom/samsung/android/settings/Trace;->beginSection(Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/settings/PkgUtils;->mHasPackageMap:Ljava/util/HashMap;

    const-string v0, "PkgUtil"

    const-string v1, "clearAllCaches"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/settings/PkgUtils;->mHasPackageMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    sget-object v0, Lcom/samsung/android/settings/PkgUtils;->mPackageEnabledMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    iget-boolean v0, p0, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->mIsEmbeddingActivityEnabled:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroidx/window/embedding/SplitController;->getInstance(Landroid/content/Context;)Landroidx/window/embedding/SplitController;

    move-result-object v0

    new-instance v1, Landroidx/window/java/embedding/SplitControllerCallbackAdapter;

    invoke-direct {v1, v0}, Landroidx/window/java/embedding/SplitControllerCallbackAdapter;-><init>(Landroidx/window/embedding/SplitController;)V

    iput-object v1, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mSplitControllerAdapter:Landroidx/window/java/embedding/SplitControllerCallbackAdapter;

    new-instance v0, Lcom/android/settings/homepage/SettingsHomepageActivity$SplitInfoCallback;

    invoke-direct {v0, p0}, Lcom/android/settings/homepage/SettingsHomepageActivity$SplitInfoCallback;-><init>(Lcom/android/settings/homepage/SettingsHomepageActivity;)V

    iput-object v0, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mCallback:Lcom/android/settings/homepage/SettingsHomepageActivity$SplitInfoCallback;

    new-instance v2, Landroidx/window/embedding/ActivityWindowInfoCallbackController$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v1, p0, v2, v0}, Landroidx/window/java/embedding/SplitControllerCallbackAdapter;->addSplitListener(Landroid/app/Activity;Ljava/util/concurrent/Executor;Landroidx/core/util/Consumer;)V

    :cond_0
    return-void
.end method

.method public final onStop()V
    .locals 2

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    iget-object v0, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mSplitControllerAdapter:Landroidx/window/java/embedding/SplitControllerCallbackAdapter;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mCallback:Lcom/android/settings/homepage/SettingsHomepageActivity$SplitInfoCallback;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroidx/window/java/embedding/SplitControllerCallbackAdapter;->removeSplitListener(Landroidx/core/util/Consumer;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mCallback:Lcom/android/settings/homepage/SettingsHomepageActivity$SplitInfoCallback;

    iput-object v0, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mSplitControllerAdapter:Landroidx/window/java/embedding/SplitControllerCallbackAdapter;

    :cond_0
    return-void
.end method

.method public final shouldLaunchDeepLinkIntentToRight()Z
    .locals 4

    sget-boolean v0, Lcom/android/settings/activityembedding/ActivityEmbeddingUtils;->SHOULD_ENABLE_LARGE_SCREEN_OPTIMIZATION:Z

    invoke-static {}, Lcom/samsung/android/settings/homepage/SecTopLevelFeature;->getInstance()Lcom/samsung/android/settings/homepage/SecTopLevelFeature;

    move-result-object v0

    const-string v1, "isSettingsSplitEnabled"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/homepage/SecTopLevelFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/android/settings/activityembedding/ActivityEmbeddingUtils;->isSettingsSplitEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/samsung/android/settings/homepage/SecTopLevelFeature;->getInstance()Lcom/samsung/android/settings/homepage/SecTopLevelFeature;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/samsung/android/settings/homepage/SecTopLevelFeature;->setBoolean(Ljava/lang/String;Z)V

    :cond_1
    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_4

    const-string v0, "settings_support_large_screen"

    invoke-static {p0, v0}, Landroid/util/FeatureFlagUtils;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string v0, "android.settings.SETTINGS_EMBED_DEEP_LINK_ACTIVITY"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    move v2, v1

    :goto_1
    return v2

    :cond_4
    :goto_2
    return v1
.end method

.method public final updateSplitLayout()V
    .locals 5

    iget-boolean v0, p0, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->mIsEmbeddingActivityEnabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/android/settings/activityembedding/ActivityEmbeddingUtils;->SHOULD_ENABLE_LARGE_SCREEN_OPTIMIZATION:Z

    invoke-static {p0}, Landroidx/window/embedding/ActivityEmbeddingController;->getInstance(Landroid/content/Context;)Landroidx/window/embedding/ActivityEmbeddingController;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/window/embedding/ActivityEmbeddingController;->isActivityEmbedded(Landroid/app/Activity;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070296

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v1

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->screenWidthDp:I

    int-to-float v3, v2

    div-float/2addr v3, v1

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v4, v1

    mul-float/2addr v4, v3

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "primaryScreenWidthDp : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SettingsHomepageActivity"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "secondaryScreenWidthDp : "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x24d

    if-lt v1, v2, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    :goto_0
    const v2, 0x7f0a0420

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    const v2, 0x7f0a041f

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget-boolean v1, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mIsRegularLayout:Z

    if-ne v1, v0, :cond_4

    return-void

    :cond_4
    iput-boolean v0, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mIsRegularLayout:Z

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    move-result-object v0

    iget-object v0, v0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentStore;->getFragments()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/android/settings/homepage/SettingsHomepageActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/settings/homepage/SettingsHomepageActivity$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/homepage/SettingsHomepageActivity;)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method
