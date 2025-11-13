.class final Landroid/hardware/SystemSensorManager$InjectEventQueue;
.super Landroid/hardware/SystemSensorManager$BaseEventQueue;
.source "SystemSensorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/SystemSensorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "InjectEventQueue"
.end annotation


# instance fields
.field private blacklist mMode:I

.field final synthetic blacklist this$0:Landroid/hardware/SystemSensorManager;


# direct methods
.method public constructor blacklist <init>(Landroid/hardware/SystemSensorManager;Landroid/os/Looper;Landroid/hardware/SystemSensorManager;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/hardware/SystemSensorManager$InjectEventQueue;->this$0:Landroid/hardware/SystemSensorManager;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/hardware/SystemSensorManager$BaseEventQueue;-><init>(Landroid/os/Looper;Landroid/hardware/SystemSensorManager;ILjava/lang/String;)V

    iput p4, p0, Landroid/hardware/SystemSensorManager$InjectEventQueue;->mMode:I

    return-void
.end method


# virtual methods
.method protected greylist-max-o addSensorEvent(Landroid/hardware/Sensor;)V
    .locals 0

    return-void
.end method

.method protected greylist-max-o dispatchFlushCompleteEvent(I)V
    .locals 0

    return-void
.end method

.method protected greylist-max-o dispatchSensorEvent(I[FIJ)V
    .locals 0

    return-void
.end method

.method blacklist getDataInjectionMode()I
    .locals 1

    iget v0, p0, Landroid/hardware/SystemSensorManager$InjectEventQueue;->mMode:I

    return v0
.end method

.method greylist-max-o injectSensorData(I[FIJ)I
    .locals 1

    invoke-virtual/range {p0 .. p5}, Landroid/hardware/SystemSensorManager$InjectEventQueue;->injectSensorDataBase(I[FIJ)I

    move-result v0

    return v0
.end method

.method protected greylist-max-o removeSensorEvent(Landroid/hardware/Sensor;)V
    .locals 0

    return-void
.end method
