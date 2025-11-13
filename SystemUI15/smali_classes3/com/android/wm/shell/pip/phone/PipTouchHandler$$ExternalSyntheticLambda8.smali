.class public final synthetic Lcom/android/wm/shell/pip/phone/PipTouchHandler$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/wm/shell/pip/phone/PipTouchHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/pip/phone/PipTouchHandler;I)V
    .locals 0

    iput p2, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler$$ExternalSyntheticLambda8;->$r8$classId:I

    iput-object p1, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler$$ExternalSyntheticLambda8;->f$0:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .locals 2

    iget v0, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler$$ExternalSyntheticLambda8;->$r8$classId:I

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler$$ExternalSyntheticLambda8;->f$0:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v0

    const-string v1, "pip_velocity_threshold"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x468ca000    # 18000.0f

    invoke-virtual {p1, v1, v0}, Landroid/provider/DeviceConfig$Properties;->getFloat(Ljava/lang/String;F)F

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mStashVelocityThreshold:F

    :cond_0
    return-void

    :pswitch_0
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v0

    const-string v1, "pip_stashing"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p1, v1, v0}, Landroid/provider/DeviceConfig$Properties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mEnableStash:Z

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
