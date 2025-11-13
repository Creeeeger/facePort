.class public final Lcom/samsung/android/gtscell/data/result/GtsResult;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

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

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001:\u0002\u0014\u0015B\u001d\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0002\u0010\u0007J\t\u0010\r\u001a\u00020\u000eH\u00d6\u0001J\u0019\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u000eH\u00d6\u0001R\u0019\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\n\n\u0002\u0010\n\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/samsung/android/gtscell/data/result/GtsResult;",
        "Landroid/os/Parcelable;",
        "state",
        "Lcom/samsung/android/gtscell/data/result/GtsResult$State;",
        "itemResults",
        "",
        "Lcom/samsung/android/gtscell/data/result/GtsItemResult;",
        "(Lcom/samsung/android/gtscell/data/result/GtsResult$State;[Lcom/samsung/android/gtscell/data/result/GtsItemResult;)V",
        "getItemResults",
        "()[Lcom/samsung/android/gtscell/data/result/GtsItemResult;",
        "[Lcom/samsung/android/gtscell/data/result/GtsItemResult;",
        "getState",
        "()Lcom/samsung/android/gtscell/data/result/GtsResult$State;",
        "describeContents",
        "",
        "writeToParcel",
        "",
        "parcel",
        "Landroid/os/Parcel;",
        "flags",
        "Builder",
        "State",
        "gtscell_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation

.annotation build Lkotlinx/android/parcel/Parcelize;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final itemResults:[Lcom/samsung/android/gtscell/data/result/GtsItemResult;

.field private final state:Lcom/samsung/android/gtscell/data/result/GtsResult$State;


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

    const-string/jumbo v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemResults"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

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

    iget-object p0, p0, Lcom/samsung/android/gtscell/data/result/GtsResult;->itemResults:[Lcom/samsung/android/gtscell/data/result/GtsItemResult;

    return-object p0
.end method

.method public final getState()Lcom/samsung/android/gtscell/data/result/GtsResult$State;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/gtscell/data/result/GtsResult;->state:Lcom/samsung/android/gtscell/data/result/GtsResult$State;

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

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
