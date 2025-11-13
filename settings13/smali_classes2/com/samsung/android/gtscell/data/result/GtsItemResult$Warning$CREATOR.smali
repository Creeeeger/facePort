.class public final Lcom/samsung/android/gtscell/data/result/GtsItemResult$Warning$CREATOR;
.super Ljava/lang/Object;
.source "GtsItemResult.kt"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gtscell/data/result/GtsItemResult$Warning;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CREATOR"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/samsung/android/gtscell/data/result/GtsItemResult$Warning;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 103
    invoke-direct {p0}, Lcom/samsung/android/gtscell/data/result/GtsItemResult$Warning$CREATOR;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/gtscell/data/result/GtsItemResult$Warning;
    .locals 1
    .param p1    # Landroid/os/Parcel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string/jumbo p0, "parcel"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    new-instance p0, Lcom/samsung/android/gtscell/data/result/GtsItemResult$Warning;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/gtscell/data/result/GtsItemResult$Warning;-><init>(Landroid/os/Parcel;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 103
    invoke-virtual {p0, p1}, Lcom/samsung/android/gtscell/data/result/GtsItemResult$Warning$CREATOR;->createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/gtscell/data/result/GtsItemResult$Warning;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/samsung/android/gtscell/data/result/GtsItemResult$Warning;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 105
    new-array p0, p1, [Lcom/samsung/android/gtscell/data/result/GtsItemResult$Warning;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 103
    invoke-virtual {p0, p1}, Lcom/samsung/android/gtscell/data/result/GtsItemResult$Warning$CREATOR;->newArray(I)[Lcom/samsung/android/gtscell/data/result/GtsItemResult$Warning;

    move-result-object p0

    return-object p0
.end method
