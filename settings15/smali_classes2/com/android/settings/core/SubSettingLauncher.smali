.class public final Lcom/android/settings/core/SubSettingLauncher;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

.field public mLaunched:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/android/settings/core/SubSettingLauncher;->mContext:Landroid/content/Context;

    new-instance p1, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    const/16 v0, -0x64

    iput v0, p1, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mSourceMetricsCategory:I

    iput-object p1, p0, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    const/4 p0, 0x0

    iput p0, p1, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mTransitionType:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Context must be non-null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final addFlags(I)V
    .locals 1

    iget-object p0, p0, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iget v0, p0, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mFlags:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mFlags:I

    return-void
.end method

.method public final launch()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->toIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/core/SubSettingLauncher;->launchWithIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public launch(Landroid/content/Intent;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/core/SubSettingLauncher;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public launchAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/core/SubSettingLauncher;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public launchForResult(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V
    .locals 0

    invoke-virtual {p1, p2, p3}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public launchForResultAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Landroidx/fragment/app/Fragment;I)V
    .locals 0

    invoke-virtual {p3}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0, p1, p4, p2}, Landroid/app/Activity;->startActivityForResultAsUser(Landroid/content/Intent;ILandroid/os/UserHandle;)V

    return-void
.end method

.method public final launchWithIntent(Landroid/content/Intent;)V
    .locals 5

    invoke-virtual {p0, p1}, Lcom/android/settings/core/SubSettingLauncher;->verifyIntent(Landroid/content/Intent;)V

    iget-boolean v0, p0, Lcom/android/settings/core/SubSettingLauncher;->mLaunched:Z

    if-nez v0, :cond_5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/core/SubSettingLauncher;->mLaunched:Z

    iget-object v1, p0, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iget-object v2, v1, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mUserHandle:Landroid/os/UserHandle;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    if-eq v2, v4, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    iget-object v4, v1, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mResultListener:Landroidx/fragment/app/Fragment;

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    move v0, v3

    :goto_1
    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    iget-object v0, v1, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mUserHandle:Landroid/os/UserHandle;

    iget v1, v1, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mRequestCode:I

    invoke-virtual {p0, p1, v0, v4, v1}, Lcom/android/settings/core/SubSettingLauncher;->launchForResultAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Landroidx/fragment/app/Fragment;I)V

    goto :goto_2

    :cond_2
    if-eqz v2, :cond_3

    if-nez v0, :cond_3

    iget-object v0, v1, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/core/SubSettingLauncher;->launchAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_2

    :cond_3
    if-nez v2, :cond_4

    if-eqz v0, :cond_4

    iget v0, v1, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mRequestCode:I

    invoke-virtual {p0, v4, p1, v0}, Lcom/android/settings/core/SubSettingLauncher;->launchForResult(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V

    goto :goto_2

    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/settings/core/SubSettingLauncher;->launch(Landroid/content/Intent;)V

    :goto_2
    return-void

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "This launcher has already been executed. Do not reuse"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setResultListener(Landroidx/fragment/app/Fragment;I)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iput p2, p0, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mRequestCode:I

    iput-object p1, p0, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mResultListener:Landroidx/fragment/app/Fragment;

    return-void
.end method

.method public final setTitleRes(ILjava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iput-object p2, p0, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mTitleResPackageName:Ljava/lang/String;

    iput p1, p0, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mTitleResId:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mTitle:Ljava/lang/CharSequence;

    return-void
.end method

.method public final toIntent()Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iget-object v2, v1, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mExtras:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    invoke-virtual {v0, v2}, Landroid/content/Intent;->replaceExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_0
    iget-object p0, p0, Lcom/android/settings/core/SubSettingLauncher;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/settings/SubSettings;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object p0, v1, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mDestinationName:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, ":settings:show_fragment"

    iget-object v2, v1, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mDestinationName:Ljava/lang/String;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget p0, v1, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mSourceMetricsCategory:I

    if-ltz p0, :cond_1

    const-string v2, ":settings:source_metrics"

    invoke-virtual {v0, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p0, ":settings:show_fragment_args"

    iget-object v2, v1, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mArguments:Landroid/os/Bundle;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const-string p0, ":settings:show_fragment_title_res_package_name"

    iget-object v2, v1, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mTitleResPackageName:Ljava/lang/String;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, ":settings:show_fragment_title_resid"

    iget v2, v1, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mTitleResId:I

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p0, ":settings:show_fragment_title"

    iget-object v2, v1, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    iget p0, v1, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mFlags:I

    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string p0, "page_transition_type"

    iget v2, v1, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mTransitionType:I

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p0, ":settings:is_second_layer_page"

    iget-boolean v1, v1, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mIsSecondLayerPage:Z

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Source metrics category must be set"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Destination fragment must be set"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public verifyIntent(Landroid/content/Intent;)V
    .locals 4

    const-class p0, Lcom/android/settings/SubSettings;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    const-string v1, ":settings:show_fragment"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ":settings:source_metrics"

    const/4 v3, -0x1

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Class must be: "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_3

    if-ltz p1, :cond_2

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Source metrics category must be set"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Destination fragment must be set"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
