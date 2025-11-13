.class public abstract Lcom/samsung/android/gtscell/data/result/GtsItemResult;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/gtscell/data/result/GtsItemResult$WarningReason;,
        Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;,
        Lcom/samsung/android/gtscell/data/result/GtsItemResult$Pass;,
        Lcom/samsung/android/gtscell/data/result/GtsItemResult$Info;,
        Lcom/samsung/android/gtscell/data/result/GtsItemResult$Warning;,
        Lcom/samsung/android/gtscell/data/result/GtsItemResult$Error;,
        Lcom/samsung/android/gtscell/data/result/GtsItemResult$Ignore;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u00002\u00020\u0001:\u0007\u0007\u0008\t\n\u000b\u000c\rB\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u0012\u0010\u0003\u001a\u00020\u0004X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0006\u0082\u0001\u0005\u000e\u000f\u0010\u0011\u0012\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/samsung/android/gtscell/data/result/GtsItemResult;",
        "Landroid/os/Parcelable;",
        "()V",
        "itemKey",
        "",
        "getItemKey",
        "()Ljava/lang/String;",
        "Error",
        "ErrorReason",
        "Ignore",
        "Info",
        "Pass",
        "Warning",
        "WarningReason",
        "Lcom/samsung/android/gtscell/data/result/GtsItemResult$Pass;",
        "Lcom/samsung/android/gtscell/data/result/GtsItemResult$Info;",
        "Lcom/samsung/android/gtscell/data/result/GtsItemResult$Warning;",
        "Lcom/samsung/android/gtscell/data/result/GtsItemResult$Error;",
        "Lcom/samsung/android/gtscell/data/result/GtsItemResult$Ignore;",
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

    invoke-direct {p0}, Lcom/samsung/android/gtscell/data/result/GtsItemResult;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getItemKey()Ljava/lang/String;
.end method
