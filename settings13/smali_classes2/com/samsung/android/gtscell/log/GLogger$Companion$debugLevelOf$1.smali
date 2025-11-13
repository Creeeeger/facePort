.class public final Lcom/samsung/android/gtscell/log/GLogger$Companion$debugLevelOf$1;
.super Ljava/lang/Object;
.source "GLogger.kt"

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


# instance fields
.field final synthetic $level:Lcom/samsung/android/gtscell/log/GLogger$Level;

.field private level:Lcom/samsung/android/gtscell/log/GLogger$Level;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/samsung/android/gtscell/log/GLogger$Level;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/samsung/android/gtscell/log/GLogger$Companion$debugLevelOf$1;->$level:Lcom/samsung/android/gtscell/log/GLogger$Level;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p1, p0, Lcom/samsung/android/gtscell/log/GLogger$Companion$debugLevelOf$1;->level:Lcom/samsung/android/gtscell/log/GLogger$Level;

    return-void
.end method


# virtual methods
.method public getLevel()Lcom/samsung/android/gtscell/log/GLogger$Level;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 91
    iget-object p0, p0, Lcom/samsung/android/gtscell/log/GLogger$Companion$debugLevelOf$1;->level:Lcom/samsung/android/gtscell/log/GLogger$Level;

    return-object p0
.end method

.method public setLevel(Lcom/samsung/android/gtscell/log/GLogger$Level;)V
    .locals 1
    .param p1    # Lcom/samsung/android/gtscell/log/GLogger$Level;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    iput-object p1, p0, Lcom/samsung/android/gtscell/log/GLogger$Companion$debugLevelOf$1;->level:Lcom/samsung/android/gtscell/log/GLogger$Level;

    return-void
.end method
