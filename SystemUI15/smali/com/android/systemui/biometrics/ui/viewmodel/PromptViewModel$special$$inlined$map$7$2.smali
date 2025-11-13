.class public final Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$special$$inlined$map$7$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

.field public final synthetic this$0:Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/FlowCollector;Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$special$$inlined$map$7$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    iput-object p2, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$special$$inlined$map$7$2;->this$0:Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 13

    instance-of v0, p2, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$special$$inlined$map$7$2$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$special$$inlined$map$7$2$1;

    iget v1, v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$special$$inlined$map$7$2$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$special$$inlined$map$7$2$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$special$$inlined$map$7$2$1;

    invoke-direct {v0, p0, p2}, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$special$$inlined$map$7$2$1;-><init>(Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$special$$inlined$map$7$2;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$special$$inlined$map$7$2$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$special$$inlined$map$7$2$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_7

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast p1, Lcom/android/systemui/biometrics/domain/model/BiometricPromptRequest$Biometric;

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/Flags;->customBiometricPrompt()Z

    move-result p2

    const/4 v2, 0x0

    if-eqz p2, :cond_b

    invoke-static {}, Lcom/android/systemui/Flags;->constraintBp()V

    if-nez p1, :cond_3

    goto/16 :goto_6

    :cond_3
    iget-object p2, p1, Lcom/android/systemui/biometrics/domain/model/BiometricPromptRequest$Biometric;->logoBitmap:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$special$$inlined$map$7$2;->this$0:Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;

    if-eqz p2, :cond_4

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object p2, v4, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->context:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    iget-object p1, p1, Lcom/android/systemui/biometrics/domain/model/BiometricPromptRequest$Biometric;->logoBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v2, p2, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto/16 :goto_6

    :cond_4
    iget-object p2, v4, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->context:Landroid/content/Context;

    iget-object v5, v4, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->activityTaskManager:Landroid/app/ActivityTaskManager;

    invoke-static {p1, v5}, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModelKt;->getComponentNameForLogo(Lcom/android/systemui/biometrics/domain/model/BiometricPromptRequest$Biometric;Landroid/app/ActivityTaskManager;)Landroid/content/ComponentName;

    move-result-object v5

    const-string v6, "PromptViewModel"

    if-eqz v5, :cond_8

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f030010

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    array-length v8, v7

    const/4 v9, 0x0

    move v10, v9

    :goto_1
    if-ge v10, v8, :cond_6

    aget-object v11, v7, v10

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v12, v11}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_5

    goto :goto_2

    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_6
    move-object v11, v2

    :goto_2
    if-eqz v11, :cond_8

    :try_start_0
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v7, v5, v9}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v7
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v7

    invoke-virtual {p2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Cannot find activity info for "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v7, v2

    :goto_3
    if-nez v7, :cond_7

    goto :goto_4

    :cond_7
    iget-object v4, v4, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->iconProvider:Lcom/android/launcher3/icons/IconProvider;

    iget-object v8, v4, Lcom/android/launcher3/icons/IconProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->densityDpi:I

    invoke-virtual {v4, v7, v8}, Lcom/android/launcher3/icons/IconProvider;->getIcon(Landroid/content/pm/ActivityInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_5

    :cond_8
    :goto_4
    move-object v4, v2

    :goto_5
    if-nez v4, :cond_a

    invoke-static {p1, p2, v5}, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModelKt;->getApplicationInfoForLogo(Lcom/android/systemui/biometrics/domain/model/BiometricPromptRequest$Biometric;Landroid/content/Context;Landroid/content/ComponentName;)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    if-nez v4, :cond_9

    invoke-virtual {p2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Cannot find app logo for package "

    invoke-static {p2, p1, v6}, Landroidx/constraintlayout/motion/widget/MotionLayout$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_9
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    :cond_a
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    iget-object p1, p1, Lcom/android/systemui/biometrics/domain/model/BiometricPromptRequest;->userInfo:Lcom/android/systemui/biometrics/shared/model/BiometricUserInfo;

    iget p1, p1, Lcom/android/systemui/biometrics/shared/model/BiometricUserInfo;->userId:I

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p2, v4, p1}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :cond_b
    :goto_6
    iput v3, v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$special$$inlined$map$7$2$1;->label:I

    iget-object p0, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$special$$inlined$map$7$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    invoke-interface {p0, v2, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_c

    return-object v1

    :cond_c
    :goto_7
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
