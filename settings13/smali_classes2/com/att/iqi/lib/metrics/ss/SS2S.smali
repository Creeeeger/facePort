.class public Lcom/att/iqi/lib/metrics/ss/SS2S;
.super Lcom/att/iqi/lib/Metric;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/att/iqi/lib/metrics/ss/SS2S$IQISettings;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/att/iqi/lib/metrics/ss/SS2S;",
            ">;"
        }
    .end annotation
.end field

.field public static final ID:Lcom/att/iqi/lib/Metric$ID;

.field public static final SERVICE_SHOULD_NOT_RUN:B = 0x1t

.field public static final SERVICE_SHOULD_RUN:B

.field public static final SHOULD_SERVICE_RUN:I


# instance fields
.field private c:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/att/iqi/lib/Metric$ID;

    const-string v1, "SS2S"

    invoke-direct {v0, v1}, Lcom/att/iqi/lib/Metric$ID;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/att/iqi/lib/metrics/ss/SS2S;->ID:Lcom/att/iqi/lib/Metric$ID;

    new-instance v0, Lcom/att/iqi/lib/metrics/ss/SS2S$1;

    invoke-direct {v0}, Lcom/att/iqi/lib/metrics/ss/SS2S$1;-><init>()V

    sput-object v0, Lcom/att/iqi/lib/metrics/ss/SS2S;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/att/iqi/lib/Metric;-><init>()V

    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/att/iqi/lib/metrics/ss/SS2S;->c:B

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/att/iqi/lib/Metric;-><init>(Landroid/os/Parcel;)V

    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/att/iqi/lib/metrics/ss/SS2S;->c:B

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    iput-byte p1, p0, Lcom/att/iqi/lib/metrics/ss/SS2S;->c:B

    :cond_0
    return-void
.end method


# virtual methods
.method public getSetting(I)B
    .locals 2

    if-nez p1, :cond_0

    iget-byte p0, p0, Lcom/att/iqi/lib/metrics/ss/SS2S;->c:B

    and-int/lit8 p0, p0, 0x1

    int-to-byte p0, p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid setting ID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected serialize(Ljava/nio/ByteBuffer;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/BufferOverflowException;
        }
    .end annotation

    iget-byte p0, p0, Lcom/att/iqi/lib/metrics/ss/SS2S;->c:B

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p0

    return p0
.end method

.method public setSetting(IB)Lcom/att/iqi/lib/metrics/ss/SS2S;
    .locals 2

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal value "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " for setting ID "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    iget-byte p1, p0, Lcom/att/iqi/lib/metrics/ss/SS2S;->c:B

    and-int/lit8 p1, p1, -0x2

    int-to-byte p1, p1

    or-int/2addr p1, p2

    int-to-byte p1, p1

    iput-byte p1, p0, Lcom/att/iqi/lib/metrics/ss/SS2S;->c:B

    :goto_1
    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/att/iqi/lib/Metric;->writeToParcel(Landroid/os/Parcel;I)V

    iget-byte p0, p0, Lcom/att/iqi/lib/metrics/ss/SS2S;->c:B

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
