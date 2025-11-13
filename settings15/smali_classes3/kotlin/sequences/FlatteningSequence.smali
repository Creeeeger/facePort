.class public final Lkotlin/sequences/FlatteningSequence;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/sequences/Sequence;


# instance fields
.field public final iterator:Lkotlin/jvm/functions/Function1;

.field public final sequence:Lkotlin/sequences/Sequence;

.field public final transformer:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .locals 1

    const-string/jumbo v0, "transformer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "iterator"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/sequences/FlatteningSequence;->sequence:Lkotlin/sequences/Sequence;

    iput-object p2, p0, Lkotlin/sequences/FlatteningSequence;->transformer:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Lkotlin/sequences/FlatteningSequence;->iterator:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lkotlin/sequences/FlatteningSequence$iterator$1;

    invoke-direct {v0, p0}, Lkotlin/sequences/FlatteningSequence$iterator$1;-><init>(Lkotlin/sequences/FlatteningSequence;)V

    return-object v0
.end method
