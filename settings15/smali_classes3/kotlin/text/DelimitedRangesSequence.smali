.class public final Lkotlin/text/DelimitedRangesSequence;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/sequences/Sequence;


# instance fields
.field public final getNextMatch:Lkotlin/jvm/functions/Function2;

.field public final input:Ljava/lang/CharSequence;

.field public final limit:I

.field public final startIndex:I


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;IILkotlin/jvm/functions/Function2;)V
    .locals 1

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/text/DelimitedRangesSequence;->input:Ljava/lang/CharSequence;

    iput p2, p0, Lkotlin/text/DelimitedRangesSequence;->startIndex:I

    iput p3, p0, Lkotlin/text/DelimitedRangesSequence;->limit:I

    iput-object p4, p0, Lkotlin/text/DelimitedRangesSequence;->getNextMatch:Lkotlin/jvm/functions/Function2;

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lkotlin/text/DelimitedRangesSequence$iterator$1;

    invoke-direct {v0, p0}, Lkotlin/text/DelimitedRangesSequence$iterator$1;-><init>(Lkotlin/text/DelimitedRangesSequence;)V

    return-object v0
.end method
