.class public final Lcom/android/wm/shell/common/TabletopModeController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/wm/shell/common/DevicePostureController$OnDevicePostureChangedListener;
.implements Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;


# static fields
.field public static final PREFER_TOP_HALF_IN_TABLETOP:Z


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mDevicePosture:I

.field public final mDevicePostureController:Lcom/android/wm/shell/common/DevicePostureController;

.field public final mDisplayController:Lcom/android/wm/shell/common/DisplayController;

.field public mDisplayRotation:I

.field public mLastIsInTabletopModeForCallback:Ljava/lang/Boolean;

.field public final mListeners:Ljava/util/List;

.field public final mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field final mOnEnterTabletopModeCallback:Ljava/lang/Runnable;

.field public final mTabletopModeRotations:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "persist.wm.debug.prefer_top_half_in_tabletop"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/wm/shell/common/TabletopModeController;->PREFER_TOP_HALF_IN_TABLETOP:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/common/DevicePostureController;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/ShellExecutor;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/common/TabletopModeController;->mTabletopModeRotations:Ljava/util/Set;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/common/TabletopModeController;->mListeners:Ljava/util/List;

    new-instance v0, Lcom/android/wm/shell/common/TabletopModeController$$ExternalSyntheticLambda1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/wm/shell/common/TabletopModeController$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/common/TabletopModeController;I)V

    iput-object v0, p0, Lcom/android/wm/shell/common/TabletopModeController;->mOnEnterTabletopModeCallback:Ljava/lang/Runnable;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/wm/shell/common/TabletopModeController;->mDevicePosture:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/wm/shell/common/TabletopModeController;->mDisplayRotation:I

    iput-object p1, p0, Lcom/android/wm/shell/common/TabletopModeController;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/wm/shell/common/TabletopModeController;->mDevicePostureController:Lcom/android/wm/shell/common/DevicePostureController;

    iput-object p4, p0, Lcom/android/wm/shell/common/TabletopModeController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    iput-object p5, p0, Lcom/android/wm/shell/common/TabletopModeController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance p1, Lcom/android/wm/shell/common/TabletopModeController$$ExternalSyntheticLambda1;

    const/4 p3, 0x1

    invoke-direct {p1, p0, p3}, Lcom/android/wm/shell/common/TabletopModeController$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/common/TabletopModeController;I)V

    invoke-virtual {p2, p1, p0}, Lcom/android/wm/shell/sysui/ShellInit;->addInitCallback(Ljava/lang/Runnable;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final isInTabletopMode()Z
    .locals 2

    iget v0, p0, Lcom/android/wm/shell/common/TabletopModeController;->mDevicePosture:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/common/TabletopModeController;->mTabletopModeRotations:Ljava/util/Set;

    iget p0, p0, Lcom/android/wm/shell/common/TabletopModeController;->mDisplayRotation:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    check-cast v0, Landroid/util/ArraySet;

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final onDevicePostureOrDisplayRotationChanged(II)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/wm/shell/common/TabletopModeController;->isInTabletopMode()Z

    move-result v0

    iput p1, p0, Lcom/android/wm/shell/common/TabletopModeController;->mDevicePosture:I

    iput p2, p0, Lcom/android/wm/shell/common/TabletopModeController;->mDisplayRotation:I

    invoke-virtual {p0}, Lcom/android/wm/shell/common/TabletopModeController;->isInTabletopMode()Z

    move-result p1

    iget-object p2, p0, Lcom/android/wm/shell/common/TabletopModeController;->mOnEnterTabletopModeCallback:Ljava/lang/Runnable;

    iget-object v1, p0, Lcom/android/wm/shell/common/TabletopModeController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    check-cast v1, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {v1, p2}, Lcom/android/wm/shell/common/HandlerExecutor;->removeCallbacks(Ljava/lang/Runnable;)V

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/wm/shell/common/TabletopModeController;->mOnEnterTabletopModeCallback:Ljava/lang/Runnable;

    const-wide/16 p1, 0x3e8

    invoke-virtual {v1, p0, p1, p2}, Lcom/android/wm/shell/common/HandlerExecutor;->executeDelayed(Ljava/lang/Runnable;J)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/wm/shell/common/TabletopModeController;->mLastIsInTabletopModeForCallback:Ljava/lang/Boolean;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    iget-object p1, p0, Lcom/android/wm/shell/common/TabletopModeController;->mListeners:Ljava/util/List;

    new-instance p2, Lcom/android/wm/shell/common/TabletopModeController$$ExternalSyntheticLambda0;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Lcom/android/wm/shell/common/TabletopModeController$$ExternalSyntheticLambda0;-><init>(Z)V

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/android/wm/shell/common/TabletopModeController;->mLastIsInTabletopModeForCallback:Ljava/lang/Boolean;

    :cond_2
    :goto_0
    return-void
.end method

.method public final onDisplayConfigurationChanged(ILandroid/content/res/Configuration;)V
    .locals 0

    iget-object p2, p2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p2}, Landroid/app/WindowConfiguration;->getDisplayRotation()I

    move-result p2

    if-nez p1, :cond_0

    iget p1, p0, Lcom/android/wm/shell/common/TabletopModeController;->mDisplayRotation:I

    if-eq p2, p1, :cond_0

    iget p1, p0, Lcom/android/wm/shell/common/TabletopModeController;->mDevicePosture:I

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/common/TabletopModeController;->onDevicePostureOrDisplayRotationChanged(II)V

    :cond_0
    return-void
.end method

.method public onInit()V
    .locals 13

    iget-object v0, p0, Lcom/android/wm/shell/common/TabletopModeController;->mDevicePostureController:Lcom/android/wm/shell/common/DevicePostureController;

    iget-object v1, v0, Lcom/android/wm/shell/common/DevicePostureController;->mListeners:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/android/wm/shell/common/DevicePostureController;->mListeners:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v0, v0, Lcom/android/wm/shell/common/DevicePostureController;->mDevicePosture:I

    iget v1, p0, Lcom/android/wm/shell/common/TabletopModeController;->mDevicePosture:I

    if-eq v1, v0, :cond_1

    iget v1, p0, Lcom/android/wm/shell/common/TabletopModeController;->mDisplayRotation:I

    invoke-virtual {p0, v0, v1}, Lcom/android/wm/shell/common/TabletopModeController;->onDevicePostureOrDisplayRotationChanged(II)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/wm/shell/common/TabletopModeController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    invoke-virtual {v0, p0}, Lcom/android/wm/shell/common/DisplayController;->addDisplayWindowListener(Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;)V

    iget-object v0, p0, Lcom/android/wm/shell/common/TabletopModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10700cf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    const/4 v1, 0x4

    if-eqz v0, :cond_9

    array-length v2, v0

    if-nez v2, :cond_2

    goto :goto_3

    :cond_2
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    if-ge v4, v2, :cond_8

    aget v5, v0, v4

    if-eqz v5, :cond_6

    const/16 v6, 0x5a

    if-eq v5, v6, :cond_5

    const/16 v6, 0xb4

    if-eq v5, v6, :cond_4

    const/16 v6, 0x10e

    if-eq v5, v6, :cond_3

    sget-object v6, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_FOLDABLE_enabled:[Z

    aget-boolean v6, v6, v1

    if-eqz v6, :cond_7

    int-to-long v5, v5

    sget-object v7, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_FOLDABLE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v12

    const/4 v10, 0x1

    const/4 v11, 0x0

    const-wide v8, -0x72286930f64ccc66L

    invoke-static/range {v7 .. v12}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->e(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    iget-object v5, p0, Lcom/android/wm/shell/common/TabletopModeController;->mTabletopModeRotations:Ljava/util/Set;

    const/4 v6, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    check-cast v5, Landroid/util/ArraySet;

    invoke-virtual {v5, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    iget-object v5, p0, Lcom/android/wm/shell/common/TabletopModeController;->mTabletopModeRotations:Ljava/util/Set;

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    check-cast v5, Landroid/util/ArraySet;

    invoke-virtual {v5, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    iget-object v5, p0, Lcom/android/wm/shell/common/TabletopModeController;->mTabletopModeRotations:Ljava/util/Set;

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    check-cast v5, Landroid/util/ArraySet;

    invoke-virtual {v5, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    iget-object v5, p0, Lcom/android/wm/shell/common/TabletopModeController;->mTabletopModeRotations:Ljava/util/Set;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    check-cast v5, Landroid/util/ArraySet;

    invoke-virtual {v5, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_7
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_8
    return-void

    :cond_9
    :goto_3
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_FOLDABLE_enabled:[Z

    aget-boolean p0, p0, v1

    if-eqz p0, :cond_a

    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_FOLDABLE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-wide v1, 0x10c915edc945380fL    # 8.272919825205494E-228

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->e(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_a
    return-void
.end method
