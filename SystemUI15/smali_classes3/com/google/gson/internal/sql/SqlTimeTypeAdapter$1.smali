.class Lcom/google/gson/internal/sql/SqlTimeTypeAdapter$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/google/gson/TypeAdapterFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;
    .locals 0

    invoke-virtual {p2}, Lcom/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object p0

    const-class p1, Ljava/sql/Time;

    const/4 p2, 0x0

    if-ne p0, p1, :cond_0

    new-instance p0, Lcom/google/gson/internal/sql/SqlTimeTypeAdapter;

    invoke-direct {p0, p2}, Lcom/google/gson/internal/sql/SqlTimeTypeAdapter;-><init>(Lcom/google/gson/internal/sql/SqlTimeTypeAdapter$1;)V

    move-object p2, p0

    :cond_0
    return-object p2
.end method
