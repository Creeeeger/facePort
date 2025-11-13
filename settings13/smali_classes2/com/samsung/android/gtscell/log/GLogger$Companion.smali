.class public final Lcom/samsung/android/gtscell/log/GLogger$Companion;
.super Ljava/lang/Object;
.source "GLogger.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gtscell/log/GLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGLogger.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GLogger.kt\ncom/samsung/android/gtscell/log/GLogger$Companion\n*L\n1#1,203:1\n*E\n"
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Lcom/samsung/android/gtscell/log/GLogger$Companion;

.field public static final BUF_LIMIT:I = 0x64

.field private static final Global$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final GlobalLevel:Lcom/samsung/android/gtscell/log/GLogger$Companion$debugLevelOf$1;

.field public static final TAG:Ljava/lang/String; = "GTS_CELL"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 54
    new-instance v0, Lcom/samsung/android/gtscell/log/GLogger$Companion;

    invoke-direct {v0}, Lcom/samsung/android/gtscell/log/GLogger$Companion;-><init>()V

    sput-object v0, Lcom/samsung/android/gtscell/log/GLogger$Companion;->$$INSTANCE:Lcom/samsung/android/gtscell/log/GLogger$Companion;

    .line 59
    sget-object v1, Lcom/samsung/android/gtscell/log/GLogger$Level;->INFO:Lcom/samsung/android/gtscell/log/GLogger$Level;

    invoke-direct {v0, v1}, Lcom/samsung/android/gtscell/log/GLogger$Companion;->debugLevelOf(Lcom/samsung/android/gtscell/log/GLogger$Level;)Lcom/samsung/android/gtscell/log/GLogger$Companion$debugLevelOf$1;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/gtscell/log/GLogger$Companion;->GlobalLevel:Lcom/samsung/android/gtscell/log/GLogger$Companion$debugLevelOf$1;

    .line 62
    new-instance v1, Lcom/samsung/android/gtscell/log/GLogger$Companion$Global$2;

    invoke-direct {v1, v0}, Lcom/samsung/android/gtscell/log/GLogger$Companion$Global$2;-><init>(Lcom/samsung/android/gtscell/log/GLogger$Companion;)V

    invoke-static {v1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/gtscell/log/GLogger$Companion;->Global$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic Global$annotations()V
    .locals 0

    return-void
.end method

.method private final debugLevelOf(Lcom/samsung/android/gtscell/log/GLogger$Level;)Lcom/samsung/android/gtscell/log/GLogger$Companion$debugLevelOf$1;
    .locals 0

    .line 90
    new-instance p0, Lcom/samsung/android/gtscell/log/GLogger$Companion$debugLevelOf$1;

    invoke-direct {p0, p1}, Lcom/samsung/android/gtscell/log/GLogger$Companion$debugLevelOf$1;-><init>(Lcom/samsung/android/gtscell/log/GLogger$Level;)V

    return-object p0
.end method


# virtual methods
.method public final getGlobal()Lcom/samsung/android/gtscell/log/GLogger;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/samsung/android/gtscell/log/GLogger$Companion;->Global$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/gtscell/log/GLogger;

    return-object p0
.end method

.method public final getLogger(Ljava/lang/Class;)Lcom/samsung/android/gtscell/log/GLogger;
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/samsung/android/gtscell/log/GLogger;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "clazz"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "clazz.simpleName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/gtscell/log/GLogger$Companion;->getLogger(Ljava/lang/String;)Lcom/samsung/android/gtscell/log/GLogger;

    move-result-object p0

    return-object p0
.end method

.method public final getLogger(Ljava/lang/Class;Lcom/samsung/android/gtscell/log/GLogger$Level;)Lcom/samsung/android/gtscell/log/GLogger;
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/gtscell/log/GLogger$Level;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/samsung/android/gtscell/log/GLogger$Level;",
            ")",
            "Lcom/samsung/android/gtscell/log/GLogger;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "clazz"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "level"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "clazz.simpleName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/gtscell/log/GLogger$Companion;->getLogger(Ljava/lang/String;Lcom/samsung/android/gtscell/log/GLogger$Level;)Lcom/samsung/android/gtscell/log/GLogger;

    move-result-object p0

    return-object p0
.end method

.method public final getLogger(Ljava/lang/String;)Lcom/samsung/android/gtscell/log/GLogger;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string/jumbo p0, "tag"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    new-instance p0, Lcom/samsung/android/gtscell/log/GLoggerImpl;

    sget-object v0, Lcom/samsung/android/gtscell/log/GLogger$Companion;->GlobalLevel:Lcom/samsung/android/gtscell/log/GLogger$Companion$debugLevelOf$1;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/gtscell/log/GLoggerImpl;-><init>(Lcom/samsung/android/gtscell/log/GLogger$DebugLevel;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getLogger(Ljava/lang/String;Lcom/samsung/android/gtscell/log/GLogger$Level;)Lcom/samsung/android/gtscell/log/GLogger;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/gtscell/log/GLogger$Level;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string/jumbo v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "level"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    new-instance v0, Lcom/samsung/android/gtscell/log/GLoggerImpl;

    invoke-direct {p0, p2}, Lcom/samsung/android/gtscell/log/GLogger$Companion;->debugLevelOf(Lcom/samsung/android/gtscell/log/GLogger$Level;)Lcom/samsung/android/gtscell/log/GLogger$Companion$debugLevelOf$1;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/gtscell/log/GLoggerImpl;-><init>(Lcom/samsung/android/gtscell/log/GLogger$DebugLevel;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getLogger(Ljava/lang/String;Ljava/lang/Class;)Lcom/samsung/android/gtscell/log/GLogger;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/samsung/android/gtscell/log/GLogger;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string/jumbo v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clazz"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/gtscell/log/GLogger$Companion;->getLogger(Ljava/lang/String;)Lcom/samsung/android/gtscell/log/GLogger;

    move-result-object p0

    return-object p0
.end method

.method public final getLogger(Ljava/lang/String;Ljava/lang/Class;Lcom/samsung/android/gtscell/log/GLogger$Level;)Lcom/samsung/android/gtscell/log/GLogger;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/samsung/android/gtscell/log/GLogger$Level;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/samsung/android/gtscell/log/GLogger$Level;",
            ")",
            "Lcom/samsung/android/gtscell/log/GLogger;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string/jumbo v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clazz"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "level"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lcom/samsung/android/gtscell/log/GLogger$Companion;->getLogger(Ljava/lang/String;Lcom/samsung/android/gtscell/log/GLogger$Level;)Lcom/samsung/android/gtscell/log/GLogger;

    move-result-object p0

    return-object p0
.end method
