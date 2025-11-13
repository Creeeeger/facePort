.class public abstract Lcom/samsung/android/gtscell/data/result/GtsItemResult;
.super Ljava/lang/Object;
.source "GtsItemResult.kt"

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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/samsung/android/gtscell/data/result/GtsItemResult;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getItemKey()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method
