.class public Landroid/sec/clipboard/data/ClipboardDataFactory;
.super Ljava/lang/Object;
.source "ClipboardDataFactory.java"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist createClipBoardData(I)Lcom/samsung/android/content/clipboard/data/SemClipData;
    .locals 2
    .param p0, "format"    # I

    .line 45
    const/4 v0, 0x0

    .line 47
    .local v0, "result":Lcom/samsung/android/content/clipboard/data/SemClipData;
    sparse-switch p0, :sswitch_data_0

    goto :goto_0

    .line 69
    :sswitch_0
    new-instance v1, Lcom/samsung/android/content/clipboard/data/SemUriListClipData;

    invoke-direct {v1}, Lcom/samsung/android/content/clipboard/data/SemUriListClipData;-><init>()V

    move-object v0, v1

    .line 70
    goto :goto_0

    .line 61
    :sswitch_1
    new-instance v1, Lcom/samsung/android/content/clipboard/data/SemUriClipData;

    invoke-direct {v1}, Lcom/samsung/android/content/clipboard/data/SemUriClipData;-><init>()V

    move-object v0, v1

    .line 62
    goto :goto_0

    .line 65
    :sswitch_2
    new-instance v1, Lcom/samsung/android/content/clipboard/data/SemIntentClipData;

    invoke-direct {v1}, Lcom/samsung/android/content/clipboard/data/SemIntentClipData;-><init>()V

    move-object v0, v1

    .line 66
    goto :goto_0

    .line 57
    :sswitch_3
    new-instance v1, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;

    invoke-direct {v1}, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;-><init>()V

    move-object v0, v1

    .line 58
    goto :goto_0

    .line 53
    :sswitch_4
    new-instance v1, Lcom/samsung/android/content/clipboard/data/SemImageClipData;

    invoke-direct {v1}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;-><init>()V

    move-object v0, v1

    .line 54
    goto :goto_0

    .line 49
    :sswitch_5
    new-instance v1, Lcom/samsung/android/content/clipboard/data/SemTextClipData;

    invoke-direct {v1}, Lcom/samsung/android/content/clipboard/data/SemTextClipData;-><init>()V

    move-object v0, v1

    .line 50
    nop

    .line 75
    :goto_0
    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_5
        0x2 -> :sswitch_4
        0x4 -> :sswitch_3
        0x8 -> :sswitch_2
        0x10 -> :sswitch_1
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method public static blacklist createClipBoardData(Landroid/os/Parcel;)Lcom/samsung/android/content/clipboard/data/SemClipData;
    .locals 2
    .param p0, "source"    # Landroid/os/Parcel;

    .line 85
    const/4 v0, 0x0

    .line 87
    .local v0, "result":Lcom/samsung/android/content/clipboard/data/SemClipData;
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 109
    :sswitch_0
    new-instance v1, Lcom/samsung/android/content/clipboard/data/SemUriListClipData;

    invoke-direct {v1, p0}, Lcom/samsung/android/content/clipboard/data/SemUriListClipData;-><init>(Landroid/os/Parcel;)V

    move-object v0, v1

    .line 110
    goto :goto_0

    .line 101
    :sswitch_1
    new-instance v1, Lcom/samsung/android/content/clipboard/data/SemUriClipData;

    invoke-direct {v1, p0}, Lcom/samsung/android/content/clipboard/data/SemUriClipData;-><init>(Landroid/os/Parcel;)V

    move-object v0, v1

    .line 102
    goto :goto_0

    .line 105
    :sswitch_2
    new-instance v1, Lcom/samsung/android/content/clipboard/data/SemIntentClipData;

    invoke-direct {v1, p0}, Lcom/samsung/android/content/clipboard/data/SemIntentClipData;-><init>(Landroid/os/Parcel;)V

    move-object v0, v1

    .line 106
    goto :goto_0

    .line 97
    :sswitch_3
    new-instance v1, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;

    invoke-direct {v1, p0}, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;-><init>(Landroid/os/Parcel;)V

    move-object v0, v1

    .line 98
    goto :goto_0

    .line 93
    :sswitch_4
    new-instance v1, Lcom/samsung/android/content/clipboard/data/SemImageClipData;

    invoke-direct {v1, p0}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;-><init>(Landroid/os/Parcel;)V

    move-object v0, v1

    .line 94
    goto :goto_0

    .line 89
    :sswitch_5
    new-instance v1, Lcom/samsung/android/content/clipboard/data/SemTextClipData;

    invoke-direct {v1, p0}, Lcom/samsung/android/content/clipboard/data/SemTextClipData;-><init>(Landroid/os/Parcel;)V

    move-object v0, v1

    .line 90
    nop

    .line 115
    :goto_0
    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_5
        0x2 -> :sswitch_4
        0x4 -> :sswitch_3
        0x8 -> :sswitch_2
        0x10 -> :sswitch_1
        0x20 -> :sswitch_0
    .end sparse-switch
.end method
