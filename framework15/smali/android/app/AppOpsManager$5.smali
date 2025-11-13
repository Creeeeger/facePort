.class Landroid/app/AppOpsManager$5;
.super Lcom/android/internal/app/IAppOpsNotedCallback$Stub;
.source "AppOpsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/AppOpsManager;->startWatchingNoted([ILjava/util/concurrent/Executor;Landroid/app/AppOpsManager$OnOpNotedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/app/AppOpsManager;

.field final synthetic blacklist val$executor:Ljava/util/concurrent/Executor;

.field final synthetic blacklist val$listener:Landroid/app/AppOpsManager$OnOpNotedListener;


# direct methods
.method constructor blacklist <init>(Landroid/app/AppOpsManager;Ljava/util/concurrent/Executor;Landroid/app/AppOpsManager$OnOpNotedListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/app/AppOpsManager$5;->this$0:Landroid/app/AppOpsManager;

    iput-object p2, p0, Landroid/app/AppOpsManager$5;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/app/AppOpsManager$5;->val$listener:Landroid/app/AppOpsManager$OnOpNotedListener;

    invoke-direct {p0}, Lcom/android/internal/app/IAppOpsNotedCallback$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$opNoted$0(ILandroid/app/AppOpsManager$OnOpNotedListener;ILjava/lang/String;Ljava/lang/String;III)V
    .locals 9

    sget-object v0, Landroid/app/AppOpsManager;->sAppOpInfos:[Landroid/app/AppOpInfo;

    aget-object v0, v0, p0

    iget-object v0, v0, Landroid/app/AppOpInfo;->name:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->deviceAwarePermissionApisEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/app/AppOpsManager;->sAppOpInfos:[Landroid/app/AppOpInfo;

    aget-object v0, v0, p0

    iget-object v2, v0, Landroid/app/AppOpInfo;->name:Ljava/lang/String;

    move-object v1, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-interface/range {v1 .. v8}, Landroid/app/AppOpsManager$OnOpNotedListener;->onOpNoted(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;III)V

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/app/AppOpsManager;->sAppOpInfos:[Landroid/app/AppOpInfo;

    aget-object v0, v0, p0

    iget-object v2, v0, Landroid/app/AppOpInfo;->name:Ljava/lang/String;

    move-object v1, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p6

    move/from16 v7, p7

    invoke-interface/range {v1 .. v7}, Landroid/app/AppOpsManager$OnOpNotedListener;->onOpNoted(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public blacklist opNoted(IILjava/lang/String;Ljava/lang/String;III)V
    .locals 14

    move-object v1, p0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    iget-object v0, v1, Landroid/app/AppOpsManager$5;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v6, v1, Landroid/app/AppOpsManager$5;->val$listener:Landroid/app/AppOpsManager$OnOpNotedListener;

    new-instance v13, Landroid/app/AppOpsManager$5$$ExternalSyntheticLambda0;

    move-object v4, v13

    move v5, p1

    move/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    move/from16 v12, p7

    invoke-direct/range {v4 .. v12}, Landroid/app/AppOpsManager$5$$ExternalSyntheticLambda0;-><init>(ILandroid/app/AppOpsManager$OnOpNotedListener;ILjava/lang/String;Ljava/lang/String;III)V

    invoke-interface {v0, v13}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method
