.class Landroid/hardware/SensorPrivacyManager$3;
.super Landroid/hardware/ISensorPrivacyListener$Stub;
.source "SensorPrivacyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/SensorPrivacyManager;->addAllSensorPrivacyListener(Landroid/hardware/SensorPrivacyManager$OnAllSensorPrivacyChangedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/hardware/SensorPrivacyManager;

.field final synthetic blacklist val$listener:Landroid/hardware/SensorPrivacyManager$OnAllSensorPrivacyChangedListener;


# direct methods
.method constructor blacklist <init>(Landroid/hardware/SensorPrivacyManager;Landroid/hardware/SensorPrivacyManager$OnAllSensorPrivacyChangedListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/hardware/SensorPrivacyManager$3;->this$0:Landroid/hardware/SensorPrivacyManager;

    iput-object p2, p0, Landroid/hardware/SensorPrivacyManager$3;->val$listener:Landroid/hardware/SensorPrivacyManager$OnAllSensorPrivacyChangedListener;

    invoke-direct {p0}, Landroid/hardware/ISensorPrivacyListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onSensorPrivacyChanged(IIZ)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/SensorPrivacyManager$3;->val$listener:Landroid/hardware/SensorPrivacyManager$OnAllSensorPrivacyChangedListener;

    invoke-interface {v0, p3}, Landroid/hardware/SensorPrivacyManager$OnAllSensorPrivacyChangedListener;->onAllSensorPrivacyChanged(Z)V

    return-void
.end method

.method public blacklist onSensorPrivacyStateChanged(III)V
    .locals 0

    return-void
.end method
