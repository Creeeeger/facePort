.class final Lcom/android/systemui/util/SparseArrayMapWrapper$keys$1$keySequence$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/systemui/util/SparseArrayMapWrapper$keys$1$keySequence$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/util/SparseArrayMapWrapper$keys$1$keySequence$1;

    invoke-direct {v0}, Lcom/android/systemui/util/SparseArrayMapWrapper$keys$1$keySequence$1;-><init>()V

    sput-object v0, Lcom/android/systemui/util/SparseArrayMapWrapper$keys$1$keySequence$1;->INSTANCE:Lcom/android/systemui/util/SparseArrayMapWrapper$keys$1$keySequence$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/android/systemui/util/SparseArrayMapWrapper$Entry;)Ljava/lang/Integer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/util/SparseArrayMapWrapper$Entry<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/android/systemui/util/SparseArrayMapWrapper$Entry;->getKey()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/systemui/util/SparseArrayMapWrapper$Entry;

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/SparseArrayMapWrapper$keys$1$keySequence$1;->invoke(Lcom/android/systemui/util/SparseArrayMapWrapper$Entry;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
