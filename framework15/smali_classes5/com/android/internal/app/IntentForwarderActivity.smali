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

.field public static final blacklist EXTRA_SKIP_USER_CONFIRMATION:Ljava/lang/String; = "com.android.internal.app.EXTRA_SKIP_USER_CONFIRMATION"

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
.method public static synthetic blacklist $r8$lambda$0hcY2bSsvhsO0uSE7N2yNdZqKcA(Lcom/android/internal/app/IntentForwarderActivity;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/app/IntentForwarderActivity;->lambda$getOpenInWorkMessage$6()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$1PQBLc64m4jEkb0W9YLJRuaQ7O4(Lcom/android/internal/app/IntentForwarderActivity;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/app/IntentForwarderActivity;->lambda$getForwardToWorkMessage$11()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$4B4TW-NWfsMvambXu92KuIUtPVI(Lcom/android/internal/app/IntentForwarderActivity;Landroid/content/Intent;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/app/IntentForwarderActivity;->lambda$buildMiniResolver$4(Landroid/content/Intent;ILandroid/view/View;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$6nbD4uXbFVbAJDvC34Kras_NUHQ(Lcom/android/internal/app/IntentForwarderActivity;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;IILandroid/content/pm/ResolveInfo;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/android/internal/app/IntentForwarderActivity;->lambda$buildAndExecuteForPrivateProfile$2(Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;IILandroid/content/pm/ResolveInfo;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$AIC0F7pD1w8JZynzPklJpHgJn8E(Lcom/android/internal/app/IntentForwarderActivity;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/app/IntentForwarderActivity;->lambda$getForwardToPersonalMessage$10()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$DteU3l19bC1Rcku1FIRt1HqyuII(Lcom/android/internal/app/IntentForwarderActivity;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;Landroid/content/pm/UserInfo;Landroid/content/pm/ResolveInfo;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/android/internal/app/IntentForwarderActivity;->lambda$buildAndExecute$1(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;Landroid/content/pm/UserInfo;Landroid/content/pm/ResolveInfo;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$PxTv02hY1mxPo7Pg9wS0wbPYOUQ(Lcom/android/internal/app/IntentForwarderActivity;IILandroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ResolveInfo;)Landroid/content/pm/ResolveInfo;
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/android/internal/app/IntentForwarderActivity;->lambda$buildAndExecute$0(IILandroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ResolveInfo;)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$VZL_aJxYqLtaKA0I_ylNEWkzVDA(Lcom/android/internal/app/IntentForwarderActivity;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/app/IntentForwarderActivity;->lambda$getWorkTelephonyInfoSectionMessage$9()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$Zmp_Ag7wGqdFSDb_KODU_CNc4k4(Lcom/android/internal/app/IntentForwarderActivity;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/app/IntentForwarderActivity;->lambda$getWorkTelephonyInfoSectionMessage$8()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$pFXbvuMUDM3xSLrp4NnmoVgeoUU(Lcom/android/internal/app/IntentForwarderActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/app/IntentForwarderActivity;->lambda$buildMiniResolver$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$qKW2xdvY9Vuo4MJ2AwVYUbnOn9o(Lcom/android/internal/app/IntentForwarderActivity;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/app/IntentForwarderActivity;->lambda$getOpenInWorkMessage$5()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$zOE_9CeOMzpWiiDA4exCHseBb2E(Lcom/android/internal/app/IntentForwarderActivity;Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/app/IntentForwarderActivity;->lambda$getOpenInWorkMessage$7(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 5

    const-string v0, "IntentForwarderActivity"

    sput-object v0, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    const-string v0, "com.android.internal.app.ForwardIntentToParent"

    sput-object v0, Lcom/android/internal/app/IntentForwarderActivity;->FORWARD_INTENT_TO_PARENT:Ljava/lang/String;

    const-string v0, "com.android.internal.app.ForwardIntentToManagedProfile"

    sput-object v0, Lcom/android/internal/app/IntentForwarderActivity;->FORWARD_INTENT_TO_MANAGED_PROFILE:Ljava/lang/String;

    new-instance v0, Ljava/util/HashSet;

    const-string/jumbo v1, "mms"

    const-string/jumbo v2, "mmsto"

    const-string/jumbo v3, "sms"

    const-string/jumbo v4, "smsto"

    filled-new-array {v3, v4, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/internal/app/IntentForwarderActivity;->ALLOWED_TEXT_MESSAGE_SCHEMES:Ljava/util/Set;

    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android"

    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/app/IntentForwarderActivity;->RESOLVER_COMPONENT_NAME:Landroid/content/ComponentName;

    const-string v0, "com.android.internal.app.ForwardIntentToManagedProfile4"

    sput-object v0, Lcom/android/internal/app/IntentForwarderActivity;->FORWARD_INTENT_TO_MANAGED_PROFILE4:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/IntentForwarderActivity;->TARGET_USER_ID_DEFAULT_VALUE:I

    iput v0, p0, Lcom/android/internal/app/IntentForwarderActivity;->mFinalTargetUserId:I

    iput v0, p0, Lcom/android/internal/app/IntentForwarderActivity;->mFinalCallingUserId:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/IntentForwarderActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/app/IntentForwarderActivity;->mWaitingForresponse:Z

    iput-object v0, p0, Lcom/android/internal/app/IntentForwarderActivity;->mPersona:Lcom/samsung/android/knox/SemPersonaManager;

    iput-object v0, p0, Lcom/android/internal/app/IntentForwarderActivity;->mKeyguardManager:Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/internal/app/IntentForwarderActivity;->mUserManager:Landroid/os/UserManager;

    return-void
.end method

.method private blacklist buildAndExecute(Ljava/util/concurrent/CompletableFuture;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;IILjava/lang/String;Landroid/content/pm/UserInfo;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletableFuture<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "Landroid/content/Intent;",
            "II",
            "Ljava/lang/String;",
            "Landroid/content/pm/UserInfo;",
            ")V"
        }
    .end annotation

    new-instance v7, Lcom/android/internal/app/IntentForwarderActivity$$ExternalSyntheticLambda10;

    move-object v0, v7

    move-object v1, p0

    move/from16 v2, p5

    move/from16 v3, p6

    move-object v4, p4

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/app/IntentForwarderActivity$$ExternalSyntheticLambda10;-><init>(Lcom/android/internal/app/IntentForwarderActivity;IILandroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;)V

    move-object v8, p0

    iget-object v0, v8, Lcom/android/internal/app/IntentForwarderActivity;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    move-object v9, p1

    invoke-virtual {p1, v7, v0}, Ljava/util/concurrent/CompletableFuture;->thenApplyAsync(Ljava/util/function/Function;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v7

    new-instance v10, Lcom/android/internal/app/IntentForwarderActivity$$ExternalSyntheticLambda11;

    move-object v0, v10

    move-object v2, p3

    move-object v3, p2

    move-object/from16 v4, p7

    move-object v5, p4

    move-object/from16 v6, p8

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/app/IntentForwarderActivity$$ExternalSyntheticLambda11;-><init>(Lcom/android/internal/app/IntentForwarderActivity;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;Landroid/content/pm/UserInfo;)V

    invoke-virtual {p0}, Lcom/android/internal/app/IntentForwarderActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-virtual {v7, v10, v0}, Ljava/util/concurrent/CompletableFuture;->thenAcceptAsync(Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    return-void
.end method

.method private blacklist buildAndExecuteForPrivateProfile(Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;II)V
    .locals 9

    iget-object v0, p0, Lcom/android/internal/app/IntentForwarderActivity;->mInjector:Lcom/android/internal/app/IntentForwarderActivity$Injector;

    const/high16 v1, 0x10000

    invoke-interface {v0, p3, v1, p5}, Lcom/android/internal/app/IntentForwarderActivity$Injector;->resolveActivityAsUser(Landroid/content/Intent;II)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    new-instance v8, Lcom/android/internal/app/IntentForwarderActivity$$ExternalSyntheticLambda2;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/app/IntentForwarderActivity$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/app/IntentForwarderActivity;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;II)V

    invoke-virtual {p0}, Lcom/android/internal/app/IntentForwarderActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-virtual {v0, v8, v1}, Ljava/util/concurrent/CompletableFuture;->thenAcceptAsync(Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    return-void
.end method

.method private blacklist buildMiniResolver(Landroid/content/pm/ResolveInfo;Landroid/content/Intent;ILjava/lang/String;Landroid/content/pm/PackageManager;)V
    .locals 7

    const v0, 0x10900c1

    invoke-virtual {p0, v0}, Lcom/android/internal/app/IntentForwarderActivity;->setContentView(I)V

    const v1, 0x1020658

    invoke-virtual {p0, v1}, Lcom/android/internal/app/IntentForwarderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setElevation(F)V

    const v1, 0x1020006

    invoke-virtual {p0, v1}, Lcom/android/internal/app/IntentForwarderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    nop

    invoke-direct {p0, p1, p2, p3, p5}, Lcom/android/internal/app/IntentForwarderActivity;->getAppIcon(Landroid/content/pm/ResolveInfo;Landroid/content/Intent;ILandroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v3, 0x102023f

    invoke-virtual {p0, v3}, Lcom/android/internal/app/IntentForwarderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    invoke-virtual {v3, v4, v4, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    const v4, 0x1020474

    invoke-virtual {p0, v4}, Lcom/android/internal/app/IntentForwarderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v4, 0x10206a1

    invoke-virtual {p0, v4}, Lcom/android/internal/app/IntentForwarderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    const/high16 v6, 0x1040000

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(I)V

    invoke-virtual {p0, v4}, Lcom/android/internal/app/IntentForwarderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/android/internal/app/IntentForwarderActivity$$ExternalSyntheticLambda4;

    invoke-direct {v5, p0}, Lcom/android/internal/app/IntentForwarderActivity$$ExternalSyntheticLambda4;-><init>(Lcom/android/internal/app/IntentForwarderActivity;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v4, 0x1020241

    invoke-virtual {p0, v4}, Lcom/android/internal/app/IntentForwarderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/android/internal/app/IntentForwarderActivity$$ExternalSyntheticLambda5;

    invoke-direct {v5, p0, p2, p3}, Lcom/android/internal/app/IntentForwarderActivity$$ExternalSyntheticLambda5;-><init>(Lcom/android/internal/app/IntentForwarderActivity;Landroid/content/Intent;I)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v4, 0x1020278

    invoke-virtual {p0, v4}, Lcom/android/internal/app/IntentForwarderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v2, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v2, v5}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public static blacklist canForward(Landroid/content/Intent;IILandroid/content/pm/IPackageManager;Landroid/content/ContentResolver;)Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const/high16 v1, 0x3000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {v0}, Lcom/android/internal/app/IntentForwarderActivity;->sanitizeIntent(Landroid/content/Intent;)V

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/internal/app/IntentForwarderActivity;->canForwardInner(Landroid/content/Intent;IILandroid/content/pm/IPackageManager;Landroid/content/ContentResolver;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    invoke-virtual {v0}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/app/IntentForwarderActivity;->sanitizeIntent(Landroid/content/Intent;)V

    invoke-virtual {v0}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1, p1, p2, p3, p4}, Lcom/android/internal/app/IntentForwarderActivity;->canForwardInner(Landroid/content/Intent;IILandroid/content/pm/IPackageManager;Landroid/content/ContentResolver;)Z

    move-result v1

    if-nez v1, :cond_1

    return-object v2

    :cond_1
    return-object v0
.end method

.method private static blacklist canForwardInner(Landroid/content/Intent;IILandroid/content/pm/IPackageManager;Landroid/content/ContentResolver;)Z
    .locals 5

    const-string v0, "android.intent.action.CHOOSER"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, p4}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-interface {p3, p0, v0, p1, p2}, Landroid/content/pm/IPackageManager;->canForwardTo(Landroid/content/Intent;Ljava/lang/String;II)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    return v1

    :cond_1
    goto :goto_0

    :catch_0
    move-exception v2

    sget-object v3, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    const-string v4, "PackageManagerService is dead?"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1
.end method

.method private blacklist findSelectedProfile(Ljava/lang/String;)I
    .locals 1

    sget-object v0, Lcom/android/internal/app/IntentForwarderActivity;->FORWARD_INTENT_TO_PARENT:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    sget-object v0, Lcom/android/internal/app/IntentForwarderActivity;->FORWARD_INTENT_TO_MANAGED_PROFILE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method private blacklist getAppIcon(Landroid/content/pm/ResolveInfo;Landroid/content/Intent;ILandroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 5

    invoke-direct {p0, p2}, Lcom/android/internal/app/IntentForwarderActivity;->isDialerIntent(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    nop

    invoke-virtual {p0}, Lcom/android/internal/app/IntentForwarderActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/telecom/TelecomManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    nop

    invoke-static {p3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/telecom/TelecomManager;->getDefaultDialerPackage(Landroid/os/UserHandle;)Ljava/lang/String;

    move-result-object v1

    nop

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p4, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    invoke-virtual {v2, p4}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v2

    sget-object v3, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    const-string v4, "Cannot load icon for default dialer package"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p1, p4}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getCompListfromParcelableList([Landroid/os/Parcelable;)Ljava/util/ArrayList;
    .locals 3
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

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    array-length v1, p1

    if-lez v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    aget-object v2, p1, v1

    instance-of v2, v2, Landroid/content/ComponentName;

    if-eqz v2, :cond_0

    aget-object v2, p1, v1

    check-cast v2, Landroid/content/ComponentName;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

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

    const/4 v0, 0x0

    const-string v1, " a ComponentName: "

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v2

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

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

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    if-nez v0, :cond_1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v2

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

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

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method private blacklist getForwardToPersonalMessage()Ljava/lang/String;
    .locals 3

    const-class v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, v0}, Lcom/android/internal/app/IntentForwarderActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v0

    new-instance v1, Lcom/android/internal/app/IntentForwarderActivity$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lcom/android/internal/app/IntentForwarderActivity$$ExternalSyntheticLambda9;-><init>(Lcom/android/internal/app/IntentForwarderActivity;)V

    const-string v2, "Core.FORWARD_INTENT_TO_PERSONAL"

    invoke-virtual {v0, v2, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getForwardToPersonalMessageFromSecureFolder()Ljava/lang/String;
    .locals 2

    const v0, 0x10405a8

    invoke-virtual {p0, v0}, Lcom/android/internal/app/IntentForwarderActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x1040d6e

    invoke-virtual {p0, v1}, Lcom/android/internal/app/IntentForwarderActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getForwardToWorkMessage()Ljava/lang/String;
    .locals 3

    const-class v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, v0}, Lcom/android/internal/app/IntentForwarderActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v0

    new-instance v1, Lcom/android/internal/app/IntentForwarderActivity$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/internal/app/IntentForwarderActivity$$ExternalSyntheticLambda3;-><init>(Lcom/android/internal/app/IntentForwarderActivity;)V

    const-string v2, "Core.FORWARD_INTENT_TO_WORK"

    invoke-virtual {v0, v2, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getManagedProfile()Landroid/content/pm/UserInfo;
    .locals 4

    iget-object v0, p0, Lcom/android/internal/app/IntentForwarderActivity;->mInjector:Lcom/android/internal/app/IntentForwarderActivity$Injector;

    invoke-interface {v0}, Lcom/android/internal/app/IntentForwarderActivity$Injector;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    goto :goto_0

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

    const/4 v1, 0x0

    return-object v1
.end method

.method private blacklist getOpenInWorkButtonString(Landroid/content/Intent;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/internal/app/IntentForwarderActivity;->isDialerIntent(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x104086a

    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/app/IntentForwarderActivity;->isTextMessageIntent(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x1040873

    return v0

    :cond_1
    const v0, 0x1041065

    return v0
.end method

.method private blacklist getOpenInWorkMessage(Landroid/content/Intent;Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 4

    invoke-direct {p0, p1}, Lcom/android/internal/app/IntentForwarderActivity;->isDialerIntent(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, v0}, Lcom/android/internal/app/IntentForwarderActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v0

    new-instance v1, Lcom/android/internal/app/IntentForwarderActivity$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/android/internal/app/IntentForwarderActivity$$ExternalSyntheticLambda6;-><init>(Lcom/android/internal/app/IntentForwarderActivity;)V

    const-string v2, "Core.MINIRESOLVER_CALL_FROM_WORK"

    invoke-virtual {v0, v2, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/app/IntentForwarderActivity;->isTextMessageIntent(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-class v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, v0}, Lcom/android/internal/app/IntentForwarderActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v0

    new-instance v1, Lcom/android/internal/app/IntentForwarderActivity$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/android/internal/app/IntentForwarderActivity$$ExternalSyntheticLambda7;-><init>(Lcom/android/internal/app/IntentForwarderActivity;)V

    const-string v2, "Core.MINIRESOLVER_SWITCH_TO_WORK"

    invoke-virtual {v0, v2, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-class v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, v0}, Lcom/android/internal/app/IntentForwarderActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v0

    new-instance v1, Lcom/android/internal/app/IntentForwarderActivity$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p2}, Lcom/android/internal/app/IntentForwarderActivity$$ExternalSyntheticLambda8;-><init>(Lcom/android/internal/app/IntentForwarderActivity;Ljava/lang/CharSequence;)V

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Core.MINIRESOLVER_OPEN_WORK"

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getPrivateProfile()Landroid/content/pm/UserInfo;
    .locals 4

    iget-object v0, p0, Lcom/android/internal/app/IntentForwarderActivity;->mInjector:Lcom/android/internal/app/IntentForwarderActivity$Injector;

    invoke-interface {v0}, Lcom/android/internal/app/IntentForwarderActivity$Injector;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isPrivateProfile()Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private blacklist getProfileParent()I
    .locals 4

    iget-object v0, p0, Lcom/android/internal/app/IntentForwarderActivity;->mInjector:Lcom/android/internal/app/IntentForwarderActivity$Injector;

    invoke-interface {v0}, Lcom/android/internal/app/IntentForwarderActivity$Injector;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-nez v0, :cond_0

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

    const/16 v1, -0x2710

    return v1

    :cond_0
    iget v1, v0, Landroid/content/pm/UserInfo;->id:I

    return v1
.end method

.method private blacklist getUriFromIntent(Landroid/content/Intent;)Ljava/util/ArrayList;
    .locals 4
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

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.SEND"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "android.intent.extra.STREAM"

    if-eqz v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v3, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method private blacklist getWorkTelephonyInfoSectionMessage(Landroid/content/Intent;)Ljava/lang/String;
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/internal/app/IntentForwarderActivity;->isDialerIntent(Landroid/content/Intent;)Z

    move-result v0

    const-string v1, "Core.MINIRESOLVER_WORK_TELEPHONY_INFORMATION"

    if-eqz v0, :cond_0

    const-class v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, v0}, Lcom/android/internal/app/IntentForwarderActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v0

    new-instance v2, Lcom/android/internal/app/IntentForwarderActivity$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/internal/app/IntentForwarderActivity$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/app/IntentForwarderActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/app/IntentForwarderActivity;->isTextMessageIntent(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-class v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, v0}, Lcom/android/internal/app/IntentForwarderActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v0

    new-instance v2, Lcom/android/internal/app/IntentForwarderActivity$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/android/internal/app/IntentForwarderActivity$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/app/IntentForwarderActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, ""

    return-object v0
.end method

.method private blacklist isAbleToUsingCopyToSecureFolder(Landroid/content/Intent;)Z
    .locals 12

    const/4 v0, 0x0

    const-string v1, "android.intent.extra.EXCLUDE_COMPONENTS"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v1

    const-string v2, "com.samsung.knox.securefolder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".switcher.B2CStoreFilesActivity"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    const/4 v5, 0x0

    :goto_0
    array-length v6, v1

    if-ge v5, v6, :cond_1

    aget-object v6, v1, v5

    instance-of v6, v6, Landroid/content/ComponentName;

    if-eqz v6, :cond_0

    aget-object v6, v1, v5

    check-cast v6, Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    sget-object v7, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "isWantToB2CStore | not support "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/internal/app/IntentForwarderActivity;->getUriFromIntent(Landroid/content/Intent;)Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_9

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_9

    const/4 v6, 0x0

    :goto_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_9

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    if-eqz v7, :cond_8

    invoke-virtual {v7}, Landroid/net/Uri;->getUserInfo()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_2

    invoke-virtual {v7}, Landroid/net/Uri;->getUserInfo()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    const/4 v0, 0x0

    sget-object v4, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "isAbleToUsingCopyToSecureFolder | false | due to userId | "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v7}, Landroid/net/Uri;->getUserInfo()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_2
    const-string/jumbo v8, "file"

    invoke-virtual {v7}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v0, 0x1

    goto :goto_3

    :cond_3
    const-string v8, "content"

    invoke-virtual {v7}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const-string/jumbo v9, "isAbleToUsingCopyToSecureFolder | false | "

    if-eqz v8, :cond_7

    invoke-virtual {v7}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_6

    const-string v10, "@"

    invoke-virtual {v8, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-virtual {v8, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v8, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    :cond_4
    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v10, "media"

    invoke-virtual {v8, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    const/4 v0, 0x1

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    sget-object v4, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_6
    :goto_2
    goto :goto_3

    :cond_7
    const/4 v0, 0x0

    sget-object v4, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_8
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    :cond_9
    :goto_4
    sget-object v4, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isAbleToUsingCopyToSecureFolder | "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private blacklist isDeviceProvisioned()Z
    .locals 3

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

    const-string v0, "android.intent.action.DIAL"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.CALL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.CALL_PRIVILEGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.CALL_EMERGENCY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/internal/app/IntentForwarderActivity;->isViewActionIntent(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "tel"

    invoke-virtual {p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private blacklist isIntentForwarderResolveInfo(Landroid/content/pm/ResolveInfo;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v1, :cond_1

    return v0

    :cond_1
    const-string v2, "android"

    iget-object v3, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v0

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

.method private blacklist isPrivateProfile(I)Z
    .locals 2

    invoke-direct {p0}, Lcom/android/internal/app/IntentForwarderActivity;->getPrivateProfile()Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/internal/app/IntentForwarderActivity;->privateSpaceFlagsEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget v1, v0, Landroid/content/pm/UserInfo;->id:I

    if-ne v1, p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private blacklist isResolverActivityResolveInfo(Landroid/content/pm/ResolveInfo;)Z
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/app/IntentForwarderActivity;->RESOLVER_COMPONENT_NAME:Landroid/content/ComponentName;

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v1}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist isTargetResolverOrChooserActivity(Landroid/content/pm/ActivityInfo;)Z
    .locals 3

    const-string v0, "android"

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-class v0, Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private blacklist isTextMessageIntent(Landroid/content/Intent;)Z
    .locals 2

    const-string v0, "android.intent.action.SENDTO"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/internal/app/IntentForwarderActivity;->isViewActionIntent(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/android/internal/app/IntentForwarderActivity;->ALLOWED_TEXT_MESSAGE_SCHEMES:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist isViewActionIntent(Landroid/content/Intent;)Z
    .locals 2

    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.intent.category.BROWSABLE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private synthetic blacklist lambda$buildAndExecute$0(IILandroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ResolveInfo;)Landroid/content/pm/ResolveInfo;
    .locals 8

    if-nez p1, :cond_0

    invoke-static {p2}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p2, :cond_2

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

    invoke-direct {p0, p3, p2}, Lcom/android/internal/app/IntentForwarderActivity;->startActivityAsCaller(Landroid/content/Intent;I)V

    return-object p6

    :cond_2
    invoke-direct {p0, p6}, Lcom/android/internal/app/IntentForwarderActivity;->isResolverActivityResolveInfo(Landroid/content/pm/ResolveInfo;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p4

    move-object v3, p5

    move-object v4, p3

    move v5, p1

    move v6, p2

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/app/IntentForwarderActivity;->launchResolverActivityWithCorrectTab(Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;IIZ)V

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/android/internal/app/IntentForwarderActivity;->FORWARD_INTENT_TO_PARENT:Ljava/lang/String;

    invoke-virtual {p5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0, p3, p2}, Lcom/android/internal/app/IntentForwarderActivity;->startActivityAsCaller(Landroid/content/Intent;I)V

    :cond_4
    :goto_0
    return-object p6
.end method

.method private synthetic blacklist lambda$buildAndExecute$1(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;Landroid/content/pm/UserInfo;Landroid/content/pm/ResolveInfo;)V
    .locals 3

    sget-object v0, Lcom/android/internal/app/IntentForwarderActivity;->FORWARD_INTENT_TO_PARENT:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2, p6, p3}, Lcom/android/internal/app/IntentForwarderActivity;->maybeShowDisclosure(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/app/IntentForwarderActivity;->finish()V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/internal/app/IntentForwarderActivity;->FORWARD_INTENT_TO_MANAGED_PROFILE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p6, p4, p5}, Lcom/android/internal/app/IntentForwarderActivity;->maybeShowUserConsentMiniResolver(Landroid/content/pm/ResolveInfo;Landroid/content/Intent;Landroid/content/pm/UserInfo;)V

    :cond_1
    :goto_0
    sget-object v0, Lcom/android/internal/app/IntentForwarderActivity;->FORWARD_INTENT_TO_MANAGED_PROFILE4:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

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

    iget-boolean v0, p0, Lcom/android/internal/app/IntentForwarderActivity;->mWaitingForresponse:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/app/IntentForwarderActivity;->finish()V

    :cond_2
    return-void
.end method

.method private synthetic blacklist lambda$buildAndExecuteForPrivateProfile$2(Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;IILandroid/content/pm/ResolveInfo;)V
    .locals 8

    invoke-direct {p0, p6}, Lcom/android/internal/app/IntentForwarderActivity;->isResolverActivityResolveInfo(Landroid/content/pm/ResolveInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v7, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/app/IntentForwarderActivity;->launchResolverActivityWithCorrectTab(Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;IIZ)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p6, p3, p5}, Lcom/android/internal/app/IntentForwarderActivity;->maybeShowUserConsentMiniResolverPrivate(Landroid/content/pm/ResolveInfo;Landroid/content/Intent;I)V

    :goto_0
    return-void
.end method

.method private synthetic blacklist lambda$buildMiniResolver$3(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/internal/app/IntentForwarderActivity;->finish()V

    return-void
.end method

.method private synthetic blacklist lambda$buildMiniResolver$4(Landroid/content/Intent;ILandroid/view/View;)V
    .locals 3

    nop

    invoke-virtual {p0}, Lcom/android/internal/app/IntentForwarderActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x10a000f

    const v2, 0x10a008f

    invoke-static {v0, v1, v2}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/internal/app/IntentForwarderActivity;->startActivityAsCaller(Landroid/content/Intent;Landroid/os/Bundle;ZI)V

    invoke-virtual {p0}, Lcom/android/internal/app/IntentForwarderActivity;->finish()V

    return-void
.end method

.method private synthetic blacklist lambda$getForwardToPersonalMessage$10()Ljava/lang/String;
    .locals 1

    const v0, 0x10405aa

    invoke-virtual {p0, v0}, Lcom/android/internal/app/IntentForwarderActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$getForwardToWorkMessage$11()Ljava/lang/String;
    .locals 1

    const v0, 0x10405ab

    invoke-virtual {p0, v0}, Lcom/android/internal/app/IntentForwarderActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$getOpenInWorkMessage$5()Ljava/lang/String;
    .locals 1

    const v0, 0x104086b

    invoke-virtual {p0, v0}, Lcom/android/internal/app/IntentForwarderActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$getOpenInWorkMessage$6()Ljava/lang/String;
    .locals 1

    const v0, 0x1040874

    invoke-virtual {p0, v0}, Lcom/android/internal/app/IntentForwarderActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$getOpenInWorkMessage$7(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 2

    const v0, 0x104086f

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/app/IntentForwarderActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$getWorkTelephonyInfoSectionMessage$8()Ljava/lang/String;
    .locals 1

    const v0, 0x104086c

    invoke-virtual {p0, v0}, Lcom/android/internal/app/IntentForwarderActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$getWorkTelephonyInfoSectionMessage$9()Ljava/lang/String;
    .locals 1

    const v0, 0x1040872

    invoke-virtual {p0, v0}, Lcom/android/internal/app/IntentForwarderActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist launchChooserActivityWithCorrectTab(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 5

    invoke-direct {p0, p2}, Lcom/android/internal/app/IntentForwarderActivity;->findSelectedProfile(Ljava/lang/String;)I

    move-result v0

    invoke-static {p1}, Lcom/android/internal/app/IntentForwarderActivity;->sanitizeIntent(Landroid/content/Intent;)V

    const-string v1, "com.android.internal.app.ResolverActivity.EXTRA_SELECTED_PROFILE"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-class v1, Landroid/content/Intent;

    const-string v2, "android.intent.extra.INTENT"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    if-nez v1, :cond_0

    sget-object v2, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    const-string v3, "Cannot start a chooser intent with no extra android.intent.extra.INTENT"

    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {v1}, Lcom/android/internal/app/IntentForwarderActivity;->sanitizeIntent(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/internal/app/IntentForwarderActivity;->getUserId()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->fixUris(I)V

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-static {v3}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v3, 0x0

    :cond_1
    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, p1, v2, v4, v3}, Lcom/android/internal/app/IntentForwarderActivity;->startActivityAsCaller(Landroid/content/Intent;Landroid/os/Bundle;ZI)V

    invoke-virtual {p0}, Lcom/android/internal/app/IntentForwarderActivity;->getUserId()I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/android/internal/app/IntentForwarderActivity;->showForwardFromSecureFolderToast()V

    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/app/IntentForwarderActivity;->finish()V

    return-void
.end method

.method private blacklist launchResolverActivityWithCorrectTab(Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;IIZ)V
    .locals 5

    iget-object v0, p0, Lcom/android/internal/app/IntentForwarderActivity;->mInjector:Lcom/android/internal/app/IntentForwarderActivity$Injector;

    const/high16 v1, 0x10000

    invoke-interface {v0, p3, v1, p4}, Lcom/android/internal/app/IntentForwarderActivity$Injector;->resolveActivityAsUser(Landroid/content/Intent;II)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CompletableFuture;->join()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    invoke-direct {p0, v0}, Lcom/android/internal/app/IntentForwarderActivity;->isIntentForwarderResolveInfo(Landroid/content/pm/ResolveInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, p5

    goto :goto_0

    :cond_0
    move v1, p4

    :goto_0
    invoke-direct {p0, p2}, Lcom/android/internal/app/IntentForwarderActivity;->findSelectedProfile(Ljava/lang/String;)I

    move-result v2

    invoke-static {p1}, Lcom/android/internal/app/IntentForwarderActivity;->sanitizeIntent(Landroid/content/Intent;)V

    const-string v3, "com.android.internal.app.ResolverActivity.EXTRA_SELECTED_PROFILE"

    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "com.android.internal.app.ResolverActivity.EXTRA_CALLING_USER"

    invoke-static {p4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    if-eqz p6, :cond_1

    const-string v3, "com.android.internal.app.ResolverActivity.EXTRA_RESTRICT_TO_SINGLE_USER"

    const/4 v4, 0x1

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_1
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, p1, v3, v4, v1}, Lcom/android/internal/app/IntentForwarderActivity;->startActivityAsCaller(Landroid/content/Intent;Landroid/os/Bundle;ZI)V

    invoke-virtual {p0}, Lcom/android/internal/app/IntentForwarderActivity;->finish()V

    return-void
.end method

.method private blacklist maybeShowDisclosure(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getAppSeparationConfig()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p2, p1}, Lcom/android/internal/app/IntentForwarderActivity;->shouldShowDisclosure(Landroid/content/pm/ResolveInfo;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p3, :cond_1

    iget-object v0, p0, Lcom/android/internal/app/IntentForwarderActivity;->mInjector:Lcom/android/internal/app/IntentForwarderActivity$Injector;

    const/4 v1, 0x1

    invoke-interface {v0, p3, v1}, Lcom/android/internal/app/IntentForwarderActivity$Injector;->showToast(Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SEND"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/app/IntentForwarderActivity;->getUserId()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/android/internal/app/IntentForwarderActivity;->showForwardFromSecureFolderToast()V

    :cond_3
    :goto_0
    return-void
.end method

.method private blacklist maybeShowUserConsentMiniResolver(Landroid/content/pm/ResolveInfo;Landroid/content/Intent;Landroid/content/pm/UserInfo;)V
    .locals 19

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    if-eqz v7, :cond_8

    invoke-direct/range {p0 .. p1}, Lcom/android/internal/app/IntentForwarderActivity;->isIntentForwarderResolveInfo(Landroid/content/pm/ResolveInfo;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/app/IntentForwarderActivity;->isDeviceProvisioned()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_5

    :cond_0
    if-nez v9, :cond_1

    const/16 v0, -0x2710

    goto :goto_0

    :cond_1
    iget v0, v9, Landroid/content/pm/UserInfo;->id:I

    :goto_0
    move v10, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IntentForwarderActivity;->getCallingPackage()Ljava/lang/String;

    move-result-object v11

    nop

    const-string v0, "com.android.internal.app.EXTRA_SKIP_USER_CONFIRMATION"

    const/4 v12, 0x0

    invoke-virtual {v8, v0, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v13, 0x1

    if-eqz v0, :cond_2

    if-eqz v11, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IntentForwarderActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v0, v1, v11}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    move v0, v13

    goto :goto_1

    :cond_2
    move v0, v12

    :goto_1
    move v14, v0

    const-class v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v6, v0}, Lcom/android/internal/app/IntentForwarderActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v15, v10}, Landroid/app/admin/DevicePolicyManager;->getProfileOwnerAsUser(I)Landroid/content/ComponentName;

    move-result-object v16

    if-eqz v16, :cond_3

    invoke-virtual/range {v16 .. v16}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v13

    goto :goto_2

    :cond_3
    move v0, v12

    :goto_2
    move/from16 v17, v0

    const-string v0, "IntentForwarderActivity"

    if-nez v14, :cond_7

    if-eqz v17, :cond_4

    goto/16 :goto_4

    :cond_4
    const-string v1, "Showing user consent for redirection into the managed profile for intent [%s] and  calling package [%s]"

    filled-new-array {v8, v11}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    nop

    invoke-static {v10}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v6, v0, v12}, Lcom/android/internal/app/IntentForwarderActivity;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    nop

    invoke-virtual {v7, v5}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {v6, v8, v0}, Lcom/android/internal/app/IntentForwarderActivity;->getOpenInWorkMessage(Landroid/content/Intent;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v10

    move-object/from16 v18, v5

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/app/IntentForwarderActivity;->buildMiniResolver(Landroid/content/pm/ResolveInfo;Landroid/content/Intent;ILjava/lang/String;Landroid/content/pm/PackageManager;)V

    const v0, 0x1020241

    invoke-virtual {v6, v0}, Lcom/android/internal/app/IntentForwarderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-direct {v6, v8}, Lcom/android/internal/app/IntentForwarderActivity;->getOpenInWorkButtonString(Landroid/content/Intent;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    const v0, 0x102040c

    invoke-virtual {v6, v0}, Lcom/android/internal/app/IntentForwarderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {v6, v8}, Lcom/android/internal/app/IntentForwarderActivity;->isDialerIntent(Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-direct {v6, v8}, Lcom/android/internal/app/IntentForwarderActivity;->isTextMessageIntent(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_5
    invoke-virtual {v15}, Landroid/app/admin/DevicePolicyManager;->getManagedSubscriptionsPolicy()Landroid/app/admin/ManagedSubscriptionsPolicy;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/admin/ManagedSubscriptionsPolicy;->getPolicyType()I

    move-result v1

    if-ne v1, v13, :cond_6

    invoke-virtual {v0, v12}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x102040e

    invoke-virtual {v6, v1}, Lcom/android/internal/app/IntentForwarderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-direct {v6, v8}, Lcom/android/internal/app/IntentForwarderActivity;->getWorkTelephonyInfoSectionMessage(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_6
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    return-void

    :cond_7
    :goto_4
    nop

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    filled-new-array {v8, v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Skipping user consent for redirection into the managed profile for intent [%s], privilegedCallerAskedToSkipUserConsent=[%s], intentToLaunchProfileOwner=[%s]"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {v6, v8, v10}, Lcom/android/internal/app/IntentForwarderActivity;->startActivityAsCaller(Landroid/content/Intent;I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IntentForwarderActivity;->finish()V

    return-void

    :cond_8
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IntentForwarderActivity;->finish()V

    return-void
.end method

.method private blacklist maybeShowUserConsentMiniResolverPrivate(Landroid/content/pm/ResolveInfo;Landroid/content/Intent;I)V
    .locals 9

    if-eqz p1, :cond_2

    invoke-direct {p0, p1}, Lcom/android/internal/app/IntentForwarderActivity;->isIntentForwarderResolveInfo(Landroid/content/pm/ResolveInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/IntentForwarderActivity;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Showing user consent for redirection into the main profile for intent [%s] and  calling package [%s]"

    filled-new-array {p2, v0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "IntentForwarderActivity"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    nop

    invoke-static {p3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/app/IntentForwarderActivity;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    nop

    invoke-virtual {p1, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const v4, 0x104086d

    invoke-virtual {p0, v4, v3}, Lcom/android/internal/app/IntentForwarderActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move-object v8, v1

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/app/IntentForwarderActivity;->buildMiniResolver(Landroid/content/pm/ResolveInfo;Landroid/content/Intent;ILjava/lang/String;Landroid/content/pm/PackageManager;)V

    const v3, 0x102040c

    invoke-virtual {p0, v3}, Lcom/android/internal/app/IntentForwarderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0, p2}, Lcom/android/internal/app/IntentForwarderActivity;->isTextMessageIntent(Landroid/content/Intent;)Z

    move-result v2

    const v4, 0x102040e

    if-eqz v2, :cond_1

    invoke-virtual {p0, v4}, Lcom/android/internal/app/IntentForwarderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v4, 0x1040870

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v4}, Lcom/android/internal/app/IntentForwarderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v4, 0x1040871

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return-void

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/app/IntentForwarderActivity;->finish()V

    return-void
.end method

.method private blacklist privateSpaceFlagsEnabled()Z
    .locals 1

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/os/Flags;->allowPrivateProfile()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/multiuser/Flags;->enablePrivateSpaceFeatures()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/multiuser/Flags;->enablePrivateSpaceIntentRedirection()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static blacklist sanitizeIntent(Landroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    return-void
.end method

.method private blacklist shouldShowDisclosure(Landroid/content/pm/ResolveInfo;Landroid/content/Intent;)Z
    .locals 3

    invoke-direct {p0}, Lcom/android/internal/app/IntentForwarderActivity;->isDeviceProvisioned()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-eqz p1, :cond_4

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0, p2}, Lcom/android/internal/app/IntentForwarderActivity;->isDialerIntent(Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-direct {p0, p2}, Lcom/android/internal/app/IntentForwarderActivity;->isTextMessageIntent(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    return v1

    :cond_3
    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-direct {p0, v1}, Lcom/android/internal/app/IntentForwarderActivity;->isTargetResolverOrChooserActivity(Landroid/content/pm/ActivityInfo;)Z

    move-result v1

    xor-int/2addr v0, v1

    return v0

    :cond_4
    :goto_0
    return v0
.end method

.method private blacklist showForwardFromSecureFolderToast()V
    .locals 4

    invoke-direct {p0}, Lcom/android/internal/app/IntentForwarderActivity;->getForwardToPersonalMessageFromSecureFolder()Ljava/lang/String;

    move-result-object v0

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

    iget-object v1, p0, Lcom/android/internal/app/IntentForwarderActivity;->mInjector:Lcom/android/internal/app/IntentForwarderActivity$Injector;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/android/internal/app/IntentForwarderActivity$Injector;->showToast(Ljava/lang/String;I)V

    return-void
.end method

.method private blacklist showKeyguard(I)V
    .locals 4

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/android/internal/app/IntentForwarderActivity$1;

    invoke-direct {v1, p0}, Lcom/android/internal/app/IntentForwarderActivity$1;-><init>(Lcom/android/internal/app/IntentForwarderActivity;)V

    iput-object v1, p0, Lcom/android/internal/app/IntentForwarderActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/internal/app/IntentForwarderActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/internal/app/IntentForwarderActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    const-string/jumbo v1, "keyguard"

    invoke-virtual {p0, v1}, Lcom/android/internal/app/IntentForwarderActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, p1}, Landroid/app/KeyguardManager;->createConfirmDeviceCredentialIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Landroid/content/Intent;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/internal/app/IntentForwarderActivity;->mWaitingForresponse:Z

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/app/IntentForwarderActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private blacklist startActivityAsCaller(Landroid/content/Intent;I)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    const-string v0, "android.intent.extra.EXCLUDE_COMPONENTS"

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IntentForwarderActivity;->getUserId()I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v4}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v5, 0x1

    :cond_0
    const/4 v6, 0x0

    const-string v7, "android.intent.action.CHOOSER"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "android.intent.extra.INTENT"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/content/Intent;

    move-object v6, v7

    sget-object v7, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    const-string v8, "chooser | extra_intent"

    invoke-static {v7, v8}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    move-object/from16 v6, p1

    sget-object v7, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "new intent"

    invoke-static {v7, v8}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v8, 0x0

    if-eqz v6, :cond_b

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

    if-eqz v9, :cond_b

    :cond_2
    invoke-static/range {p2 .. p2}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v9

    if-nez v9, :cond_3

    invoke-static {v4}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v9

    if-eqz v9, :cond_b

    :cond_3
    sget-object v9, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    const-string v10, "chooser | EXTRA_EXCLUDE_COMPONENTS"

    invoke-static {v9, v10}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6, v4}, Landroid/content/Intent;->fixUris(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IntentForwarderActivity;->getResources()Landroid/content/res/Resources;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x104105e

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v6, v0}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v10

    invoke-direct {v1, v10}, Lcom/android/internal/app/IntentForwarderActivity;->getCompListfromParcelableList([Landroid/os/Parcelable;)Ljava/util/ArrayList;

    move-result-object v11

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iget-object v13, v1, Lcom/android/internal/app/IntentForwarderActivity;->mPersona:Lcom/samsung/android/knox/SemPersonaManager;

    const/4 v14, 0x1

    if-eqz v13, :cond_5

    if-eqz v5, :cond_4

    if-nez v3, :cond_4

    iget-object v13, v1, Lcom/android/internal/app/IntentForwarderActivity;->mPersona:Lcom/samsung/android/knox/SemPersonaManager;

    invoke-static {v4}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v15

    invoke-virtual {v13, v14, v15}, Lcom/samsung/android/knox/SemPersonaManager;->getExcludeComponentList(ZZ)Ljava/util/ArrayList;

    move-result-object v13

    move-object v12, v13

    goto :goto_1

    :cond_4
    if-nez v4, :cond_5

    iget-object v13, v1, Lcom/android/internal/app/IntentForwarderActivity;->mPersona:Lcom/samsung/android/knox/SemPersonaManager;

    invoke-static/range {p2 .. p2}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v15

    invoke-virtual {v13, v8, v15}, Lcom/samsung/android/knox/SemPersonaManager;->getExcludeComponentList(ZZ)Ljava/util/ArrayList;

    move-result-object v13

    move-object v12, v13

    :cond_5
    :goto_1
    invoke-direct {v1, v11, v12}, Lcom/android/internal/app/IntentForwarderActivity;->getFinalExcludeCompList(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v13

    if-eqz v13, :cond_6

    new-array v15, v8, [Landroid/os/Parcelable;

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [Landroid/os/Parcelable;

    invoke-virtual {v9, v0, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_6
    if-nez v4, :cond_9

    invoke-static/range {p2 .. p2}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-direct {v1, v6}, Lcom/android/internal/app/IntentForwarderActivity;->getUriFromIntent(Landroid/content/Intent;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_7

    sget-object v14, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v15, "intentUris is null"

    invoke-static {v14, v15}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v15

    const/16 v7, 0xfa

    if-ge v15, v7, :cond_8

    sget-object v7, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v15, "storeData"

    invoke-static {v7, v15}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {v1, v6}, Lcom/android/internal/app/IntentForwarderActivity;->isAbleToUsingCopyToSecureFolder(Landroid/content/Intent;)Z

    move-result v7

    if-eqz v7, :cond_9

    sget-object v7, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v15, "register storeData"

    invoke-static {v7, v15}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    new-array v7, v14, [Landroid/content/Intent;

    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14, v6}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const-string v15, "com.sec.knox.action.storeData"

    invoke-virtual {v14, v15}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const v15, 0x3000001

    invoke-virtual {v14, v15}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v15, "crossProfileTargetUserId"

    invoke-virtual {v14, v15, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    aput-object v14, v7, v8

    const-string v15, "android.intent.extra.ALTERNATE_INTENTS"

    invoke-virtual {v9, v15, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    nop

    goto :goto_2

    :cond_8
    sget-object v7, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "intentUris exceeds 250 | "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v7, v14}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    :goto_2
    iput-object v9, v1, Lcom/android/internal/app/IntentForwarderActivity;->tempIntent:Landroid/content/Intent;

    iget-object v0, v1, Lcom/android/internal/app/IntentForwarderActivity;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, v3}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-static/range {p2 .. p2}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v7

    if-eqz v7, :cond_a

    iget-object v7, v1, Lcom/android/internal/app/IntentForwarderActivity;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v7, v3}, Landroid/app/KeyguardManager;->isDeviceSecure(I)Z

    move-result v7

    if-eqz v7, :cond_a

    iget-object v7, v1, Lcom/android/internal/app/IntentForwarderActivity;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v7, v3}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isSuperLocked()Z

    move-result v7

    if-nez v7, :cond_a

    invoke-direct {v1, v3}, Lcom/android/internal/app/IntentForwarderActivity;->showKeyguard(I)V

    goto :goto_3

    :cond_a
    const/4 v7, 0x0

    invoke-virtual {v1, v9, v7, v8, v3}, Lcom/android/internal/app/IntentForwarderActivity;->startActivityAsCaller(Landroid/content/Intent;Landroid/os/Bundle;ZI)V

    goto :goto_3

    :cond_b
    invoke-static/range {p2 .. p2}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x0

    invoke-virtual {v1, v2, v0, v8, v3}, Lcom/android/internal/app/IntentForwarderActivity;->startActivityAsCaller(Landroid/content/Intent;Landroid/os/Bundle;ZI)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :cond_c
    :goto_3
    nop

    :goto_4
    goto :goto_5

    :catch_0
    move-exception v0

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

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IntentForwarderActivity;->getLaunchedFromPackage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", while running in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/app/ActivityThread;->currentProcessName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_5
    return-void
.end method


# virtual methods
.method protected blacklist createInjector()Lcom/android/internal/app/IntentForwarderActivity$Injector;
    .locals 2

    new-instance v0, Lcom/android/internal/app/IntentForwarderActivity$InjectorImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/app/IntentForwarderActivity$InjectorImpl;-><init>(Lcom/android/internal/app/IntentForwarderActivity;Lcom/android/internal/app/IntentForwarderActivity$InjectorImpl-IA;)V

    return-object v0
.end method

.method protected blacklist getMetricsLogger()Lcom/android/internal/logging/MetricsLogger;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/IntentForwarderActivity;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/IntentForwarderActivity;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/IntentForwarderActivity;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    return-object v0
.end method

.method public whitelist onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/IntentForwarderActivity;->mWaitingForresponse:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v1, :cond_1

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    sget-object v1, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "unlock keyguard"

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/StrictMode;->disableDeathOnFileUriExposure()V

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/app/IntentForwarderActivity;->tempIntent:Landroid/content/Intent;

    iget v3, p0, Lcom/android/internal/app/IntentForwarderActivity;->mFinalTargetUserId:I

    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/android/internal/app/IntentForwarderActivity;->startActivityAsCaller(Landroid/content/Intent;Landroid/os/Bundle;ZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/StrictMode;->enableDeathOnFileUriExposure()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/os/StrictMode;->enableDeathOnFileUriExposure()V

    throw v0

    :cond_0
    sget-object v0, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    const-string v1, "cancel keyguard"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/IntentForwarderActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/app/IntentForwarderActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/internal/app/IntentForwarderActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v2, p0, Lcom/android/internal/app/IntentForwarderActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    :cond_2
    sget-object v0, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "unknown response"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/app/IntentForwarderActivity;->finish()V

    return-void
.end method

.method protected whitelist onCreate(Landroid/os/Bundle;)V
    .locals 19

    move-object/from16 v10, p0

    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IntentForwarderActivity;->createInjector()Lcom/android/internal/app/IntentForwarderActivity$Injector;

    move-result-object v0

    iput-object v0, v10, Lcom/android/internal/app/IntentForwarderActivity;->mInjector:Lcom/android/internal/app/IntentForwarderActivity$Injector;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, v10, Lcom/android/internal/app/IntentForwarderActivity;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IntentForwarderActivity;->getIntent()Landroid/content/Intent;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v12

    const/4 v1, -0x1

    const-string/jumbo v0, "user"

    invoke-virtual {v10, v0}, Lcom/android/internal/app/IntentForwarderActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, v10, Lcom/android/internal/app/IntentForwarderActivity;->mUserManager:Landroid/os/UserManager;

    const-string/jumbo v0, "keyguard"

    invoke-virtual {v10, v0}, Lcom/android/internal/app/IntentForwarderActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, v10, Lcom/android/internal/app/IntentForwarderActivity;->mKeyguardManager:Landroid/app/KeyguardManager;

    const-string/jumbo v0, "persona"

    invoke-virtual {v10, v0}, Lcom/android/internal/app/IntentForwarderActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemPersonaManager;

    iput-object v0, v10, Lcom/android/internal/app/IntentForwarderActivity;->mPersona:Lcom/samsung/android/knox/SemPersonaManager;

    const/4 v2, -0x1

    :try_start_0
    const-string v0, "crossProfileTargetUserId"

    invoke-virtual {v11, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v3, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    const-string v4, "No crossProfileTargetUserId!"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

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

    sget-object v1, Lcom/android/internal/app/IntentForwarderActivity;->FORWARD_INTENT_TO_PARENT:Ljava/lang/String;

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v3, 0x67d

    const/16 v4, -0x2710

    if-eqz v1, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IntentForwarderActivity;->getUserId()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/app/IntentForwarderActivity;->getForwardToPersonalMessageFromSecureFolder()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/app/IntentForwarderActivity;->getForwardToPersonalMessage()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/app/IntentForwarderActivity;->getProfileParent()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IntentForwarderActivity;->getMetricsLogger()Lcom/android/internal/logging/MetricsLogger;

    move-result-object v7

    new-instance v8, Landroid/metrics/LogMaker;

    invoke-direct {v8, v3}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 v3, 0x1

    invoke-virtual {v8, v3}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v3

    invoke-virtual {v7, v3}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    move-object v13, v2

    move v14, v5

    move-object v15, v6

    goto/16 :goto_4

    :cond_1
    sget-object v1, Lcom/android/internal/app/IntentForwarderActivity;->FORWARD_INTENT_TO_MANAGED_PROFILE:Ljava/lang/String;

    invoke-virtual {v12, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/app/IntentForwarderActivity;->getForwardToWorkMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/app/IntentForwarderActivity;->getManagedProfile()Landroid/content/pm/UserInfo;

    move-result-object v6

    if-eq v0, v2, :cond_2

    move v2, v0

    move v5, v2

    goto :goto_3

    :cond_2
    const/4 v5, -0x1

    sget-object v7, Lcom/android/internal/app/IntentForwarderActivity;->FORWARD_INTENT_TO_MANAGED_PROFILE4:Ljava/lang/String;

    invoke-virtual {v7, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/high16 v5, 0x20000

    :cond_3
    if-eq v5, v2, :cond_4

    invoke-static/range {p0 .. p0}, Lcom/samsung/android/knox/SemPersonaManager;->getSecureFolderId(Landroid/content/Context;)I

    move-result v2

    move v5, v2

    goto :goto_3

    :cond_4
    if-nez v6, :cond_5

    move v2, v4

    goto :goto_2

    :cond_5
    iget v2, v6, Landroid/content/pm/UserInfo;->id:I

    :goto_2
    move v5, v2

    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IntentForwarderActivity;->getMetricsLogger()Lcom/android/internal/logging/MetricsLogger;

    move-result-object v2

    new-instance v7, Landroid/metrics/LogMaker;

    invoke-direct {v7, v3}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 v3, 0x2

    invoke-virtual {v7, v3}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    move-object v13, v1

    move v14, v5

    move-object v15, v6

    goto :goto_4

    :cond_6
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

    const/4 v2, 0x0

    const/16 v5, -0x2710

    const/4 v6, 0x0

    move-object v13, v2

    move v14, v5

    move-object v15, v6

    :goto_4
    if-ne v14, v4, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IntentForwarderActivity;->finish()V

    return-void

    :cond_7
    const-string v1, "android.intent.action.CHOOSER"

    invoke-virtual {v11}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-direct {v10, v11, v12}, Lcom/android/internal/app/IntentForwarderActivity;->launchChooserActivityWithCorrectTab(Landroid/content/Intent;Ljava/lang/String;)V

    return-void

    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IntentForwarderActivity;->getUserId()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IntentForwarderActivity;->getUserId()I

    move-result v1

    iget-object v2, v10, Lcom/android/internal/app/IntentForwarderActivity;->mInjector:Lcom/android/internal/app/IntentForwarderActivity$Injector;

    invoke-interface {v2}, Lcom/android/internal/app/IntentForwarderActivity$Injector;->getIPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IntentForwarderActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v11, v1, v14, v2, v3}, Lcom/android/internal/app/IntentForwarderActivity;->canForward(Landroid/content/Intent;IILandroid/content/pm/IPackageManager;Landroid/content/ContentResolver;)Landroid/content/Intent;

    move-result-object v8

    iput v9, v10, Lcom/android/internal/app/IntentForwarderActivity;->mFinalCallingUserId:I

    iput v14, v10, Lcom/android/internal/app/IntentForwarderActivity;->mFinalTargetUserId:I

    sget-object v1, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "forward intent from : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v10, Lcom/android/internal/app/IntentForwarderActivity;->mFinalCallingUserId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v10, Lcom/android/internal/app/IntentForwarderActivity;->mFinalTargetUserId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v8, :cond_9

    sget-object v1, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "the intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " cannot be forwarded from user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IntentForwarderActivity;->finish()V

    return-void

    :cond_9
    invoke-virtual {v8, v9}, Landroid/content/Intent;->prepareToLeaveUser(I)V

    iget-object v1, v10, Lcom/android/internal/app/IntentForwarderActivity;->mInjector:Lcom/android/internal/app/IntentForwarderActivity$Injector;

    const/high16 v2, 0x10000

    invoke-interface {v1, v8, v2, v14}, Lcom/android/internal/app/IntentForwarderActivity$Injector;->resolveActivityAsUser(Landroid/content/Intent;II)Ljava/util/concurrent/CompletableFuture;

    move-result-object v16

    invoke-direct {v10, v9}, Lcom/android/internal/app/IntentForwarderActivity;->isPrivateProfile(I)Z

    move-result v1

    if-eqz v1, :cond_a

    move-object/from16 v1, p0

    move-object v2, v11

    move-object v3, v12

    move-object v4, v8

    move v5, v9

    move v6, v14

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/app/IntentForwarderActivity;->buildAndExecuteForPrivateProfile(Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;II)V

    move-object/from16 v17, v8

    move/from16 v18, v9

    goto :goto_5

    :cond_a
    move-object/from16 v1, p0

    move-object/from16 v2, v16

    move-object v3, v11

    move-object v4, v12

    move-object v5, v8

    move v6, v9

    move v7, v14

    move-object/from16 v17, v8

    move-object v8, v13

    move/from16 v18, v9

    move-object v9, v15

    invoke-direct/range {v1 .. v9}, Lcom/android/internal/app/IntentForwarderActivity;->buildAndExecute(Ljava/util/concurrent/CompletableFuture;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;IILjava/lang/String;Landroid/content/pm/UserInfo;)V

    :goto_5
    return-void
.end method

.method protected whitelist onDestroy()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/app/IntentForwarderActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/IntentForwarderActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/internal/app/IntentForwarderActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/IntentForwarderActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "receiver not registered."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/android/internal/app/IntentForwarderActivity;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void
.end method
