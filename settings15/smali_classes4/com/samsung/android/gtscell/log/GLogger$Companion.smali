.class public final Lcom/samsung/android/gtscell/log/GLogger$Companion;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gtscell/log/GLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00009\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\r\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0015\u0010\u0011\u001a\u00020\r2\u0006\u0010\u0012\u001a\u00020\u0013H\u0002\u00a2\u0006\u0002\u0010\u0014J\u0014\u0010\u0015\u001a\u00020\u00062\n\u0010\u0016\u001a\u0006\u0012\u0002\u0008\u00030\u0017H\u0007J\u001c\u0010\u0015\u001a\u00020\u00062\n\u0010\u0016\u001a\u0006\u0012\u0002\u0008\u00030\u00172\u0006\u0010\u0012\u001a\u00020\u0013H\u0007J\u0010\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u0018\u001a\u00020\u0010H\u0007J\u0018\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u0018\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u0013H\u0007J\u001c\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u0018\u001a\u00020\u00102\n\u0010\u0016\u001a\u0006\u0012\u0002\u0008\u00030\u0017H\u0007J$\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u0018\u001a\u00020\u00102\n\u0010\u0016\u001a\u0006\u0012\u0002\u0008\u00030\u00172\u0006\u0010\u0012\u001a\u00020\u0013H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R!\u0010\u0005\u001a\u00020\u00068FX\u0087\u0084\u0002\u00a2\u0006\u0012\n\u0004\u0008\n\u0010\u000b\u0012\u0004\u0008\u0007\u0010\u0002\u001a\u0004\u0008\u0008\u0010\tR\u0010\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u000eR\u000e\u0010\u000f\u001a\u00020\u0010X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/samsung/android/gtscell/log/GLogger$Companion;",
        "",
        "()V",
        "BUF_LIMIT",
        "",
        "Global",
        "Lcom/samsung/android/gtscell/log/GLogger;",
        "Global$annotations",
        "getGlobal",
        "()Lcom/samsung/android/gtscell/log/GLogger;",
        "Global$delegate",
        "Lkotlin/Lazy;",
        "GlobalLevel",
        "com/samsung/android/gtscell/log/GLogger$Companion$debugLevelOf$1",
        "Lcom/samsung/android/gtscell/log/GLogger$Companion$debugLevelOf$1;",
        "TAG",
        "",
        "debugLevelOf",
        "level",
        "Lcom/samsung/android/gtscell/log/GLogger$Level;",
        "(Lcom/samsung/android/gtscell/log/GLogger$Level;)Lcom/samsung/android/gtscell/log/GLogger$Companion$debugLevelOf$1;",
        "getLogger",
        "clazz",
        "Ljava/lang/Class;",
        "tag",
        "gtscell_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Lcom/samsung/android/gtscell/log/GLogger$Companion;

.field public static final BUF_LIMIT:I = 0x64

.field private static final Global$delegate:Lkotlin/Lazy;

.field private static final GlobalLevel:Lcom/samsung/android/gtscell/log/GLogger$Companion$debugLevelOf$1;

.field public static final TAG:Ljava/lang/String; = "GTS_CELL"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/gtscell/log/GLogger$Companion;

    invoke-direct {v0}, Lcom/samsung/android/gtscell/log/GLogger$Companion;-><init>()V

    sput-object v0, Lcom/samsung/android/gtscell/log/GLogger$Companion;->$$INSTANCE:Lcom/samsung/android/gtscell/log/GLogger$Companion;

    sget-object v1, Lcom/samsung/android/gtscell/log/GLogger$Level;->INFO:Lcom/samsung/android/gtscell/log/GLogger$Level;

    invoke-direct {v0, v1}, Lcom/samsung/android/gtscell/log/GLogger$Companion;->debugLevelOf(Lcom/samsung/android/gtscell/log/GLogger$Level;)Lcom/samsung/android/gtscell/log/GLogger$Companion$debugLevelOf$1;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/gtscell/log/GLogger$Companion;->GlobalLevel:Lcom/samsung/android/gtscell/log/GLogger$Companion$debugLevelOf$1;

    new-instance v1, Lcom/samsung/android/gtscell/log/GLogger$Companion$Global$2;

    invoke-direct {v1, v0}, Lcom/samsung/android/gtscell/log/GLogger$Companion$Global$2;-><init>(Lcom/samsung/android/gtscell/log/GLogger$Companion;)V

    invoke-static {v1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/gtscell/log/GLogger$Companion;->Global$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic Global$annotations()V
    .locals 0

    return-void
.end method

.method private final debugLevelOf(Lcom/samsung/android/gtscell/log/GLogger$Level;)Lcom/samsung/android/gtscell/log/GLogger$Companion$debugLevelOf$1;
    .locals 0

    new-instance p0, Lcom/samsung/android/gtscell/log/GLogger$Companion$debugLevelOf$1;

    invoke-direct {p0, p1}, Lcom/samsung/android/gtscell/log/GLogger$Companion$debugLevelOf$1;-><init>(Lcom/samsung/android/gtscell/log/GLogger$Level;)V

    return-object p0
.end method


# virtual methods
.method public final getGlobal()Lcom/samsung/android/gtscell/log/GLogger;
    .locals 0

    sget-object p0, Lcom/samsung/android/gtscell/log/GLogger$Companion;->Global$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/gtscell/log/GLogger;

    return-object p0
.end method

.method public final getLogger(Ljava/lang/Class;)Lcom/samsung/android/gtscell/log/GLogger;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/samsung/android/gtscell/log/GLogger;"
        }
    .end annotation

    const-string v0, "clazz"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/gtscell/log/GLogger$Companion;->getLogger(Ljava/lang/String;)Lcom/samsung/android/gtscell/log/GLogger;

    move-result-object p0

    return-object p0
.end method

.method public final getLogger(Ljava/lang/Class;Lcom/samsung/android/gtscell/log/GLogger$Level;)Lcom/samsung/android/gtscell/log/GLogger;
    .locals 1
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

    const-string v0, "clazz"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "level"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/gtscell/log/GLogger$Companion;->getLogger(Ljava/lang/String;Lcom/samsung/android/gtscell/log/GLogger$Level;)Lcom/samsung/android/gtscell/log/GLogger;

    move-result-object p0

    return-object p0
.end method

.method public final getLogger(Ljava/lang/String;)Lcom/samsung/android/gtscell/log/GLogger;
    .locals 1

    const-string/jumbo p0, "tag"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/samsung/android/gtscell/log/GLoggerImpl;

    sget-object v0, Lcom/samsung/android/gtscell/log/GLogger$Companion;->GlobalLevel:Lcom/samsung/android/gtscell/log/GLogger$Companion$debugLevelOf$1;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/gtscell/log/GLoggerImpl;-><init>(Lcom/samsung/android/gtscell/log/GLogger$DebugLevel;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getLogger(Ljava/lang/String;Lcom/samsung/android/gtscell/log/GLogger$Level;)Lcom/samsung/android/gtscell/log/GLogger;
    .locals 1

    const-string/jumbo v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "level"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/gtscell/log/GLoggerImpl;

    invoke-direct {p0, p2}, Lcom/samsung/android/gtscell/log/GLogger$Companion;->debugLevelOf(Lcom/samsung/android/gtscell/log/GLogger$Level;)Lcom/samsung/android/gtscell/log/GLogger$Companion$debugLevelOf$1;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/gtscell/log/GLoggerImpl;-><init>(Lcom/samsung/android/gtscell/log/GLogger$DebugLevel;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getLogger(Ljava/lang/String;Ljava/lang/Class;)Lcom/samsung/android/gtscell/log/GLogger;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/samsung/android/gtscell/log/GLogger;"
        }
    .end annotation

    const-string/jumbo v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clazz"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

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

    const-string/jumbo v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clazz"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "level"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

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
