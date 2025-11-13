.class public final Lcom/android/keyguard/KeyguardDisplayManager$DeviceStateHelper;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;


# instance fields
.field public final mConcurrentState:I

.field public mIsInConcurrentDisplayState:Z

.field public final mRearDisplayPhysicalAddress:Landroid/view/DisplayAddress$Physical;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/hardware/devicestate/DeviceStateManager;Ljava/util/concurrent/Executor;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x104039e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardDisplayManager$DeviceStateHelper;->mRearDisplayPhysicalAddress:Landroid/view/DisplayAddress$Physical;

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/view/DisplayAddress;->fromPhysicalDisplayId(J)Landroid/view/DisplayAddress$Physical;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardDisplayManager$DeviceStateHelper;->mRearDisplayPhysicalAddress:Landroid/view/DisplayAddress$Physical;

    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x10e0089

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/keyguard/KeyguardDisplayManager$DeviceStateHelper;->mConcurrentState:I

    invoke-virtual {p2, p3, p0}, Landroid/hardware/devicestate/DeviceStateManager;->registerCallback(Ljava/util/concurrent/Executor;Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;)V

    return-void
.end method


# virtual methods
.method public final onDeviceStateChanged(Landroid/hardware/devicestate/DeviceState;)V
    .locals 1

    invoke-virtual {p1}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    move-result p1

    iget v0, p0, Lcom/android/keyguard/KeyguardDisplayManager$DeviceStateHelper;->mConcurrentState:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardDisplayManager$DeviceStateHelper;->mIsInConcurrentDisplayState:Z

    return-void
.end method
