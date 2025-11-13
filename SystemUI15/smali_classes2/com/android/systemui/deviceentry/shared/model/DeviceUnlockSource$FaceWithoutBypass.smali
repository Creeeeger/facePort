.class public final Lcom/android/systemui/deviceentry/shared/model/DeviceUnlockSource$FaceWithoutBypass;
.super Lcom/android/systemui/deviceentry/shared/model/DeviceUnlockSource;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final INSTANCE:Lcom/android/systemui/deviceentry/shared/model/DeviceUnlockSource$FaceWithoutBypass;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/deviceentry/shared/model/DeviceUnlockSource$FaceWithoutBypass;

    invoke-direct {v0}, Lcom/android/systemui/deviceentry/shared/model/DeviceUnlockSource$FaceWithoutBypass;-><init>()V

    sput-object v0, Lcom/android/systemui/deviceentry/shared/model/DeviceUnlockSource$FaceWithoutBypass;->INSTANCE:Lcom/android/systemui/deviceentry/shared/model/DeviceUnlockSource$FaceWithoutBypass;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/deviceentry/shared/model/DeviceUnlockSource;-><init>(ZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of p0, p1, Lcom/android/systemui/deviceentry/shared/model/DeviceUnlockSource$FaceWithoutBypass;

    if-nez p0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    return v0
.end method

.method public final hashCode()I
    .locals 0

    const p0, 0x3a2a68b7

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    const-string p0, "FaceWithoutBypass"

    return-object p0
.end method
