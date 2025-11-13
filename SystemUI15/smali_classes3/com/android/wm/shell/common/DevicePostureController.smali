.class public final Lcom/android/wm/shell/common/DevicePostureController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mDevicePosture:I

.field public final mDeviceStateToPostureMap:Landroid/util/SparseIntArray;

.field public final mListeners:Ljava/util/List;

.field public final mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/common/ShellExecutor;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/common/DevicePostureController;->mListeners:Ljava/util/List;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/common/DevicePostureController;->mDeviceStateToPostureMap:Landroid/util/SparseIntArray;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/wm/shell/common/DevicePostureController;->mDevicePosture:I

    iput-object p1, p0, Lcom/android/wm/shell/common/DevicePostureController;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/wm/shell/common/DevicePostureController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance p1, Lcom/android/wm/shell/common/DevicePostureController$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/wm/shell/common/DevicePostureController$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/common/DevicePostureController;)V

    invoke-virtual {p2, p1, p0}, Lcom/android/wm/shell/sysui/ShellInit;->addInitCallback(Ljava/lang/Runnable;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public onDevicePostureChanged(I)V
    .locals 1

    iget v0, p0, Lcom/android/wm/shell/common/DevicePostureController;->mDevicePosture:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/android/wm/shell/common/DevicePostureController;->mDevicePosture:I

    iget-object p1, p0, Lcom/android/wm/shell/common/DevicePostureController;->mListeners:Ljava/util/List;

    new-instance v0, Lcom/android/wm/shell/common/DevicePostureController$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/common/DevicePostureController$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/common/DevicePostureController;)V

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method
