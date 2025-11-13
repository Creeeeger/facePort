.class public final synthetic Lcom/android/systemui/searcle/OmniAPI$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# virtual methods
.method public final run()V
    .locals 3

    const-string p0, "OmniAPI"

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/android/systemui/searcle/OmniAPI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.google.android.googlequicksearchbox"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    sput-boolean v2, Lcom/android/systemui/searcle/OmniAPI;->mIsOmniPackageEnabled:Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    sput-boolean v0, Lcom/android/systemui/searcle/OmniAPI;->mIsOmniPackageEnabled:Z

    const-string v0, "requestUpdateOmniPackageInfo getApplicationEnabledSetting IllegalArgumentException"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "requestUpdateOmniPackageInfo mIsOmniPackageEnabled = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v1, Lcom/android/systemui/searcle/OmniAPI;->mIsOmniPackageEnabled:Z

    invoke-static {v0, v1, p0}, Lcom/android/keyguard/KeyguardSecPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    return-void
.end method
