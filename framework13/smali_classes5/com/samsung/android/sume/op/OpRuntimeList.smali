.class public Lcom/samsung/android/sume/op/OpRuntimeList;
.super Ljava/lang/Object;
.source "OpRuntimeList.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/sume/op/OpRuntimeList;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist opRuntimes:[Lcom/samsung/android/sume/op/OpRuntime;

.field private blacklist portions:[I

.field private blacklist values:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Lcom/samsung/android/sume/op/OpRuntimeList$1;

    invoke-direct {v0}, Lcom/samsung/android/sume/op/OpRuntimeList$1;-><init>()V

    sput-object v0, Lcom/samsung/android/sume/op/OpRuntimeList;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    invoke-static {v0}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/op/OpRuntimeList$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/samsung/android/sume/op/OpRuntimeList$$ExternalSyntheticLambda0;-><init>()V

    .line 30
    invoke-interface {v0, v1}, Ljava/util/stream/IntStream;->mapToObj(Ljava/util/function/IntFunction;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/op/OpRuntimeList$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/samsung/android/sume/op/OpRuntimeList$$ExternalSyntheticLambda1;-><init>()V

    .line 31
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sume/op/OpRuntime;

    iput-object v0, p0, Lcom/samsung/android/sume/op/OpRuntimeList;->opRuntimes:[Lcom/samsung/android/sume/op/OpRuntime;

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sume/op/OpRuntimeList;->portions:[I

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sume/op/OpRuntimeList;->values:[I

    .line 34
    return-void
.end method

.method public constructor blacklist <init>([Lcom/samsung/android/sume/op/OpRuntime;[I)V
    .locals 0
    .param p1, "opRuntimes"    # [Lcom/samsung/android/sume/op/OpRuntime;
    .param p2, "portions"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "opRuntimes",
            "portions"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/samsung/android/sume/op/OpRuntimeList;->opRuntimes:[Lcom/samsung/android/sume/op/OpRuntime;

    .line 25
    iput-object p2, p0, Lcom/samsung/android/sume/op/OpRuntimeList;->portions:[I

    .line 26
    return-void
.end method

.method static synthetic blacklist lambda$new$0(I)Lcom/samsung/android/sume/op/OpRuntime;
    .locals 1
    .param p0, "e"    # I

    .line 30
    const-class v0, Lcom/samsung/android/sume/op/OpRuntime;

    invoke-static {v0, p0}, Lcom/samsung/android/sume/ValuedEnum;->fromValue(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/op/OpRuntime;

    return-object v0
.end method

.method static synthetic blacklist lambda$new$1(I)[Lcom/samsung/android/sume/op/OpRuntime;
    .locals 1
    .param p0, "x$0"    # I

    .line 31
    new-array v0, p0, [Lcom/samsung/android/sume/op/OpRuntime;

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getOpRuntimes()[Lcom/samsung/android/sume/op/OpRuntime;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/samsung/android/sume/op/OpRuntimeList;->opRuntimes:[Lcom/samsung/android/sume/op/OpRuntime;

    return-object v0
.end method

.method public blacklist getPortions()[I
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/samsung/android/sume/op/OpRuntimeList;->portions:[I

    return-object v0
.end method

.method public blacklist sumOfPortions()I
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/samsung/android/sume/op/OpRuntimeList;->portions:[I

    invoke-static {v0}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->sum()I

    move-result v0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dest",
            "flags"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/samsung/android/sume/op/OpRuntimeList;->opRuntimes:[Lcom/samsung/android/sume/op/OpRuntime;

    invoke-static {v0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/ContentStat$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lcom/samsung/android/sume/ContentStat$$ExternalSyntheticLambda5;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 56
    iget-object v0, p0, Lcom/samsung/android/sume/op/OpRuntimeList;->portions:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 57
    iget-object v0, p0, Lcom/samsung/android/sume/op/OpRuntimeList;->values:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 58
    return-void
.end method
