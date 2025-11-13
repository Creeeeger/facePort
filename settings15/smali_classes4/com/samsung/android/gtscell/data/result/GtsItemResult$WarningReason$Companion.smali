.class public final Lcom/samsung/android/gtscell/data/result/GtsItemResult$WarningReason$Companion;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gtscell/data/result/GtsItemResult$WarningReason;
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
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/samsung/android/gtscell/data/result/GtsItemResult$WarningReason$Companion;",
        "",
        "()V",
        "toEnum",
        "Lcom/samsung/android/gtscell/data/result/GtsItemResult$WarningReason;",
        "value",
        "",
        "gtscell_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/gtscell/data/result/GtsItemResult$WarningReason$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final toEnum(Ljava/lang/String;)Lcom/samsung/android/gtscell/data/result/GtsItemResult$WarningReason;
    .locals 0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {p1}, Lcom/samsung/android/gtscell/data/result/GtsItemResult$WarningReason;->valueOf(Ljava/lang/String;)Lcom/samsung/android/gtscell/data/result/GtsItemResult$WarningReason;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/samsung/android/gtscell/data/result/GtsItemResult$WarningReason;->UNKNOWN:Lcom/samsung/android/gtscell/data/result/GtsItemResult$WarningReason;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object p0, Lcom/samsung/android/gtscell/data/result/GtsItemResult$WarningReason;->UNKNOWN:Lcom/samsung/android/gtscell/data/result/GtsItemResult$WarningReason;

    :goto_0
    return-object p0
.end method
