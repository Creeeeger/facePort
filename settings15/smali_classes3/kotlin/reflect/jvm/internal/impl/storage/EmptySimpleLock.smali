.class public final Lkotlin/reflect/jvm/internal/impl/storage/EmptySimpleLock;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/storage/SimpleLock;


# static fields
.field public static final INSTANCE:Lkotlin/reflect/jvm/internal/impl/storage/EmptySimpleLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/storage/EmptySimpleLock;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/storage/EmptySimpleLock;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/storage/EmptySimpleLock;

    return-void
.end method


# virtual methods
.method public final lock()V
    .locals 0

    return-void
.end method

.method public final unlock()V
    .locals 0

    return-void
.end method
