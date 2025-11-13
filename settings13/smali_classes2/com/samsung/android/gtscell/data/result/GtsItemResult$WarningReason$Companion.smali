.class public final Lcom/samsung/android/gtscell/data/result/GtsItemResult$WarningReason$Companion;
.super Ljava/lang/Object;
.source "GtsItemResult.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gtscell/data/result/GtsItemResult$WarningReason;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGtsItemResult.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GtsItemResult.kt\ncom/samsung/android/gtscell/data/result/GtsItemResult$WarningReason$Companion\n*L\n1#1,147:1\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/samsung/android/gtscell/data/result/GtsItemResult$WarningReason$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final toEnum(Ljava/lang/String;)Lcom/samsung/android/gtscell/data/result/GtsItemResult$WarningReason;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    if-eqz p1, :cond_0

    .line 20
    :try_start_0
    invoke-static {p1}, Lcom/samsung/android/gtscell/data/result/GtsItemResult$WarningReason;->valueOf(Ljava/lang/String;)Lcom/samsung/android/gtscell/data/result/GtsItemResult$WarningReason;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 21
    :cond_0
    sget-object p0, Lcom/samsung/android/gtscell/data/result/GtsItemResult$WarningReason;->UNKNOWN:Lcom/samsung/android/gtscell/data/result/GtsItemResult$WarningReason;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 23
    :catch_0
    sget-object p0, Lcom/samsung/android/gtscell/data/result/GtsItemResult$WarningReason;->UNKNOWN:Lcom/samsung/android/gtscell/data/result/GtsItemResult$WarningReason;

    :goto_0
    return-object p0
.end method
