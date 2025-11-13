.class public Landroid/util/LongSparseLongArray$Parcelling;
.super Ljava/lang/Object;
.source "LongSparseLongArray.java"

# interfaces
.implements Lcom/android/internal/util/Parcelling;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/LongSparseLongArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Parcelling"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/internal/util/Parcelling<",
        "Landroid/util/LongSparseLongArray;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist parcel(Landroid/util/LongSparseLongArray;Landroid/os/Parcel;I)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, -0x1

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_0
    invoke-static {p1}, Landroid/util/LongSparseLongArray;->-$$Nest$fgetmSize(Landroid/util/LongSparseLongArray;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-static {p1}, Landroid/util/LongSparseLongArray;->-$$Nest$fgetmKeys(Landroid/util/LongSparseLongArray;)[J

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    invoke-static {p1}, Landroid/util/LongSparseLongArray;->-$$Nest$fgetmValues(Landroid/util/LongSparseLongArray;)[J

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    return-void
.end method

.method public bridge synthetic blacklist parcel(Ljava/lang/Object;Landroid/os/Parcel;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    check-cast p1, Landroid/util/LongSparseLongArray;

    invoke-virtual {p0, p1, p2, p3}, Landroid/util/LongSparseLongArray$Parcelling;->parcel(Landroid/util/LongSparseLongArray;Landroid/os/Parcel;I)V

    return-void
.end method

.method public blacklist unparcel(Landroid/os/Parcel;)Landroid/util/LongSparseLongArray;
    .locals 9

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    new-instance v1, Landroid/util/LongSparseLongArray;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/util/LongSparseLongArray;-><init>(I)V

    invoke-static {v1, v0}, Landroid/util/LongSparseLongArray;->-$$Nest$fputmSize(Landroid/util/LongSparseLongArray;I)V

    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/LongSparseLongArray;->-$$Nest$fputmKeys(Landroid/util/LongSparseLongArray;[J)V

    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/LongSparseLongArray;->-$$Nest$fputmValues(Landroid/util/LongSparseLongArray;[J)V

    invoke-static {v1}, Landroid/util/LongSparseLongArray;->-$$Nest$fgetmKeys(Landroid/util/LongSparseLongArray;)[J

    move-result-object v3

    array-length v3, v3

    const/4 v4, 0x1

    if-lt v3, v0, :cond_1

    move v3, v4

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    invoke-static {v3}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    invoke-static {v1}, Landroid/util/LongSparseLongArray;->-$$Nest$fgetmValues(Landroid/util/LongSparseLongArray;)[J

    move-result-object v3

    array-length v3, v3

    if-lt v3, v0, :cond_2

    move v3, v4

    goto :goto_1

    :cond_2
    move v3, v2

    :goto_1
    invoke-static {v3}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    if-lez v0, :cond_4

    invoke-static {v1}, Landroid/util/LongSparseLongArray;->-$$Nest$fgetmKeys(Landroid/util/LongSparseLongArray;)[J

    move-result-object v3

    aget-wide v5, v3, v2

    const/4 v3, 0x1

    :goto_2
    if-ge v3, v0, :cond_4

    invoke-static {v1}, Landroid/util/LongSparseLongArray;->-$$Nest$fgetmKeys(Landroid/util/LongSparseLongArray;)[J

    move-result-object v7

    aget-wide v7, v7, v3

    cmp-long v7, v5, v7

    if-gez v7, :cond_3

    move v7, v4

    goto :goto_3

    :cond_3
    move v7, v2

    :goto_3
    invoke-static {v7}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    return-object v1
.end method

.method public bridge synthetic blacklist unparcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/util/LongSparseLongArray$Parcelling;->unparcel(Landroid/os/Parcel;)Landroid/util/LongSparseLongArray;

    move-result-object p1

    return-object p1
.end method
