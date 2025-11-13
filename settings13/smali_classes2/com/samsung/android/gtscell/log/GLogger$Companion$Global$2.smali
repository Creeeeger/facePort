.class final Lcom/samsung/android/gtscell/log/GLogger$Companion$Global$2;
.super Lkotlin/jvm/internal/Lambda;
.source "GLogger.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gtscell/log/GLogger$Companion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/samsung/android/gtscell/log/GLogger;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/gtscell/log/GLogger$Companion;


# direct methods
.method constructor <init>(Lcom/samsung/android/gtscell/log/GLogger$Companion;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/gtscell/log/GLogger$Companion$Global$2;->this$0:Lcom/samsung/android/gtscell/log/GLogger$Companion;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/samsung/android/gtscell/log/GLogger;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 62
    iget-object p0, p0, Lcom/samsung/android/gtscell/log/GLogger$Companion$Global$2;->this$0:Lcom/samsung/android/gtscell/log/GLogger$Companion;

    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/samsung/android/gtscell/log/GLogger$Companion;->getLogger(Ljava/lang/String;)Lcom/samsung/android/gtscell/log/GLogger;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 54
    invoke-virtual {p0}, Lcom/samsung/android/gtscell/log/GLogger$Companion$Global$2;->invoke()Lcom/samsung/android/gtscell/log/GLogger;

    move-result-object p0

    return-object p0
.end method
