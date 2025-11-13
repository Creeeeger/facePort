.class public final Lcom/samsung/android/gtscell/data/result/GtsResult;
.super Ljava/lang/Object;
.source "GtsResult.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/gtscell/data/result/GtsResult$Creator;,
        Lcom/samsung/android/gtscell/data/result/GtsResult$State;,
        Lcom/samsung/android/gtscell/data/result/GtsResult$Builder;
    }
.end annotation

.annotation build Lkotlinx/android/parcel/Parcelize;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final itemResults:[Lcom/samsung/android/gtscell/data/result/GtsItemResult;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final state:Lcom/samsung/android/gtscell/data/result/GtsResult$State;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/gtscell/data/result/GtsResult$Creator;

    invoke-direct {v0}, Lcom/samsung/android/gtscell/data/result/GtsResult$Creator;-><init>()V

    sput-object v0, Lcom/samsung/android/gtscell/data/result/GtsResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/gtscell/data/result/GtsResult$State;[Lcom/samsung/android/gtscell/data/result/GtsItemResult;)V
    .locals 1
    .param p1    # Lcom/samsung/android/gtscell/data/result/GtsResult$State;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # [Lcom/samsung/android/gtscell/data/result/GtsItemResult;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemResults"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/gtscell/data/result/GtsResult;->state:Lcom/samsung/android/gtscell/data/result/GtsResult$State;

    iput-object p2, p0, Lcom/samsung/android/gtscell/data/result/GtsResult;->itemResults:[Lcom/samsung/android/gtscell/data/result/GtsItemResult;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getItemResults()[Lcom/samsung/android/gtscell/data/result/GtsItemResult;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 11
    iget-object p0, p0, Lcom/samsung/android/gtscell/data/result/GtsResult;->itemResults:[Lcom/samsung/android/gtscell/data/result/GtsItemResult;

    return-object p0
.end method

.method public final getState()Lcom/samsung/android/gtscell/data/result/GtsResult$State;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 10
    iget-object p0, p0, Lcom/samsung/android/gtscell/data/result/GtsResult;->state:Lcom/samsung/android/gtscell/data/result/GtsResult$State;

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1    # Landroid/os/Parcel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/gtscell/data/result/GtsResult;->state:Lcom/samsung/android/gtscell/data/result/GtsResult$State;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/gtscell/data/result/GtsResult;->itemResults:[Lcom/samsung/android/gtscell/data/result/GtsItemResult;

    array-length v0, p0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    :goto_0
    if-le v0, v1, :cond_0

    aget-object v2, p0, v1

    invoke-virtual {p1, v2, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
