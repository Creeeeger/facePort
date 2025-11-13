.class Landroid/app/AppOpsManager$3;
.super Lcom/android/internal/app/IAppOpsActiveCallback$Stub;
.source "AppOpsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/AppOpsManager;->startWatchingActive([Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/app/AppOpsManager$OnOpActiveChangedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/app/AppOpsManager;

.field final synthetic blacklist val$callback:Landroid/app/AppOpsManager$OnOpActiveChangedListener;

.field final synthetic blacklist val$executor:Ljava/util/concurrent/Executor;


# direct methods
.method constructor blacklist <init>(Landroid/app/AppOpsManager;Ljava/util/concurrent/Executor;Landroid/app/AppOpsManager$OnOpActiveChangedListener;)V
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

    iput-object p1, p0, Landroid/app/AppOpsManager$3;->this$0:Landroid/app/AppOpsManager;

    iput-object p2, p0, Landroid/app/AppOpsManager$3;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/app/AppOpsManager$3;->val$callback:Landroid/app/AppOpsManager$OnOpActiveChangedListener;

    invoke-direct {p0}, Lcom/android/internal/app/IAppOpsActiveCallback$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$opActiveChanged$0(Landroid/app/AppOpsManager$OnOpActiveChangedListener;IILjava/lang/String;IZLjava/lang/String;II)V
    .locals 13

    move-object v9, p0

    move v10, p1

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->deviceAwarePermissionApisEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    instance-of v0, v9, Landroid/app/AppOpsManager$OnOpActiveChangedInternalListener;

    if-eqz v0, :cond_0

    move-object v0, v9

    check-cast v0, Landroid/app/AppOpsManager$OnOpActiveChangedInternalListener;

    move v1, p1

    move v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/app/AppOpsManager$OnOpActiveChangedInternalListener;->onOpActiveChanged(IILjava/lang/String;IZ)V

    :cond_0
    sget-object v0, Landroid/app/AppOpsManager;->sAppOpInfos:[Landroid/app/AppOpInfo;

    aget-object v0, v0, v10

    iget-object v0, v0, Landroid/app/AppOpInfo;->name:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Landroid/app/AppOpsManager;->sAppOpInfos:[Landroid/app/AppOpInfo;

    aget-object v0, v0, v10

    iget-object v1, v0, Landroid/app/AppOpInfo;->name:Ljava/lang/String;

    move-object v0, p0

    move v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p6

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-interface/range {v0 .. v8}, Landroid/app/AppOpsManager$OnOpActiveChangedListener;->onOpActiveChanged(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZII)V

    move v8, p2

    move-object/from16 v11, p3

    move/from16 v12, p5

    goto :goto_1

    :cond_1
    move v8, p2

    move-object/from16 v11, p3

    move/from16 v12, p5

    goto :goto_1

    :cond_2
    instance-of v0, v9, Landroid/app/AppOpsManager$OnOpActiveChangedInternalListener;

    if-eqz v0, :cond_3

    move-object v0, v9

    check-cast v0, Landroid/app/AppOpsManager$OnOpActiveChangedInternalListener;

    move v8, p2

    move-object/from16 v11, p3

    move/from16 v12, p5

    invoke-interface {v0, p1, p2, v11, v12}, Landroid/app/AppOpsManager$OnOpActiveChangedInternalListener;->onOpActiveChanged(IILjava/lang/String;Z)V

    goto :goto_0

    :cond_3
    move v8, p2

    move-object/from16 v11, p3

    move/from16 v12, p5

    :goto_0
    sget-object v0, Landroid/app/AppOpsManager;->sAppOpInfos:[Landroid/app/AppOpInfo;

    aget-object v0, v0, v10

    iget-object v0, v0, Landroid/app/AppOpInfo;->name:Ljava/lang/String;

    if-eqz v0, :cond_4

    sget-object v0, Landroid/app/AppOpsManager;->sAppOpInfos:[Landroid/app/AppOpInfo;

    aget-object v0, v0, v10

    iget-object v1, v0, Landroid/app/AppOpInfo;->name:Ljava/lang/String;

    move-object v0, p0

    move v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p6

    move/from16 v5, p5

    move/from16 v6, p7

    move/from16 v7, p8

    invoke-interface/range {v0 .. v7}, Landroid/app/AppOpsManager$OnOpActiveChangedListener;->onOpActiveChanged(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZII)V

    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public blacklist opActiveChanged(IILjava/lang/String;Ljava/lang/String;IZII)V
    .locals 13

    move-object v0, p0

    iget-object v1, v0, Landroid/app/AppOpsManager$3;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v3, v0, Landroid/app/AppOpsManager$3;->val$callback:Landroid/app/AppOpsManager$OnOpActiveChangedListener;

    new-instance v12, Landroid/app/AppOpsManager$3$$ExternalSyntheticLambda0;

    move-object v2, v12

    move v4, p1

    move v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p4

    move/from16 v10, p7

    move/from16 v11, p8

    invoke-direct/range {v2 .. v11}, Landroid/app/AppOpsManager$3$$ExternalSyntheticLambda0;-><init>(Landroid/app/AppOpsManager$OnOpActiveChangedListener;IILjava/lang/String;IZLjava/lang/String;II)V

    invoke-interface {v1, v12}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
