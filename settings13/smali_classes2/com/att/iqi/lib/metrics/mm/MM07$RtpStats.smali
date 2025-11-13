.class Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/att/iqi/lib/metrics/mm/MM07;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RtpStats"
.end annotation


# instance fields
.field private a:B

.field private b:B

.field private c:I

.field private d:I

.field private e:I

.field private f:I


# direct methods
.method static bridge synthetic -$$Nest$fgeta(Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;)B
    .locals 0

    iget-byte p0, p0, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;->a:B

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetb(Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;)B
    .locals 0

    iget-byte p0, p0, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;->b:B

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetc(Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;)I
    .locals 0

    iget p0, p0, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;->c:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetd(Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;)I
    .locals 0

    iget p0, p0, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;->d:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgete(Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;)I
    .locals 0

    iget p0, p0, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;->e:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetf(Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;)I
    .locals 0

    iget p0, p0, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;->f:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputc(Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;I)V
    .locals 0

    iput p1, p0, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;->c:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputd(Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;I)V
    .locals 0

    iput p1, p0, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;->d:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fpute(Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;I)V
    .locals 0

    iput p1, p0, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;->e:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputf(Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;I)V
    .locals 0

    iput p1, p0, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;->f:I

    return-void
.end method

.method static bridge synthetic -$$Nest$ma(Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;Ljava/nio/ByteBuffer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;->a(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method private constructor <init>(BB)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;->a:B

    iput-byte p2, p0, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;->b:B

    const/4 p1, 0x0

    iput p1, p0, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;->c:I

    iput p1, p0, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;->d:I

    iput p1, p0, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;->e:I

    iput p1, p0, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;->f:I

    return-void
.end method

.method synthetic constructor <init>(BBLcom/att/iqi/lib/metrics/mm/MM07$RtpStats-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;-><init>(BB)V

    return-void
.end method

.method private a(Ljava/nio/ByteBuffer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/BufferOverflowException;
        }
    .end annotation

    iget-byte v0, p0, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;->a:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-byte v0, p0, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;->b:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget v0, p0, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;->c:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget v0, p0, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;->d:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget v0, p0, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;->e:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget p0, p0, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;->f:I

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public set(IIII)V
    .locals 0

    iput p1, p0, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;->c:I

    iput p2, p0, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;->d:I

    iput p3, p0, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;->e:I

    iput p4, p0, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;->f:I

    return-void
.end method
