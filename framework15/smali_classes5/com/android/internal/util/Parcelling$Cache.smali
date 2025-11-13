.class public Lcom/android/internal/util/Parcelling$Cache;
.super Ljava/lang/Object;
.source "Parcelling.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/Parcelling;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Cache"
.end annotation


# static fields
.field private static blacklist sCache:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Class;",
            "Lcom/android/internal/util/Parcelling;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/internal/util/Parcelling$Cache;->sCache:Landroid/util/ArrayMap;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist get(Ljava/lang/Class;)Lcom/android/internal/util/Parcelling;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P::",
            "Lcom/android/internal/util/Parcelling<",
            "*>;>(",
            "Ljava/lang/Class<",
            "TP;>;)TP;"
        }
    .end annotation

    sget-object v0, Lcom/android/internal/util/Parcelling$Cache;->sCache:Landroid/util/ArrayMap;

    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/Parcelling;

    return-object v0
.end method

.method public static blacklist getOrCreate(Ljava/lang/Class;)Lcom/android/internal/util/Parcelling;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P::",
            "Lcom/android/internal/util/Parcelling<",
            "*>;>(",
            "Ljava/lang/Class<",
            "TP;>;)TP;"
        }
    .end annotation

    invoke-static {p0}, Lcom/android/internal/util/Parcelling$Cache;->get(Ljava/lang/Class;)Lcom/android/internal/util/Parcelling;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/util/Parcelling;

    invoke-static {v1}, Lcom/android/internal/util/Parcelling$Cache;->put(Lcom/android/internal/util/Parcelling;)Lcom/android/internal/util/Parcelling;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static blacklist put(Lcom/android/internal/util/Parcelling;)Lcom/android/internal/util/Parcelling;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P::",
            "Lcom/android/internal/util/Parcelling<",
            "*>;>(TP;)TP;"
        }
    .end annotation

    sget-object v0, Lcom/android/internal/util/Parcelling$Cache;->sCache:Landroid/util/ArrayMap;

    invoke-interface {p0}, Lcom/android/internal/util/Parcelling;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method
