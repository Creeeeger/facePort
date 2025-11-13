.class public final enum Lcom/android/internal/protolog/common/LogLevel;
.super Ljava/lang/Enum;
.source "LogLevel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/protolog/common/LogLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/internal/protolog/common/LogLevel;

.field public static final enum blacklist DEBUG:Lcom/android/internal/protolog/common/LogLevel;

.field public static final enum blacklist ERROR:Lcom/android/internal/protolog/common/LogLevel;

.field public static final enum blacklist INFO:Lcom/android/internal/protolog/common/LogLevel;

.field public static final enum blacklist VERBOSE:Lcom/android/internal/protolog/common/LogLevel;

.field public static final enum blacklist WARN:Lcom/android/internal/protolog/common/LogLevel;

.field public static final enum blacklist WTF:Lcom/android/internal/protolog/common/LogLevel;


# instance fields
.field public final blacklist shortCode:Ljava/lang/String;


# direct methods
.method private static synthetic blacklist $values()[Lcom/android/internal/protolog/common/LogLevel;
    .locals 6

    sget-object v0, Lcom/android/internal/protolog/common/LogLevel;->DEBUG:Lcom/android/internal/protolog/common/LogLevel;

    sget-object v1, Lcom/android/internal/protolog/common/LogLevel;->VERBOSE:Lcom/android/internal/protolog/common/LogLevel;

    sget-object v2, Lcom/android/internal/protolog/common/LogLevel;->INFO:Lcom/android/internal/protolog/common/LogLevel;

    sget-object v3, Lcom/android/internal/protolog/common/LogLevel;->WARN:Lcom/android/internal/protolog/common/LogLevel;

    sget-object v4, Lcom/android/internal/protolog/common/LogLevel;->ERROR:Lcom/android/internal/protolog/common/LogLevel;

    sget-object v5, Lcom/android/internal/protolog/common/LogLevel;->WTF:Lcom/android/internal/protolog/common/LogLevel;

    filled-new-array/range {v0 .. v5}, [Lcom/android/internal/protolog/common/LogLevel;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 4

    new-instance v0, Lcom/android/internal/protolog/common/LogLevel;

    const/4 v1, 0x0

    const-string v2, "d"

    const-string v3, "DEBUG"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/internal/protolog/common/LogLevel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/internal/protolog/common/LogLevel;->DEBUG:Lcom/android/internal/protolog/common/LogLevel;

    new-instance v0, Lcom/android/internal/protolog/common/LogLevel;

    const/4 v1, 0x1

    const-string/jumbo v2, "v"

    const-string v3, "VERBOSE"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/internal/protolog/common/LogLevel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/internal/protolog/common/LogLevel;->VERBOSE:Lcom/android/internal/protolog/common/LogLevel;

    new-instance v0, Lcom/android/internal/protolog/common/LogLevel;

    const/4 v1, 0x2

    const-string/jumbo v2, "i"

    const-string v3, "INFO"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/internal/protolog/common/LogLevel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/internal/protolog/common/LogLevel;->INFO:Lcom/android/internal/protolog/common/LogLevel;

    new-instance v0, Lcom/android/internal/protolog/common/LogLevel;

    const/4 v1, 0x3

    const-string/jumbo v2, "w"

    const-string v3, "WARN"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/internal/protolog/common/LogLevel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/internal/protolog/common/LogLevel;->WARN:Lcom/android/internal/protolog/common/LogLevel;

    new-instance v0, Lcom/android/internal/protolog/common/LogLevel;

    const/4 v1, 0x4

    const-string v2, "e"

    const-string v3, "ERROR"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/internal/protolog/common/LogLevel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/internal/protolog/common/LogLevel;->ERROR:Lcom/android/internal/protolog/common/LogLevel;

    new-instance v0, Lcom/android/internal/protolog/common/LogLevel;

    const/4 v1, 0x5

    const-string/jumbo v2, "wtf"

    const-string v3, "WTF"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/internal/protolog/common/LogLevel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/internal/protolog/common/LogLevel;->WTF:Lcom/android/internal/protolog/common/LogLevel;

    invoke-static {}, Lcom/android/internal/protolog/common/LogLevel;->$values()[Lcom/android/internal/protolog/common/LogLevel;

    move-result-object v0

    sput-object v0, Lcom/android/internal/protolog/common/LogLevel;->$VALUES:[Lcom/android/internal/protolog/common/LogLevel;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/android/internal/protolog/common/LogLevel;->shortCode:Ljava/lang/String;

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/internal/protolog/common/LogLevel;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lcom/android/internal/protolog/common/LogLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/protolog/common/LogLevel;

    return-object v0
.end method

.method public static blacklist values()[Lcom/android/internal/protolog/common/LogLevel;
    .locals 1

    sget-object v0, Lcom/android/internal/protolog/common/LogLevel;->$VALUES:[Lcom/android/internal/protolog/common/LogLevel;

    invoke-virtual {v0}, [Lcom/android/internal/protolog/common/LogLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/protolog/common/LogLevel;

    return-object v0
.end method
