.class public final Lcom/android/systemui/screenshot/message/ProfileMessageController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final fileResources:Lcom/android/systemui/screenshot/message/ProfileFirstRunFileResources;

.field public final firstRunSettings:Lcom/android/systemui/screenshot/message/ProfileFirstRunSettings;

.field public final packageLabelIconProvider:Lcom/android/systemui/screenshot/message/PackageLabelIconProvider;

.field public final profileTypes:Lcom/android/systemui/screenshot/data/repository/ProfileTypeRepository;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/screenshot/message/ProfileMessageController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/screenshot/message/ProfileMessageController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/screenshot/message/PackageLabelIconProvider;Lcom/android/systemui/screenshot/message/ProfileFirstRunFileResources;Lcom/android/systemui/screenshot/message/ProfileFirstRunSettings;Lcom/android/systemui/screenshot/data/repository/ProfileTypeRepository;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/screenshot/message/ProfileMessageController;->packageLabelIconProvider:Lcom/android/systemui/screenshot/message/PackageLabelIconProvider;

    iput-object p2, p0, Lcom/android/systemui/screenshot/message/ProfileMessageController;->fileResources:Lcom/android/systemui/screenshot/message/ProfileFirstRunFileResources;

    iput-object p3, p0, Lcom/android/systemui/screenshot/message/ProfileMessageController;->firstRunSettings:Lcom/android/systemui/screenshot/message/ProfileFirstRunSettings;

    iput-object p4, p0, Lcom/android/systemui/screenshot/message/ProfileMessageController;->profileTypes:Lcom/android/systemui/screenshot/data/repository/ProfileTypeRepository;

    return-void
.end method


# virtual methods
.method public final onScreenshotTaken(Landroid/os/UserHandle;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9

    instance-of v0, p2, Lcom/android/systemui/screenshot/message/ProfileMessageController$onScreenshotTaken$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/android/systemui/screenshot/message/ProfileMessageController$onScreenshotTaken$1;

    iget v1, v0, Lcom/android/systemui/screenshot/message/ProfileMessageController$onScreenshotTaken$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/systemui/screenshot/message/ProfileMessageController$onScreenshotTaken$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/systemui/screenshot/message/ProfileMessageController$onScreenshotTaken$1;

    invoke-direct {v0, p0, p2}, Lcom/android/systemui/screenshot/message/ProfileMessageController$onScreenshotTaken$1;-><init>(Lcom/android/systemui/screenshot/message/ProfileMessageController;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/android/systemui/screenshot/message/ProfileMessageController$onScreenshotTaken$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/android/systemui/screenshot/message/ProfileMessageController$onScreenshotTaken$1;->label:I

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v3, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p0, v0, Lcom/android/systemui/screenshot/message/ProfileMessageController$onScreenshotTaken$1;->L$1:Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/screenshot/message/ProfileMessageController$FirstRunProfile;

    iget-object p1, v0, Lcom/android/systemui/screenshot/message/ProfileMessageController$onScreenshotTaken$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/android/systemui/screenshot/message/ProfileMessageController;

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_4

    :catchall_0
    move-exception p2

    goto/16 :goto_7

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p0, v0, Lcom/android/systemui/screenshot/message/ProfileMessageController$onScreenshotTaken$1;->L$1:Ljava/lang/Object;

    move-object p1, p0

    check-cast p1, Landroid/os/UserHandle;

    iget-object p0, v0, Lcom/android/systemui/screenshot/message/ProfileMessageController$onScreenshotTaken$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/screenshot/message/ProfileMessageController;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    if-nez p1, :cond_4

    return-object v5

    :cond_4
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    iput-object p0, v0, Lcom/android/systemui/screenshot/message/ProfileMessageController$onScreenshotTaken$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/android/systemui/screenshot/message/ProfileMessageController$onScreenshotTaken$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lcom/android/systemui/screenshot/message/ProfileMessageController$onScreenshotTaken$1;->label:I

    iget-object v2, p0, Lcom/android/systemui/screenshot/message/ProfileMessageController;->profileTypes:Lcom/android/systemui/screenshot/data/repository/ProfileTypeRepository;

    check-cast v2, Lcom/android/systemui/screenshot/data/repository/ProfileTypeRepositoryImpl;

    invoke-virtual {v2, p2, v0}, Lcom/android/systemui/screenshot/data/repository/ProfileTypeRepositoryImpl;->getProfileType(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_5

    return-object v1

    :cond_5
    :goto_1
    check-cast p2, Lcom/android/systemui/screenshot/data/model/ProfileType;

    sget-object v2, Lcom/android/systemui/screenshot/message/ProfileMessageController$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v2, p2

    if-eq p2, v3, :cond_7

    if-eq p2, v4, :cond_6

    return-object v5

    :cond_6
    sget-object p2, Lcom/android/systemui/screenshot/message/ProfileMessageController$FirstRunProfile;->PRIVATE:Lcom/android/systemui/screenshot/message/ProfileMessageController$FirstRunProfile;

    goto :goto_2

    :cond_7
    sget-object p2, Lcom/android/systemui/screenshot/message/ProfileMessageController$FirstRunProfile;->WORK:Lcom/android/systemui/screenshot/message/ProfileMessageController$FirstRunProfile;

    :goto_2
    iget-object v2, p0, Lcom/android/systemui/screenshot/message/ProfileMessageController;->firstRunSettings:Lcom/android/systemui/screenshot/message/ProfileFirstRunSettings;

    check-cast v2, Lcom/android/systemui/screenshot/message/ProfileFirstRunSettingsImpl;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Lcom/android/systemui/screenshot/message/ProfileFirstRunSettingsImpl$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v6, v6, v7

    if-eq v6, v3, :cond_9

    if-ne v6, v4, :cond_8

    const-string v3, "private_profile_first_run"

    goto :goto_3

    :cond_8
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_9
    const-string/jumbo v3, "work_profile_first_run"

    :goto_3
    iget-object v2, v2, Lcom/android/systemui/screenshot/message/ProfileFirstRunSettingsImpl;->context:Landroid/content/Context;

    const-string v6, "com.android.systemui.screenshot"

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2, v3, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_a

    return-object v5

    :cond_a
    :try_start_1
    sget v2, Lkotlin/Result;->$r8$clinit:I

    iget-object v2, p0, Lcom/android/systemui/screenshot/message/ProfileMessageController;->fileResources:Lcom/android/systemui/screenshot/message/ProfileFirstRunFileResources;

    check-cast v2, Lcom/android/systemui/screenshot/message/ProfileFirstRunFileResourcesImpl;

    iget-object v2, v2, Lcom/android/systemui/screenshot/message/ProfileFirstRunFileResourcesImpl;->context:Landroid/content/Context;

    const v3, 0x7f130401

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_c

    iget-object v3, p0, Lcom/android/systemui/screenshot/message/ProfileMessageController;->packageLabelIconProvider:Lcom/android/systemui/screenshot/message/PackageLabelIconProvider;

    iput-object p0, v0, Lcom/android/systemui/screenshot/message/ProfileMessageController$onScreenshotTaken$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/android/systemui/screenshot/message/ProfileMessageController$onScreenshotTaken$1;->L$1:Ljava/lang/Object;

    iput v4, v0, Lcom/android/systemui/screenshot/message/ProfileMessageController$onScreenshotTaken$1;->label:I

    check-cast v3, Lcom/android/systemui/screenshot/message/PackageLabelIconProviderImpl;

    iget-object v0, v3, Lcom/android/systemui/screenshot/message/PackageLabelIconProviderImpl;->packageManager:Landroid/content/pm/PackageManager;

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Landroid/content/pm/PackageManager$ComponentInfoFlags;->of(J)Landroid/content/pm/PackageManager$ComponentInfoFlags;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;Landroid/content/pm/PackageManager$ComponentInfoFlags;)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    iget-object v4, v3, Lcom/android/systemui/screenshot/message/PackageLabelIconProviderImpl;->packageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v2}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v4, v3, Lcom/android/systemui/screenshot/message/PackageLabelIconProviderImpl;->packageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v2, p1}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object v2, v3, Lcom/android/systemui/screenshot/message/PackageLabelIconProviderImpl;->packageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v2}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    new-instance v2, Lcom/android/systemui/screenshot/message/LabeledIcon;

    invoke-direct {v2, v0, p1}, Lcom/android/systemui/screenshot/message/LabeledIcon;-><init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne v2, v1, :cond_b

    return-object v1

    :cond_b
    move-object p1, p0

    move-object p0, p2

    move-object p2, v2

    :goto_4
    :try_start_2
    check-cast p2, Lcom/android/systemui/screenshot/message/LabeledIcon;

    goto :goto_6

    :goto_5
    move-object v8, p1

    move-object p1, p0

    move-object p0, p2

    move-object p2, v8

    goto :goto_7

    :catchall_1
    move-exception p1

    goto :goto_5

    :cond_c
    move-object p1, p0

    move-object p0, p2

    move-object p2, v5

    :goto_6
    sget v0, Lkotlin/Result;->$r8$clinit:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_8

    :goto_7
    sget v0, Lkotlin/Result;->$r8$clinit:I

    new-instance v0, Lkotlin/Result$Failure;

    invoke-direct {v0, p2}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object p2, v0

    :goto_8
    instance-of v0, p2, Lkotlin/Result$Failure;

    if-eqz v0, :cond_d

    move-object p2, v5

    :cond_d
    check-cast p2, Lcom/android/systemui/screenshot/message/LabeledIcon;

    if-nez p2, :cond_e

    iget-object p1, p1, Lcom/android/systemui/screenshot/message/ProfileMessageController;->fileResources:Lcom/android/systemui/screenshot/message/ProfileFirstRunFileResources;

    check-cast p1, Lcom/android/systemui/screenshot/message/ProfileFirstRunFileResourcesImpl;

    new-instance p2, Lcom/android/systemui/screenshot/message/LabeledIcon;

    iget-object p1, p1, Lcom/android/systemui/screenshot/message/ProfileFirstRunFileResourcesImpl;->context:Landroid/content/Context;

    const v0, 0x7f130ffd

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, v5}, Lcom/android/systemui/screenshot/message/LabeledIcon;-><init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    :cond_e
    new-instance p1, Lcom/android/systemui/screenshot/message/ProfileMessageController$ProfileFirstRunData;

    invoke-direct {p1, p2, p0}, Lcom/android/systemui/screenshot/message/ProfileMessageController$ProfileFirstRunData;-><init>(Lcom/android/systemui/screenshot/message/LabeledIcon;Lcom/android/systemui/screenshot/message/ProfileMessageController$FirstRunProfile;)V

    return-object p1
.end method
