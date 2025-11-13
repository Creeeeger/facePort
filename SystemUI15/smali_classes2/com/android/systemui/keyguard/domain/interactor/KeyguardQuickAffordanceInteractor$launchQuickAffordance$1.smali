.class public final Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor$launchQuickAffordance$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $intent:Landroid/content/Intent;

.field public final synthetic this$0:Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor;


# direct methods
.method public constructor <init>(Landroid/content/Intent;Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor$launchQuickAffordance$1;->$intent:Landroid/content/Intent;

    iput-object p2, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor$launchQuickAffordance$1;->this$0:Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 17

    move-object/from16 v0, p0

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ActivityOptions;->setDisallowEnterPictureInPictureWhileLaunching(Z)V

    iget-object v2, v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor$launchQuickAffordance$1;->$intent:Landroid/content/Intent;

    const/high16 v3, 0x34010000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v4

    iget-object v2, v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor$launchQuickAffordance$1;->this$0:Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor;

    iget-object v2, v2, Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor;->appContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v6

    iget-object v2, v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor$launchQuickAffordance$1;->this$0:Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor;

    iget-object v2, v2, Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor;->appContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor$launchQuickAffordance$1;->$intent:Landroid/content/Intent;

    iget-object v2, v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor$launchQuickAffordance$1;->this$0:Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor;

    iget-object v2, v2, Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor;->appContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v15

    iget-object v0, v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor$launchQuickAffordance$1;->this$0:Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor;

    iget-object v0, v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor;->userTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v0, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v16

    const/4 v5, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/high16 v13, 0x10000000

    const/4 v14, 0x0

    invoke-interface/range {v4 .. v16}, Landroid/app/IActivityTaskManager;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "KeyguardQuickAffordanceInteractor"

    const-string v2, "Unable to start activity"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
