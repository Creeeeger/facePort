.class public final Lcom/google/gson/internal/ConstructorConstructor$17;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/google/gson/internal/ObjectConstructor;


# instance fields
.field public final synthetic val$exceptionMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/gson/internal/ConstructorConstructor;Ljava/lang/String;)V
    .locals 0

    iput-object p2, p0, Lcom/google/gson/internal/ConstructorConstructor$17;->val$exceptionMessage:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final construct()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/google/gson/JsonIOException;

    iget-object p0, p0, Lcom/google/gson/internal/ConstructorConstructor$17;->val$exceptionMessage:Ljava/lang/String;

    invoke-direct {v0, p0}, Lcom/google/gson/JsonIOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
