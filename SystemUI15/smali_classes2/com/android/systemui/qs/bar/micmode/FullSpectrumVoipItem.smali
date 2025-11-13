.class public final Lcom/android/systemui/qs/bar/micmode/FullSpectrumVoipItem;
.super Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems$Item;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final loggingId:Ljava/lang/String;

.field public final loggingValue:Ljava/lang/String;

.field public final micMode:I

.field public final text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems$Item;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/bar/micmode/FullSpectrumVoipItem;->text:Ljava/lang/String;

    iput p2, p0, Lcom/android/systemui/qs/bar/micmode/FullSpectrumVoipItem;->micMode:I

    iput-object p3, p0, Lcom/android/systemui/qs/bar/micmode/FullSpectrumVoipItem;->loggingId:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/systemui/qs/bar/micmode/FullSpectrumVoipItem;->loggingValue:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    const/4 p2, 0x2

    :cond_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_1

    const-string p3, "ASMM1030"

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    const-string p4, "FULL_SPECTRUM"

    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/qs/bar/micmode/FullSpectrumVoipItem;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getLoggingId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/bar/micmode/FullSpectrumVoipItem;->loggingId:Ljava/lang/String;

    return-object p0
.end method

.method public final getLoggingValue()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/bar/micmode/FullSpectrumVoipItem;->loggingValue:Ljava/lang/String;

    return-object p0
.end method

.method public final getMicMode()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/qs/bar/micmode/FullSpectrumVoipItem;->micMode:I

    return p0
.end method

.method public final getText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/bar/micmode/FullSpectrumVoipItem;->text:Ljava/lang/String;

    return-object p0
.end method
