.class public final Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$GtsExpressionData;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GtsExpressionData"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R\u001d\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u001a\u0010\u0008\u001a\u00020\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$GtsExpressionData;",
        "",
        "()V",
        "expression",
        "",
        "",
        "getExpression",
        "()Ljava/util/Map;",
        "expressionType",
        "Lcom/samsung/android/gtscell/data/GtsExpressionType;",
        "getExpressionType",
        "()Lcom/samsung/android/gtscell/data/GtsExpressionType;",
        "setExpressionType",
        "(Lcom/samsung/android/gtscell/data/GtsExpressionType;)V",
        "gtscell_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private final expression:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private expressionType:Lcom/samsung/android/gtscell/data/GtsExpressionType;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/samsung/android/gtscell/data/GtsExpressionType;->TYPE_NONE:Lcom/samsung/android/gtscell/data/GtsExpressionType;

    iput-object v0, p0, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$GtsExpressionData;->expressionType:Lcom/samsung/android/gtscell/data/GtsExpressionType;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$GtsExpressionData;->expression:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final getExpression()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$GtsExpressionData;->expression:Ljava/util/Map;

    return-object p0
.end method

.method public final getExpressionType()Lcom/samsung/android/gtscell/data/GtsExpressionType;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$GtsExpressionData;->expressionType:Lcom/samsung/android/gtscell/data/GtsExpressionType;

    return-object p0
.end method

.method public final setExpressionType(Lcom/samsung/android/gtscell/data/GtsExpressionType;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$GtsExpressionData;->expressionType:Lcom/samsung/android/gtscell/data/GtsExpressionType;

    return-void
.end method
