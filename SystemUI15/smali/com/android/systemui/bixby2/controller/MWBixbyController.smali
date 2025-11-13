.class public Lcom/android/systemui/bixby2/controller/MWBixbyController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field private static final DEFAULT_SPLIT_RATIO:F = 0.5f

.field private static final INVALID_TASK:I = -0x1

.field protected static final MultiWindowType:Ljava/lang/String; = "MultiWindow"

.field protected static final PopupType:Ljava/lang/String; = "Popup"

.field public static final SPLIT_STATE_NONE:I = 0x0

.field public static final SPLIT_STATE_THREE:I = 0x2

.field public static final SPLIT_STATE_TWO:I = 0x1

.field protected static final STR_SPLIT_BOTTOM:Ljava/lang/String; = "bottom"

.field protected static final STR_SPLIT_LEFT:Ljava/lang/String; = "left"

.field protected static final STR_SPLIT_RIGHT:Ljava/lang/String; = "right"

.field protected static final STR_SPLIT_TOP:Ljava/lang/String; = "top"

.field private static final TAG:Ljava/lang/String; = "MWBixbyController"


# instance fields
.field private mExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field protected mIActivityTaskManager:Landroid/app/IActivityTaskManager;

.field protected mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

.field private mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

.field private final mVisibleTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$0PApDUnd_Lp-kzfPNc4_BBdop8Y(Lcom/android/systemui/bixby2/controller/MWBixbyController;ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/window/RemoteTransition;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->lambda$startTasks$7(ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/window/RemoteTransition;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ff-psLGbkN2urWzA0UuZ1qkwUBE(Lcom/android/systemui/bixby2/controller/MWBixbyController;Landroid/content/Intent;Landroid/os/UserHandle;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->lambda$startIntent$3(Landroid/content/Intent;Landroid/os/UserHandle;II)V

    return-void
.end method

.method public static synthetic $r8$lambda$GKhGRnzmENIfelIMNfVjn_-qtDE(Lcom/android/systemui/bixby2/controller/MWBixbyController;Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->lambda$startTargetTaskToFreeform$2(Landroid/app/ActivityManager$RunningTaskInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Q_vEtBBXsblf8uF5cMJSudKWUwA(Lcom/android/systemui/bixby2/controller/MWBixbyController;Landroid/content/Intent;Landroid/content/Intent;Landroid/os/UserHandle;Landroid/os/UserHandle;IFI)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->lambda$startIntents$4(Landroid/content/Intent;Landroid/content/Intent;Landroid/os/UserHandle;Landroid/os/UserHandle;IFI)V

    return-void
.end method

.method public static synthetic $r8$lambda$WYn4fSIV1VuA8J_q09jv5A88n_0(Lcom/android/systemui/bixby2/controller/MWBixbyController;[Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->lambda$isSplitScreenVisible$5([Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Y21Ag7brCl5mT8cfd48plZ-Ws2c(Lcom/android/systemui/bixby2/controller/MWBixbyController;[Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->lambda$isVerticalDivision$8([Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YbfvxbpYfqV6grsstJIlcLzDAv0(Lcom/android/systemui/bixby2/controller/MWBixbyController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->lambda$changeLayoutOfSplitScreen$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$gt0wtRC6mV6EfOUHkizySfuYRXI(Lcom/android/systemui/bixby2/controller/MWBixbyController;[I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->lambda$getMainStagePositionExt$6([I)V

    return-void
.end method

.method public static synthetic $r8$lambda$i-7tr1Q9vCZ1REER7Fd12J29wuE(Lcom/android/systemui/bixby2/controller/MWBixbyController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->lambda$exchangePositionOfSplitScreen$0()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/bixby2/controller/MWBixbyController;->mVisibleTasks:Ljava/util/ArrayList;

    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/bixby2/controller/MWBixbyController;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/bixby2/controller/MWBixbyController;->mIActivityTaskManager:Landroid/app/IActivityTaskManager;

    return-void
.end method

.method private checkSupportsMultiWindow(Landroid/app/ActivityManager$RunningTaskInfo;Z)Ljava/lang/String;
    .locals 1

    const-string v0, "NoExistForegroundApp"

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->isHomeOrRecentsTaskInfo(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    return-object v0

    :cond_1
    iget-boolean p0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->originallySupportedMultiWindow:Z

    if-nez p0, :cond_3

    if-eqz p2, :cond_2

    const-string p0, "NoSupportSplitForegroundApp"

    goto :goto_0

    :cond_2
    const-string p0, "NoSupportPopupForegroundApp"

    :goto_0
    return-object p0

    :cond_3
    const-string/jumbo p0, "success"

    return-object p0
.end method

.method public static convertToStagePosition(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "right"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_1
    const-string v2, "left"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_2
    const-string/jumbo v2, "top"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_3
    const-string v2, "bottom"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    move v1, v0

    :goto_0
    packed-switch v1, :pswitch_data_0

    return v0

    :pswitch_0
    const/16 p0, 0x20

    return p0

    :pswitch_1
    const/16 p0, 0x8

    return p0

    :pswitch_2
    const/16 p0, 0x10

    return p0

    :pswitch_3
    const/16 p0, 0x40

    return p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x527265d5 -> :sswitch_3
        0x1c155 -> :sswitch_2
        0x32a007 -> :sswitch_1
        0x677c21c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private findTaskInfoByPackageName(Ljava/lang/String;)Landroid/app/ActivityManager$RunningTaskInfo;
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/MWBixbyController;->mVisibleTasks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    iget-object v1, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object v0

    :cond_2
    iget-object v1, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method private findTopTaskInfoByStagePosition(I)Landroid/app/ActivityManager$RunningTaskInfo;
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/MWBixbyController;->mVisibleTasks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v0, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getStagePosition()I

    move-result v1

    if-ne v1, p1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private getActivityInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/ActivityInfo;
    .locals 0

    new-instance p0, Landroid/content/ComponentName;

    invoke-direct {p0, p2, p3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/16 p2, 0x80

    invoke-virtual {p1, p0, p2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method private getCurrentSplitState()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/bixby2/controller/MWBixbyController;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isMultiSplitScreenVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->isSplitScreenVisible()Z

    move-result p0

    return p0
.end method

.method private getMainStagePositionExt()I
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [I

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/bixby2/controller/MWBixbyController;->mExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v2, Lcom/android/systemui/bixby2/controller/MWBixbyController$$ExternalSyntheticLambda2;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v0, v3}, Lcom/android/systemui/bixby2/controller/MWBixbyController$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/bixby2/controller/MWBixbyController;Ljava/lang/Object;I)V

    invoke-interface {v1, v2}, Lcom/android/wm/shell/common/ShellExecutor;->executeBlocking(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    const/4 p0, 0x0

    aget p0, v0, p0

    return p0
.end method

.method private getTopRunningTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/bixby2/controller/MWBixbyController;->mVisibleTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/MWBixbyController;->mVisibleTasks:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager$RunningTaskInfo;

    :goto_0
    return-object p0
.end method

.method private getTopVisibleFullscreenTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/MWBixbyController;->mVisibleTasks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v0}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private isHomeOrRecentsTaskInfo(Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    move-result p0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    move-result p0

    const/4 p1, 0x3

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private isSplitScreenVisible()Z
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Boolean;

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/bixby2/controller/MWBixbyController;->mExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v2, Lcom/android/systemui/bixby2/controller/MWBixbyController$$ExternalSyntheticLambda1;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v0, v3}, Lcom/android/systemui/bixby2/controller/MWBixbyController$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/bixby2/controller/MWBixbyController;[Ljava/lang/Boolean;I)V

    invoke-interface {v1, v2}, Lcom/android/wm/shell/common/ShellExecutor;->executeBlocking(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    const/4 p0, 0x0

    aget-object p0, v0, p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private isSupportMultiWindow(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/high16 p2, 0x20000

    invoke-virtual {p1, v0, p2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    sget-object p2, Lcom/android/systemui/bixby2/controller/MWBixbyController;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ris = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/ResolveInfo;

    iget-object v0, p0, Lcom/android/systemui/bixby2/controller/MWBixbyController;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {v0, p2}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getSupportedMultiWindowModes(Landroid/content/pm/ResolveInfo;)I

    move-result p2

    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_0

    sget-object p0, Lcom/android/systemui/bixby2/controller/MWBixbyController;->TAG:Ljava/lang/String;

    const-string p1, "MultiWindowModes = "

    invoke-static {p2, p1, p0}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private isVerticalDivision()Z
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Boolean;

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/bixby2/controller/MWBixbyController;->mExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v2, Lcom/android/systemui/bixby2/controller/MWBixbyController$$ExternalSyntheticLambda1;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v0, v3}, Lcom/android/systemui/bixby2/controller/MWBixbyController$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/bixby2/controller/MWBixbyController;[Ljava/lang/Boolean;I)V

    invoke-interface {v1, v2}, Lcom/android/wm/shell/common/ShellExecutor;->executeBlocking(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    const/4 p0, 0x0

    aget-object p0, v0, p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$changeLayoutOfSplitScreen$1()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/MWBixbyController;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->rotateMultiSplitWithTransition()Z

    return-void
.end method

.method private synthetic lambda$exchangePositionOfSplitScreen$0()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/MWBixbyController;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->swapTasksInSplitScreenMode()V

    return-void
.end method

.method private synthetic lambda$getMainStagePositionExt$6([I)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/MWBixbyController;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getMainStagePositionExt()I

    move-result p0

    const/4 v0, 0x0

    aput p0, p1, v0

    return-void
.end method

.method private synthetic lambda$isSplitScreenVisible$5([Ljava/lang/Boolean;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/MWBixbyController;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isSplitScreenVisible()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const/4 v0, 0x0

    aput-object p0, p1, v0

    return-void
.end method

.method private synthetic lambda$isVerticalDivision$8([Ljava/lang/Boolean;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/MWBixbyController;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isVerticalDivision()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const/4 v0, 0x0

    aput-object p0, p1, v0

    return-void
.end method

.method private lambda$startIntent$3(Landroid/content/Intent;Landroid/os/UserHandle;II)V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/bixby2/controller/MWBixbyController;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->startIntent(Landroid/content/Intent;Landroid/os/UserHandle;IILandroid/os/Bundle;)V

    return-void
.end method

.method private synthetic lambda$startIntents$4(Landroid/content/Intent;Landroid/content/Intent;Landroid/os/UserHandle;Landroid/os/UserHandle;IFI)V
    .locals 9

    move-object v0, p0

    iget-object v0, v0, Lcom/android/systemui/bixby2/controller/MWBixbyController;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    const/4 v8, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->startIntents(Landroid/content/Intent;Landroid/content/Intent;Landroid/os/UserHandle;Landroid/os/UserHandle;IFILandroid/window/RemoteTransition;)V

    return-void
.end method

.method private synthetic lambda$startTargetTaskToFreeform$2(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/MWBixbyController;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->moveSplitToFreeform(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;Z)V

    return-void
.end method

.method private synthetic lambda$startTasks$7(ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/window/RemoteTransition;)V
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/bixby2/controller/MWBixbyController;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->startTasks(ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/window/RemoteTransition;)V

    return-void
.end method

.method private makeLaunchIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string p1, "android.intent.category.LAUNCHER"

    invoke-virtual {p0, p1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x10200000

    invoke-virtual {p0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private moveTaskToFront(ILandroid/content/Context;)V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/bixby2/controller/MWBixbyController;->mIActivityTaskManager:Landroid/app/IActivityTaskManager;

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v3, p1

    invoke-interface/range {v0 .. v5}, Landroid/app/IActivityTaskManager;->moveTaskToFront(Landroid/app/IApplicationThread;Ljava/lang/String;IILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private startActivityByBixby(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/ActivityOptions;->setForceLaunchWindowingMode(I)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, p2, p3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string p2, "from-bixby"

    invoke-virtual {v1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 p2, 0x10200000

    invoke-virtual {v1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {p1, v1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method private startFreeform(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->updateVisibleTasks()V

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->startTopTaskToFreeform()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    if-eqz p2, :cond_4

    if-nez p3, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->isSupportMultiWindow(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const-string v1, "NoSupportPopup"

    if-nez v0, :cond_2

    return-object v1

    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->getActivityInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->getVisibleSingleInstance(Landroid/content/pm/ActivityInfo;)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    const-string/jumbo v2, "success"

    if-eqz v0, :cond_3

    invoke-direct {p0, v0}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->startTargetTaskToFreeform(Landroid/app/ActivityManager$RunningTaskInfo;)Ljava/lang/String;

    return-object v2

    :cond_3
    :try_start_0
    invoke-direct {p0, p2, p3}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->makeLaunchIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object p2

    const/4 p3, 0x5

    invoke-virtual {p2, p3}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    invoke-virtual {p2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    return-object v1

    :cond_4
    :goto_0
    const-string p0, "fail"

    return-object p0
.end method

.method private startIntent(Landroid/content/Intent;Landroid/os/UserHandle;II)V
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/bixby2/controller/MWBixbyController;->mExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v7, Lcom/android/systemui/bixby2/controller/MWBixbyController$$ExternalSyntheticLambda6;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/bixby2/controller/MWBixbyController$$ExternalSyntheticLambda6;-><init>(Lcom/android/systemui/bixby2/controller/MWBixbyController;Landroid/content/Intent;Landroid/os/UserHandle;II)V

    check-cast v0, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {v0, v7}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private startIntents(Landroid/content/Intent;Landroid/content/Intent;Landroid/os/UserHandle;Landroid/os/UserHandle;IFI)V
    .locals 11

    move-object v1, p0

    iget-object v9, v1, Lcom/android/systemui/bixby2/controller/MWBixbyController;->mExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v10, Lcom/android/systemui/bixby2/controller/MWBixbyController$$ExternalSyntheticLambda3;

    move-object v0, v10

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/bixby2/controller/MWBixbyController$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/bixby2/controller/MWBixbyController;Landroid/content/Intent;Landroid/content/Intent;Landroid/os/UserHandle;Landroid/os/UserHandle;IFI)V

    check-cast v9, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {v9, v10}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private startSplitScreen(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->updateVisibleTasks()V

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    if-nez p4, :cond_0

    if-nez p5, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->startTopTaskToSplit()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->isSupportMultiWindow(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "NoSupportSplitFirstApp"

    return-object p0

    :cond_1
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0, p1, p4}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->isSupportMultiWindow(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string p0, "NoSupportSplitSecondApp"

    return-object p0

    :cond_2
    invoke-direct {p0, p2, p3}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->makeLaunchIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-direct {p0, p4, p5}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->makeLaunchIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    const-string/jumbo v8, "success"

    if-eqz v2, :cond_3

    if-eqz v5, :cond_3

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, -0x1

    const/4 p1, 0x1

    move-object v0, p0

    move-object v1, v2

    move-object v2, v5

    move-object v3, v4

    move v5, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->startIntents(Landroid/content/Intent;Landroid/content/Intent;Landroid/os/UserHandle;Landroid/os/UserHandle;IFI)V

    return-object v8

    :cond_3
    if-eqz p2, :cond_4

    invoke-direct {p0, p2}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->findTaskInfoByPackageName(Ljava/lang/String;)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_5

    iget-object v1, v0, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-static {v1}, Landroid/app/WindowConfiguration;->isSplitScreenWindowingMode(Landroid/app/WindowConfiguration;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget p2, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-direct {p0, p2, p1}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->moveTaskToFront(ILandroid/content/Context;)V

    return-object v8

    :cond_5
    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->isSplitScreenVisible()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->getTopVisibleFullscreenTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->checkSupportsMultiWindow(Landroid/app/ActivityManager$RunningTaskInfo;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return-object v0

    :cond_6
    if-eqz v2, :cond_7

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->startSplitScreenSingleIntent(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7
    const/4 v8, 0x1

    move-object v3, p0

    move-object v4, p1

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v3 .. v8}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->startSplitScreenSingleIntent(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private startSplitScreenSingleIntent(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1, p3, p4}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->getActivityInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/ActivityInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->getVisibleSingleInstance(Landroid/content/pm/ActivityInfo;)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p0, "NoSupportMultiWindow"

    return-object p0

    :cond_0
    sget-object p1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 p3, -0x1

    invoke-direct {p0, p2, p1, p5, p3}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->startIntent(Landroid/content/Intent;Landroid/os/UserHandle;II)V

    const-string/jumbo p0, "success"

    return-object p0
.end method

.method private startTargetTaskToFreeform(Landroid/app/ActivityManager$RunningTaskInfo;)Ljava/lang/String;
    .locals 3

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    :try_start_0
    iget-object v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-static {v1}, Landroid/app/WindowConfiguration;->isSplitScreenWindowingMode(Landroid/app/WindowConfiguration;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/bixby2/controller/MWBixbyController;->mExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v1, Lcom/android/systemui/bixby2/controller/MWBixbyController$$ExternalSyntheticLambda2;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lcom/android/systemui/bixby2/controller/MWBixbyController$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/bixby2/controller/MWBixbyController;Ljava/lang/Object;I)V

    check-cast v0, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/MWBixbyController;->mIActivityTaskManager:Landroid/app/IActivityTaskManager;

    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Landroid/app/IActivityTaskManager;->startActivityFromRecents(ILandroid/os/Bundle;)I

    :goto_0
    const-string/jumbo p0, "success"
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p0, "NoSupportPopup"

    return-object p0
.end method

.method private startTasks(ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/window/RemoteTransition;)V
    .locals 11

    move-object v1, p0

    iget-object v9, v1, Lcom/android/systemui/bixby2/controller/MWBixbyController;->mExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v10, Lcom/android/systemui/bixby2/controller/MWBixbyController$$ExternalSyntheticLambda9;

    move-object v0, v10

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/bixby2/controller/MWBixbyController$$ExternalSyntheticLambda9;-><init>(Lcom/android/systemui/bixby2/controller/MWBixbyController;ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/window/RemoteTransition;)V

    check-cast v9, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {v9, v10}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private startTopTaskToFreeform()Ljava/lang/String;
    .locals 3

    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->getTopRunningTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->checkSupportsMultiWindow(Landroid/app/ActivityManager$RunningTaskInfo;Z)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "success"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    invoke-direct {p0, v0}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->startTargetTaskToFreeform(Landroid/app/ActivityManager$RunningTaskInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private startTopTaskToSplit()Ljava/lang/String;
    .locals 12

    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->getTopVisibleFullscreenTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->checkSupportsMultiWindow(Landroid/app/ActivityManager$RunningTaskInfo;Z)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "success"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    return-object v1

    :cond_0
    iget v5, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, -0x1

    move-object v4, p0

    invoke-direct/range {v4 .. v11}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->startTasks(ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/window/RemoteTransition;)V

    return-object v2
.end method

.method private updateVisibleTasks()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/bixby2/controller/MWBixbyController;->mVisibleTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/systemui/bixby2/controller/MWBixbyController;->mVisibleTasks:Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/MWBixbyController;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getVisibleTasks()Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method


# virtual methods
.method public changeLayoutOfSplitScreen(Lcom/android/systemui/bixby2/util/PackageInfoBixby;)Ljava/lang/String;
    .locals 3

    iget-object p1, p1, Lcom/android/systemui/bixby2/util/PackageInfoBixby;->Position:Ljava/lang/String;

    sget-object v0, Lcom/android/systemui/bixby2/controller/MWBixbyController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "changeLayoutOfSplitScreen,  position = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "fail"

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->getCurrentSplitState()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->isVerticalDivision()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "top"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->isVerticalDivision()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "left"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    iget-object p1, p0, Lcom/android/systemui/bixby2/controller/MWBixbyController;->mExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v0, Lcom/android/systemui/bixby2/controller/MWBixbyController$$ExternalSyntheticLambda5;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/bixby2/controller/MWBixbyController$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/bixby2/controller/MWBixbyController;I)V

    check-cast p1, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {p1, v0}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_3
    const-string/jumbo p0, "success"

    return-object p0

    :cond_4
    return-object v1
.end method

.method public checkSplitState()Lcom/android/systemui/bixby2/CommandActionResponse;
    .locals 2

    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->getCurrentSplitState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->getMainStagePositionExt()I

    move-result p0

    const/16 v0, 0x10

    if-eq p0, v0, :cond_1

    const/16 v0, 0x40

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "LeftRight"

    goto :goto_1

    :cond_1
    :goto_0
    const-string p0, "TopBottom"

    goto :goto_1

    :cond_2
    const/4 p0, 0x2

    if-ne v0, p0, :cond_3

    const-string p0, "3Split"

    goto :goto_1

    :cond_3
    const-string p0, "NonSplit"

    :goto_1
    new-instance v0, Lcom/android/systemui/bixby2/CommandActionResponse;

    invoke-direct {v0, v1, p0}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public checkSupportMultiSplit()Lcom/android/systemui/bixby2/CommandActionResponse;
    .locals 2

    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT:Z

    if-eqz p0, :cond_0

    const-string p0, "MultiSplit"

    goto :goto_0

    :cond_0
    const-string p0, "Split"

    :goto_0
    new-instance v0, Lcom/android/systemui/bixby2/CommandActionResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public checkSupportMultiWindow(Landroid/content/Context;Lcom/android/systemui/bixby2/util/PackageInfoBixby;)Lcom/android/systemui/bixby2/CommandActionResponse;
    .locals 4

    iget-object v0, p2, Lcom/android/systemui/bixby2/util/PackageInfoBixby;->PackageName:Ljava/lang/String;

    iget-object p2, p2, Lcom/android/systemui/bixby2/util/PackageInfoBixby;->Type:Ljava/lang/String;

    sget-object v1, Lcom/android/systemui/bixby2/controller/MWBixbyController;->TAG:Ljava/lang/String;

    const-string v2, "checkSupportMultiWindow()   type = "

    const-string v3, ", packageName = "

    invoke-static {v2, p2, v3, v0, v1}, Lcom/android/systemui/bixby2/controller/MWBixbyController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->isSupportMultiWindow(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "checkSupportMultiWindow - RESULT_RESIZABLE"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "Resizable"

    goto :goto_0

    :cond_0
    const-string p0, "UnResizable"

    :goto_0
    new-instance p1, Lcom/android/systemui/bixby2/CommandActionResponse;

    const/4 p2, 0x1

    invoke-direct {p1, p2, p0}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    return-object p1
.end method

.method public checkTopFullscreenHomeOrRecents()Lcom/android/systemui/bixby2/CommandActionResponse;
    .locals 4

    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->updateVisibleTasks()V

    iget-object v0, p0, Lcom/android/systemui/bixby2/controller/MWBixbyController;->mVisibleTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v1}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v3

    if-ne v3, v2, :cond_0

    invoke-direct {p0, v1}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->isHomeOrRecentsTaskInfo(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "Visible"

    goto :goto_0

    :cond_1
    const-string p0, "Invisible"

    :goto_0
    new-instance v0, Lcom/android/systemui/bixby2/CommandActionResponse;

    invoke-direct {v0, v2, p0}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public exchangePositionOfSplitScreen(Lcom/android/systemui/bixby2/util/PackageInfoBixby;)Ljava/lang/String;
    .locals 3

    iget-object p1, p1, Lcom/android/systemui/bixby2/util/PackageInfoBixby;->Position:Ljava/lang/String;

    sget-object v0, Lcom/android/systemui/bixby2/controller/MWBixbyController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "exchangePositionOfSplitScreen,  position = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const-string v0, "fail"

    if-eqz p1, :cond_0

    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->isSplitScreenVisible()Z

    move-result p1

    if-nez p1, :cond_1

    return-object v0

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/bixby2/controller/MWBixbyController;->mExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v0, Lcom/android/systemui/bixby2/controller/MWBixbyController$$ExternalSyntheticLambda5;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/bixby2/controller/MWBixbyController$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/bixby2/controller/MWBixbyController;I)V

    check-cast p1, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {p1, v0}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    const-string/jumbo p0, "success"

    return-object p0
.end method

.method public getPackageNameInSplit(Lcom/android/systemui/bixby2/util/PackageInfoBixby;)Lcom/android/systemui/bixby2/CommandActionResponse;
    .locals 3

    iget-object p1, p1, Lcom/android/systemui/bixby2/util/PackageInfoBixby;->Position:Ljava/lang/String;

    sget-object v0, Lcom/android/systemui/bixby2/controller/MWBixbyController;->TAG:Ljava/lang/String;

    const-string v1, "getPackageInSplit position = "

    invoke-static {v1, p1, v0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->updateVisibleTasks()V

    invoke-static {p1}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->convertToStagePosition(Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->findTopTaskInfoByStagePosition(I)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p0

    const/4 p1, 0x1

    if-nez p0, :cond_0

    new-instance p0, Lcom/android/systemui/bixby2/CommandActionResponse;

    const-string v0, ""

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    return-object p0

    :cond_0
    iget-object v1, p0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroid/app/ActivityManager$RunningTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "packageName = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/systemui/bixby2/CommandActionResponse;

    invoke-direct {v0, p1, p0}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public getVisibleSingleInstance(Landroid/content/pm/ActivityInfo;)Landroid/app/ActivityManager$RunningTaskInfo;
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_7

    iget-object v1, p0, Lcom/android/systemui/bixby2/controller/MWBixbyController;->mVisibleTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    iget-object v2, p1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_1

    const-string v3, "com.samsung.android.multiwindow.activity.alias.targetactivity"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v3

    :cond_1
    iget v2, p1, Landroid/content/pm/ActivityInfo;->launchMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/android/systemui/bixby2/controller/MWBixbyController;->mVisibleTasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v4, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v1, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, v3, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v1, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_3
    iget v4, v3, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    iget-object v5, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    if-ne v4, v5, :cond_2

    return-object v3

    :cond_4
    iget v2, p1, Landroid/content/pm/ActivityInfo;->launchMode:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_5

    const/4 v3, 0x2

    if-ne v2, v3, :cond_7

    :cond_5
    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/MWBixbyController;->mVisibleTasks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v2, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v1, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget v3, v2, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    iget-object v4, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    if-ne v3, v4, :cond_6

    return-object v2

    :cond_7
    :goto_0
    return-object v0
.end method

.method public initSplitScreenController(Lcom/android/wm/shell/splitscreen/SplitScreenController;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/android/systemui/bixby2/controller/MWBixbyController;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/android/systemui/SystemUIAppComponentFactoryBase;->Companion:Lcom/android/systemui/SystemUIAppComponentFactoryBase$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/android/systemui/SystemUIAppComponentFactoryBase;->systemUIInitializer:Lcom/android/systemui/SystemUIInitializer;

    invoke-virtual {p1}, Lcom/android/systemui/SystemUIInitializer;->getWMComponent()Lcom/android/systemui/dagger/WMComponent;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/systemui/dagger/WMComponent;->getSplitScreenController()Ljava/util/Optional;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/wm/shell/splitscreen/SplitScreenController;

    iput-object p1, p0, Lcom/android/systemui/bixby2/controller/MWBixbyController;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    :goto_0
    iget-object p1, p0, Lcom/android/systemui/bixby2/controller/MWBixbyController;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iput-object p1, p0, Lcom/android/systemui/bixby2/controller/MWBixbyController;->mExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    :cond_1
    return-void
.end method

.method public isFoldOpened()Z
    .locals 1

    sget-object p0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-virtual {p0, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    iget-boolean p0, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mIsFolderOpened:Z

    return p0
.end method

.method public maximizeApp(Landroid/content/Context;Lcom/android/systemui/bixby2/util/PackageInfoBixby;)Ljava/lang/String;
    .locals 7

    iget-object v0, p2, Lcom/android/systemui/bixby2/util/PackageInfoBixby;->Position:Ljava/lang/String;

    iget-object v1, p2, Lcom/android/systemui/bixby2/util/PackageInfoBixby;->PackageName:Ljava/lang/String;

    iget-object p2, p2, Lcom/android/systemui/bixby2/util/PackageInfoBixby;->ActivityName:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->getCurrentSplitState()I

    move-result v2

    sget-object v3, Lcom/android/systemui/bixby2/controller/MWBixbyController;->TAG:Ljava/lang/String;

    const-string v4, "maximizeApp,  position="

    const-string v5, ", packageName="

    const-string v6, ", activityName="

    invoke-static {v4, v0, v5, v1, v6}, Landroidx/appcompat/util/SeslRoundedCorner$SeslRoundedChunkingDrawable$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", splitState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->updateVisibleTasks()V

    const-string v4, "fail"

    if-eqz v0, :cond_1

    if-nez v2, :cond_0

    const-string p0, "current state is not split"

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_0
    invoke-static {v0}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->convertToStagePosition(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->findTopTaskInfoByStagePosition(I)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    invoke-direct {p0, v1}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->findTaskInfoByPackageName(Ljava/lang/String;)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "targetTaskInfo="

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "success"

    if-nez v0, :cond_4

    invoke-direct {p0, p1, v1, p2}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->startActivityByBixby(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    move-object v4, v2

    :cond_3
    return-object v4

    :cond_4
    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/MWBixbyController;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    iget-object p1, v0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/multiwindow/MultiWindowManager;->exitMultiWindow(Landroid/os/IBinder;Z)Z

    return-object v2
.end method

.method public replaceAppOfSplitScreen(Lcom/android/systemui/bixby2/util/PackageInfoBixby;)Ljava/lang/String;
    .locals 5

    iget-object v0, p1, Lcom/android/systemui/bixby2/util/PackageInfoBixby;->Position:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/systemui/bixby2/util/PackageInfoBixby;->PackageName:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/systemui/bixby2/util/PackageInfoBixby;->ActivityName:Ljava/lang/String;

    sget-object v2, Lcom/android/systemui/bixby2/controller/MWBixbyController;->TAG:Ljava/lang/String;

    const-string v3, "replaceAppOfSplitScreen"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "position = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", packageName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", activityName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "fail"

    if-eqz v0, :cond_6

    if-eqz v1, :cond_6

    if-nez p1, :cond_0

    goto :goto_3

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->isSplitScreenVisible()Z

    move-result v3

    if-nez v3, :cond_1

    return-object v2

    :cond_1
    const-string/jumbo v3, "top"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "left"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    const-string v3, "bottom"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "right"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    return-object v2

    :cond_4
    :goto_0
    const/4 v0, 0x1

    goto :goto_2

    :cond_5
    :goto_1
    const/4 v0, 0x0

    :goto_2
    invoke-direct {p0, v1, p1}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->makeLaunchIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->startIntent(Landroid/content/Intent;Landroid/os/UserHandle;II)V

    const-string/jumbo p0, "success"

    return-object p0

    :cond_6
    :goto_3
    return-object v2
.end method

.method public startAppSplitPosition(Lcom/android/systemui/bixby2/util/PackageInfoBixby;)Ljava/lang/String;
    .locals 13

    iget-object v0, p1, Lcom/android/systemui/bixby2/util/PackageInfoBixby;->Position:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/systemui/bixby2/util/PackageInfoBixby;->PackageName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/systemui/bixby2/util/PackageInfoBixby;->ActivityName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/systemui/bixby2/util/PackageInfoBixby;->Position2:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/systemui/bixby2/util/PackageInfoBixby;->PackageName2:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/systemui/bixby2/util/PackageInfoBixby;->ActivityName2:Ljava/lang/String;

    sget-object v5, Lcom/android/systemui/bixby2/controller/MWBixbyController;->TAG:Ljava/lang/String;

    const-string v6, "startAppSplitPosition"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "position1 = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ",  packageName1 = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", activityName1 = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "position2 = "

    const-string v7, ",  packageName2 = "

    const-string v8, ", activityName2 = "

    invoke-static {v6, v3, v7, v4, v8}, Landroidx/appcompat/util/SeslRoundedCorner$SeslRoundedChunkingDrawable$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v3, p1, v5}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "fail"

    if-eqz v0, :cond_c

    if-nez v1, :cond_0

    goto/16 :goto_8

    :cond_0
    invoke-direct {p0, v1, v2}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->makeLaunchIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, v4, p1}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->makeLaunchIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    const-string/jumbo p1, "top"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v6, "bottom"

    if-nez v2, :cond_2

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move v12, v5

    goto :goto_1

    :cond_2
    :goto_0
    move v12, v4

    :goto_1
    const-string/jumbo v2, "success"

    const-string v8, "right"

    const-string v9, "left"

    if-eqz v1, :cond_7

    if-eqz v7, :cond_7

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    return-object v3

    :cond_5
    :goto_2
    const/4 v10, 0x1

    const/high16 v11, 0x3f000000    # 0.5f

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v5, p0

    move-object v6, v7

    move-object v7, v1

    invoke-direct/range {v5 .. v12}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->startIntents(Landroid/content/Intent;Landroid/content/Intent;Landroid/os/UserHandle;Landroid/os/UserHandle;IFI)V

    goto :goto_4

    :cond_6
    :goto_3
    const/4 v10, 0x1

    const/high16 v11, 0x3f000000    # 0.5f

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v5, p0

    move-object v6, v1

    invoke-direct/range {v5 .. v12}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->startIntents(Landroid/content/Intent;Landroid/content/Intent;Landroid/os/UserHandle;Landroid/os/UserHandle;IFI)V

    :goto_4
    return-object v2

    :cond_7
    if-eqz v1, :cond_c

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v7, 0x0

    if-nez p1, :cond_b

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_6

    :cond_8
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_5

    :cond_9
    return-object v3

    :cond_a
    :goto_5
    invoke-direct {p0, v1, v7, v4, v12}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->startIntent(Landroid/content/Intent;Landroid/os/UserHandle;II)V

    goto :goto_7

    :cond_b
    :goto_6
    invoke-direct {p0, v1, v7, v5, v12}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->startIntent(Landroid/content/Intent;Landroid/os/UserHandle;II)V

    :goto_7
    return-object v2

    :cond_c
    :goto_8
    return-object v3
.end method

.method public startMultiWindow(Landroid/content/Context;Lcom/android/systemui/bixby2/util/PackageInfoBixby;)Ljava/lang/String;
    .locals 9

    iget-object v2, p2, Lcom/android/systemui/bixby2/util/PackageInfoBixby;->PackageName:Ljava/lang/String;

    iget-object v3, p2, Lcom/android/systemui/bixby2/util/PackageInfoBixby;->ActivityName:Ljava/lang/String;

    iget-object v4, p2, Lcom/android/systemui/bixby2/util/PackageInfoBixby;->PackageName2:Ljava/lang/String;

    iget-object v5, p2, Lcom/android/systemui/bixby2/util/PackageInfoBixby;->ActivityName2:Ljava/lang/String;

    iget-object v0, p2, Lcom/android/systemui/bixby2/util/PackageInfoBixby;->Type:Ljava/lang/String;

    sget-object v1, Lcom/android/systemui/bixby2/controller/MWBixbyController;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "startMultiWindow : type = "

    const-string v7, ", packageName1 = "

    const-string v8, ", activityName1 = "

    invoke-static {v6, v0, v7, v2, v8}, Landroidx/appcompat/util/SeslRoundedCorner$SeslRoundedChunkingDrawable$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", packageName2 = "

    const-string v8, ", activityName2 = "

    invoke-static {v6, v3, v7, v5, v8}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v6, v5, v1}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p2, Lcom/android/systemui/bixby2/util/PackageInfoBixby;->Type:Ljava/lang/String;

    if-nez p2, :cond_0

    const-string p0, "fail"

    return-object p0

    :cond_0
    const-string p2, "MultiWindow"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->startSplitScreen(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p2, "Popup"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-direct {p0, p1, v2, v3}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->startFreeform(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const-string/jumbo p0, "success"

    return-object p0
.end method
