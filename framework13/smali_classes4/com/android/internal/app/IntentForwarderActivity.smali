.class public Lcom/android/internal/app/IntentForwarderActivity;
.super Landroid/app/Activity;
.source "IntentForwarderActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/IntentForwarderActivity$Injector;,
        Lcom/android/internal/app/IntentForwarderActivity$InjectorImpl;
    }
.end annotation


# static fields
.field private static final blacklist ALLOWED_TEXT_MESSAGE_SCHEMES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static blacklist FORWARD_INTENT_TO_MANAGED_PROFILE:Ljava/lang/String; = null

.field public static blacklist FORWARD_INTENT_TO_MANAGED_PROFILE4:Ljava/lang/String; = null

.field public static blacklist FORWARD_INTENT_TO_PARENT:Ljava/lang/String; = null

.field private static final blacklist REQUEST_CONFIRM_CREDENTIALS:I = 0x1

.field private static final blacklist RESOLVER_COMPONENT_NAME:Landroid/content/ComponentName;

.field private static final blacklist SYSTEM_DIALOG_REASON_GLOBAL_ACTIONS:Ljava/lang/String; = "globalactions"

.field private static final blacklist SYSTEM_DIALOG_REASON_HOME_KEY:Ljava/lang/String; = "homekey"

.field private static final blacklist SYSTEM_DIALOG_REASON_KEY:Ljava/lang/String; = "reason"

.field private static final blacklist SYSTEM_DIALOG_REASON_RECENT_APPS:Ljava/lang/String; = "recentapps"

.field public static greylist-max-r TAG:Ljava/lang/String; = null

.field private static final blacklist TARGET_USER_ID:Ljava/lang/String; = "targetUserId"

.field private static final blacklist TEL_SCHEME:Ljava/lang/String; = "tel"


# instance fields
.field private final blacklist TARGET_USER_ID_DEFAULT_VALUE:I

.field private blacklist mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field protected blacklist mExecutorService:Ljava/util/concurrent/ExecutorService;

.field private blacklist mFinalCallingUserId:I

.field private blacklist mFinalTargetUserId:I

.field private blacklist mInjector:Lcom/android/internal/app/IntentForwarderActivity$Injector;

.field private blacklist mKeyguardManager:Landroid/app/KeyguardManager;

.field private blacklist mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private blacklist mPersona:Lcom/samsung/android/knox/SemPersonaManager;

.field private blacklist mUserManager:Landroid/os/UserManager;

.field private blacklist mWaitingForresponse:Z

.field private blacklist tempIntent:Landroid/content/Intent;

.field private blacklist userId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 5

    .line 85
    const-string v0, "IntentForwarderActivity"

    sput-object v0, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    .line 87
    const-string v0, "com.android.internal.app.ForwardIntentToParent"

    sput-object v0, Lcom/android/internal/app/IntentForwarderActivity;->FORWARD_INTENT_TO_PARENT:Ljava/lang/String;

    .line 90
    const-string v0, "com.android.internal.app.ForwardIntentToManagedProfile"

    sput-object v0, Lcom/android/internal/app/IntentForwarderActivity;->FORWARD_INTENT_TO_MANAGED_PROFILE:Ljava/lang/String;

    .line 93
    new-instance v0, Ljava/util/HashSet;

    const-string/jumbo v1, "sms"

    const-string/jumbo v2, "smsto"

    const-string/jumbo v3, "mms"

    const-string/jumbo v4, "mmsto"

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    .line 94
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/internal/app/IntentForwarderActivity;->ALLOWED_TEXT_MESSAGE_SCHEMES:Ljava/util/Set;

    .line 98
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/android/internal/app/ResolverActivity;

    .line 99
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android"

    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/app/IntentForwarderActivity;->RESOLVER_COMPONENT_NAME:Landroid/content/ComponentName;

    .line 107
    const-string v0, "com.android.internal.app.ForwardIntentToManagedProfile4"

    sput-object v0, Lcom/android/internal/app/IntentForwarderActivity;->FORWARD_INTENT_TO_MANAGED_PROFILE4:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 2

    .line 83
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 110
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/IntentForwarderActivity;->TARGET_USER_ID_DEFAULT_VALUE:I

    .line 112
    iput v0, p0, Lcom/android/internal/app/IntentForwarderActivity;->mFinalTargetUserId:I

    .line 113
    iput v0, p0, Lcom/android/internal/app/IntentForwarderActivity;->mFinalCallingUserId:I

    .line 125
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/IntentForwarderActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 126
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/app/IntentForwarderActivity;->mWaitingForresponse:Z

    .line 127
    iput-object v0, p0, Lcom/android/internal/app/IntentForwarderActivity;->mPersona:Lcom/samsung/android/knox/SemPersonaManager;

    .line 128
    iput-object v0, p0, Lcom/android/internal/app/IntentForwarderActivity;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 129
    iput-object v0, p0, Lcom/android/internal/app/IntentForwarderActivity;->mUserManager:Landroid/os/UserManager;

    return-void
.end method

.method static blacklist canForward(Landroid/content/Intent;IILandroid/content/pm/IPackageManager;Landroid/content/ContentResolver;)Landroid/content/Intent;
    .locals 7
    .param p0, "incomingIntent"    # Landroid/content/Intent;
    .param p1, "sourceUserId"    # I
    .param p2, "targetUserId"    # I
    .param p3, "packageManager"    # Landroid/content/pm/IPackageManager;
    .param p4, "contentResolver"    # Landroid/content/ContentResolver;

    .line 539
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 540
    .local v0, "forwardIntent":Landroid/content/Intent;
    const/high16 v1, 0x3000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 542
    invoke-static {v0}, Lcom/android/internal/app/IntentForwarderActivity;->sanitizeIntent(Landroid/content/Intent;)V

    .line 544
    move-object v1, v0

    .line 545
    .local v1, "intentToCheck":Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.CHOOSER"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 546
    return-object v3

    .line 548
    :cond_0
    invoke-virtual {v0}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 549
    invoke-virtual {v0}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v1

    .line 551
    :cond_1
    invoke-virtual {v1, p4}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v2

    .line 552
    .local v2, "resolvedType":Ljava/lang/String;
    invoke-static {v1}, Lcom/android/internal/app/IntentForwarderActivity;->sanitizeIntent(Landroid/content/Intent;)V

    .line 554
    :try_start_0
    invoke-interface {p3, v1, v2, p1, p2}, Landroid/content/pm/IPackageManager;->canForwardTo(Landroid/content/Intent;Ljava/lang/String;II)Z

    move-result v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_2

    .line 556
    return-object v0

    .line 560
    :cond_2
    goto :goto_0

    .line 558
    :catch_0
    move-exception v4

    .line 559
    .local v4, "e":Landroid/os/RemoteException;
    sget-object v5, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    const-string v6, "PackageManagerService is dead?"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_0
    return-object v3
.end method

.method private blacklist findSelectedProfile(Ljava/lang/String;)I
    .locals 1
    .param p1, "className"    # Ljava/lang/String;

    .line 480
    sget-object v0, Lcom/android/internal/app/IntentForwarderActivity;->FORWARD_INTENT_TO_PARENT:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 481
    const/4 v0, 0x0

    return v0

    .line 482
    :cond_0
    sget-object v0, Lcom/android/internal/app/IntentForwarderActivity;->FORWARD_INTENT_TO_MANAGED_PROFILE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 483
    const/4 v0, 0x1

    return v0

    .line 485
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method private blacklist getCompListfromParcelableList([Landroid/os/Parcelable;)Ljava/util/ArrayList;
    .locals 3
    .param p1, "pa"    # [Landroid/os/Parcelable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/os/Parcelable;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .line 781
    const/4 v0, 0x0

    .line 782
    .local v0, "compArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    if-eqz p1, :cond_1

    array-length v1, p1

    if-lez v1, :cond_1

    .line 783
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    .line 784
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 785
    aget-object v2, p1, v1

    instance-of v2, v2, Landroid/content/ComponentName;

    if-eqz v2, :cond_0

    .line 786
    aget-object v2, p1, v1

    check-cast v2, Landroid/content/ComponentName;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 784
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 790
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method private blacklist getFinalExcludeCompList(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/content/ComponentName;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/content/ComponentName;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .line 794
    .local p1, "src_exclcomp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    .local p2, "policy_exclcomp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    const/4 v0, 0x0

    .line 795
    .local v0, "finalCompArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    const-string v1, " a ComponentName: "

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 796
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v2

    .line 797
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 798
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 799
    sget-object v3, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Filtered src excl component #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 802
    .end local v2    # "i":I
    :cond_0
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 803
    if-nez v0, :cond_1

    .line 804
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v2

    .line 806
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 807
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 808
    sget-object v3, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Filtered policy excl component #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 811
    .end local v2    # "i":I
    :cond_2
    return-object v0
.end method

.method private blacklist getForwardToPersonalMessage()Ljava/lang/String;
    .locals 3

    .line 286
    const-class v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, v0}, Lcom/android/internal/app/IntentForwarderActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v0

    new-instance v1, Lcom/android/internal/app/IntentForwarderActivity$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/internal/app/IntentForwarderActivity$$ExternalSyntheticLambda3;-><init>(Lcom/android/internal/app/IntentForwarderActivity;)V

    const-string v2, "Core.FORWARD_INTENT_TO_PERSONAL"

    invoke-virtual {v0, v2, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getForwardToPersonalMessageFromSecureFolder()Ljava/lang/String;
    .locals 4

    .line 282
    const v0, 0x1040562

    invoke-virtual {p0, v0}, Lcom/android/internal/app/IntentForwarderActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const v2, 0x1040c37

    invoke-virtual {p0, v2}, Lcom/android/internal/app/IntentForwarderActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getForwardToWorkMessage()Ljava/lang/String;
    .locals 3

    .line 292
    const-class v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, v0}, Lcom/android/internal/app/IntentForwarderActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v0

    new-instance v1, Lcom/android/internal/app/IntentForwarderActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/internal/app/IntentForwarderActivity$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/app/IntentForwarderActivity;)V

    const-string v2, "Core.FORWARD_INTENT_TO_WORK"

    invoke-virtual {v0, v2, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getManagedProfile()I
    .locals 4

    .line 572
    iget-object v0, p0, Lcom/android/internal/app/IntentForwarderActivity;->mInjector:Lcom/android/internal/app/IntentForwarderActivity$Injector;

    invoke-interface {v0}, Lcom/android/internal/app/IntentForwarderActivity$Injector;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v0

    .line 573
    .local v0, "relatedUsers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 574
    .local v2, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v3

    if-eqz v3, :cond_0

    iget v1, v2, Landroid/content/pm/UserInfo;->id:I

    return v1

    .line 575
    .end local v2    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_0
    goto :goto_0

    .line 576
    :cond_1
    sget-object v1, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/internal/app/IntentForwarderActivity;->FORWARD_INTENT_TO_MANAGED_PROFILE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has been called, but there is no managed profile"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    const/16 v1, -0x2710

    return v1
.end method

.method private blacklist getProfileParent()I
    .locals 4

    .line 586
    iget-object v0, p0, Lcom/android/internal/app/IntentForwarderActivity;->mInjector:Lcom/android/internal/app/IntentForwarderActivity$Injector;

    invoke-interface {v0}, Lcom/android/internal/app/IntentForwarderActivity$Injector;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 587
    .local v0, "parent":Landroid/content/pm/UserInfo;
    if-nez v0, :cond_0

    .line 588
    sget-object v1, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/internal/app/IntentForwarderActivity;->FORWARD_INTENT_TO_PARENT:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has been called, but there is no parent"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    const/16 v1, -0x2710

    return v1

    .line 592
    :cond_0
    iget v1, v0, Landroid/content/pm/UserInfo;->id:I

    return v1
.end method

.method private blacklist getUriFromIntent(Landroid/content/Intent;)Ljava/util/ArrayList;
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 815
    const/4 v0, 0x0

    .line 816
    .local v0, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.SEND"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "android.intent.extra.STREAM"

    if-eqz v1, :cond_0

    .line 817
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    .line 818
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 819
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v3, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 820
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 822
    :cond_1
    :goto_0
    return-object v0
.end method

.method private blacklist isAbleToUsingCopyToSecureFolder(Landroid/content/Intent;)Z
    .locals 14
    .param p1, "intent"    # Landroid/content/Intent;

    .line 716
    const/4 v0, 0x0

    .line 718
    .local v0, "isPossibleToStoreIntoB2C":Z
    const-string v1, "android.intent.extra.EXCLUDE_COMPONENTS"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v1

    .line 720
    .local v1, "pa":[Landroid/os/Parcelable;
    const-string v2, "com.samsung.knox.securefolder"

    .line 721
    .local v2, "packageNameSF":Ljava/lang/String;
    const-string v3, "com.samsung.android.knox.containeragent"

    .line 722
    .local v3, "packageNameCA":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".switcher.B2CStoreFilesActivity"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 723
    .local v4, "classNameSF":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".switcher.fileshare.B2CStoreFilesActivity"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 724
    .local v5, "classNameCA":Ljava/lang/String;
    const/4 v6, 0x0

    if-eqz v1, :cond_3

    .line 725
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    array-length v8, v1

    if-ge v7, v8, :cond_3

    .line 726
    aget-object v8, v1, v7

    instance-of v8, v8, Landroid/content/ComponentName;

    if-eqz v8, :cond_2

    .line 727
    aget-object v8, v1, v7

    check-cast v8, Landroid/content/ComponentName;

    .line 728
    .local v8, "excludeComp":Landroid/content/ComponentName;
    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {v8}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    :cond_0
    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v8}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 729
    :cond_1
    sget-object v9, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isWantToB2CStore | not support "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    return v6

    .line 725
    .end local v8    # "excludeComp":Landroid/content/ComponentName;
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 736
    .end local v7    # "i":I
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/internal/app/IntentForwarderActivity;->getUriFromIntent(Landroid/content/Intent;)Ljava/util/ArrayList;

    move-result-object v7

    .line 738
    .local v7, "srcUris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    if-eqz v7, :cond_b

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_b

    .line 739
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_b

    .line 740
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/Uri;

    .line 742
    .local v9, "tempUri":Landroid/net/Uri;
    if-eqz v9, :cond_a

    .line 743
    invoke-virtual {v9}, Landroid/net/Uri;->getUserInfo()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_4

    invoke-virtual {v9}, Landroid/net/Uri;->getUserInfo()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 744
    const/4 v0, 0x0

    .line 745
    sget-object v6, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isAbleToUsingCopyToSecureFolder | false | due to userId | "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v9}, Landroid/net/Uri;->getUserInfo()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    goto/16 :goto_4

    .line 749
    :cond_4
    invoke-virtual {v9}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v10

    const-string v11, "file"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 750
    const/4 v0, 0x1

    goto :goto_3

    .line 751
    :cond_5
    invoke-virtual {v9}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v10

    const-string v11, "content"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    const-string v11, "isAbleToUsingCopyToSecureFolder | false | "

    if-eqz v10, :cond_9

    .line 752
    invoke-virtual {v9}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v10

    .line 753
    .local v10, "authority":Ljava/lang/String;
    if-eqz v10, :cond_8

    .line 754
    const-string v12, "@"

    invoke-virtual {v10, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 755
    invoke-virtual {v10, v12}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v12

    .line 756
    .local v12, "nPos":I
    add-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 758
    .end local v12    # "nPos":I
    :cond_6
    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    .line 759
    const-string/jumbo v12, "media"

    invoke-virtual {v10, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 760
    const/4 v0, 0x1

    goto :goto_2

    .line 762
    :cond_7
    const/4 v0, 0x0

    .line 763
    sget-object v6, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v6, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    goto :goto_4

    .line 767
    .end local v10    # "authority":Ljava/lang/String;
    :cond_8
    :goto_2
    goto :goto_3

    .line 768
    :cond_9
    const/4 v0, 0x0

    .line 769
    sget-object v6, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    goto :goto_4

    .line 739
    .end local v9    # "tempUri":Landroid/net/Uri;
    :cond_a
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 775
    .end local v8    # "i":I
    :cond_b
    :goto_4
    sget-object v6, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isAbleToUsingCopyToSecureFolder | "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    return v0
.end method

.method private blacklist isDeviceProvisioned()Z
    .locals 3

    .line 503
    invoke-virtual {p0}, Lcom/android/internal/app/IntentForwarderActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_provisioned"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private blacklist isDialerIntent(Landroid/content/Intent;)Z
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 513
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.DIAL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 514
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.CALL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 515
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.CALL_PRIVILEGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 516
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.CALL_EMERGENCY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 517
    invoke-direct {p0, p1}, Lcom/android/internal/app/IntentForwarderActivity;->isViewActionIntent(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "tel"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 513
    :goto_1
    return v0
.end method

.method private blacklist isIntentForwarderResolveInfo(Landroid/content/pm/ResolveInfo;)Z
    .locals 4
    .param p1, "resolveInfo"    # Landroid/content/pm/ResolveInfo;

    .line 298
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 299
    return v0

    .line 301
    :cond_0
    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 302
    .local v1, "activityInfo":Landroid/content/pm/ActivityInfo;
    if-nez v1, :cond_1

    .line 303
    return v0

    .line 305
    :cond_1
    iget-object v2, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v3, "android"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 306
    return v0

    .line 310
    :cond_2
    iget-object v2, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    sget-object v3, Lcom/android/internal/app/IntentForwarderActivity;->FORWARD_INTENT_TO_PARENT:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    sget-object v3, Lcom/android/internal/app/IntentForwarderActivity;->FORWARD_INTENT_TO_MANAGED_PROFILE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    const/4 v0, 0x1

    :cond_4
    return v0
.end method

.method private blacklist isResolverActivityResolveInfo(Landroid/content/pm/ResolveInfo;)Z
    .locals 2
    .param p1, "resolveInfo"    # Landroid/content/pm/ResolveInfo;

    .line 315
    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/app/IntentForwarderActivity;->RESOLVER_COMPONENT_NAME:Landroid/content/ComponentName;

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 317
    invoke-virtual {v1}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 315
    :goto_0
    return v0
.end method

.method private blacklist isTargetResolverOrChooserActivity(Landroid/content/pm/ActivityInfo;)Z
    .locals 3
    .param p1, "activityInfo"    # Landroid/content/pm/ActivityInfo;

    .line 526
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v1, "android"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 527
    return v1

    .line 529
    :cond_0
    const-class v0, Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Lcom/android/internal/app/ChooserActivity;

    .line 530
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    .line 529
    :cond_2
    return v1
.end method

.method private blacklist isTextMessageIntent(Landroid/content/Intent;)Z
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 508
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SENDTO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/internal/app/IntentForwarderActivity;->isViewActionIntent(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/android/internal/app/IntentForwarderActivity;->ALLOWED_TEXT_MESSAGE_SCHEMES:Ljava/util/Set;

    .line 509
    invoke-virtual {p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 508
    :goto_0
    return v0
.end method

.method private blacklist isViewActionIntent(Landroid/content/Intent;)Z
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 521
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 522
    const-string v0, "android.intent.category.BROWSABLE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 521
    :goto_0
    return v0
.end method

.method private blacklist launchChooserActivityWithCorrectTab(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 5
    .param p1, "intentReceived"    # Landroid/content/Intent;
    .param p2, "className"    # Ljava/lang/String;

    .line 434
    sget-object v0, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "launchChooserActivityWithCorrectTab :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    invoke-direct {p0, p2}, Lcom/android/internal/app/IntentForwarderActivity;->findSelectedProfile(Ljava/lang/String;)I

    move-result v0

    .line 436
    .local v0, "selectedProfile":I
    invoke-static {p1}, Lcom/android/internal/app/IntentForwarderActivity;->sanitizeIntent(Landroid/content/Intent;)V

    .line 437
    const-string v1, "com.android.internal.app.ResolverActivity.EXTRA_SELECTED_PROFILE"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 438
    const-string v1, "android.intent.extra.INTENT"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 439
    .local v2, "innerIntent":Landroid/content/Intent;
    if-nez v2, :cond_0

    .line 440
    sget-object v1, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    const-string v3, "Cannot start a chooser intent with no extra android.intent.extra.INTENT"

    invoke-static {v1, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    return-void

    .line 444
    :cond_0
    invoke-static {v2}, Lcom/android/internal/app/IntentForwarderActivity;->sanitizeIntent(Landroid/content/Intent;)V

    .line 445
    invoke-virtual {p0}, Lcom/android/internal/app/IntentForwarderActivity;->getUserId()I

    move-result v3

    .line 447
    .local v3, "userId":I
    invoke-virtual {v2, v3}, Landroid/content/Intent;->fixUris(I)V

    .line 448
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 449
    invoke-static {v3}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v3, 0x0

    .line 451
    :cond_1
    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, p1, v1, v4, v3}, Lcom/android/internal/app/IntentForwarderActivity;->startActivityAsCaller(Landroid/content/Intent;Landroid/os/Bundle;ZI)V

    .line 453
    invoke-virtual {p0}, Lcom/android/internal/app/IntentForwarderActivity;->getUserId()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/android/internal/app/IntentForwarderActivity;->showForwardFromSecureFolderToast()V

    .line 455
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/app/IntentForwarderActivity;->finish()V

    .line 456
    return-void
.end method

.method private blacklist launchResolverActivityWithCorrectTab(Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;II)V
    .locals 5
    .param p1, "intentReceived"    # Landroid/content/Intent;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "newIntent"    # Landroid/content/Intent;
    .param p4, "callingUserId"    # I
    .param p5, "targetUserId"    # I

    .line 466
    sget-object v0, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "launchResolverActivityWithCorrectTab : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    iget-object v0, p0, Lcom/android/internal/app/IntentForwarderActivity;->mInjector:Lcom/android/internal/app/IntentForwarderActivity$Injector;

    const/high16 v1, 0x10000

    invoke-interface {v0, p3, v1, p4}, Lcom/android/internal/app/IntentForwarderActivity$Injector;->resolveActivityAsUser(Landroid/content/Intent;II)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    .line 468
    invoke-virtual {v0}, Ljava/util/concurrent/CompletableFuture;->join()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 469
    .local v0, "callingResolveInfo":Landroid/content/pm/ResolveInfo;
    invoke-direct {p0, v0}, Lcom/android/internal/app/IntentForwarderActivity;->isIntentForwarderResolveInfo(Landroid/content/pm/ResolveInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 470
    move v1, p5

    goto :goto_0

    :cond_0
    move v1, p4

    .line 471
    .local v1, "userId":I
    :goto_0
    invoke-direct {p0, p2}, Lcom/android/internal/app/IntentForwarderActivity;->findSelectedProfile(Ljava/lang/String;)I

    move-result v2

    .line 472
    .local v2, "selectedProfile":I
    invoke-static {p1}, Lcom/android/internal/app/IntentForwarderActivity;->sanitizeIntent(Landroid/content/Intent;)V

    .line 473
    const-string v3, "com.android.internal.app.ResolverActivity.EXTRA_SELECTED_PROFILE"

    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 474
    invoke-static {p4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    const-string v4, "com.android.internal.app.ResolverActivity.EXTRA_CALLING_USER"

    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 475
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, p1, v3, v4, v1}, Lcom/android/internal/app/IntentForwarderActivity;->startActivityAsCaller(Landroid/content/Intent;Landroid/os/Bundle;ZI)V

    .line 476
    invoke-virtual {p0}, Lcom/android/internal/app/IntentForwarderActivity;->finish()V

    .line 477
    return-void
.end method

.method private blacklist maybeShowDisclosure(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Ljava/lang/String;)V
    .locals 3
    .param p1, "intentReceived"    # Landroid/content/Intent;
    .param p2, "resolveInfo"    # Landroid/content/pm/ResolveInfo;
    .param p3, "message"    # Ljava/lang/String;

    .line 323
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getAppSeparationConfig()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 324
    return-void

    .line 327
    :cond_0
    invoke-direct {p0, p2, p1}, Lcom/android/internal/app/IntentForwarderActivity;->shouldShowDisclosure(Landroid/content/pm/ResolveInfo;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p3, :cond_1

    .line 328
    sget-object v0, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "shouldShowDisclosure | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    iget-object v0, p0, Lcom/android/internal/app/IntentForwarderActivity;->mInjector:Lcom/android/internal/app/IntentForwarderActivity$Injector;

    const/4 v1, 0x1

    invoke-interface {v0, p3, v1}, Lcom/android/internal/app/IntentForwarderActivity$Injector;->showToast(Ljava/lang/String;I)V

    .line 331
    :cond_1
    return-void
.end method

.method private static blacklist sanitizeIntent(Landroid/content/Intent;)V
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;

    .line 600
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 601
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 602
    return-void
.end method

.method private blacklist shouldShowDisclosure(Landroid/content/pm/ResolveInfo;Landroid/content/Intent;)Z
    .locals 3
    .param p1, "ri"    # Landroid/content/pm/ResolveInfo;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 489
    invoke-direct {p0}, Lcom/android/internal/app/IntentForwarderActivity;->isDeviceProvisioned()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 490
    return v1

    .line 492
    :cond_0
    const/4 v0, 0x1

    if-eqz p1, :cond_4

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v2, :cond_1

    goto :goto_0

    .line 495
    :cond_1
    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 496
    invoke-direct {p0, p2}, Lcom/android/internal/app/IntentForwarderActivity;->isDialerIntent(Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-direct {p0, p2}, Lcom/android/internal/app/IntentForwarderActivity;->isTextMessageIntent(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 497
    :cond_2
    return v1

    .line 499
    :cond_3
    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-direct {p0, v1}, Lcom/android/internal/app/IntentForwarderActivity;->isTargetResolverOrChooserActivity(Landroid/content/pm/ActivityInfo;)Z

    move-result v1

    xor-int/2addr v0, v1

    return v0

    .line 493
    :cond_4
    :goto_0
    return v0
.end method

.method private blacklist showForwardFromSecureFolderToast()V
    .locals 4

    .line 335
    invoke-direct {p0}, Lcom/android/internal/app/IntentForwarderActivity;->getForwardToPersonalMessageFromSecureFolder()Ljava/lang/String;

    move-result-object v0

    .line 336
    .local v0, "message":Ljava/lang/String;
    sget-object v1, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "showForwardFromSecureFolderToast | "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    iget-object v1, p0, Lcom/android/internal/app/IntentForwarderActivity;->mInjector:Lcom/android/internal/app/IntentForwarderActivity$Injector;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/android/internal/app/IntentForwarderActivity$Injector;->showToast(Ljava/lang/String;I)V

    .line 338
    return-void
.end method

.method private blacklist showKeyguard(I)V
    .locals 4
    .param p1, "userId"    # I

    .line 662
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 663
    .local v0, "filter":Landroid/content/IntentFilter;
    new-instance v1, Lcom/android/internal/app/IntentForwarderActivity$1;

    invoke-direct {v1, p0}, Lcom/android/internal/app/IntentForwarderActivity$1;-><init>(Lcom/android/internal/app/IntentForwarderActivity;)V

    iput-object v1, p0, Lcom/android/internal/app/IntentForwarderActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 681
    invoke-virtual {p0, v1, v0}, Lcom/android/internal/app/IntentForwarderActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 682
    const-string v1, "keyguard"

    invoke-virtual {p0, v1}, Lcom/android/internal/app/IntentForwarderActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    .line 683
    .local v1, "km":Landroid/app/KeyguardManager;
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, p1}, Landroid/app/KeyguardManager;->createConfirmDeviceCredentialIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Landroid/content/Intent;

    move-result-object v2

    .line 684
    .local v2, "confirmCredentialIntent":Landroid/content/Intent;
    if-nez v2, :cond_0

    return-void

    .line 686
    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/internal/app/IntentForwarderActivity;->mWaitingForresponse:Z

    .line 687
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/app/IntentForwarderActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 688
    return-void
.end method

.method private blacklist startActivityAsCaller(Landroid/content/Intent;I)V
    .locals 16
    .param p1, "newIntent"    # Landroid/content/Intent;
    .param p2, "userId"    # I

    .line 344
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    const-string v0, "android.intent.extra.EXCLUDE_COMPONENTS"

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IntentForwarderActivity;->getUserId()I

    move-result v4

    .line 345
    .local v4, "callingUserId":I
    const/4 v5, 0x0

    .line 346
    .local v5, "forwardfromKnox":Z
    invoke-static {v4}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 347
    const/4 v5, 0x1

    .line 350
    :cond_0
    const/4 v6, 0x0

    .line 352
    .local v6, "drivingIntent":Landroid/content/Intent;
    const-string v7, "android.intent.action.CHOOSER"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 353
    const-string v7, "android.intent.extra.INTENT"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/content/Intent;

    move-object v6, v7

    .line 354
    sget-object v7, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    const-string v8, "chooser | extra_intent"

    invoke-static {v7, v8}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 356
    :cond_1
    move-object/from16 v6, p1

    .line 357
    sget-object v7, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "new intent"

    invoke-static {v7, v8}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    :goto_0
    const/4 v8, 0x0

    if-eqz v6, :cond_a

    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    const-string v10, "android.intent.action.SEND"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    const-string v10, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    :cond_2
    invoke-static/range {p2 .. p2}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 361
    sget-object v9, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    const-string v10, "chooser | EXTRA_EXCLUDE_COMPONENTS"

    invoke-static {v9, v10}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    invoke-virtual {v6, v4}, Landroid/content/Intent;->fixUris(I)V

    .line 363
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IntentForwarderActivity;->getResources()Landroid/content/res/Resources;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1040f27

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v9

    .line 365
    .local v9, "ChooserIntent":Landroid/content/Intent;
    invoke-virtual {v6, v0}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v10

    .line 366
    .local v10, "pa":[Landroid/os/Parcelable;
    invoke-direct {v1, v10}, Lcom/android/internal/app/IntentForwarderActivity;->getCompListfromParcelableList([Landroid/os/Parcelable;)Ljava/util/ArrayList;

    move-result-object v11

    .line 368
    .local v11, "srcExcludeComponents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 370
    .local v12, "policyExcludeComponents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    iget-object v13, v1, Lcom/android/internal/app/IntentForwarderActivity;->mPersona:Lcom/samsung/android/knox/SemPersonaManager;

    const/4 v14, 0x1

    if-eqz v13, :cond_4

    .line 371
    if-eqz v5, :cond_3

    if-nez v3, :cond_3

    .line 372
    invoke-static {v4}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v15

    invoke-virtual {v13, v14, v15}, Lcom/samsung/android/knox/SemPersonaManager;->getExcludeComponentList(ZZ)Ljava/util/ArrayList;

    move-result-object v13

    move-object v12, v13

    goto :goto_1

    .line 373
    :cond_3
    if-nez v4, :cond_4

    .line 374
    invoke-static/range {p2 .. p2}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v15

    invoke-virtual {v13, v8, v15}, Lcom/samsung/android/knox/SemPersonaManager;->getExcludeComponentList(ZZ)Ljava/util/ArrayList;

    move-result-object v13

    move-object v12, v13

    .line 379
    :cond_4
    :goto_1
    invoke-direct {v1, v11, v12}, Lcom/android/internal/app/IntentForwarderActivity;->getFinalExcludeCompList(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v13

    .line 380
    .local v13, "finalExcludeComponents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    if-eqz v13, :cond_5

    .line 381
    new-array v15, v8, [Landroid/os/Parcelable;

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [Landroid/os/Parcelable;

    invoke-virtual {v9, v0, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 384
    :cond_5
    if-nez v4, :cond_8

    invoke-static/range {p2 .. p2}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 385
    invoke-direct {v1, v6}, Lcom/android/internal/app/IntentForwarderActivity;->getUriFromIntent(Landroid/content/Intent;)Ljava/util/ArrayList;

    move-result-object v0

    .line 386
    .local v0, "intentUris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    if-nez v0, :cond_6

    .line 387
    sget-object v14, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    const-string v15, "intentUris is null"

    invoke-static {v14, v15}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 388
    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v15

    const/16 v7, 0xfa

    if-ge v15, v7, :cond_7

    .line 389
    sget-object v7, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v15, "storeData"

    invoke-static {v7, v15}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    invoke-direct {v1, v6}, Lcom/android/internal/app/IntentForwarderActivity;->isAbleToUsingCopyToSecureFolder(Landroid/content/Intent;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 391
    sget-object v7, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v15, "register storeData"

    invoke-static {v7, v15}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    new-array v7, v14, [Landroid/content/Intent;

    .line 393
    .local v7, "addIntents":[Landroid/content/Intent;
    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14, v6}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 394
    .local v14, "alternativeIntent":Landroid/content/Intent;
    const-string v15, "com.sec.knox.action.storeData"

    invoke-virtual {v14, v15}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 395
    const v15, 0x3000001

    invoke-virtual {v14, v15}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 396
    const-string v15, "crossProfileTargetUserId"

    invoke-virtual {v14, v15, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 397
    aput-object v14, v7, v8

    .line 398
    const-string v15, "android.intent.extra.ALTERNATE_INTENTS"

    invoke-virtual {v9, v15, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 399
    nop

    .end local v7    # "addIntents":[Landroid/content/Intent;
    .end local v14    # "alternativeIntent":Landroid/content/Intent;
    goto :goto_2

    .line 401
    :cond_7
    sget-object v7, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "intentUris exceeds 250 | "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v7, v14}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    .end local v0    # "intentUris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :cond_8
    :goto_2
    iput-object v9, v1, Lcom/android/internal/app/IntentForwarderActivity;->tempIntent:Landroid/content/Intent;

    .line 405
    iget-object v0, v1, Lcom/android/internal/app/IntentForwarderActivity;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, v3}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 408
    .local v0, "ui":Landroid/content/pm/UserInfo;
    invoke-static/range {p2 .. p2}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v7

    if-eqz v7, :cond_9

    iget-object v7, v1, Lcom/android/internal/app/IntentForwarderActivity;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v7, v3}, Landroid/app/KeyguardManager;->isDeviceSecure(I)Z

    move-result v7

    if-eqz v7, :cond_9

    iget-object v7, v1, Lcom/android/internal/app/IntentForwarderActivity;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v7, v3}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isSuperLocked()Z

    move-result v7

    if-nez v7, :cond_9

    .line 409
    invoke-direct {v1, v3}, Lcom/android/internal/app/IntentForwarderActivity;->showKeyguard(I)V

    goto :goto_3

    .line 411
    :cond_9
    const/4 v7, 0x0

    invoke-virtual {v1, v9, v7, v8, v3}, Lcom/android/internal/app/IntentForwarderActivity;->startActivityAsCaller(Landroid/content/Intent;Landroid/os/Bundle;ZI)V

    .line 413
    .end local v0    # "ui":Landroid/content/pm/UserInfo;
    .end local v9    # "ChooserIntent":Landroid/content/Intent;
    .end local v10    # "pa":[Landroid/os/Parcelable;
    .end local v11    # "srcExcludeComponents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    .end local v12    # "policyExcludeComponents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    .end local v13    # "finalExcludeComponents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    :goto_3
    goto :goto_4

    .line 416
    :cond_a
    const/4 v0, 0x0

    invoke-virtual {v1, v2, v0, v8, v3}, Lcom/android/internal/app/IntentForwarderActivity;->startActivityAsCaller(Landroid/content/Intent;Landroid/os/Bundle;ZI)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 426
    .end local v4    # "callingUserId":I
    .end local v5    # "forwardfromKnox":Z
    .end local v6    # "drivingIntent":Landroid/content/Intent;
    :goto_4
    goto :goto_5

    .line 422
    :catch_0
    move-exception v0

    .line 423
    .local v0, "e":Ljava/lang/RuntimeException;
    sget-object v4, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to launch as UID "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IntentForwarderActivity;->getLaunchedFromUid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 424
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IntentForwarderActivity;->getLaunchedFromPackage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", while running in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 425
    invoke-static {}, Landroid/app/ActivityThread;->currentProcessName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 423
    invoke-static {v4, v5, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 427
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_5
    return-void
.end method


# virtual methods
.method protected blacklist createInjector()Lcom/android/internal/app/IntentForwarderActivity$Injector;
    .locals 2

    .line 613
    new-instance v0, Lcom/android/internal/app/IntentForwarderActivity$InjectorImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/app/IntentForwarderActivity$InjectorImpl;-><init>(Lcom/android/internal/app/IntentForwarderActivity;Lcom/android/internal/app/IntentForwarderActivity$InjectorImpl-IA;)V

    return-object v0
.end method

.method protected blacklist getMetricsLogger()Lcom/android/internal/logging/MetricsLogger;
    .locals 1

    .line 605
    iget-object v0, p0, Lcom/android/internal/app/IntentForwarderActivity;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    if-nez v0, :cond_0

    .line 606
    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/IntentForwarderActivity;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 608
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/IntentForwarderActivity;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    return-object v0
.end method

.method synthetic blacklist lambda$getForwardToPersonalMessage$2$com-android-internal-app-IntentForwarderActivity()Ljava/lang/String;
    .locals 1

    .line 288
    const v0, 0x1040564

    invoke-virtual {p0, v0}, Lcom/android/internal/app/IntentForwarderActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method synthetic blacklist lambda$getForwardToWorkMessage$3$com-android-internal-app-IntentForwarderActivity()Ljava/lang/String;
    .locals 1

    .line 294
    const v0, 0x1040565

    invoke-virtual {p0, v0}, Lcom/android/internal/app/IntentForwarderActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method synthetic blacklist lambda$onCreate$0$com-android-internal-app-IntentForwarderActivity(IILandroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ResolveInfo;)Landroid/content/pm/ResolveInfo;
    .locals 6
    .param p1, "callingUserId"    # I
    .param p2, "targetUserId"    # I
    .param p3, "newIntent"    # Landroid/content/Intent;
    .param p4, "intentReceived"    # Landroid/content/Intent;
    .param p5, "className"    # Ljava/lang/String;
    .param p6, "targetResolveInfo"    # Landroid/content/pm/ResolveInfo;

    .line 256
    if-nez p1, :cond_0

    invoke-static {p2}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 257
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p2, :cond_2

    .line 258
    :cond_1
    sget-object v0, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startActivityAsCaller 1 : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    invoke-direct {p0, p3, p2}, Lcom/android/internal/app/IntentForwarderActivity;->startActivityAsCaller(Landroid/content/Intent;I)V

    .line 260
    return-object p6

    .line 263
    :cond_2
    invoke-direct {p0, p6}, Lcom/android/internal/app/IntentForwarderActivity;->isResolverActivityResolveInfo(Landroid/content/pm/ResolveInfo;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 264
    sget-object v0, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "launchResolverActivityWithCorrectTab 1 : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    move-object v0, p0

    move-object v1, p4

    move-object v2, p5

    move-object v3, p3

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/app/IntentForwarderActivity;->launchResolverActivityWithCorrectTab(Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;II)V

    .line 267
    return-object p6

    .line 269
    :cond_3
    sget-object v0, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startActivityAsCaller 2 : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    invoke-direct {p0, p3, p2}, Lcom/android/internal/app/IntentForwarderActivity;->startActivityAsCaller(Landroid/content/Intent;I)V

    .line 271
    return-object p6
.end method

.method synthetic blacklist lambda$onCreate$1$com-android-internal-app-IntentForwarderActivity(Ljava/lang/String;Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)V
    .locals 3
    .param p1, "userMessage"    # Ljava/lang/String;
    .param p2, "intentReceived"    # Landroid/content/Intent;
    .param p3, "result"    # Landroid/content/pm/ResolveInfo;

    .line 274
    sget-object v0, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "maybeShowDisclosure | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    invoke-direct {p0, p2, p3, p1}, Lcom/android/internal/app/IntentForwarderActivity;->maybeShowDisclosure(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Ljava/lang/String;)V

    .line 276
    sget-object v0, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "waiting response | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/app/IntentForwarderActivity;->mWaitingForresponse:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    iget-boolean v0, p0, Lcom/android/internal/app/IntentForwarderActivity;->mWaitingForresponse:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/app/IntentForwarderActivity;->finish()V

    .line 278
    :cond_0
    return-void
.end method

.method public whitelist onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 692
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/IntentForwarderActivity;->mWaitingForresponse:Z

    .line 693
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    .line 694
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    .line 695
    sget-object v2, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "unlock keyguard"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    invoke-static {}, Landroid/os/StrictMode;->disableDeathOnFileUriExposure()V

    .line 698
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/app/IntentForwarderActivity;->tempIntent:Landroid/content/Intent;

    iget v3, p0, Lcom/android/internal/app/IntentForwarderActivity;->mFinalTargetUserId:I

    invoke-virtual {p0, v2, v1, v0, v3}, Lcom/android/internal/app/IntentForwarderActivity;->startActivityAsCaller(Landroid/content/Intent;Landroid/os/Bundle;ZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 700
    invoke-static {}, Landroid/os/StrictMode;->enableDeathOnFileUriExposure()V

    .line 701
    goto :goto_0

    .line 700
    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/os/StrictMode;->enableDeathOnFileUriExposure()V

    .line 701
    throw v0

    .line 703
    :cond_0
    sget-object v0, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    const-string v1, "cancel keyguard"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 706
    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/IntentForwarderActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_2

    .line 707
    invoke-virtual {p0, v0}, Lcom/android/internal/app/IntentForwarderActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 708
    iput-object v1, p0, Lcom/android/internal/app/IntentForwarderActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 710
    :cond_2
    sget-object v0, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "unknown response"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/app/IntentForwarderActivity;->finish()V

    .line 713
    return-void
.end method

.method protected whitelist onCreate(Landroid/os/Bundle;)V
    .locals 17
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 150
    move-object/from16 v8, p0

    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 151
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IntentForwarderActivity;->createInjector()Lcom/android/internal/app/IntentForwarderActivity$Injector;

    move-result-object v0

    iput-object v0, v8, Lcom/android/internal/app/IntentForwarderActivity;->mInjector:Lcom/android/internal/app/IntentForwarderActivity$Injector;

    .line 152
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, v8, Lcom/android/internal/app/IntentForwarderActivity;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 154
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IntentForwarderActivity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    .line 155
    .local v9, "intentReceived":Landroid/content/Intent;
    invoke-virtual {v9}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v10

    .line 160
    .local v10, "className":Ljava/lang/String;
    const/4 v1, -0x1

    .line 161
    .local v1, "targetUserIdForKnox":I
    const-string/jumbo v0, "user"

    invoke-virtual {v8, v0}, Lcom/android/internal/app/IntentForwarderActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, v8, Lcom/android/internal/app/IntentForwarderActivity;->mUserManager:Landroid/os/UserManager;

    .line 163
    const-string v0, "keyguard"

    invoke-virtual {v8, v0}, Lcom/android/internal/app/IntentForwarderActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, v8, Lcom/android/internal/app/IntentForwarderActivity;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 164
    const-string/jumbo v0, "persona"

    invoke-virtual {v8, v0}, Lcom/android/internal/app/IntentForwarderActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemPersonaManager;

    iput-object v0, v8, Lcom/android/internal/app/IntentForwarderActivity;->mPersona:Lcom/samsung/android/knox/SemPersonaManager;

    .line 169
    const/4 v2, -0x1

    :try_start_0
    const-string v0, "crossProfileTargetUserId"

    invoke-virtual {v9, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    .line 173
    goto :goto_0

    .line 170
    :catch_0
    move-exception v0

    .line 172
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    const-string v4, "No crossProfileTargetUserId!"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 175
    .end local v1    # "targetUserIdForKnox":I
    .local v0, "targetUserIdForKnox":I
    :goto_0
    sget-object v1, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "targetUserIdForKnox:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    sget-object v1, Lcom/android/internal/app/IntentForwarderActivity;->FORWARD_INTENT_TO_PARENT:Ljava/lang/String;

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v3, 0x67d

    if-eqz v1, :cond_1

    .line 180
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IntentForwarderActivity;->getUserId()I

    move-result v1

    .line 181
    .local v1, "callingId":I
    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 182
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/app/IntentForwarderActivity;->getForwardToPersonalMessageFromSecureFolder()Ljava/lang/String;

    move-result-object v2

    .local v2, "userMessage":Ljava/lang/String;
    goto :goto_1

    .line 184
    .end local v2    # "userMessage":Ljava/lang/String;
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/app/IntentForwarderActivity;->getForwardToPersonalMessage()Ljava/lang/String;

    move-result-object v2

    .line 188
    .restart local v2    # "userMessage":Ljava/lang/String;
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/app/IntentForwarderActivity;->getProfileParent()I

    move-result v4

    .line 190
    .local v4, "targetUserId":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IntentForwarderActivity;->getMetricsLogger()Lcom/android/internal/logging/MetricsLogger;

    move-result-object v5

    new-instance v6, Landroid/metrics/LogMaker;

    invoke-direct {v6, v3}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 v3, 0x1

    .line 192
    invoke-virtual {v6, v3}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v3

    .line 190
    invoke-virtual {v5, v3}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 193
    .end local v1    # "callingId":I
    move-object v11, v2

    move v12, v4

    goto :goto_3

    .end local v2    # "userMessage":Ljava/lang/String;
    .end local v4    # "targetUserId":I
    :cond_1
    sget-object v1, Lcom/android/internal/app/IntentForwarderActivity;->FORWARD_INTENT_TO_MANAGED_PROFILE:Ljava/lang/String;

    invoke-virtual {v10, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 194
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/app/IntentForwarderActivity;->getForwardToWorkMessage()Ljava/lang/String;

    move-result-object v1

    .line 198
    .local v1, "userMessage":Ljava/lang/String;
    if-eq v0, v2, :cond_2

    .line 199
    move v2, v0

    move v4, v2

    .local v2, "targetUserId":I
    goto :goto_2

    .line 202
    .end local v2    # "targetUserId":I
    :cond_2
    const/4 v4, -0x1

    .line 204
    .local v4, "whichContainer":I
    sget-object v5, Lcom/android/internal/app/IntentForwarderActivity;->FORWARD_INTENT_TO_MANAGED_PROFILE4:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 205
    const/high16 v4, 0x20000

    .line 208
    :cond_3
    if-eq v4, v2, :cond_4

    .line 209
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/knox/SemPersonaManager;->getSecureFolderId(Landroid/content/Context;)I

    move-result v2

    move v4, v2

    .restart local v2    # "targetUserId":I
    goto :goto_2

    .line 211
    .end local v2    # "targetUserId":I
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/app/IntentForwarderActivity;->getManagedProfile()I

    move-result v2

    move v4, v2

    .line 216
    .local v4, "targetUserId":I
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IntentForwarderActivity;->getMetricsLogger()Lcom/android/internal/logging/MetricsLogger;

    move-result-object v2

    new-instance v5, Landroid/metrics/LogMaker;

    invoke-direct {v5, v3}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 v3, 0x2

    .line 218
    invoke-virtual {v5, v3}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v3

    .line 216
    invoke-virtual {v2, v3}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    move-object v11, v1

    move v12, v4

    goto :goto_3

    .line 220
    .end local v1    # "userMessage":Ljava/lang/String;
    .end local v4    # "targetUserId":I
    :cond_5
    sget-object v1, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v3, Lcom/android/internal/app/IntentForwarderActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " cannot be called directly"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    const/4 v2, 0x0

    .line 222
    .local v2, "userMessage":Ljava/lang/String;
    const/16 v4, -0x2710

    move-object v11, v2

    move v12, v4

    .line 224
    .end local v2    # "userMessage":Ljava/lang/String;
    .local v11, "userMessage":Ljava/lang/String;
    .local v12, "targetUserId":I
    :goto_3
    const/16 v1, -0x2710

    if-ne v12, v1, :cond_6

    .line 226
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IntentForwarderActivity;->finish()V

    .line 227
    return-void

    .line 229
    :cond_6
    invoke-virtual {v9}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.CHOOSER"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 230
    invoke-direct {v8, v9, v10}, Lcom/android/internal/app/IntentForwarderActivity;->launchChooserActivityWithCorrectTab(Landroid/content/Intent;Ljava/lang/String;)V

    .line 231
    return-void

    .line 234
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IntentForwarderActivity;->getUserId()I

    move-result v13

    .line 235
    .local v13, "callingUserId":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IntentForwarderActivity;->getUserId()I

    move-result v1

    iget-object v2, v8, Lcom/android/internal/app/IntentForwarderActivity;->mInjector:Lcom/android/internal/app/IntentForwarderActivity$Injector;

    .line 236
    invoke-interface {v2}, Lcom/android/internal/app/IntentForwarderActivity$Injector;->getIPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IntentForwarderActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 235
    invoke-static {v9, v1, v12, v2, v3}, Lcom/android/internal/app/IntentForwarderActivity;->canForward(Landroid/content/Intent;IILandroid/content/pm/IPackageManager;Landroid/content/ContentResolver;)Landroid/content/Intent;

    move-result-object v14

    .line 239
    .local v14, "newIntent":Landroid/content/Intent;
    iput v13, v8, Lcom/android/internal/app/IntentForwarderActivity;->mFinalCallingUserId:I

    .line 240
    iput v12, v8, Lcom/android/internal/app/IntentForwarderActivity;->mFinalTargetUserId:I

    .line 241
    sget-object v1, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "forward intent from : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v8, Lcom/android/internal/app/IntentForwarderActivity;->mFinalCallingUserId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v8, Lcom/android/internal/app/IntentForwarderActivity;->mFinalTargetUserId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    if-nez v14, :cond_8

    .line 245
    sget-object v1, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "the intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " cannot be forwarded from user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IntentForwarderActivity;->finish()V

    .line 248
    return-void

    .line 250
    :cond_8
    invoke-virtual {v14, v13}, Landroid/content/Intent;->prepareToLeaveUser(I)V

    .line 251
    iget-object v1, v8, Lcom/android/internal/app/IntentForwarderActivity;->mInjector:Lcom/android/internal/app/IntentForwarderActivity$Injector;

    const/high16 v2, 0x10000

    .line 252
    invoke-interface {v1, v14, v2, v12}, Lcom/android/internal/app/IntentForwarderActivity$Injector;->resolveActivityAsUser(Landroid/content/Intent;II)Ljava/util/concurrent/CompletableFuture;

    move-result-object v15

    .line 253
    .local v15, "targetResolveInfoFuture":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Landroid/content/pm/ResolveInfo;>;"
    new-instance v7, Lcom/android/internal/app/IntentForwarderActivity$$ExternalSyntheticLambda0;

    move-object v1, v7

    move-object/from16 v2, p0

    move v3, v13

    move v4, v12

    move-object v5, v14

    move-object v6, v9

    move/from16 v16, v0

    move-object v0, v7

    .end local v0    # "targetUserIdForKnox":I
    .local v16, "targetUserIdForKnox":I
    move-object v7, v10

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/app/IntentForwarderActivity$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/app/IntentForwarderActivity;IILandroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;)V

    iget-object v1, v8, Lcom/android/internal/app/IntentForwarderActivity;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 254
    invoke-virtual {v15, v0, v1}, Ljava/util/concurrent/CompletableFuture;->thenApplyAsync(Ljava/util/function/Function;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    new-instance v1, Lcom/android/internal/app/IntentForwarderActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, v8, v11, v9}, Lcom/android/internal/app/IntentForwarderActivity$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/app/IntentForwarderActivity;Ljava/lang/String;Landroid/content/Intent;)V

    .line 278
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IntentForwarderActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    .line 273
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/CompletableFuture;->thenAcceptAsync(Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    .line 279
    return-void
.end method

.method protected whitelist onDestroy()V
    .locals 3

    .line 136
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/app/IntentForwarderActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {p0, v0}, Lcom/android/internal/app/IntentForwarderActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 138
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/IntentForwarderActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    :cond_0
    goto :goto_0

    .line 140
    :catch_0
    move-exception v0

    .line 141
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    sget-object v1, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "receiver not registered."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 145
    iget-object v0, p0, Lcom/android/internal/app/IntentForwarderActivity;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 146
    return-void
.end method
