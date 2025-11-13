.class public final Lkotlin/reflect/jvm/internal/impl/types/checker/SubtypePathNode;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final previous:Lkotlin/reflect/jvm/internal/impl/types/checker/SubtypePathNode;

.field public final type:Lkotlin/reflect/jvm/internal/impl/types/KotlinType;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/types/checker/SubtypePathNode;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/types/checker/SubtypePathNode;->type:Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/types/checker/SubtypePathNode;->previous:Lkotlin/reflect/jvm/internal/impl/types/checker/SubtypePathNode;

    return-void
.end method
