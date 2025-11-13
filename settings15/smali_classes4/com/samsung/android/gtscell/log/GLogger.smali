.class public interface abstract Lcom/samsung/android/gtscell/log/GLogger;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/gtscell/log/GLogger$Level;,
        Lcom/samsung/android/gtscell/log/GLogger$DebugLevel;,
        Lcom/samsung/android/gtscell/log/GLogger$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0011\n\u0002\u0008\u0003\n\u0002\u0010\u0003\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008f\u0018\u0000 \u00122\u00020\u0001:\u0003\u0012\u0013\u0014J-\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0016\u0010\u0006\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\u00010\u0007\"\u0004\u0018\u00010\u0001H&\u00a2\u0006\u0002\u0010\u0008J-\u0010\t\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0016\u0010\u0006\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\u00010\u0007\"\u0004\u0018\u00010\u0001H&\u00a2\u0006\u0002\u0010\u0008J5\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0004\u001a\u00020\u00052\u0016\u0010\u0006\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\u00010\u0007\"\u0004\u0018\u00010\u0001H&\u00a2\u0006\u0002\u0010\u000cJ-\u0010\r\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0016\u0010\u0006\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\u00010\u0007\"\u0004\u0018\u00010\u0001H&\u00a2\u0006\u0002\u0010\u0008J\u0010\u0010\u000e\u001a\u00020\u00002\u0006\u0010\u000f\u001a\u00020\u0010H&J-\u0010\u0011\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0016\u0010\u0006\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\u00010\u0007\"\u0004\u0018\u00010\u0001H&\u00a2\u0006\u0002\u0010\u0008J5\u0010\u0011\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0004\u001a\u00020\u00052\u0016\u0010\u0006\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\u00010\u0007\"\u0004\u0018\u00010\u0001H&\u00a2\u0006\u0002\u0010\u000c\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/samsung/android/gtscell/log/GLogger;",
        "",
        "debug",
        "",
        "msg",
        "",
        "obj",
        "",
        "(Ljava/lang/String;[Ljava/lang/Object;)V",
        "error",
        "throwable",
        "",
        "(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V",
        "info",
        "setLevel",
        "level",
        "Lcom/samsung/android/gtscell/log/GLogger$Level;",
        "warning",
        "Companion",
        "DebugLevel",
        "Level",
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
.field public static final BUF_LIMIT:I = 0x64

.field public static final Companion:Lcom/samsung/android/gtscell/log/GLogger$Companion;

.field public static final TAG:Ljava/lang/String; = "GTS_CELL"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/samsung/android/gtscell/log/GLogger$Companion;->$$INSTANCE:Lcom/samsung/android/gtscell/log/GLogger$Companion;

    sput-object v0, Lcom/samsung/android/gtscell/log/GLogger;->Companion:Lcom/samsung/android/gtscell/log/GLogger$Companion;

    return-void
.end method

.method public static getGlobal()Lcom/samsung/android/gtscell/log/GLogger;
    .locals 1

    sget-object v0, Lcom/samsung/android/gtscell/log/GLogger;->Companion:Lcom/samsung/android/gtscell/log/GLogger$Companion;

    invoke-virtual {v0}, Lcom/samsung/android/gtscell/log/GLogger$Companion;->getGlobal()Lcom/samsung/android/gtscell/log/GLogger;

    move-result-object v0

    return-object v0
.end method

.method public static getLogger(Ljava/lang/Class;)Lcom/samsung/android/gtscell/log/GLogger;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/samsung/android/gtscell/log/GLogger;"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/gtscell/log/GLogger;->Companion:Lcom/samsung/android/gtscell/log/GLogger$Companion;

    invoke-virtual {v0, p0}, Lcom/samsung/android/gtscell/log/GLogger$Companion;->getLogger(Ljava/lang/Class;)Lcom/samsung/android/gtscell/log/GLogger;

    move-result-object p0

    return-object p0
.end method

.method public static getLogger(Ljava/lang/Class;Lcom/samsung/android/gtscell/log/GLogger$Level;)Lcom/samsung/android/gtscell/log/GLogger;
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

    sget-object v0, Lcom/samsung/android/gtscell/log/GLogger;->Companion:Lcom/samsung/android/gtscell/log/GLogger$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/gtscell/log/GLogger$Companion;->getLogger(Ljava/lang/Class;Lcom/samsung/android/gtscell/log/GLogger$Level;)Lcom/samsung/android/gtscell/log/GLogger;

    move-result-object p0

    return-object p0
.end method

.method public static getLogger(Ljava/lang/String;)Lcom/samsung/android/gtscell/log/GLogger;
    .locals 1

    sget-object v0, Lcom/samsung/android/gtscell/log/GLogger;->Companion:Lcom/samsung/android/gtscell/log/GLogger$Companion;

    invoke-virtual {v0, p0}, Lcom/samsung/android/gtscell/log/GLogger$Companion;->getLogger(Ljava/lang/String;)Lcom/samsung/android/gtscell/log/GLogger;

    move-result-object p0

    return-object p0
.end method

.method public static getLogger(Ljava/lang/String;Lcom/samsung/android/gtscell/log/GLogger$Level;)Lcom/samsung/android/gtscell/log/GLogger;
    .locals 1

    sget-object v0, Lcom/samsung/android/gtscell/log/GLogger;->Companion:Lcom/samsung/android/gtscell/log/GLogger$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/gtscell/log/GLogger$Companion;->getLogger(Ljava/lang/String;Lcom/samsung/android/gtscell/log/GLogger$Level;)Lcom/samsung/android/gtscell/log/GLogger;

    move-result-object p0

    return-object p0
.end method

.method public static getLogger(Ljava/lang/String;Ljava/lang/Class;)Lcom/samsung/android/gtscell/log/GLogger;
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

    sget-object v0, Lcom/samsung/android/gtscell/log/GLogger;->Companion:Lcom/samsung/android/gtscell/log/GLogger$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/gtscell/log/GLogger$Companion;->getLogger(Ljava/lang/String;Ljava/lang/Class;)Lcom/samsung/android/gtscell/log/GLogger;

    move-result-object p0

    return-object p0
.end method

.method public static getLogger(Ljava/lang/String;Ljava/lang/Class;Lcom/samsung/android/gtscell/log/GLogger$Level;)Lcom/samsung/android/gtscell/log/GLogger;
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

    sget-object v0, Lcom/samsung/android/gtscell/log/GLogger;->Companion:Lcom/samsung/android/gtscell/log/GLogger$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/samsung/android/gtscell/log/GLogger$Companion;->getLogger(Ljava/lang/String;Ljava/lang/Class;Lcom/samsung/android/gtscell/log/GLogger$Level;)Lcom/samsung/android/gtscell/log/GLogger;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public varargs abstract debug(Ljava/lang/String;[Ljava/lang/Object;)V
.end method

.method public varargs abstract error(Ljava/lang/String;[Ljava/lang/Object;)V
.end method

.method public varargs abstract error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
.end method

.method public varargs abstract info(Ljava/lang/String;[Ljava/lang/Object;)V
.end method

.method public abstract setLevel(Lcom/samsung/android/gtscell/log/GLogger$Level;)Lcom/samsung/android/gtscell/log/GLogger;
.end method

.method public varargs abstract warning(Ljava/lang/String;[Ljava/lang/Object;)V
.end method

.method public varargs abstract warning(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
.end method
