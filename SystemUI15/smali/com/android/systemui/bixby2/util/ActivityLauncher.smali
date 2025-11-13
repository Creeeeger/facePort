.class public Lcom/android/systemui/bixby2/util/ActivityLauncher;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field private static final BIXBYCLIENT_TISKID:Ljava/lang/String; = "bixbyClient_taskId"

.field private static final PACKAGENAME_CAMERA:Ljava/lang/String; = "com.sec.android.app.camera"

.field private static final PACKAGENAME_TMAP:Ljava/lang/String; = "com.skt.tmap.ku"

.field private static final SEM_LAUNCH_ON_DEX:I = -0x1

.field private static final SEM_LAUNCH_ON_FOCUSED_STACK:I = -0x2710

.field private static final SHOW_NAVIGATION_FOR_SUBSCREEN:Ljava/lang/String; = "show_navigation_for_subscreen"

.field private static final TAG:Ljava/lang/String; = "ActivityLauncher"


# instance fields
.field private final mDesktopManager:Lcom/android/systemui/util/DesktopManager;

.field private final mDisplayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

.field private mKeyguardManager:Landroid/app/KeyguardManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/util/DesktopManager;Lcom/android/systemui/keyguard/DisplayLifecycle;Landroid/app/KeyguardManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/bixby2/util/ActivityLauncher;->mDesktopManager:Lcom/android/systemui/util/DesktopManager;

    iput-object p2, p0, Lcom/android/systemui/bixby2/util/ActivityLauncher;->mDisplayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

    iput-object p3, p0, Lcom/android/systemui/bixby2/util/ActivityLauncher;->mKeyguardManager:Landroid/app/KeyguardManager;

    return-void
.end method

.method private isFolderClosed()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/bixby2/util/ActivityLauncher;->mDisplayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

    iget-boolean p0, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mIsFolderOpened:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method


# virtual methods
.method public startActivityInBixby(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 10

    const-string v0, "ActivityLauncher"

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, p2, p3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string p3, "from-bixby"

    const/4 v7, 0x1

    invoke-virtual {v3, p3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object p3

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/bixby2/util/ActivityLauncher;->mDesktopManager:Lcom/android/systemui/util/DesktopManager;

    const/4 v4, 0x2

    const/4 v8, 0x0

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/android/systemui/util/DesktopManager;->getSemDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getEnabled()I

    move-result v2

    const/4 v5, 0x4

    if-ne v2, v5, :cond_0

    iget-object v2, p0, Lcom/android/systemui/bixby2/util/ActivityLauncher;->mDesktopManager:Lcom/android/systemui/util/DesktopManager;

    invoke-interface {v2}, Lcom/android/systemui/util/DesktopManager;->isStandalone()Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v8

    :goto_0
    if-nez p4, :cond_2

    if-ne v2, v4, :cond_1

    const/4 p4, -0x1

    goto :goto_1

    :cond_1
    const/16 p4, -0x2710

    :cond_2
    :goto_1
    :try_start_0
    const-class v5, Landroid/content/Intent;

    const-string v6, "semSetLaunchOverTargetTask"

    new-array v4, v4, [Ljava/lang/Class;

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v4, v8

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v9, v4, v7

    invoke-virtual {v5, v6, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    filled-new-array {p4, v5}, [Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {v4, v3, p4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p4

    invoke-virtual {p4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p4

    invoke-static {v0, p4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    const/high16 p4, 0x10200000

    const-string v4, "android.intent.category.LAUNCHER"

    const-string v5, "android.intent.action.MAIN"

    if-eqz p2, :cond_6

    const-string v6, "com.sec.android.app.camera"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    sget-boolean v0, Lcom/android/systemui/BasicRune;->VOLUME_SUB_DISPLAY_FULL_LAYOUT_VOLUME_DIALOG:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/android/systemui/bixby2/util/ActivityLauncher;->isFolderClosed()Z

    move-result v0

    if-eqz v0, :cond_3

    move v2, v7

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/bixby2/util/ActivityLauncher;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-nez v0, :cond_4

    const-string v0, "keyguard"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/systemui/bixby2/util/ActivityLauncher;->mKeyguardManager:Landroid/app/KeyguardManager;

    :cond_4
    invoke-virtual {v3, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/systemui/bixby2/util/ActivityLauncher;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_5

    const p4, 0x10008000

    invoke-virtual {v3, p4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string p4, "isSecure"

    invoke-virtual {v3, p4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_4

    :cond_5
    invoke-virtual {v3, p4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_4

    :cond_6
    invoke-virtual {v3, p4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_1
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object p4

    invoke-interface {p4, p2, v1}, Landroid/app/IActivityTaskManager;->isPackageEnabledForCoverLauncher(Ljava/lang/String;I)Z

    move-result p4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception p4

    invoke-virtual {p4}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p4

    invoke-static {v0, p4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move p4, v8

    :goto_3
    const-string v1, "isPackageEnabledForCoverLauncher = "

    invoke-static {v1, v0, p4}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    sget-boolean v0, Lcom/android/systemui/BasicRune;->VOLUME_SUB_DISPLAY_FULL_LAYOUT_VOLUME_DIALOG:Z

    if-eqz v0, :cond_8

    invoke-direct {p0}, Lcom/android/systemui/bixby2/util/ActivityLauncher;->isFolderClosed()Z

    move-result v0

    if-eqz v0, :cond_8

    if-eqz p4, :cond_8

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p4

    const-string v0, "show_navigation_for_subscreen"

    invoke-static {p4, v0, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p4

    if-nez p4, :cond_7

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p4

    invoke-static {p4, v0, v7}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_7
    move v2, v7

    :cond_8
    :goto_4
    if-eqz p2, :cond_9

    const-string p4, "com.skt.tmap.ku"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    :cond_9
    invoke-virtual {p3, v2}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    :try_start_2
    sget-boolean p2, Lcom/android/systemui/BasicRune;->VOLUME_SUB_DISPLAY_FULL_LAYOUT_VOLUME_DIALOG:Z

    if-eqz p2, :cond_a

    invoke-direct {p0}, Lcom/android/systemui/bixby2/util/ActivityLauncher;->isFolderClosed()Z

    move-result p2

    if-eqz p2, :cond_a

    if-nez v2, :cond_a

    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    const-string p3, "showCoverToast"

    invoke-virtual {p2, p3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p3, "ignoreKeyguardState"

    invoke-virtual {p2, p3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    sget-object v6, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    const/4 v2, 0x0

    const/high16 v4, 0xc000000

    const/4 v5, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/bixby2/util/ActivityLauncher;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz p0, :cond_b

    invoke-virtual {p0, p1, p2}, Landroid/app/KeyguardManager;->semSetPendingIntentAfterUnlock(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    goto :goto_5

    :cond_a
    invoke-virtual {p3}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {p1, v3, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_5

    :catch_2
    move v7, v8

    :cond_b
    :goto_5
    return v7
.end method
