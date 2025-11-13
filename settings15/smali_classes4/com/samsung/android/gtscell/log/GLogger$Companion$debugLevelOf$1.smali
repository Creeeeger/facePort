.class public final Lcom/samsung/android/gtscell/log/GLogger$Companion$debugLevelOf$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/android/gtscell/log/GLogger$DebugLevel;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/gtscell/log/GLogger$Companion;->debugLevelOf(Lcom/samsung/android/gtscell/log/GLogger$Level;)Lcom/samsung/android/gtscell/log/GLogger$Companion$debugLevelOf$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0004\u0010\u0005\"\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "com/samsung/android/gtscell/log/GLogger$Companion$debugLevelOf$1",
        "Lcom/samsung/android/gtscell/log/GLogger$DebugLevel;",
        "level",
        "Lcom/samsung/android/gtscell/log/GLogger$Level;",
        "getLevel",
        "()Lcom/samsung/android/gtscell/log/GLogger$Level;",
        "setLevel",
        "(Lcom/samsung/android/gtscell/log/GLogger$Level;)V",
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
.field final synthetic $level:Lcom/samsung/android/gtscell/log/GLogger$Level;

.field private level:Lcom/samsung/android/gtscell/log/GLogger$Level;


# direct methods
.method public constructor <init>(Lcom/samsung/android/gtscell/log/GLogger$Level;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/gtscell/log/GLogger$Companion$debugLevelOf$1;->$level:Lcom/samsung/android/gtscell/log/GLogger$Level;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/gtscell/log/GLogger$Companion$debugLevelOf$1;->level:Lcom/samsung/android/gtscell/log/GLogger$Level;

    return-void
.end method


# virtual methods
.method public getLevel()Lcom/samsung/android/gtscell/log/GLogger$Level;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/gtscell/log/GLogger$Companion$debugLevelOf$1;->level:Lcom/samsung/android/gtscell/log/GLogger$Level;

    return-object p0
.end method

.method public setLevel(Lcom/samsung/android/gtscell/log/GLogger$Level;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/gtscell/log/GLogger$Companion$debugLevelOf$1;->level:Lcom/samsung/android/gtscell/log/GLogger$Level;

    return-void
.end method
