.class Lcom/samsung/android/sume/core/format/StapleShape;
.super Ljava/lang/Object;
.source "StapleShape.java"

# interfaces
.implements Lcom/samsung/android/sume/core/format/Shape;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/sume/core/format/StapleShape;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist NONE:I = -0x1


# instance fields
.field private final blacklist impl:Lcom/samsung/android/sume/core/format/MutableShape;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 37
    new-instance v0, Lcom/samsung/android/sume/core/format/StapleShape$1;

    invoke-direct {v0}, Lcom/samsung/android/sume/core/format/StapleShape$1;-><init>()V

    sput-object v0, Lcom/samsung/android/sume/core/format/StapleShape;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-class v0, Lcom/samsung/android/sume/core/format/StapleMutableShape;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/format/MutableShape;

    iput-object v0, p0, Lcom/samsung/android/sume/core/format/StapleShape;->impl:Lcom/samsung/android/sume/core/format/MutableShape;

    .line 17
    return-void
.end method

.method constructor blacklist <init>(Lcom/samsung/android/sume/core/format/MutableShape;)V
    .locals 0
    .param p1, "impl"    # Lcom/samsung/android/sume/core/format/MutableShape;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "impl"
        }
    .end annotation

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/samsung/android/sume/core/format/StapleShape;->impl:Lcom/samsung/android/sume/core/format/MutableShape;

    .line 13
    return-void
.end method


# virtual methods
.method blacklist asMutable()Lcom/samsung/android/sume/core/format/MutableShape;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/samsung/android/sume/core/format/StapleShape;->impl:Lcom/samsung/android/sume/core/format/MutableShape;

    return-object v0
.end method

.method public blacklist compareTo(Lcom/samsung/android/sume/core/format/Shape;)I
    .locals 1
    .param p1, "o"    # Lcom/samsung/android/sume/core/format/Shape;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/samsung/android/sume/core/format/StapleShape;->impl:Lcom/samsung/android/sume/core/format/MutableShape;

    invoke-interface {v0, p1}, Lcom/samsung/android/sume/core/format/MutableShape;->compareTo(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic whitelist test-api compareTo(Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "o"
        }
    .end annotation

    .line 6
    check-cast p1, Lcom/samsung/android/sume/core/format/Shape;

    invoke-virtual {p0, p1}, Lcom/samsung/android/sume/core/format/StapleShape;->compareTo(Lcom/samsung/android/sume/core/format/Shape;)I

    move-result p1

    return p1
.end method

.method public blacklist copy()Lcom/samsung/android/sume/core/format/Shape;
    .locals 2

    .line 62
    new-instance v0, Lcom/samsung/android/sume/core/format/StapleShape;

    iget-object v1, p0, Lcom/samsung/android/sume/core/format/StapleShape;->impl:Lcom/samsung/android/sume/core/format/MutableShape;

    invoke-interface {v1}, Lcom/samsung/android/sume/core/format/MutableShape;->copy()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sume/core/format/MutableShape;

    invoke-direct {v0, v1}, Lcom/samsung/android/sume/core/format/StapleShape;-><init>(Lcom/samsung/android/sume/core/format/MutableShape;)V

    return-object v0
.end method

.method public bridge synthetic blacklist copy()Ljava/lang/Object;
    .locals 1

    .line 6
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/format/StapleShape;->copy()Lcom/samsung/android/sume/core/format/Shape;

    move-result-object v0

    return-object v0
.end method

.method public blacklist deepCopy()Lcom/samsung/android/sume/core/format/Shape;
    .locals 2

    .line 67
    new-instance v0, Lcom/samsung/android/sume/core/format/StapleShape;

    iget-object v1, p0, Lcom/samsung/android/sume/core/format/StapleShape;->impl:Lcom/samsung/android/sume/core/format/MutableShape;

    invoke-interface {v1}, Lcom/samsung/android/sume/core/format/MutableShape;->deepCopy()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sume/core/format/MutableShape;

    invoke-direct {v0, v1}, Lcom/samsung/android/sume/core/format/StapleShape;-><init>(Lcom/samsung/android/sume/core/format/MutableShape;)V

    return-object v0
.end method

.method public bridge synthetic blacklist deepCopy()Ljava/lang/Object;
    .locals 1

    .line 6
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/format/StapleShape;->deepCopy()Lcom/samsung/android/sume/core/format/Shape;

    move-result-object v0

    return-object v0
.end method

.method public whitelist describeContents()I
    .locals 1

    .line 51
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getBatch()I
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/samsung/android/sume/core/format/StapleShape;->impl:Lcom/samsung/android/sume/core/format/MutableShape;

    invoke-interface {v0}, Lcom/samsung/android/sume/core/format/MutableShape;->getBatch()I

    move-result v0

    return v0
.end method

.method public blacklist getChannels()I
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/samsung/android/sume/core/format/StapleShape;->impl:Lcom/samsung/android/sume/core/format/MutableShape;

    invoke-interface {v0}, Lcom/samsung/android/sume/core/format/MutableShape;->getChannels()I

    move-result v0

    return v0
.end method

.method public blacklist getCols()I
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/samsung/android/sume/core/format/StapleShape;->impl:Lcom/samsung/android/sume/core/format/MutableShape;

    invoke-interface {v0}, Lcom/samsung/android/sume/core/format/MutableShape;->getCols()I

    move-result v0

    return v0
.end method

.method public blacklist getDimension()I
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/samsung/android/sume/core/format/StapleShape;->impl:Lcom/samsung/android/sume/core/format/MutableShape;

    invoke-interface {v0}, Lcom/samsung/android/sume/core/format/MutableShape;->getDimension()I

    move-result v0

    return v0
.end method

.method public blacklist getRows()I
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/samsung/android/sume/core/format/StapleShape;->impl:Lcom/samsung/android/sume/core/format/MutableShape;

    invoke-interface {v0}, Lcom/samsung/android/sume/core/format/MutableShape;->getRows()I

    move-result v0

    return v0
.end method

.method public blacklist getTotal()I
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/samsung/android/sume/core/format/StapleShape;->impl:Lcom/samsung/android/sume/core/format/MutableShape;

    invoke-interface {v0}, Lcom/samsung/android/sume/core/format/MutableShape;->getTotal()I

    move-result v0

    return v0
.end method

.method public blacklist toArray(I)[I
    .locals 1
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/samsung/android/sume/core/format/StapleShape;->impl:Lcom/samsung/android/sume/core/format/MutableShape;

    invoke-interface {v0, p1}, Lcom/samsung/android/sume/core/format/MutableShape;->toArray(I)[I

    move-result-object v0

    return-object v0
.end method

.method public blacklist toMutableShape()Lcom/samsung/android/sume/core/format/MutableShape;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V::",
            "Lcom/samsung/android/sume/core/format/MutableShape;",
            ">()TV;"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/samsung/android/sume/core/format/StapleShape;->impl:Lcom/samsung/android/sume/core/format/MutableShape;

    invoke-interface {v0}, Lcom/samsung/android/sume/core/format/MutableShape;->deepCopy()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/format/MutableShape;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/samsung/android/sume/core/format/StapleShape;->impl:Lcom/samsung/android/sume/core/format/MutableShape;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
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

    .line 57
    iget-object v0, p0, Lcom/samsung/android/sume/core/format/StapleShape;->impl:Lcom/samsung/android/sume/core/format/MutableShape;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 58
    return-void
.end method
