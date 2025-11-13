.class final Lcom/android/systemui/bixby2/controller/volume/RingVolumeController_Factory$InstanceHolder;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field private static final INSTANCE:Lcom/android/systemui/bixby2/controller/volume/RingVolumeController_Factory;


# direct methods
.method public static bridge synthetic -$$Nest$sfgetINSTANCE()Lcom/android/systemui/bixby2/controller/volume/RingVolumeController_Factory;
    .locals 1

    sget-object v0, Lcom/android/systemui/bixby2/controller/volume/RingVolumeController_Factory$InstanceHolder;->INSTANCE:Lcom/android/systemui/bixby2/controller/volume/RingVolumeController_Factory;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/bixby2/controller/volume/RingVolumeController_Factory;

    invoke-direct {v0}, Lcom/android/systemui/bixby2/controller/volume/RingVolumeController_Factory;-><init>()V

    sput-object v0, Lcom/android/systemui/bixby2/controller/volume/RingVolumeController_Factory$InstanceHolder;->INSTANCE:Lcom/android/systemui/bixby2/controller/volume/RingVolumeController_Factory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
