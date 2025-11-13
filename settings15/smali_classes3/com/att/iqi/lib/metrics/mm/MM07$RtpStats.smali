.class Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/att/iqi/lib/metrics/mm/MM07;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RtpStats"
.end annotation


# instance fields
.field public m_dwDuration:I

.field public m_dwPacketsDrop:I

.field public m_dwPacketsLate:I

.field public m_dwPacketsRcvd:I

.field public final m_ucFormat:B

.field public final m_ucMediaType:B


# direct methods
.method public constructor <init>(BB)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;->m_ucMediaType:B

    iput-byte p2, p0, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;->m_ucFormat:B

    const/4 p1, 0x0

    iput p1, p0, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;->m_dwDuration:I

    iput p1, p0, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;->m_dwPacketsRcvd:I

    iput p1, p0, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;->m_dwPacketsDrop:I

    iput p1, p0, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;->m_dwPacketsLate:I

    return-void
.end method


# virtual methods
.method public set(IIII)V
    .locals 0

    iput p1, p0, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;->m_dwDuration:I

    iput p2, p0, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;->m_dwPacketsRcvd:I

    iput p3, p0, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;->m_dwPacketsDrop:I

    iput p4, p0, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;->m_dwPacketsLate:I

    return-void
.end method
