.class public Lcom/samsung/android/settings/wifi/develop/utils/ValidationProbeEvent;
.super Ljava/lang/Object;
.source "ValidationProbeEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/wifi/develop/utils/ValidationProbeEvent$Builder;,
        Lcom/samsung/android/settings/wifi/develop/utils/ValidationProbeEvent$Decoder;,
        Lcom/samsung/android/settings/wifi/develop/utils/ValidationProbeEvent$probeName;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/settings/wifi/develop/utils/ValidationProbeEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final durationMs:J

.field public final probeType:I

.field public final returnCode:I


# direct methods
.method static bridge synthetic -$$Nest$smmakeProbeType(IZ)I
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/settings/wifi/develop/utils/ValidationProbeEvent;->makeProbeType(IZ)I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 30
    new-instance v0, Lcom/samsung/android/settings/wifi/develop/utils/ValidationProbeEvent$1;

    invoke-direct {v0}, Lcom/samsung/android/settings/wifi/develop/utils/ValidationProbeEvent$1;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/wifi/develop/utils/ValidationProbeEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(JII)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-wide p1, p0, Lcom/samsung/android/settings/wifi/develop/utils/ValidationProbeEvent;->durationMs:J

    .line 42
    iput p3, p0, Lcom/samsung/android/settings/wifi/develop/utils/ValidationProbeEvent;->probeType:I

    .line 43
    iput p4, p0, Lcom/samsung/android/settings/wifi/develop/utils/ValidationProbeEvent;->returnCode:I

    return-void
.end method

.method synthetic constructor <init>(JIILcom/samsung/android/settings/wifi/develop/utils/ValidationProbeEvent-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/settings/wifi/develop/utils/ValidationProbeEvent;-><init>(JII)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/settings/wifi/develop/utils/ValidationProbeEvent;->durationMs:J

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/wifi/develop/utils/ValidationProbeEvent;->probeType:I

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/wifi/develop/utils/ValidationProbeEvent;->returnCode:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/samsung/android/settings/wifi/develop/utils/ValidationProbeEvent-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/develop/utils/ValidationProbeEvent;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static getProbeName(I)Ljava/lang/String;
    .locals 2

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/develop/utils/ValidationProbeEvent$Decoder;->getProbeName(I)Lcom/samsung/android/settings/wifi/develop/utils/ValidationProbeEvent$probeName;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static makeProbeType(IZ)I
    .locals 0

    return p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 75
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/samsung/android/settings/wifi/develop/utils/ValidationProbeEvent;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    check-cast p1, Lcom/samsung/android/settings/wifi/develop/utils/ValidationProbeEvent;

    .line 77
    iget-wide v1, p0, Lcom/samsung/android/settings/wifi/develop/utils/ValidationProbeEvent;->durationMs:J

    iget-wide v3, p1, Lcom/samsung/android/settings/wifi/develop/utils/ValidationProbeEvent;->durationMs:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    iget v1, p0, Lcom/samsung/android/settings/wifi/develop/utils/ValidationProbeEvent;->probeType:I

    iget v2, p1, Lcom/samsung/android/settings/wifi/develop/utils/ValidationProbeEvent;->probeType:I

    if-ne v1, v2, :cond_0

    iget p0, p0, Lcom/samsung/android/settings/wifi/develop/utils/ValidationProbeEvent;->returnCode:I

    iget p1, p1, Lcom/samsung/android/settings/wifi/develop/utils/ValidationProbeEvent;->returnCode:I

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 71
    iget v1, p0, Lcom/samsung/android/settings/wifi/develop/utils/ValidationProbeEvent;->probeType:I

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/develop/utils/ValidationProbeEvent;->getProbeName(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/samsung/android/settings/wifi/develop/utils/ValidationProbeEvent;->returnCode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/samsung/android/settings/wifi/develop/utils/ValidationProbeEvent;->durationMs:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const/4 v1, 0x2

    aput-object p0, v0, v1

    const-string p0, "%s (%d, %dms)"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
