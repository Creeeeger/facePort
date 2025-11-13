.class Landroid/hardware/devicestate/DeviceStateManagerGlobal$SemFoldStateListener;
.super Ljava/lang/Object;
.source "DeviceStateManagerGlobal.java"

# interfaces
.implements Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/devicestate/DeviceStateManagerGlobal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SemFoldStateListener"
.end annotation


# instance fields
.field private blacklist mFolded:Ljava/lang/Boolean;

.field private blacklist mListener:Lcom/samsung/android/view/SemWindowManager$FoldStateListener;

.field private blacklist mTableMode:Ljava/lang/Boolean;

.field final synthetic blacklist this$0:Landroid/hardware/devicestate/DeviceStateManagerGlobal;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmListener(Landroid/hardware/devicestate/DeviceStateManagerGlobal$SemFoldStateListener;)Lcom/samsung/android/view/SemWindowManager$FoldStateListener;
    .locals 0

    iget-object p0, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal$SemFoldStateListener;->mListener:Lcom/samsung/android/view/SemWindowManager$FoldStateListener;

    return-object p0
.end method

.method constructor blacklist <init>(Landroid/hardware/devicestate/DeviceStateManagerGlobal;Lcom/samsung/android/view/SemWindowManager$FoldStateListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal$SemFoldStateListener;->this$0:Landroid/hardware/devicestate/DeviceStateManagerGlobal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal$SemFoldStateListener;->mListener:Lcom/samsung/android/view/SemWindowManager$FoldStateListener;

    return-void
.end method


# virtual methods
.method public whitelist onDeviceStateChanged(Landroid/hardware/devicestate/DeviceState;)V
    .locals 5

    invoke-virtual {p1}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    if-eq v0, v2, :cond_1

    const/4 v3, 0x5

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v2

    :goto_1
    iget-object v4, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal$SemFoldStateListener;->mFolded:Ljava/lang/Boolean;

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal$SemFoldStateListener;->mFolded:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eq v3, v4, :cond_3

    :cond_2
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal$SemFoldStateListener;->mFolded:Ljava/lang/Boolean;

    iget-object v4, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal$SemFoldStateListener;->mListener:Lcom/samsung/android/view/SemWindowManager$FoldStateListener;

    invoke-interface {v4, v3}, Lcom/samsung/android/view/SemWindowManager$FoldStateListener;->onFoldStateChanged(Z)V

    :cond_3
    const/4 v4, 0x2

    if-ne v0, v4, :cond_4

    move v1, v2

    :cond_4
    iget-object v2, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal$SemFoldStateListener;->mTableMode:Ljava/lang/Boolean;

    if-eqz v2, :cond_5

    iget-object v2, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal$SemFoldStateListener;->mTableMode:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eq v1, v2, :cond_6

    :cond_5
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal$SemFoldStateListener;->mTableMode:Ljava/lang/Boolean;

    iget-object v2, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal$SemFoldStateListener;->mListener:Lcom/samsung/android/view/SemWindowManager$FoldStateListener;

    invoke-interface {v2, v1}, Lcom/samsung/android/view/SemWindowManager$FoldStateListener;->onTableModeChanged(Z)V

    :cond_6
    return-void
.end method
