.class public Lcom/android/internal/app/UnlaunchableAppActivity;
.super Landroid/app/Activity;
.source "UnlaunchableAppActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final blacklist EXTRA_UNLAUNCHABLE_REASON:Ljava/lang/String; = "unlaunchable_reason"

.field private static final blacklist TAG:Ljava/lang/String; = "UnlaunchableAppActivity"

.field private static final blacklist UNLAUNCHABLE_REASON_QUIET_MODE:I = 0x1


# instance fields
.field private blacklist mReason:I

.field private blacklist mTarget:Landroid/content/IntentSender;

.field private blacklist mTelecomManager:Landroid/telecom/TelecomManager;

.field private blacklist mUserId:I


# direct methods
.method public static synthetic blacklist $r8$lambda$eXS4Ll3R6ndWQp0eep2QsVSUcDY(Lcom/android/internal/app/UnlaunchableAppActivity;Landroid/os/UserManager;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/app/UnlaunchableAppActivity;->lambda$onClick$1(Landroid/os/UserManager;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$pUjxWnSQ8w4klAzYyTlp_PLQTAA(Lcom/android/internal/app/UnlaunchableAppActivity;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/app/UnlaunchableAppActivity;->lambda$getDialogTitle$0()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private static final blacklist createBaseIntent()Landroid/content/Intent;
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/android/internal/app/UnlaunchableAppActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android"

    invoke-direct {v1, v3, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v1, 0x10800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method public static blacklist createInQuietModeDialogIntent(I)Landroid/content/Intent;
    .locals 3

    invoke-static {}, Lcom/android/internal/app/UnlaunchableAppActivity;->createBaseIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "unlaunchable_reason"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "android.intent.extra.user_handle"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object v0
.end method

.method public static blacklist createInQuietModeDialogIntent(ILandroid/content/IntentSender;Landroid/content/pm/ResolveInfo;)Landroid/content/Intent;
    .locals 3

    invoke-static {p0}, Lcom/android/internal/app/UnlaunchableAppActivity;->createInQuietModeDialogIntent(I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.INTENT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    const-string v2, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    return-object v0
.end method

.method private blacklist getDialogMessage()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/android/internal/app/UnlaunchableAppActivity;->mUserId:I

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/app/UnlaunchableAppActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040d70

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/UnlaunchableAppActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10410c8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getDialogTitle()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lcom/android/internal/app/UnlaunchableAppActivity;->mUserId:I

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/app/UnlaunchableAppActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040d71

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-class v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, v0}, Lcom/android/internal/app/UnlaunchableAppActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v0

    new-instance v1, Lcom/android/internal/app/UnlaunchableAppActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/internal/app/UnlaunchableAppActivity$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/app/UnlaunchableAppActivity;)V

    const-string v2, "Core.UNLAUNCHABLE_APP_WORK_PAUSED_TITLE"

    invoke-virtual {v0, v2, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getWorkProfileName()Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "getContainerLabel"

    invoke-static {p0, v0}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxInfoForApp(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$getDialogTitle$0()Ljava/lang/String;
    .locals 2

    invoke-direct {p0}, Lcom/android/internal/app/UnlaunchableAppActivity;->getWorkProfileName()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const v1, 0x10410be

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/app/UnlaunchableAppActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$onClick$1(Landroid/os/UserManager;)V
    .locals 3

    iget v0, p0, Lcom/android/internal/app/UnlaunchableAppActivity;->mUserId:I

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/UnlaunchableAppActivity;->mTarget:Landroid/content/IntentSender;

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/UserManager;->requestQuietModeEnabled(ZLandroid/os/UserHandle;Landroid/content/IntentSender;)Z

    return-void
.end method

.method private blacklist launchEmergencyDialer()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/app/UnlaunchableAppActivity;->mTelecomManager:Landroid/telecom/TelecomManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/telecom/TelecomManager;->createLaunchEmergencyDialerIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x14800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/UnlaunchableAppActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public whitelist onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget v0, p0, Lcom/android/internal/app/UnlaunchableAppActivity;->mReason:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/android/internal/app/UnlaunchableAppActivity$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0}, Lcom/android/internal/app/UnlaunchableAppActivity$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/app/UnlaunchableAppActivity;Landroid/os/UserManager;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    const/4 v0, -0x3

    if-ne p2, v0, :cond_2

    invoke-direct {p0}, Lcom/android/internal/app/UnlaunchableAppActivity;->launchEmergencyDialer()V

    goto :goto_1

    :cond_2
    :goto_0
    nop

    :goto_1
    return-void
.end method

.method protected whitelist onCreate(Landroid/os/Bundle;)V
    .locals 16

    move-object/from16 v0, p0

    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/UnlaunchableAppActivity;->requestWindowFeature(I)Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/UnlaunchableAppActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-class v3, Landroid/telecom/TelecomManager;

    invoke-virtual {v0, v3}, Lcom/android/internal/app/UnlaunchableAppActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/TelecomManager;

    iput-object v3, v0, Lcom/android/internal/app/UnlaunchableAppActivity;->mTelecomManager:Landroid/telecom/TelecomManager;

    const-string/jumbo v3, "unlaunchable_reason"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, v0, Lcom/android/internal/app/UnlaunchableAppActivity;->mReason:I

    const-string v3, "android.intent.extra.user_handle"

    const/16 v5, -0x2710

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, v0, Lcom/android/internal/app/UnlaunchableAppActivity;->mUserId:I

    const-string v3, "android.intent.extra.INTENT"

    const-class v6, Landroid/content/IntentSender;

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/IntentSender;

    iput-object v3, v0, Lcom/android/internal/app/UnlaunchableAppActivity;->mTarget:Landroid/content/IntentSender;

    const-string v3, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unlaunchable activity for target package: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "UnlaunchableAppActivity"

    invoke-static {v7, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p0 .. p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v6

    iget v8, v0, Lcom/android/internal/app/UnlaunchableAppActivity;->mUserId:I

    if-ne v8, v5, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid user id: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, v0, Lcom/android/internal/app/UnlaunchableAppActivity;->mUserId:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ". Stopping."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/UnlaunchableAppActivity;->finish()V

    return-void

    :cond_0
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/os/Flags;->allowPrivateProfile()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {}, Landroid/multiuser/Flags;->enablePrivateSpaceFeatures()Z

    move-result v5

    if-eqz v5, :cond_1

    iget v5, v0, Lcom/android/internal/app/UnlaunchableAppActivity;->mUserId:I

    invoke-virtual {v6, v5}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v5

    if-nez v5, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unlaunchable activity for target package "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " called for a non-managed-profile "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, v0, Lcom/android/internal/app/UnlaunchableAppActivity;->mUserId:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/UnlaunchableAppActivity;->finish()V

    return-void

    :cond_1
    const/4 v5, 0x0

    const/4 v8, 0x0

    iget v9, v0, Lcom/android/internal/app/UnlaunchableAppActivity;->mReason:I

    if-eq v9, v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid unlaunchable type: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, v0, Lcom/android/internal/app/UnlaunchableAppActivity;->mReason:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/UnlaunchableAppActivity;->finish()V

    return-void

    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/app/UnlaunchableAppActivity;->getDialogTitle()Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/app/UnlaunchableAppActivity;->getDialogMessage()Ljava/lang/String;

    move-result-object v5

    iget v9, v0, Lcom/android/internal/app/UnlaunchableAppActivity;->mUserId:I

    invoke-static {v9}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/UnlaunchableAppActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1040d6f

    goto :goto_0

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/UnlaunchableAppActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x10410c1

    :goto_0
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    move-object v8, v9

    const/4 v9, 0x0

    if-eqz v3, :cond_4

    iget-object v10, v0, Lcom/android/internal/app/UnlaunchableAppActivity;->mTelecomManager:Landroid/telecom/TelecomManager;

    iget v11, v0, Lcom/android/internal/app/UnlaunchableAppActivity;->mUserId:I

    invoke-static {v11}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/telecom/TelecomManager;->getDefaultDialerPackage(Landroid/os/UserHandle;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    move v10, v1

    goto :goto_1

    :cond_4
    move v10, v9

    :goto_1
    if-eqz v10, :cond_5

    new-instance v11, Landroid/app/AlertDialog$Builder;

    const v12, 0x1030300

    invoke-direct {v11, v0, v12}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v12, 0x10410bc

    invoke-virtual {v11, v12, v0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_2

    :cond_5
    new-instance v11, Landroid/app/AlertDialog$Builder;

    invoke-direct {v11, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    :goto_2
    invoke-virtual {v11, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v12

    invoke-virtual {v12, v0}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v12

    invoke-virtual {v12, v8, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v12

    const/high16 v13, 0x1040000

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v11, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/UnlaunchableAppActivity;->getWindow()Landroid/view/Window;

    move-result-object v12

    new-instance v13, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v13, v9}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v12, v13}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v11}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/AlertDialog;->create()V

    if-eqz v10, :cond_6

    invoke-virtual {v12}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v13

    const v15, 0x102048a

    invoke-virtual {v13, v15}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v13

    const/16 v15, 0x1e

    invoke-virtual {v13, v9, v9, v9, v15}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {v12}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    const v13, 0x102001b

    invoke-virtual {v9, v13}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9, v14}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/UnlaunchableAppActivity;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9, v1}, Landroid/view/Window;->setHideOverlayWindows(Z)V

    invoke-virtual {v12, v4}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/widget/Button;->setFilterTouchesWhenObscured(Z)V

    invoke-virtual {v12}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public whitelist onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/internal/app/UnlaunchableAppActivity;->finish()V

    return-void
.end method
