.class public abstract Landroidx/slice/SliceConvert;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static unwrap(Landroidx/slice/Slice;)Landroid/app/slice/Slice;
    .locals 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p0, :cond_b

    iget-object v3, p0, Landroidx/slice/Slice;->mUri:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    if-nez v3, :cond_0

    goto/16 :goto_4

    :cond_0
    new-instance v3, Landroid/app/slice/Slice$Builder;

    iget-object v4, p0, Landroidx/slice/Slice;->mUri:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Landroidx/slice/Slice;->mSpec:Landroidx/slice/SliceSpec;

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    new-instance v2, Landroid/app/slice/SliceSpec;

    iget-object v6, v5, Landroidx/slice/SliceSpec;->mType:Ljava/lang/String;

    iget v5, v5, Landroidx/slice/SliceSpec;->mRevision:I

    invoke-direct {v2, v6, v5}, Landroid/app/slice/SliceSpec;-><init>(Ljava/lang/String;I)V

    :goto_0
    invoke-direct {v3, v4, v2}, Landroid/app/slice/Slice$Builder;-><init>(Landroid/net/Uri;Landroid/app/slice/SliceSpec;)V

    iget-object v2, p0, Landroidx/slice/Slice;->mHints:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/app/slice/Slice$Builder;->addHints(Ljava/util/List;)Landroid/app/slice/Slice$Builder;

    iget-object p0, p0, Landroidx/slice/Slice;->mItems:[Landroidx/slice/SliceItem;

    array-length v2, p0

    move v4, v1

    :goto_1
    if-ge v4, v2, :cond_a

    aget-object v5, p0, v4

    iget-object v6, v5, Landroidx/slice/SliceItem;->mFormat:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v7, -0x1

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    goto/16 :goto_2

    :sswitch_0
    const-string/jumbo v8, "slice"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_2

    :cond_2
    const/4 v7, 0x7

    goto :goto_2

    :sswitch_1
    const-string v8, "input"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_2

    :cond_3
    const/4 v7, 0x6

    goto :goto_2

    :sswitch_2
    const-string v8, "image"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    goto :goto_2

    :cond_4
    const/4 v7, 0x5

    goto :goto_2

    :sswitch_3
    const-string/jumbo v8, "text"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    goto :goto_2

    :cond_5
    const/4 v7, 0x4

    goto :goto_2

    :sswitch_4
    const-string v8, "long"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    goto :goto_2

    :cond_6
    const/4 v7, 0x3

    goto :goto_2

    :sswitch_5
    const-string v8, "int"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    goto :goto_2

    :cond_7
    const/4 v7, 0x2

    goto :goto_2

    :sswitch_6
    const-string v8, "bundle"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    goto :goto_2

    :cond_8
    move v7, v0

    goto :goto_2

    :sswitch_7
    const-string v8, "action"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    goto :goto_2

    :cond_9
    move v7, v1

    :goto_2
    packed-switch v7, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    invoke-virtual {v5}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v6

    invoke-static {v6}, Landroidx/slice/SliceConvert;->unwrap(Landroidx/slice/Slice;)Landroid/app/slice/Slice;

    move-result-object v6

    iget-object v5, v5, Landroidx/slice/SliceItem;->mSubType:Ljava/lang/String;

    invoke-virtual {v3, v6, v5}, Landroid/app/slice/Slice$Builder;->addSubSlice(Landroid/app/slice/Slice;Ljava/lang/String;)Landroid/app/slice/Slice$Builder;

    goto/16 :goto_3

    :pswitch_1
    iget-object v6, v5, Landroidx/slice/SliceItem;->mObj:Ljava/lang/Object;

    check-cast v6, Landroid/app/RemoteInput;

    iget-object v7, v5, Landroidx/slice/SliceItem;->mSubType:Ljava/lang/String;

    iget-object v5, v5, Landroidx/slice/SliceItem;->mHints:[Ljava/lang/String;

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v3, v6, v7, v5}, Landroid/app/slice/Slice$Builder;->addRemoteInput(Landroid/app/RemoteInput;Ljava/lang/String;Ljava/util/List;)Landroid/app/slice/Slice$Builder;

    goto :goto_3

    :pswitch_2
    iget-object v6, v5, Landroidx/slice/SliceItem;->mObj:Ljava/lang/Object;

    check-cast v6, Landroidx/core/graphics/drawable/IconCompat;

    invoke-virtual {v6}, Landroidx/core/graphics/drawable/IconCompat;->toIcon$1()Landroid/graphics/drawable/Icon;

    move-result-object v6

    iget-object v7, v5, Landroidx/slice/SliceItem;->mSubType:Ljava/lang/String;

    iget-object v5, v5, Landroidx/slice/SliceItem;->mHints:[Ljava/lang/String;

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v3, v6, v7, v5}, Landroid/app/slice/Slice$Builder;->addIcon(Landroid/graphics/drawable/Icon;Ljava/lang/String;Ljava/util/List;)Landroid/app/slice/Slice$Builder;

    goto :goto_3

    :pswitch_3
    iget-object v6, v5, Landroidx/slice/SliceItem;->mObj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/CharSequence;

    iget-object v7, v5, Landroidx/slice/SliceItem;->mSubType:Ljava/lang/String;

    iget-object v5, v5, Landroidx/slice/SliceItem;->mHints:[Ljava/lang/String;

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v3, v6, v7, v5}, Landroid/app/slice/Slice$Builder;->addText(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/util/List;)Landroid/app/slice/Slice$Builder;

    goto :goto_3

    :pswitch_4
    invoke-virtual {v5}, Landroidx/slice/SliceItem;->getLong()J

    move-result-wide v6

    iget-object v8, v5, Landroidx/slice/SliceItem;->mSubType:Ljava/lang/String;

    iget-object v5, v5, Landroidx/slice/SliceItem;->mHints:[Ljava/lang/String;

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v3, v6, v7, v8, v5}, Landroid/app/slice/Slice$Builder;->addLong(JLjava/lang/String;Ljava/util/List;)Landroid/app/slice/Slice$Builder;

    goto :goto_3

    :pswitch_5
    invoke-virtual {v5}, Landroidx/slice/SliceItem;->getInt()I

    move-result v6

    iget-object v7, v5, Landroidx/slice/SliceItem;->mSubType:Ljava/lang/String;

    iget-object v5, v5, Landroidx/slice/SliceItem;->mHints:[Ljava/lang/String;

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v3, v6, v7, v5}, Landroid/app/slice/Slice$Builder;->addInt(ILjava/lang/String;Ljava/util/List;)Landroid/app/slice/Slice$Builder;

    goto :goto_3

    :pswitch_6
    iget-object v6, v5, Landroidx/slice/SliceItem;->mObj:Ljava/lang/Object;

    check-cast v6, Landroid/os/Bundle;

    iget-object v7, v5, Landroidx/slice/SliceItem;->mSubType:Ljava/lang/String;

    iget-object v5, v5, Landroidx/slice/SliceItem;->mHints:[Ljava/lang/String;

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v3, v6, v7, v5}, Landroid/app/slice/Slice$Builder;->addBundle(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/List;)Landroid/app/slice/Slice$Builder;

    goto :goto_3

    :pswitch_7
    invoke-virtual {v5}, Landroidx/slice/SliceItem;->getAction()Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v5}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v7

    invoke-static {v7}, Landroidx/slice/SliceConvert;->unwrap(Landroidx/slice/Slice;)Landroid/app/slice/Slice;

    move-result-object v7

    iget-object v5, v5, Landroidx/slice/SliceItem;->mSubType:Ljava/lang/String;

    invoke-virtual {v3, v6, v7, v5}, Landroid/app/slice/Slice$Builder;->addAction(Landroid/app/PendingIntent;Landroid/app/slice/Slice;Ljava/lang/String;)Landroid/app/slice/Slice$Builder;

    :goto_3
    add-int/2addr v4, v0

    goto/16 :goto_1

    :cond_a
    invoke-virtual {v3}, Landroid/app/slice/Slice$Builder;->build()Landroid/app/slice/Slice;

    move-result-object p0

    return-object p0

    :cond_b
    :goto_4
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
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static wrap(Landroid/app/slice/Slice;Landroid/content/Context;)Landroidx/slice/Slice;
    .locals 11

    const-string v0, "input"

    const-string v1, "long"

    const-string v2, "The icon resource isn\'t available."

    const-string v3, "SliceConvert"

    const/4 v4, 0x0

    if-eqz p0, :cond_b

    invoke-virtual {p0}, Landroid/app/slice/Slice;->getUri()Landroid/net/Uri;

    move-result-object v5

    if-nez v5, :cond_0

    goto/16 :goto_5

    :cond_0
    new-instance v5, Landroidx/slice/Slice$Builder;

    invoke-virtual {p0}, Landroid/app/slice/Slice;->getUri()Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v5, v6}, Landroidx/slice/Slice$Builder;-><init>(Landroid/net/Uri;)V

    invoke-virtual {p0}, Landroid/app/slice/Slice;->getHints()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroidx/slice/Slice$Builder;->addHints([Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/slice/Slice;->getSpec()Landroid/app/slice/SliceSpec;

    move-result-object v6

    if-nez v6, :cond_1

    goto :goto_0

    :cond_1
    new-instance v4, Landroidx/slice/SliceSpec;

    invoke-virtual {v6}, Landroid/app/slice/SliceSpec;->getType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Landroid/app/slice/SliceSpec;->getRevision()I

    move-result v6

    invoke-direct {v4, v7, v6}, Landroidx/slice/SliceSpec;-><init>(Ljava/lang/String;I)V

    :goto_0
    iput-object v4, v5, Landroidx/slice/Slice$Builder;->mSpec:Landroidx/slice/SliceSpec;

    invoke-virtual {p0}, Landroid/app/slice/Slice;->getItems()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/slice/SliceItem;

    invoke-virtual {v4}, Landroid/app/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v7, -0x1

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    goto :goto_2

    :sswitch_0
    const-string/jumbo v8, "slice"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_2

    :cond_2
    const/4 v7, 0x7

    goto :goto_2

    :sswitch_1
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_2

    :cond_3
    const/4 v7, 0x6

    goto :goto_2

    :sswitch_2
    const-string v8, "image"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    goto :goto_2

    :cond_4
    const/4 v7, 0x5

    goto :goto_2

    :sswitch_3
    const-string/jumbo v8, "text"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    goto :goto_2

    :cond_5
    const/4 v7, 0x4

    goto :goto_2

    :sswitch_4
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    goto :goto_2

    :cond_6
    const/4 v7, 0x3

    goto :goto_2

    :sswitch_5
    const-string v8, "int"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    goto :goto_2

    :cond_7
    const/4 v7, 0x2

    goto :goto_2

    :sswitch_6
    const-string v8, "bundle"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    goto :goto_2

    :cond_8
    const/4 v7, 0x1

    goto :goto_2

    :sswitch_7
    const-string v8, "action"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    goto :goto_2

    :cond_9
    const/4 v7, 0x0

    :goto_2
    packed-switch v7, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-virtual {v4}, Landroid/app/slice/SliceItem;->getSlice()Landroid/app/slice/Slice;

    move-result-object v6

    invoke-static {v6, p1}, Landroidx/slice/SliceConvert;->wrap(Landroid/app/slice/Slice;Landroid/content/Context;)Landroidx/slice/Slice;

    move-result-object v6

    invoke-virtual {v4}, Landroid/app/slice/SliceItem;->getSubType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v6, v4}, Landroidx/slice/Slice$Builder;->addSubSlice(Landroidx/slice/Slice;Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_1
    invoke-virtual {v4}, Landroid/app/slice/SliceItem;->getRemoteInput()Landroid/app/RemoteInput;

    move-result-object v6

    invoke-virtual {v4}, Landroid/app/slice/SliceItem;->getSubType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Landroid/app/slice/SliceItem;->getHints()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/String;

    invoke-interface {v4, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    iget-object v8, v5, Landroidx/slice/Slice$Builder;->mItems:Ljava/util/ArrayList;

    new-instance v9, Landroidx/slice/SliceItem;

    invoke-direct {v9, v6, v0, v7, v4}, Landroidx/slice/SliceItem;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :pswitch_2
    :try_start_0
    invoke-virtual {v4}, Landroid/app/slice/SliceItem;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v6

    invoke-static {p1, v6}, Landroidx/core/graphics/drawable/IconCompat;->createFromIcon(Landroid/content/Context;Landroid/graphics/drawable/Icon;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v6

    invoke-virtual {v4}, Landroid/app/slice/SliceItem;->getSubType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Landroid/app/slice/SliceItem;->getHints()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v5, v6, v7, v4}, Landroidx/slice/Slice$Builder;->addIcon(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v4

    goto :goto_3

    :catch_1
    move-exception v4

    goto :goto_4

    :goto_3
    invoke-static {v3, v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    :goto_4
    invoke-static {v3, v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    :pswitch_3
    invoke-virtual {v4}, Landroid/app/slice/SliceItem;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v4}, Landroid/app/slice/SliceItem;->getSubType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Landroid/app/slice/SliceItem;->getHints()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/String;

    invoke-interface {v4, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    invoke-virtual {v5, v6, v7, v4}, Landroidx/slice/Slice$Builder;->addText(Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_4
    invoke-virtual {v4}, Landroid/app/slice/SliceItem;->getLong()J

    move-result-wide v6

    invoke-virtual {v4}, Landroid/app/slice/SliceItem;->getSubType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4}, Landroid/app/slice/SliceItem;->getHints()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    new-array v9, v9, [Ljava/lang/String;

    invoke-interface {v4, v9}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    iget-object v9, v5, Landroidx/slice/Slice$Builder;->mItems:Ljava/util/ArrayList;

    new-instance v10, Landroidx/slice/SliceItem;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-direct {v10, v6, v1, v8, v4}, Landroidx/slice/SliceItem;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :pswitch_5
    invoke-virtual {v4}, Landroid/app/slice/SliceItem;->getInt()I

    move-result v6

    invoke-virtual {v4}, Landroid/app/slice/SliceItem;->getSubType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Landroid/app/slice/SliceItem;->getHints()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/String;

    invoke-interface {v4, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    invoke-virtual {v5, v6, v4, v7}, Landroidx/slice/Slice$Builder;->addInt(I[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_6
    new-instance v6, Landroidx/slice/SliceItem;

    invoke-virtual {v4}, Landroid/app/slice/SliceItem;->getBundle()Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual {v4}, Landroid/app/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4}, Landroid/app/slice/SliceItem;->getSubType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4}, Landroid/app/slice/SliceItem;->getHints()Ljava/util/List;

    move-result-object v4

    invoke-direct {v6, v7, v8, v9, v4}, Landroidx/slice/SliceItem;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v5, v6}, Landroidx/slice/Slice$Builder;->addItem(Landroidx/slice/SliceItem;)V

    goto/16 :goto_1

    :pswitch_7
    invoke-virtual {v4}, Landroid/app/slice/SliceItem;->getAction()Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v4}, Landroid/app/slice/SliceItem;->getSlice()Landroid/app/slice/Slice;

    move-result-object v7

    invoke-static {v7, p1}, Landroidx/slice/SliceConvert;->wrap(Landroid/app/slice/Slice;Landroid/content/Context;)Landroidx/slice/Slice;

    move-result-object v7

    invoke-virtual {v4}, Landroid/app/slice/SliceItem;->getSubType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v6, v7, v4}, Landroidx/slice/Slice$Builder;->addAction(Landroid/app/PendingIntent;Landroidx/slice/Slice;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_a
    invoke-virtual {v5}, Landroidx/slice/Slice$Builder;->build()Landroidx/slice/Slice;

    move-result-object p0

    return-object p0

    :cond_b
    :goto_5
    return-object v4

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
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
