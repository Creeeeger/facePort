.class public final Lcom/samsung/android/sdk/moneta/memory/option/EngramSearchOption$WrapBuilder;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final contentFill:Z

.field public final keywords:Ljava/lang/String;

.field public final limit:I

.field public final offset:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/moneta/memory/option/EngramSearchOption$WrapBuilder;->keywords:Ljava/lang/String;

    iput p2, p0, Lcom/samsung/android/sdk/moneta/memory/option/EngramSearchOption$WrapBuilder;->limit:I

    iput p3, p0, Lcom/samsung/android/sdk/moneta/memory/option/EngramSearchOption$WrapBuilder;->offset:I

    iput-boolean p4, p0, Lcom/samsung/android/sdk/moneta/memory/option/EngramSearchOption$WrapBuilder;->contentFill:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;IIZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    const/16 p2, 0x14

    :cond_0
    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_1

    move p3, v0

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    move p4, v0

    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/sdk/moneta/memory/option/EngramSearchOption$WrapBuilder;-><init>(Ljava/lang/String;IIZ)V

    return-void
.end method
