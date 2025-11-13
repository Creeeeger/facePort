.class public interface abstract Lcom/samsung/android/gtscell/log/GLogger;
.super Ljava/lang/Object;
.source "GLogger.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/gtscell/log/GLogger$Level;,
        Lcom/samsung/android/gtscell/log/GLogger$DebugLevel;,
        Lcom/samsung/android/gtscell/log/GLogger$Companion;
    }
.end annotation


# static fields
.field public static final BUF_LIMIT:I = 0x64

.field public static final Companion:Lcom/samsung/android/gtscell/log/GLogger$Companion;

.field public static final TAG:Ljava/lang/String; = "GTS_CELL"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/samsung/android/gtscell/log/GLogger$Companion;->$$INSTANCE:Lcom/samsung/android/gtscell/log/GLogger$Companion;

    sput-object v0, Lcom/samsung/android/gtscell/log/GLogger;->Companion:Lcom/samsung/android/gtscell/log/GLogger$Companion;

    return-void
.end method

.method public static getGlobal()Lcom/samsung/android/gtscell/log/GLogger;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/samsung/android/gtscell/log/GLogger;->Companion:Lcom/samsung/android/gtscell/log/GLogger$Companion;

    invoke-virtual {v0}, Lcom/samsung/android/gtscell/log/GLogger$Companion;->getGlobal()Lcom/samsung/android/gtscell/log/GLogger;

    move-result-object v0

    return-object v0
.end method

.method public static getLogger(Ljava/lang/Class;)Lcom/samsung/android/gtscell/log/GLogger;
    .locals 1
    .param p0    # Ljava/lang/Class;
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

    sget-object v0, Lcom/samsung/android/gtscell/log/GLogger;->Companion:Lcom/samsung/android/gtscell/log/GLogger$Companion;

    invoke-virtual {v0, p0}, Lcom/samsung/android/gtscell/log/GLogger$Companion;->getLogger(Ljava/lang/Class;)Lcom/samsung/android/gtscell/log/GLogger;

    move-result-object p0

    return-object p0
.end method

.method public static getLogger(Ljava/lang/Class;Lcom/samsung/android/gtscell/log/GLogger$Level;)Lcom/samsung/android/gtscell/log/GLogger;
    .locals 1
    .param p0    # Ljava/lang/Class;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/samsung/android/gtscell/log/GLogger$Level;
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

    sget-object v0, Lcom/samsung/android/gtscell/log/GLogger;->Companion:Lcom/samsung/android/gtscell/log/GLogger$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/gtscell/log/GLogger$Companion;->getLogger(Ljava/lang/Class;Lcom/samsung/android/gtscell/log/GLogger$Level;)Lcom/samsung/android/gtscell/log/GLogger;

    move-result-object p0

    return-object p0
.end method

.method public static getLogger(Ljava/lang/String;)Lcom/samsung/android/gtscell/log/GLogger;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/samsung/android/gtscell/log/GLogger;->Companion:Lcom/samsung/android/gtscell/log/GLogger$Companion;

    invoke-virtual {v0, p0}, Lcom/samsung/android/gtscell/log/GLogger$Companion;->getLogger(Ljava/lang/String;)Lcom/samsung/android/gtscell/log/GLogger;

    move-result-object p0

    return-object p0
.end method

.method public static getLogger(Ljava/lang/String;Lcom/samsung/android/gtscell/log/GLogger$Level;)Lcom/samsung/android/gtscell/log/GLogger;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/samsung/android/gtscell/log/GLogger$Level;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/samsung/android/gtscell/log/GLogger;->Companion:Lcom/samsung/android/gtscell/log/GLogger$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/gtscell/log/GLogger$Companion;->getLogger(Ljava/lang/String;Lcom/samsung/android/gtscell/log/GLogger$Level;)Lcom/samsung/android/gtscell/log/GLogger;

    move-result-object p0

    return-object p0
.end method

.method public static getLogger(Ljava/lang/String;Ljava/lang/Class;)Lcom/samsung/android/gtscell/log/GLogger;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Class;
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

    sget-object v0, Lcom/samsung/android/gtscell/log/GLogger;->Companion:Lcom/samsung/android/gtscell/log/GLogger$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/gtscell/log/GLogger$Companion;->getLogger(Ljava/lang/String;Ljava/lang/Class;)Lcom/samsung/android/gtscell/log/GLogger;

    move-result-object p0

    return-object p0
.end method

.method public static getLogger(Ljava/lang/String;Ljava/lang/Class;Lcom/samsung/android/gtscell/log/GLogger$Level;)Lcom/samsung/android/gtscell/log/GLogger;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
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

    sget-object v0, Lcom/samsung/android/gtscell/log/GLogger;->Companion:Lcom/samsung/android/gtscell/log/GLogger$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/samsung/android/gtscell/log/GLogger$Companion;->getLogger(Ljava/lang/String;Ljava/lang/Class;Lcom/samsung/android/gtscell/log/GLogger$Level;)Lcom/samsung/android/gtscell/log/GLogger;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public varargs abstract debug(Ljava/lang/String;[Ljava/lang/Object;)V
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public varargs abstract error(Ljava/lang/String;[Ljava/lang/Object;)V
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public varargs abstract error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public varargs abstract info(Ljava/lang/String;[Ljava/lang/Object;)V
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract setLevel(Lcom/samsung/android/gtscell/log/GLogger$Level;)Lcom/samsung/android/gtscell/log/GLogger;
    .param p1    # Lcom/samsung/android/gtscell/log/GLogger$Level;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public varargs abstract warning(Ljava/lang/String;[Ljava/lang/Object;)V
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public varargs abstract warning(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method
