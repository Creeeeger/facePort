.class public final Lkotlin/reflect/jvm/internal/impl/util/ArrayMapImpl$iterator$1;
.super Lkotlin/collections/AbstractIterator;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public index:I

.field public final synthetic this$0:Lkotlin/reflect/jvm/internal/impl/util/ArrayMapImpl;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/util/ArrayMapImpl;)V
    .locals 0

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/util/ArrayMapImpl$iterator$1;->this$0:Lkotlin/reflect/jvm/internal/impl/util/ArrayMapImpl;

    invoke-direct {p0}, Lkotlin/collections/AbstractIterator;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/util/ArrayMapImpl$iterator$1;->index:I

    return-void
.end method


# virtual methods
.method public final computeNext()V
    .locals 3

    :cond_0
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/util/ArrayMapImpl$iterator$1;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/util/ArrayMapImpl$iterator$1;->index:I

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/util/ArrayMapImpl$iterator$1;->this$0:Lkotlin/reflect/jvm/internal/impl/util/ArrayMapImpl;

    iget-object v1, v1, Lkotlin/reflect/jvm/internal/impl/util/ArrayMapImpl;->data:[Ljava/lang/Object;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object v2, v1, v0

    if-eqz v2, :cond_0

    :cond_1
    array-length v2, v1

    if-lt v0, v2, :cond_2

    invoke-virtual {p0}, Lkotlin/collections/AbstractIterator;->done()V

    goto :goto_0

    :cond_2
    aget-object v0, v1, v0

    const-string v1, "null cannot be cast to non-null type T of org.jetbrains.kotlin.util.ArrayMapImpl"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lkotlin/collections/AbstractIterator;->setNext(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
