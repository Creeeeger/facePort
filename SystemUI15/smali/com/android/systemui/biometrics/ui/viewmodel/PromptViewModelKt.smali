.class public abstract Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModelKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public static final getApplicationInfoForLogo(Lcom/android/systemui/biometrics/domain/model/BiometricPromptRequest$Biometric;Landroid/content/Context;Landroid/content/ComponentName;)Landroid/content/pm/ApplicationInfo;
    .locals 4

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_0
    iget-boolean p2, p0, Lcom/android/systemui/biometrics/domain/model/BiometricPromptRequest$Biometric;->allowBackgroundAuthentication:Z

    iget-object v1, p0, Lcom/android/systemui/biometrics/domain/model/BiometricPromptRequest$Biometric;->opPackageName:Ljava/lang/String;

    if-nez p2, :cond_2

    sget p2, Lcom/android/systemui/biometrics/Utils;->$r8$clinit:I

    const-string p2, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {p1, p2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "android"

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    move-object p2, v0

    goto :goto_1

    :cond_2
    :goto_0
    move-object p2, v1

    :goto_1
    const-string v1, "Cannot find application info for "

    const-string v2, "PromptViewModel"

    if-nez p2, :cond_3

    iget-object p0, p0, Lcom/android/systemui/biometrics/domain/model/BiometricPromptRequest$Biometric;->opPackageName:Ljava/lang/String;

    invoke-static {v1, p0, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const v3, 0x400200

    invoke-virtual {p0, p2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-object v0
.end method

.method public static final getComponentNameForLogo(Lcom/android/systemui/biometrics/domain/model/BiometricPromptRequest$Biometric;Landroid/app/ActivityTaskManager;)Landroid/content/ComponentName;
    .locals 8

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/ActivityTaskManager;->getTasks(I)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager$RunningTaskInfo;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/biometrics/domain/model/BiometricPromptRequest$Biometric;->componentNameForConfirmDeviceCredentialActivity:Landroid/content/ComponentName;

    if-eqz v2, :cond_1

    move-object v1, v2

    goto/16 :goto_5

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    move-object v2, v1

    :goto_1
    instance-of v3, v2, Ljava/lang/String;

    iget-object p0, p0, Lcom/android/systemui/biometrics/domain/model/BiometricPromptRequest$Biometric;->opPackageName:Ljava/lang/String;

    if-eqz v3, :cond_3

    if-eqz p0, :cond_3

    invoke-virtual {v2, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_4

    :cond_3
    if-eqz v3, :cond_4

    instance-of v3, p0, Ljava/lang/String;

    if-eqz v3, :cond_4

    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_4

    :cond_4
    if-ne v2, p0, :cond_5

    goto :goto_4

    :cond_5
    const/4 v3, 0x0

    if-eqz v2, :cond_7

    if-eqz p0, :cond_7

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-eq v4, v5, :cond_6

    goto :goto_3

    :cond_6
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    move v5, v3

    :goto_2
    if-ge v5, v4, :cond_9

    invoke-interface {v2, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    if-eq v6, v7, :cond_8

    :cond_7
    :goto_3
    move v0, v3

    goto :goto_4

    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_9
    :goto_4
    if-eqz v0, :cond_a

    move-object v1, p1

    goto :goto_5

    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Top activity "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not the client "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PromptViewModel"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    return-object v1
.end method
