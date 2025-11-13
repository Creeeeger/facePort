.class public final Landroidx/slice/SliceParcelizer;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Landroidx/versionedparcelable/VersionedParcel;)Landroidx/slice/Slice;
    .locals 8

    new-instance v0, Landroidx/slice/Slice;

    invoke-direct {v0}, Landroidx/slice/Slice;-><init>()V

    iget-object v1, v0, Landroidx/slice/Slice;->mSpec:Landroidx/slice/SliceSpec;

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readVersionedParcelable()Landroidx/versionedparcelable/VersionedParcelable;

    move-result-object v1

    :goto_0
    check-cast v1, Landroidx/slice/SliceSpec;

    iput-object v1, v0, Landroidx/slice/Slice;->mSpec:Landroidx/slice/SliceSpec;

    iget-object v1, v0, Landroidx/slice/Slice;->mItems:[Landroidx/slice/SliceItem;

    const/4 v3, 0x2

    invoke-virtual {p0, v3, v1}, Landroidx/versionedparcelable/VersionedParcel;->readArray(I[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroidx/slice/SliceItem;

    iput-object v1, v0, Landroidx/slice/Slice;->mItems:[Landroidx/slice/SliceItem;

    iget-object v1, v0, Landroidx/slice/Slice;->mHints:[Ljava/lang/String;

    const/4 v3, 0x3

    invoke-virtual {p0, v3, v1}, Landroidx/versionedparcelable/VersionedParcel;->readArray(I[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, v0, Landroidx/slice/Slice;->mHints:[Ljava/lang/String;

    iget-object v1, v0, Landroidx/slice/Slice;->mUri:Ljava/lang/String;

    const/4 v3, 0x4

    invoke-virtual {p0, v3, v1}, Landroidx/versionedparcelable/VersionedParcel;->readString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Landroidx/slice/Slice;->mUri:Ljava/lang/String;

    iget-object p0, v0, Landroidx/slice/Slice;->mItems:[Landroidx/slice/SliceItem;

    array-length p0, p0

    sub-int/2addr p0, v2

    :goto_1
    if-ltz p0, :cond_6

    iget-object v1, v0, Landroidx/slice/Slice;->mItems:[Landroidx/slice/SliceItem;

    aget-object v3, v1, p0

    iget-object v4, v3, Landroidx/slice/SliceItem;->mObj:Ljava/lang/Object;

    if-nez v4, :cond_5

    invoke-static {v1, v3}, Landroidx/slice/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_1

    goto :goto_3

    :cond_1
    array-length v4, v1

    move v6, v5

    :goto_2
    if-ge v6, v4, :cond_4

    aget-object v7, v1, v6

    invoke-static {v7, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    if-ne v4, v2, :cond_2

    const/4 v1, 0x0

    goto :goto_3

    :cond_2
    add-int/lit8 v3, v4, -0x1

    const-class v7, Landroidx/slice/SliceItem;

    invoke-static {v7, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    invoke-static {v1, v5, v3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v7, v6, 0x1

    sub-int/2addr v4, v6

    sub-int/2addr v4, v2

    invoke-static {v1, v7, v3, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v3

    goto :goto_3

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    check-cast v1, [Landroidx/slice/SliceItem;

    iput-object v1, v0, Landroidx/slice/Slice;->mItems:[Landroidx/slice/SliceItem;

    if-nez v1, :cond_5

    new-array v1, v5, [Landroidx/slice/SliceItem;

    iput-object v1, v0, Landroidx/slice/Slice;->mItems:[Landroidx/slice/SliceItem;

    :cond_5
    add-int/lit8 p0, p0, -0x1

    goto :goto_1

    :cond_6
    return-object v0
.end method

.method public static write(Landroidx/slice/Slice;Landroidx/versionedparcelable/VersionedParcel;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/slice/Slice;->mSpec:Landroidx/slice/SliceSpec;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    invoke-virtual {p1, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeVersionedParcelable(Landroidx/versionedparcelable/VersionedParcelable;)V

    :cond_0
    sget-object v0, Landroidx/slice/Slice;->NO_ITEMS:[Landroidx/slice/SliceItem;

    iget-object v1, p0, Landroidx/slice/Slice;->mItems:[Landroidx/slice/SliceItem;

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/slice/Slice;->mItems:[Landroidx/slice/SliceItem;

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeArray(I[Ljava/lang/Object;)V

    :cond_1
    sget-object v0, Landroidx/slice/Slice;->NO_HINTS:[Ljava/lang/String;

    iget-object v1, p0, Landroidx/slice/Slice;->mHints:[Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/slice/Slice;->mHints:[Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeArray(I[Ljava/lang/Object;)V

    :cond_2
    iget-object p0, p0, Landroidx/slice/Slice;->mUri:Ljava/lang/String;

    if-eqz p0, :cond_3

    const/4 v0, 0x4

    invoke-virtual {p1, v0, p0}, Landroidx/versionedparcelable/VersionedParcel;->writeString(ILjava/lang/String;)V

    :cond_3
    return-void
.end method
