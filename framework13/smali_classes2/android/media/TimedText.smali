.class public final Landroid/media/TimedText;
.super Ljava/lang/Object;
.source "TimedText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/TimedText$HyperText;,
        Landroid/media/TimedText$Karaoke;,
        Landroid/media/TimedText$Font;,
        Landroid/media/TimedText$Style;,
        Landroid/media/TimedText$Justification;,
        Landroid/media/TimedText$CharPos;
    }
.end annotation


# static fields
.field private static final greylist-max-o FIRST_PRIVATE_KEY:I = 0x65

.field private static final greylist-max-o FIRST_PUBLIC_KEY:I = 0x1

.field private static final greylist-max-o KEY_BACKGROUND_COLOR_RGBA:I = 0x3

.field private static final greylist-max-o KEY_DISPLAY_FLAGS:I = 0x1

.field private static final greylist-max-o KEY_END_CHAR:I = 0x68

.field private static final greylist-max-o KEY_FONT_ID:I = 0x69

.field private static final greylist-max-o KEY_FONT_SIZE:I = 0x6a

.field private static final greylist-max-o KEY_GLOBAL_SETTING:I = 0x65

.field private static final blacklist KEY_HEAD_INFO:I = 0xbca

.field private static final greylist-max-o KEY_HIGHLIGHT_COLOR_RGBA:I = 0x4

.field private static final greylist-max-o KEY_LOCAL_SETTING:I = 0x66

.field private static final greylist-max-o KEY_SCROLL_DELAY:I = 0x5

.field private static final blacklist KEY_SMPTE_TT_HEAD:I = 0xc80

.field private static final greylist-max-o KEY_START_CHAR:I = 0x67

.field private static final greylist-max-o KEY_START_TIME:I = 0x7

.field private static final greylist-max-o KEY_STRUCT_BLINKING_TEXT_LIST:I = 0x8

.field private static final greylist-max-o KEY_STRUCT_FONT_LIST:I = 0x9

.field private static final greylist-max-o KEY_STRUCT_HIGHLIGHT_LIST:I = 0xa

.field private static final greylist-max-o KEY_STRUCT_HYPER_TEXT_LIST:I = 0xb

.field private static final greylist-max-o KEY_STRUCT_JUSTIFICATION:I = 0xf

.field private static final greylist-max-o KEY_STRUCT_KARAOKE_LIST:I = 0xc

.field private static final greylist-max-o KEY_STRUCT_STYLE_LIST:I = 0xd

.field private static final greylist-max-o KEY_STRUCT_TEXT:I = 0x10

.field private static final greylist-max-o KEY_STRUCT_TEXT_POS:I = 0xe

.field private static final greylist-max-o KEY_STYLE_FLAGS:I = 0x2

.field private static final greylist-max-o KEY_TEXT_COLOR_RGBA:I = 0x6b

.field private static final greylist-max-o KEY_WRAP_TEXT:I = 0x6

.field private static final greylist-max-o LAST_PRIVATE_KEY:I = 0x6b

.field private static final greylist-max-o LAST_PUBLIC_KEY:I = 0x10

.field public static final blacklist SEM_KEY_START_TIME:I = 0xbc8

.field public static final whitelist SEM_KEY_TEXT_INDEX:I = 0xbc9

.field private static final greylist-max-o TAG:Ljava/lang/String; = "TimedText"


# instance fields
.field private greylist-max-o mBackgroundColorRGBA:I

.field private greylist-max-o mBlinkingPosList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/TimedText$CharPos;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mDisplayFlags:I

.field private greylist-max-o mFontList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/TimedText$Font;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mHeadChars:Ljava/lang/String;

.field private greylist-max-o mHighlightColorRGBA:I

.field private greylist-max-o mHighlightPosList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/TimedText$CharPos;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mHyperTextList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/TimedText$HyperText;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mJustification:Landroid/media/TimedText$Justification;

.field private greylist-max-o mKaraokeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/TimedText$Karaoke;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mKeyObjectMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mParcel:Landroid/os/Parcel;

.field private greylist-max-o mScrollDelay:I

.field private greylist-max-o mStyleList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/TimedText$Style;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mTextBounds:Landroid/graphics/Rect;

.field private greylist-max-o mTextChars:Ljava/lang/String;

.field private greylist-max-o mWrapText:I


# direct methods
.method public constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 384
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    iput-object v0, p0, Landroid/media/TimedText;->mParcel:Landroid/os/Parcel;

    .line 113
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/media/TimedText;->mKeyObjectMap:Ljava/util/HashMap;

    .line 116
    const/4 v1, -0x1

    iput v1, p0, Landroid/media/TimedText;->mDisplayFlags:I

    .line 117
    iput v1, p0, Landroid/media/TimedText;->mBackgroundColorRGBA:I

    .line 118
    iput v1, p0, Landroid/media/TimedText;->mHighlightColorRGBA:I

    .line 119
    iput v1, p0, Landroid/media/TimedText;->mScrollDelay:I

    .line 120
    iput v1, p0, Landroid/media/TimedText;->mWrapText:I

    .line 122
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/TimedText;->mBlinkingPosList:Ljava/util/List;

    .line 123
    iput-object v1, p0, Landroid/media/TimedText;->mHighlightPosList:Ljava/util/List;

    .line 124
    iput-object v1, p0, Landroid/media/TimedText;->mKaraokeList:Ljava/util/List;

    .line 125
    iput-object v1, p0, Landroid/media/TimedText;->mFontList:Ljava/util/List;

    .line 126
    iput-object v1, p0, Landroid/media/TimedText;->mStyleList:Ljava/util/List;

    .line 127
    iput-object v1, p0, Landroid/media/TimedText;->mHyperTextList:Ljava/util/List;

    .line 129
    iput-object v1, p0, Landroid/media/TimedText;->mTextBounds:Landroid/graphics/Rect;

    .line 130
    iput-object v1, p0, Landroid/media/TimedText;->mTextChars:Ljava/lang/String;

    .line 132
    iput-object v1, p0, Landroid/media/TimedText;->mHeadChars:Ljava/lang/String;

    .line 387
    invoke-virtual {p1}, Landroid/os/Parcel;->marshall()[B

    move-result-object v1

    .line 388
    .local v1, "tmp":[B
    iget-object v2, p0, Landroid/media/TimedText;->mParcel:Landroid/os/Parcel;

    array-length v3, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4, v3}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 390
    iget-object v2, p0, Landroid/media/TimedText;->mParcel:Landroid/os/Parcel;

    invoke-direct {p0, v2}, Landroid/media/TimedText;->parseParcel(Landroid/os/Parcel;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 391
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 392
    const-string v0, "TimedText"

    const-string v2, "parseParcel() fails"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    :cond_0
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "bounds"    # Landroid/graphics/Rect;

    .line 403
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    iput-object v0, p0, Landroid/media/TimedText;->mParcel:Landroid/os/Parcel;

    .line 113
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/media/TimedText;->mKeyObjectMap:Ljava/util/HashMap;

    .line 116
    const/4 v0, -0x1

    iput v0, p0, Landroid/media/TimedText;->mDisplayFlags:I

    .line 117
    iput v0, p0, Landroid/media/TimedText;->mBackgroundColorRGBA:I

    .line 118
    iput v0, p0, Landroid/media/TimedText;->mHighlightColorRGBA:I

    .line 119
    iput v0, p0, Landroid/media/TimedText;->mScrollDelay:I

    .line 120
    iput v0, p0, Landroid/media/TimedText;->mWrapText:I

    .line 122
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/TimedText;->mBlinkingPosList:Ljava/util/List;

    .line 123
    iput-object v0, p0, Landroid/media/TimedText;->mHighlightPosList:Ljava/util/List;

    .line 124
    iput-object v0, p0, Landroid/media/TimedText;->mKaraokeList:Ljava/util/List;

    .line 125
    iput-object v0, p0, Landroid/media/TimedText;->mFontList:Ljava/util/List;

    .line 126
    iput-object v0, p0, Landroid/media/TimedText;->mStyleList:Ljava/util/List;

    .line 127
    iput-object v0, p0, Landroid/media/TimedText;->mHyperTextList:Ljava/util/List;

    .line 129
    iput-object v0, p0, Landroid/media/TimedText;->mTextBounds:Landroid/graphics/Rect;

    .line 130
    iput-object v0, p0, Landroid/media/TimedText;->mTextChars:Ljava/lang/String;

    .line 132
    iput-object v0, p0, Landroid/media/TimedText;->mHeadChars:Ljava/lang/String;

    .line 404
    iput-object p1, p0, Landroid/media/TimedText;->mTextChars:Ljava/lang/String;

    .line 405
    iput-object p2, p0, Landroid/media/TimedText;->mTextBounds:Landroid/graphics/Rect;

    .line 406
    return-void
.end method

.method private greylist-max-o containsKey(I)Z
    .locals 2
    .param p1, "key"    # I

    .line 819
    invoke-direct {p0, p1}, Landroid/media/TimedText;->isValidKey(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/TimedText;->mKeyObjectMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 820
    const/4 v0, 0x1

    return v0

    .line 822
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private greylist-max-r getObject(I)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # I

    .line 843
    invoke-direct {p0, p1}, Landroid/media/TimedText;->containsKey(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 844
    iget-object v0, p0, Landroid/media/TimedText;->mKeyObjectMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 846
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o isValidKey(I)Z
    .locals 2
    .param p1, "key"    # I

    .line 801
    const/4 v0, 0x1

    const/16 v1, 0xbc9

    if-ne p1, v1, :cond_0

    .line 802
    return v0

    .line 805
    :cond_0
    if-lt p1, v0, :cond_1

    const/16 v1, 0x10

    if-le p1, v1, :cond_2

    :cond_1
    const/16 v1, 0x65

    if-lt p1, v1, :cond_3

    const/16 v1, 0x6b

    if-le p1, v1, :cond_2

    goto :goto_0

    .line 809
    :cond_2
    return v0

    .line 807
    :cond_3
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private greylist-max-o keySet()Ljava/util/Set;
    .locals 1

    .line 829
    iget-object v0, p0, Landroid/media/TimedText;->mKeyObjectMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized greylist-max-o parseParcel(Landroid/os/Parcel;)Z
    .locals 10
    .param p1, "parcel"    # Landroid/os/Parcel;

    monitor-enter p0

    .line 473
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 474
    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 475
    monitor-exit p0

    return v0

    .line 481
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 482
    .local v1, "textType":I
    const/16 v2, 0xbc9

    if-ne v1, v2, :cond_1

    .line 483
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 484
    .local v2, "mTextIndex":I
    iget-object v3, p0, Landroid/media/TimedText;->mKeyObjectMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    move v2, v3

    .line 487
    .local v2, "type":I
    goto :goto_0

    .line 490
    .end local v2    # "type":I
    .end local p0    # "this":Landroid/media/TimedText;
    :cond_1
    move v2, v1

    .line 493
    .restart local v2    # "type":I
    :goto_0
    const/16 v3, 0x66

    const/4 v4, 0x0

    if-ne v2, v3, :cond_6

    .line 494
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 495
    const/4 v3, 0x7

    if-eq v2, v3, :cond_2

    .line 496
    monitor-exit p0

    return v0

    .line 498
    .restart local p0    # "this":Landroid/media/TimedText;
    :cond_2
    :try_start_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 499
    .local v3, "mStartTimeMs":I
    iget-object v5, p0, Landroid/media/TimedText;->mKeyObjectMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v2, v5

    .line 502
    const/16 v5, 0x10

    if-eq v2, v5, :cond_3

    .line 503
    monitor-exit p0

    return v0

    .line 506
    :cond_3
    :try_start_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 507
    .local v5, "textLen":I
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    .line 508
    .local v6, "text":[B
    if-eqz v6, :cond_5

    array-length v7, v6

    if-nez v7, :cond_4

    goto :goto_1

    .line 511
    :cond_4
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v6}, Ljava/lang/String;-><init>([B)V

    iput-object v4, p0, Landroid/media/TimedText;->mTextChars:Ljava/lang/String;

    goto :goto_2

    .line 509
    .end local p0    # "this":Landroid/media/TimedText;
    :cond_5
    :goto_1
    iput-object v4, p0, Landroid/media/TimedText;->mTextChars:Ljava/lang/String;

    .line 515
    .end local v3    # "mStartTimeMs":I
    .end local v5    # "textLen":I
    .end local v6    # "text":[B
    :goto_2
    goto :goto_5

    :cond_6
    const/16 v3, 0xc80

    if-ne v2, v3, :cond_a

    .line 516
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v2, v3

    .line 517
    const/16 v3, 0xbca

    if-eq v2, v3, :cond_7

    .line 518
    monitor-exit p0

    return v0

    .line 521
    .restart local p0    # "this":Landroid/media/TimedText;
    :cond_7
    :try_start_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 522
    .local v3, "textLen":I
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 523
    .local v5, "text":[B
    if-eqz v5, :cond_9

    array-length v6, v5

    if-nez v6, :cond_8

    goto :goto_3

    .line 526
    :cond_8
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    iput-object v4, p0, Landroid/media/TimedText;->mHeadChars:Ljava/lang/String;

    goto :goto_4

    .line 524
    .end local p0    # "this":Landroid/media/TimedText;
    :cond_9
    :goto_3
    iput-object v4, p0, Landroid/media/TimedText;->mHeadChars:Ljava/lang/String;

    goto :goto_4

    .line 529
    .end local v3    # "textLen":I
    .end local v5    # "text":[B
    :cond_a
    const/16 v3, 0x65

    if-eq v2, v3, :cond_b

    .line 530
    const-string v3, "TimedText"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid timed text key found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 531
    monitor-exit p0

    return v0

    .line 529
    :cond_b
    :goto_4
    nop

    .line 534
    :goto_5
    :try_start_5
    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v3

    if-lez v3, :cond_f

    .line 535
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 536
    .local v3, "key":I
    invoke-direct {p0, v3}, Landroid/media/TimedText;->isValidKey(I)Z

    move-result v4

    if-nez v4, :cond_c

    .line 537
    const-string v4, "TimedText"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid timed text key found: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 538
    monitor-exit p0

    return v0

    .line 541
    :cond_c
    const/4 v4, 0x0

    .line 543
    .local v4, "object":Ljava/lang/Object;
    packed-switch v3, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_6

    .line 593
    :pswitch_1
    :try_start_6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 594
    .local v5, "horizontal":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 595
    .local v6, "vertical":I
    new-instance v7, Landroid/media/TimedText$Justification;

    invoke-direct {v7, v5, v6}, Landroid/media/TimedText$Justification;-><init>(II)V

    iput-object v7, p0, Landroid/media/TimedText;->mJustification:Landroid/media/TimedText$Justification;

    .line 597
    move-object v4, v7

    .line 598
    goto/16 :goto_6

    .line 606
    .end local v5    # "horizontal":I
    .end local v6    # "vertical":I
    :pswitch_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 607
    .local v5, "top":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 608
    .local v6, "left":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 609
    .local v7, "bottom":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 610
    .local v8, "right":I
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9, v6, v5, v8, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v9, p0, Landroid/media/TimedText;->mTextBounds:Landroid/graphics/Rect;

    .line 612
    goto/16 :goto_6

    .line 545
    .end local v5    # "top":I
    .end local v6    # "left":I
    .end local v7    # "bottom":I
    .end local v8    # "right":I
    :pswitch_3
    invoke-direct {p0, p1}, Landroid/media/TimedText;->readStyle(Landroid/os/Parcel;)V

    .line 546
    iget-object v5, p0, Landroid/media/TimedText;->mStyleList:Ljava/util/List;

    move-object v4, v5

    .line 547
    goto/16 :goto_6

    .line 560
    :pswitch_4
    invoke-direct {p0, p1}, Landroid/media/TimedText;->readKaraoke(Landroid/os/Parcel;)V

    .line 561
    iget-object v5, p0, Landroid/media/TimedText;->mKaraokeList:Ljava/util/List;

    move-object v4, v5

    .line 562
    goto :goto_6

    .line 565
    :pswitch_5
    invoke-direct {p0, p1}, Landroid/media/TimedText;->readHyperText(Landroid/os/Parcel;)V

    .line 566
    iget-object v5, p0, Landroid/media/TimedText;->mHyperTextList:Ljava/util/List;

    move-object v4, v5

    .line 568
    goto :goto_6

    .line 555
    :pswitch_6
    invoke-direct {p0, p1}, Landroid/media/TimedText;->readHighlight(Landroid/os/Parcel;)V

    .line 556
    iget-object v5, p0, Landroid/media/TimedText;->mHighlightPosList:Ljava/util/List;

    move-object v4, v5

    .line 557
    goto :goto_6

    .line 550
    :pswitch_7
    invoke-direct {p0, p1}, Landroid/media/TimedText;->readFont(Landroid/os/Parcel;)V

    .line 551
    iget-object v5, p0, Landroid/media/TimedText;->mFontList:Ljava/util/List;

    move-object v4, v5

    .line 552
    goto :goto_6

    .line 571
    :pswitch_8
    invoke-direct {p0, p1}, Landroid/media/TimedText;->readBlinkingText(Landroid/os/Parcel;)V

    .line 572
    iget-object v5, p0, Landroid/media/TimedText;->mBlinkingPosList:Ljava/util/List;

    move-object v4, v5

    .line 574
    goto :goto_6

    .line 577
    :pswitch_9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Landroid/media/TimedText;->mWrapText:I

    .line 578
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v4, v5

    .line 579
    goto :goto_6

    .line 615
    :pswitch_a
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Landroid/media/TimedText;->mScrollDelay:I

    .line 616
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v4, v5

    .line 617
    goto :goto_6

    .line 582
    :pswitch_b
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Landroid/media/TimedText;->mHighlightColorRGBA:I

    .line 583
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v4, v5

    .line 584
    goto :goto_6

    .line 601
    :pswitch_c
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Landroid/media/TimedText;->mBackgroundColorRGBA:I

    .line 602
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v4, v5

    .line 603
    goto :goto_6

    .line 587
    :pswitch_d
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Landroid/media/TimedText;->mDisplayFlags:I

    .line 588
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v4, v5

    .line 589
    nop

    .line 624
    :goto_6
    if-eqz v4, :cond_e

    .line 625
    iget-object v5, p0, Landroid/media/TimedText;->mKeyObjectMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 626
    iget-object v5, p0, Landroid/media/TimedText;->mKeyObjectMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 629
    :cond_d
    iget-object v5, p0, Landroid/media/TimedText;->mKeyObjectMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 631
    .end local v3    # "key":I
    .end local v4    # "object":Ljava/lang/Object;
    :cond_e
    goto/16 :goto_5

    .line 633
    :cond_f
    iget-object v0, p0, Landroid/media/TimedText;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 634
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 472
    .end local v1    # "textType":I
    .end local v2    # "type":I
    .end local p1    # "parcel":Landroid/os/Parcel;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private greylist-max-o readBlinkingText(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 784
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 785
    .local v0, "startChar":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 786
    .local v1, "endChar":I
    new-instance v2, Landroid/media/TimedText$CharPos;

    invoke-direct {v2, v0, v1}, Landroid/media/TimedText$CharPos;-><init>(II)V

    .line 788
    .local v2, "blinkingPos":Landroid/media/TimedText$CharPos;
    iget-object v3, p0, Landroid/media/TimedText;->mBlinkingPosList:Ljava/util/List;

    if-nez v3, :cond_0

    .line 789
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroid/media/TimedText;->mBlinkingPosList:Ljava/util/List;

    .line 791
    :cond_0
    iget-object v3, p0, Landroid/media/TimedText;->mBlinkingPosList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 792
    return-void
.end method

.method private greylist-max-o readFont(Landroid/os/Parcel;)V
    .locals 8
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 704
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 706
    .local v0, "entryCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 707
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 708
    .local v2, "id":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 710
    .local v3, "nameLen":I
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 711
    .local v4, "text":[B
    new-instance v5, Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct {v5, v4, v6, v3}, Ljava/lang/String;-><init>([BII)V

    .line 713
    .local v5, "name":Ljava/lang/String;
    new-instance v6, Landroid/media/TimedText$Font;

    invoke-direct {v6, v2, v5}, Landroid/media/TimedText$Font;-><init>(ILjava/lang/String;)V

    .line 715
    .local v6, "font":Landroid/media/TimedText$Font;
    iget-object v7, p0, Landroid/media/TimedText;->mFontList:Ljava/util/List;

    if-nez v7, :cond_0

    .line 716
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Landroid/media/TimedText;->mFontList:Ljava/util/List;

    .line 718
    :cond_0
    iget-object v7, p0, Landroid/media/TimedText;->mFontList:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 706
    .end local v2    # "id":I
    .end local v3    # "nameLen":I
    .end local v4    # "text":[B
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "font":Landroid/media/TimedText$Font;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 720
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private greylist-max-o readHighlight(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 726
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 727
    .local v0, "startChar":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 728
    .local v1, "endChar":I
    new-instance v2, Landroid/media/TimedText$CharPos;

    invoke-direct {v2, v0, v1}, Landroid/media/TimedText$CharPos;-><init>(II)V

    .line 730
    .local v2, "pos":Landroid/media/TimedText$CharPos;
    iget-object v3, p0, Landroid/media/TimedText;->mHighlightPosList:Ljava/util/List;

    if-nez v3, :cond_0

    .line 731
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroid/media/TimedText;->mHighlightPosList:Ljava/util/List;

    .line 733
    :cond_0
    iget-object v3, p0, Landroid/media/TimedText;->mHighlightPosList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 734
    return-void
.end method

.method private greylist-max-o readHyperText(Landroid/os/Parcel;)V
    .locals 9
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 761
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 762
    .local v0, "startChar":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 764
    .local v1, "endChar":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 765
    .local v2, "len":I
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 766
    .local v3, "url":[B
    new-instance v4, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v4, v3, v5, v2}, Ljava/lang/String;-><init>([BII)V

    .line 768
    .local v4, "urlString":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 769
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    .line 770
    .local v6, "alt":[B
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v6, v5, v2}, Ljava/lang/String;-><init>([BII)V

    move-object v5, v7

    .line 771
    .local v5, "altString":Ljava/lang/String;
    new-instance v7, Landroid/media/TimedText$HyperText;

    invoke-direct {v7, v0, v1, v4, v5}, Landroid/media/TimedText$HyperText;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 774
    .local v7, "hyperText":Landroid/media/TimedText$HyperText;
    iget-object v8, p0, Landroid/media/TimedText;->mHyperTextList:Ljava/util/List;

    if-nez v8, :cond_0

    .line 775
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Landroid/media/TimedText;->mHyperTextList:Ljava/util/List;

    .line 777
    :cond_0
    iget-object v8, p0, Landroid/media/TimedText;->mHyperTextList:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 778
    return-void
.end method

.method private greylist-max-o readKaraoke(Landroid/os/Parcel;)V
    .locals 8
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 740
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 742
    .local v0, "entryCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 743
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 744
    .local v2, "startTimeMs":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 745
    .local v3, "endTimeMs":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 746
    .local v4, "startChar":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 747
    .local v5, "endChar":I
    new-instance v6, Landroid/media/TimedText$Karaoke;

    invoke-direct {v6, v2, v3, v4, v5}, Landroid/media/TimedText$Karaoke;-><init>(IIII)V

    .line 750
    .local v6, "kara":Landroid/media/TimedText$Karaoke;
    iget-object v7, p0, Landroid/media/TimedText;->mKaraokeList:Ljava/util/List;

    if-nez v7, :cond_0

    .line 751
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Landroid/media/TimedText;->mKaraokeList:Ljava/util/List;

    .line 753
    :cond_0
    iget-object v7, p0, Landroid/media/TimedText;->mKaraokeList:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 742
    .end local v2    # "startTimeMs":I
    .end local v3    # "endTimeMs":I
    .end local v4    # "startChar":I
    .end local v5    # "endChar":I
    .end local v6    # "kara":Landroid/media/TimedText$Karaoke;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 755
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private greylist-max-o readStyle(Landroid/os/Parcel;)V
    .locals 20
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 641
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 642
    .local v1, "endOfStyle":Z
    const/4 v2, -0x1

    .line 643
    .local v2, "startChar":I
    const/4 v3, -0x1

    .line 644
    .local v3, "endChar":I
    const/4 v4, -0x1

    .line 645
    .local v4, "fontId":I
    const/4 v5, 0x0

    .line 646
    .local v5, "isBold":Z
    const/4 v6, 0x0

    .line 647
    .local v6, "isItalic":Z
    const/4 v7, 0x0

    .line 648
    .local v7, "isUnderlined":Z
    const/4 v8, -0x1

    .line 649
    .local v8, "fontSize":I
    const/4 v9, -0x1

    move v11, v2

    move v12, v3

    move v13, v4

    move v14, v5

    move v15, v6

    move/from16 v16, v7

    move/from16 v17, v8

    move/from16 v18, v9

    .line 650
    .end local v2    # "startChar":I
    .end local v3    # "endChar":I
    .end local v4    # "fontId":I
    .end local v5    # "isBold":Z
    .end local v6    # "isItalic":Z
    .end local v7    # "isUnderlined":Z
    .end local v8    # "fontSize":I
    .local v11, "startChar":I
    .local v12, "endChar":I
    .local v13, "fontId":I
    .local v14, "isBold":Z
    .local v15, "isItalic":Z
    .local v16, "isUnderlined":Z
    .local v17, "fontSize":I
    .local v18, "colorRGBA":I
    :goto_0
    if-nez v1, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v2

    if-lez v2, :cond_3

    .line 651
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 652
    .local v2, "key":I
    sparse-switch v2, :sswitch_data_0

    .line 685
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    add-int/lit8 v3, v3, -0x4

    move-object/from16 v10, p1

    invoke-virtual {v10, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 686
    const/4 v1, 0x1

    goto :goto_3

    .line 679
    :sswitch_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 680
    .end local v18    # "colorRGBA":I
    .local v3, "colorRGBA":I
    move-object/from16 v10, p1

    move/from16 v18, v3

    goto :goto_3

    .line 675
    .end local v3    # "colorRGBA":I
    .restart local v18    # "colorRGBA":I
    :sswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 676
    .end local v17    # "fontSize":I
    .local v3, "fontSize":I
    move-object/from16 v10, p1

    move/from16 v17, v3

    goto :goto_3

    .line 662
    .end local v3    # "fontSize":I
    .restart local v17    # "fontSize":I
    :sswitch_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 663
    .end local v13    # "fontId":I
    .local v3, "fontId":I
    move-object/from16 v10, p1

    move v13, v3

    goto :goto_3

    .line 658
    .end local v3    # "fontId":I
    .restart local v13    # "fontId":I
    :sswitch_3
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 659
    .end local v12    # "endChar":I
    .local v3, "endChar":I
    move-object/from16 v10, p1

    move v12, v3

    goto :goto_3

    .line 654
    .end local v3    # "endChar":I
    .restart local v12    # "endChar":I
    :sswitch_4
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 655
    .end local v11    # "startChar":I
    .local v3, "startChar":I
    move-object/from16 v10, p1

    move v11, v3

    goto :goto_3

    .line 666
    .end local v3    # "startChar":I
    .restart local v11    # "startChar":I
    :sswitch_5
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 669
    .local v3, "flags":I
    rem-int/lit8 v4, v3, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v4, v6, :cond_0

    move v4, v6

    goto :goto_1

    :cond_0
    move v4, v5

    .line 670
    .end local v14    # "isBold":Z
    .local v4, "isBold":Z
    :goto_1
    rem-int/lit8 v7, v3, 0x4

    const/4 v8, 0x2

    if-lt v7, v8, :cond_1

    move v7, v6

    goto :goto_2

    :cond_1
    move v7, v5

    .line 671
    .end local v15    # "isItalic":Z
    .local v7, "isItalic":Z
    :goto_2
    div-int/lit8 v8, v3, 0x4

    if-ne v8, v6, :cond_2

    move v5, v6

    .line 672
    .end local v16    # "isUnderlined":Z
    .local v5, "isUnderlined":Z
    :cond_2
    move-object/from16 v10, p1

    move v14, v4

    move/from16 v16, v5

    move v15, v7

    .line 690
    .end local v2    # "key":I
    .end local v3    # "flags":I
    .end local v4    # "isBold":Z
    .end local v5    # "isUnderlined":Z
    .end local v7    # "isItalic":Z
    .restart local v14    # "isBold":Z
    .restart local v15    # "isItalic":Z
    .restart local v16    # "isUnderlined":Z
    :goto_3
    goto :goto_0

    .line 650
    :cond_3
    move-object/from16 v10, p1

    .line 692
    new-instance v19, Landroid/media/TimedText$Style;

    move-object/from16 v2, v19

    move v3, v11

    move v4, v12

    move v5, v13

    move v6, v14

    move v7, v15

    move/from16 v8, v16

    move/from16 v9, v17

    move/from16 v10, v18

    invoke-direct/range {v2 .. v10}, Landroid/media/TimedText$Style;-><init>(IIIZZZII)V

    .line 694
    .local v2, "style":Landroid/media/TimedText$Style;
    iget-object v3, v0, Landroid/media/TimedText;->mStyleList:Ljava/util/List;

    if-nez v3, :cond_4

    .line 695
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Landroid/media/TimedText;->mStyleList:Ljava/util/List;

    .line 697
    :cond_4
    iget-object v3, v0, Landroid/media/TimedText;->mStyleList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 698
    return-void

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_5
        0x67 -> :sswitch_4
        0x68 -> :sswitch_3
        0x69 -> :sswitch_2
        0x6a -> :sswitch_1
        0x6b -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public whitelist getBounds()Landroid/graphics/Rect;
    .locals 1

    .line 462
    iget-object v0, p0, Landroid/media/TimedText;->mTextBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public whitelist getText()Ljava/lang/String;
    .locals 1

    .line 416
    iget-object v0, p0, Landroid/media/TimedText;->mTextChars:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized blacklist semGetHead()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 427
    :try_start_0
    iget-object v0, p0, Landroid/media/TimedText;->mHeadChars:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 427
    .end local p0    # "this":Landroid/media/TimedText;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public whitelist semGetObject(I)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # I

    .line 445
    const/16 v0, 0xbc8

    if-ne p1, v0, :cond_0

    .line 446
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Landroid/media/TimedText;->getObject(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 448
    :cond_0
    invoke-direct {p0, p1}, Landroid/media/TimedText;->getObject(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
