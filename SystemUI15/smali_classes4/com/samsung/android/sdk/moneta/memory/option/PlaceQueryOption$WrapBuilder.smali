.class public final Lcom/samsung/android/sdk/moneta/memory/option/PlaceQueryOption$WrapBuilder;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final engramId:Ljava/lang/String;

.field public final limit:I

.field public final offset:I

.field public final queryType:Lcom/samsung/android/sdk/moneta/memory/option/PlaceQueryType;


# direct methods
.method public constructor <init>(Ljava/lang/String;IILcom/samsung/android/sdk/moneta/memory/option/PlaceQueryType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/moneta/memory/option/PlaceQueryOption$WrapBuilder;->engramId:Ljava/lang/String;

    iput p2, p0, Lcom/samsung/android/sdk/moneta/memory/option/PlaceQueryOption$WrapBuilder;->limit:I

    iput p3, p0, Lcom/samsung/android/sdk/moneta/memory/option/PlaceQueryOption$WrapBuilder;->offset:I

    iput-object p4, p0, Lcom/samsung/android/sdk/moneta/memory/option/PlaceQueryOption$WrapBuilder;->queryType:Lcom/samsung/android/sdk/moneta/memory/option/PlaceQueryType;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;IILcom/samsung/android/sdk/moneta/memory/option/PlaceQueryType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    const/16 p2, 0x64

    :cond_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_1

    const/4 p3, 0x0

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    sget-object p4, Lcom/samsung/android/sdk/moneta/memory/option/PlaceQueryType;->BY_ENGRAM_ID:Lcom/samsung/android/sdk/moneta/memory/option/PlaceQueryType;

    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/sdk/moneta/memory/option/PlaceQueryOption$WrapBuilder;-><init>(Ljava/lang/String;IILcom/samsung/android/sdk/moneta/memory/option/PlaceQueryType;)V

    return-void
.end method
