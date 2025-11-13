.class final Lcom/samsung/android/gtscell/log/GLogger$Companion$Global$2;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gtscell/log/GLogger$Companion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lcom/samsung/android/gtscell/log/GLogger;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/gtscell/log/GLogger$Companion;


# direct methods
.method public constructor <init>(Lcom/samsung/android/gtscell/log/GLogger$Companion;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/gtscell/log/GLogger$Companion$Global$2;->this$0:Lcom/samsung/android/gtscell/log/GLogger$Companion;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/samsung/android/gtscell/log/GLogger;
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/gtscell/log/GLogger$Companion$Global$2;->this$0:Lcom/samsung/android/gtscell/log/GLogger$Companion;

    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/samsung/android/gtscell/log/GLogger$Companion;->getLogger(Ljava/lang/String;)Lcom/samsung/android/gtscell/log/GLogger;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/gtscell/log/GLogger$Companion$Global$2;->invoke()Lcom/samsung/android/gtscell/log/GLogger;

    move-result-object p0

    return-object p0
.end method
