.class public final Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$GtsExpressionData;
.super Ljava/lang/Object;
.source "GtsExpressionBuilder.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GtsExpressionData"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGtsExpressionBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GtsExpressionBuilder.kt\ncom/samsung/android/gtscell/data/GtsExpressionBuilder$GtsExpressionData\n*L\n1#1,371:1\n*E\n"
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

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private expressionType:Lcom/samsung/android/gtscell/data/GtsExpressionType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 347
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 348
    sget-object v0, Lcom/samsung/android/gtscell/data/GtsExpressionType;->TYPE_NONE:Lcom/samsung/android/gtscell/data/GtsExpressionType;

    iput-object v0, p0, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$GtsExpressionData;->expressionType:Lcom/samsung/android/gtscell/data/GtsExpressionType;

    .line 349
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

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 349
    iget-object p0, p0, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$GtsExpressionData;->expression:Ljava/util/Map;

    return-object p0
.end method

.method public final getExpressionType()Lcom/samsung/android/gtscell/data/GtsExpressionType;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 348
    iget-object p0, p0, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$GtsExpressionData;->expressionType:Lcom/samsung/android/gtscell/data/GtsExpressionType;

    return-object p0
.end method

.method public final setExpressionType(Lcom/samsung/android/gtscell/data/GtsExpressionType;)V
    .locals 1
    .param p1    # Lcom/samsung/android/gtscell/data/GtsExpressionType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 348
    iput-object p1, p0, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$GtsExpressionData;->expressionType:Lcom/samsung/android/gtscell/data/GtsExpressionType;

    return-void
.end method
