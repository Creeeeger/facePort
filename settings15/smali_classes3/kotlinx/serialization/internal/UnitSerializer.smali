.class public final Lkotlinx/serialization/internal/UnitSerializer;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlinx/serialization/KSerializer;


# static fields
.field public static final INSTANCE:Lkotlinx/serialization/internal/UnitSerializer;


# instance fields
.field public final synthetic $$delegate_0:Lkotlinx/serialization/internal/ObjectSerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/serialization/internal/UnitSerializer;

    invoke-direct {v0}, Lkotlinx/serialization/internal/UnitSerializer;-><init>()V

    sput-object v0, Lkotlinx/serialization/internal/UnitSerializer;->INSTANCE:Lkotlinx/serialization/internal/UnitSerializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lkotlinx/serialization/internal/ObjectSerializer;

    invoke-direct {v0}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>()V

    iput-object v0, p0, Lkotlinx/serialization/internal/UnitSerializer;->$$delegate_0:Lkotlinx/serialization/internal/ObjectSerializer;

    return-void
.end method


# virtual methods
.method public final getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 0

    iget-object p0, p0, Lkotlinx/serialization/internal/UnitSerializer;->$$delegate_0:Lkotlinx/serialization/internal/ObjectSerializer;

    invoke-virtual {p0}, Lkotlinx/serialization/internal/ObjectSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    return-object p0
.end method

.method public final serialize(Landroidx/navigation/serialization/RouteEncoder;Ljava/lang/Object;)V
    .locals 1

    check-cast p2, Lkotlin/Unit;

    const-string v0, "encoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lkotlinx/serialization/internal/UnitSerializer;->$$delegate_0:Lkotlinx/serialization/internal/ObjectSerializer;

    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/internal/ObjectSerializer;->serialize(Landroidx/navigation/serialization/RouteEncoder;Ljava/lang/Object;)V

    return-void
.end method
