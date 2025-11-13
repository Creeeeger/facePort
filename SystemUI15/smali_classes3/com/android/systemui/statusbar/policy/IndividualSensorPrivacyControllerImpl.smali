.class public final Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;


# static fields
.field public static final SENSORS:[I


# instance fields
.field public final mCallbacks:Lcom/android/systemui/util/ListenerSet;

.field public final mHardwareToggleState:Landroid/util/SparseBooleanArray;

.field public final mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;

.field public final mSoftwareToggleState:Landroid/util/SparseBooleanArray;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x1

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;->SENSORS:[I

    return-void
.end method

.method public constructor <init>(Landroid/hardware/SensorPrivacyManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;->mSoftwareToggleState:Landroid/util/SparseBooleanArray;

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;->mHardwareToggleState:Landroid/util/SparseBooleanArray;

    new-instance v0, Lcom/android/systemui/util/ListenerSet;

    invoke-direct {v0}, Lcom/android/systemui/util/ListenerSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;->mCallbacks:Lcom/android/systemui/util/ListenerSet;

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;->mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    return-void
.end method


# virtual methods
.method public final addCallback(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController$Callback;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;->mCallbacks:Lcom/android/systemui/util/ListenerSet;

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/ListenerSet;->addIfAbsent(Ljava/lang/Object;)Z

    return-void
.end method

.method public final isSensorBlocked(I)Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;->mSoftwareToggleState:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;->mHardwareToggleState:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public final removeCallback(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController$Callback;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;->mCallbacks:Lcom/android/systemui/util/ListenerSet;

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/ListenerSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final setSensorBlocked(IIZ)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;->mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    invoke-virtual {p0, p1, p2, p3}, Landroid/hardware/SensorPrivacyManager;->setSensorPrivacyForProfileGroup(IIZ)V

    return-void
.end method
