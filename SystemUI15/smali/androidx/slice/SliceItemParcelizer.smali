.class public final Landroidx/slice/SliceItemParcelizer;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Landroidx/versionedparcelable/VersionedParcel;)Landroidx/slice/SliceItem;
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x4

    new-instance v2, Landroidx/slice/SliceItem;

    invoke-direct {v2}, Landroidx/slice/SliceItem;-><init>()V

    iget-object v3, v2, Landroidx/slice/SliceItem;->mHints:[Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {p0, v4, v3}, Landroidx/versionedparcelable/VersionedParcel;->readArray(I[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    iput-object v3, v2, Landroidx/slice/SliceItem;->mHints:[Ljava/lang/String;

    iget-object v3, v2, Landroidx/slice/SliceItem;->mFormat:Ljava/lang/String;

    const/4 v5, 0x2

    invoke-virtual {p0, v5, v3}, Landroidx/versionedparcelable/VersionedParcel;->readString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroidx/slice/SliceItem;->mFormat:Ljava/lang/String;

    iget-object v3, v2, Landroidx/slice/SliceItem;->mSubType:Ljava/lang/String;

    const/4 v6, 0x3

    invoke-virtual {p0, v6, v3}, Landroidx/versionedparcelable/VersionedParcel;->readString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroidx/slice/SliceItem;->mSubType:Ljava/lang/String;

    iget-object v3, v2, Landroidx/slice/SliceItem;->mHolder:Landroidx/slice/SliceItemHolder;

    invoke-virtual {p0, v1}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    move-result v7

    if-nez v7, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readVersionedParcelable()Landroidx/versionedparcelable/VersionedParcelable;

    move-result-object v3

    :goto_0
    check-cast v3, Landroidx/slice/SliceItemHolder;

    iput-object v3, v2, Landroidx/slice/SliceItem;->mHolder:Landroidx/slice/SliceItemHolder;

    const/4 p0, 0x0

    if-eqz v3, :cond_e

    iget-object v7, v2, Landroidx/slice/SliceItem;->mFormat:Ljava/lang/String;

    sget-object v8, Landroidx/slice/SliceItemHolder;->sHandler:Landroidx/slice/compat/SliceProviderCompat$2;

    if-eqz v8, :cond_1

    invoke-virtual {v8, v3}, Landroidx/slice/compat/SliceProviderCompat$2;->handle(Landroidx/slice/SliceItemHolder;)V

    :cond_1
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v8, -0x1

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    :goto_1
    move v1, v8

    goto/16 :goto_2

    :sswitch_0
    const-string v1, "slice"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x7

    goto :goto_2

    :sswitch_1
    const-string v1, "input"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x6

    goto :goto_2

    :sswitch_2
    const-string v1, "image"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v1, 0x5

    goto :goto_2

    :sswitch_3
    const-string/jumbo v4, "text"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    goto :goto_1

    :sswitch_4
    const-string v1, "long"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_1

    :cond_5
    move v1, v6

    goto :goto_2

    :sswitch_5
    const-string v1, "int"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_1

    :cond_6
    move v1, v5

    goto :goto_2

    :sswitch_6
    const-string v1, "bundle"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_1

    :cond_7
    move v1, v4

    goto :goto_2

    :sswitch_7
    const-string v1, "action"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_1

    :cond_8
    move v1, v0

    :cond_9
    :goto_2
    packed-switch v1, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unrecognized format "

    invoke-virtual {v0, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    iget-object v1, v3, Landroidx/slice/SliceItemHolder;->mParcelable:Landroid/os/Parcelable;

    goto :goto_5

    :pswitch_1
    iget-object v1, v3, Landroidx/slice/SliceItemHolder;->mVersionedParcelable:Landroidx/versionedparcelable/VersionedParcelable;

    goto :goto_5

    :pswitch_2
    iget-object v1, v3, Landroidx/slice/SliceItemHolder;->mStr:Ljava/lang/String;

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_a

    goto :goto_3

    :cond_a
    iget-object v1, v3, Landroidx/slice/SliceItemHolder;->mStr:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v1

    goto :goto_5

    :cond_b
    :goto_3
    const-string v1, ""

    goto :goto_5

    :pswitch_3
    iget-wide v3, v3, Landroidx/slice/SliceItemHolder;->mLong:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_5

    :pswitch_4
    iget v1, v3, Landroidx/slice/SliceItemHolder;->mInt:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_5

    :pswitch_5
    iget-object v1, v3, Landroidx/slice/SliceItemHolder;->mBundle:Landroid/os/Bundle;

    goto :goto_5

    :pswitch_6
    iget-object v1, v3, Landroidx/slice/SliceItemHolder;->mParcelable:Landroid/os/Parcelable;

    if-nez v1, :cond_c

    iget-object v4, v3, Landroidx/slice/SliceItemHolder;->mVersionedParcelable:Landroidx/versionedparcelable/VersionedParcelable;

    if-nez v4, :cond_c

    move-object v1, p0

    goto :goto_5

    :cond_c
    new-instance v4, Landroidx/core/util/Pair;

    if-eqz v1, :cond_d

    goto :goto_4

    :cond_d
    move-object v1, p0

    :goto_4
    iget-object v3, v3, Landroidx/slice/SliceItemHolder;->mVersionedParcelable:Landroidx/versionedparcelable/VersionedParcelable;

    check-cast v3, Landroidx/slice/Slice;

    invoke-direct {v4, v1, v3}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v1, v4

    :goto_5
    iput-object v1, v2, Landroidx/slice/SliceItem;->mObj:Ljava/lang/Object;

    iget-object v1, v2, Landroidx/slice/SliceItem;->mHolder:Landroidx/slice/SliceItemHolder;

    iget-object v3, v1, Landroidx/slice/SliceItemHolder;->mPool:Landroidx/slice/SliceItemHolder$SliceItemPool;

    if-eqz v3, :cond_f

    iput-object p0, v1, Landroidx/slice/SliceItemHolder;->mParcelable:Landroid/os/Parcelable;

    iput-object p0, v1, Landroidx/slice/SliceItemHolder;->mVersionedParcelable:Landroidx/versionedparcelable/VersionedParcelable;

    iput v0, v1, Landroidx/slice/SliceItemHolder;->mInt:I

    const-wide/16 v4, 0x0

    iput-wide v4, v1, Landroidx/slice/SliceItemHolder;->mLong:J

    iput-object p0, v1, Landroidx/slice/SliceItemHolder;->mStr:Ljava/lang/String;

    iget-object v0, v3, Landroidx/slice/SliceItemHolder$SliceItemPool;->mCached:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_e
    iput-object p0, v2, Landroidx/slice/SliceItem;->mObj:Ljava/lang/Object;

    :cond_f
    :goto_6
    iput-object p0, v2, Landroidx/slice/SliceItem;->mHolder:Landroidx/slice/SliceItemHolder;

    return-object v2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x54d081ca -> :sswitch_7
        -0x5220cf7e -> :sswitch_6
        0x197ef -> :sswitch_5
        0x32c67c -> :sswitch_4
        0x36452d -> :sswitch_3
        0x5faa95b -> :sswitch_2
        0x5fb57ca -> :sswitch_1
        0x6873d92 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static write(Landroidx/slice/SliceItem;Landroidx/versionedparcelable/VersionedParcel;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/slice/SliceItemHolder;

    iget-object v1, p0, Landroidx/slice/SliceItem;->mFormat:Ljava/lang/String;

    iget-object v2, p0, Landroidx/slice/SliceItem;->mObj:Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroidx/slice/SliceItemHolder;-><init>(Ljava/lang/String;Ljava/lang/Object;Z)V

    iput-object v0, p0, Landroidx/slice/SliceItem;->mHolder:Landroidx/slice/SliceItemHolder;

    sget-object v0, Landroidx/slice/Slice;->NO_HINTS:[Ljava/lang/String;

    iget-object v1, p0, Landroidx/slice/SliceItem;->mHints:[Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/slice/SliceItem;->mHints:[Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeArray(I[Ljava/lang/Object;)V

    :cond_0
    const-string/jumbo v0, "text"

    iget-object v1, p0, Landroidx/slice/SliceItem;->mFormat:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/slice/SliceItem;->mFormat:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeString(ILjava/lang/String;)V

    :cond_1
    iget-object v0, p0, Landroidx/slice/SliceItem;->mSubType:Ljava/lang/String;

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeString(ILjava/lang/String;)V

    :cond_2
    iget-object p0, p0, Landroidx/slice/SliceItem;->mHolder:Landroidx/slice/SliceItemHolder;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    invoke-virtual {p1, p0}, Landroidx/versionedparcelable/VersionedParcel;->writeVersionedParcelable(Landroidx/versionedparcelable/VersionedParcelable;)V

    return-void
.end method
