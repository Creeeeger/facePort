.class public final Lcom/android/settings/utils/SensorPrivacyManagerHelper$onSensorPrivacyChanged$1$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $it:Lkotlin/Pair;

.field public final synthetic $params:Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener$SensorPrivacyChangedParams;


# direct methods
.method public constructor <init>(Lkotlin/Pair;Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener$SensorPrivacyChangedParams;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/utils/SensorPrivacyManagerHelper$onSensorPrivacyChanged$1$1$1;->$it:Lkotlin/Pair;

    iput-object p2, p0, Lcom/android/settings/utils/SensorPrivacyManagerHelper$onSensorPrivacyChanged$1$1$1;->$params:Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener$SensorPrivacyChangedParams;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/utils/SensorPrivacyManagerHelper$onSensorPrivacyChanged$1$1$1;->$it:Lkotlin/Pair;

    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/privacy/SensorToggleController;

    iget-object v1, p0, Lcom/android/settings/utils/SensorPrivacyManagerHelper$onSensorPrivacyChanged$1$1$1;->$params:Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener$SensorPrivacyChangedParams;

    invoke-virtual {v1}, Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener$SensorPrivacyChangedParams;->getToggleType()I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/utils/SensorPrivacyManagerHelper$onSensorPrivacyChanged$1$1$1;->$params:Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener$SensorPrivacyChangedParams;

    invoke-virtual {v2}, Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener$SensorPrivacyChangedParams;->getSensor()I

    move-result v2

    iget-object p0, p0, Lcom/android/settings/utils/SensorPrivacyManagerHelper$onSensorPrivacyChanged$1$1$1;->$params:Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener$SensorPrivacyChangedParams;

    invoke-virtual {p0}, Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener$SensorPrivacyChangedParams;->isEnabled()Z

    move-result p0

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/settings/privacy/SensorToggleController;->onSensorPrivacyChanged(IIZ)V

    return-void
.end method
