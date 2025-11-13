.class public Lcom/samsung/android/settings/security/LockKnoxProfileAfterTimeoutActivity;
.super Lcom/android/settings/SettingsActivity;
.source "LockKnoxProfileAfterTimeoutActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/security/LockKnoxProfileAfterTimeoutActivity$LockAfterTimeoutKnoxProfileFragment;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;-><init>()V

    return-void
.end method

.method private static addCurrentTimeoutIfNeeded(Landroid/content/Context;JJ[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "JJ[",
            "Ljava/lang/CharSequence;",
            "[",
            "Ljava/lang/CharSequence;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/CharSequence;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 336
    :goto_0
    array-length v2, p6

    if-ge v0, v2, :cond_1

    .line 337
    aget-object v2, p6, v0

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    if-nez v1, :cond_0

    cmp-long v2, p1, v2

    if-gez v2, :cond_0

    .line 340
    invoke-static {p0, p1, p2, p7, p8}, Lcom/samsung/android/settings/security/LockKnoxProfileAfterTimeoutActivity;->addRevisedEntry(Landroid/content/Context;JLjava/util/ArrayList;Ljava/util/ArrayList;)V

    const/4 v1, 0x1

    .line 343
    :cond_0
    aget-object v2, p5, v0

    invoke-virtual {p7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 344
    aget-object v2, p6, v0

    invoke-virtual {p8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-wide/16 p5, 0x0

    cmp-long p3, p3, p5

    if-lez p3, :cond_2

    if-nez v1, :cond_2

    .line 348
    invoke-static {p0, p1, p2, p7, p8}, Lcom/samsung/android/settings/security/LockKnoxProfileAfterTimeoutActivity;->addRevisedEntry(Landroid/content/Context;JLjava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_2
    return-void
.end method

.method private static addMaximumEntry(Landroid/content/Context;JLjava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Ljava/util/ArrayList<",
            "Ljava/lang/CharSequence;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .line 371
    sget v0, Lcom/android/settings/R$string;->lock_timeout_max:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lcom/samsung/android/settings/security/LockKnoxProfileAfterTimeoutActivity;->getTimeoutNewEntry(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 372
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static addRevisedEntry(Landroid/content/Context;JLjava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Ljava/util/ArrayList<",
            "Ljava/lang/CharSequence;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .line 376
    sget v0, Lcom/android/settings/R$string;->text_security_timeout_msg_b2c:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lcom/samsung/android/settings/security/LockKnoxProfileAfterTimeoutActivity;->getTimeoutNewEntry(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 377
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static disableUnusableTimeouts(J[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J[",
            "Ljava/lang/CharSequence;",
            "[",
            "Ljava/lang/CharSequence;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/CharSequence;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 323
    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_1

    .line 324
    aget-object v1, p3, v0

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_0

    cmp-long v1, v1, p0

    if-gez v1, :cond_0

    .line 326
    aget-object v1, p2, v0

    invoke-virtual {p4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 327
    aget-object v1, p3, v0

    invoke-virtual {p5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static getTimeoutNewEntry(Landroid/content/Context;J)Ljava/lang/String;
    .locals 9

    const-wide/16 v0, 0x3e8

    .line 353
    div-long/2addr p1, v0

    const-wide/16 v0, 0x3c

    .line 354
    div-long v2, p1, v0

    .line 355
    rem-long/2addr p1, v0

    const-wide/16 v0, 0x0

    cmp-long v4, v2, v0

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-lez v4, :cond_0

    .line 358
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/android/settings/R$plurals;->lock_timeout_minutes:I

    long-to-int v2, v2

    invoke-virtual {v7, v8, v2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v3

    new-array v7, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v5

    invoke-static {v3, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    if-lez v4, :cond_1

    cmp-long v3, p1, v0

    if-lez v3, :cond_1

    .line 361
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_1
    cmp-long v0, p1, v0

    if-lez v0, :cond_2

    .line 364
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/settings/R$plurals;->lock_timeout_seconds:I

    long-to-int p1, p1

    invoke-virtual {p0, v1, p1}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object p0

    new-array p2, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v5

    invoke-static {p0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 366
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getTimeoutNewEntry : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "KKG::LockKnoxProfileAfterTimeoutActivity"

    invoke-static {p1, p0}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method public static setScreenTimeoutAdapter(Landroid/content/Context;JJLjava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "JJ",
            "Ljava/util/ArrayList<",
            "Ljava/lang/CharSequence;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v7, p3

    .line 254
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$array;->lock_knox_profile_after_timeout_values:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 255
    array-length v1, v4

    new-array v3, v1, [Ljava/lang/CharSequence;

    const/4 v9, 0x0

    move v1, v9

    .line 257
    :goto_0
    array-length v2, v4

    const/4 v10, 0x1

    if-ge v1, v2, :cond_2

    .line 258
    aget-object v2, v4, v1

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 259
    sget v2, Lcom/android/settings/R$string;->when_screen_turns_off:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v1

    goto :goto_1

    .line 263
    :cond_0
    aget-object v2, v4, v1

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v5, -0x1

    if-ne v2, v5, :cond_1

    .line 264
    sget v2, Lcom/android/settings/R$string;->when_device_restarts:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v1

    goto :goto_1

    .line 268
    :cond_1
    aget-object v2, v4, v1

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    div-int/lit16 v2, v2, 0x3e8

    int-to-long v5, v2

    const-wide/16 v11, 0x3c

    .line 269
    div-long/2addr v5, v11

    .line 270
    sget v2, Lcom/android/settings/R$string;->text_security_timeout_msg_b2c:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v11, v10, [Ljava/lang/Object;

    .line 271
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/android/settings/R$plurals;->lock_timeout_minutes:I

    long-to-int v5, v5

    invoke-virtual {v12, v13, v5}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v6

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v10, v9

    invoke-static {v6, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v11, v9

    .line 270
    invoke-static {v2, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const-wide/16 v11, 0x0

    cmp-long v13, v7, v11

    if-lez v13, :cond_3

    .line 275
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 276
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    move-wide/from16 v1, p3

    move-object v5, v14

    move-object v6, v15

    .line 278
    invoke-static/range {v1 .. v6}, Lcom/samsung/android/settings/security/LockKnoxProfileAfterTimeoutActivity;->disableUnusableTimeouts(J[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 279
    invoke-static {v0, v7, v8, v14, v15}, Lcom/samsung/android/settings/security/LockKnoxProfileAfterTimeoutActivity;->addMaximumEntry(Landroid/content/Context;JLjava/util/ArrayList;Ljava/util/ArrayList;)V

    new-array v1, v9, [Ljava/lang/CharSequence;

    .line 281
    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/CharSequence;

    new-array v2, v9, [Ljava/lang/CharSequence;

    .line 282
    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/CharSequence;

    move-object v5, v1

    move-object v6, v2

    goto :goto_2

    :cond_3
    move-object v5, v3

    move-object v6, v4

    .line 286
    :goto_2
    array-length v1, v6

    move v2, v9

    :goto_3
    if-ge v2, v1, :cond_5

    aget-object v3, v6, v2

    .line 287
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    cmp-long v3, v3, p1

    if-nez v3, :cond_4

    goto :goto_4

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    move v10, v9

    :goto_4
    if-nez v10, :cond_7

    if-lez v13, :cond_6

    cmp-long v1, p1, v11

    if-lez v1, :cond_7

    cmp-long v1, v7, p1

    if-lez v1, :cond_7

    .line 298
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 299
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-object v7, v10

    move-object v8, v11

    .line 301
    invoke-static/range {v0 .. v8}, Lcom/samsung/android/settings/security/LockKnoxProfileAfterTimeoutActivity;->addCurrentTimeoutIfNeeded(Landroid/content/Context;JJ[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    new-array v0, v9, [Ljava/lang/CharSequence;

    .line 303
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, [Ljava/lang/CharSequence;

    new-array v0, v9, [Ljava/lang/CharSequence;

    .line 304
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, [Ljava/lang/CharSequence;

    goto :goto_5

    .line 307
    :cond_6
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 308
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-object v7, v10

    move-object v8, v11

    .line 310
    invoke-static/range {v0 .. v8}, Lcom/samsung/android/settings/security/LockKnoxProfileAfterTimeoutActivity;->addCurrentTimeoutIfNeeded(Landroid/content/Context;JJ[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    new-array v0, v9, [Ljava/lang/CharSequence;

    .line 312
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, [Ljava/lang/CharSequence;

    new-array v0, v9, [Ljava/lang/CharSequence;

    .line 313
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, [Ljava/lang/CharSequence;

    .line 317
    :cond_7
    :goto_5
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    move-object/from16 v1, p5

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 318
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    move-object/from16 v1, p6

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method


# virtual methods
.method getFragmentClass()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation

    .line 53
    const-class p0, Lcom/samsung/android/settings/security/LockKnoxProfileAfterTimeoutActivity$LockAfterTimeoutKnoxProfileFragment;

    return-object p0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 2

    .line 46
    new-instance v0, Landroid/content/Intent;

    invoke-super {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 47
    invoke-virtual {p0}, Lcom/samsung/android/settings/security/LockKnoxProfileAfterTimeoutActivity;->getFragmentClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v1, ":settings:show_fragment"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, ":android:no_headers"

    const/4 v1, 0x1

    .line 48
    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 0

    .line 58
    const-class p0, Lcom/samsung/android/settings/security/LockKnoxProfileAfterTimeoutActivity$LockAfterTimeoutKnoxProfileFragment;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 63
    invoke-super {p0, p1}, Lcom/android/settings/SettingsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    sget p1, Lcom/android/settings/R$id;->content_parent:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setFitsSystemWindows(Z)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 69
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 70
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/4 p0, 0x1

    return p0

    .line 73
    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public onResume()V
    .locals 3

    .line 78
    invoke-super {p0}, Lcom/android/settings/SettingsActivity;->onResume()V

    .line 79
    invoke-virtual {p0}, Lcom/samsung/android/settings/security/LockKnoxProfileAfterTimeoutActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    const-string v2, "android.intent.extra.USER_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 80
    invoke-static {p0, v0}, Lcom/samsung/android/settings/knox/KnoxUtils;->isAvailableWithMultiWindowForKnox(Landroid/app/Activity;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    sget v0, Lcom/android/settings/R$string;->lock_screen_doesnt_support_multi_window_text:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 82
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method
