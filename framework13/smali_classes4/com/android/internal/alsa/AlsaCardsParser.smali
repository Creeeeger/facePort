.class public Lcom/android/internal/alsa/AlsaCardsParser;
.super Ljava/lang/Object;
.source "AlsaCardsParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;
    }
.end annotation


# static fields
.field protected static final blacklist DEBUG:Z = true

.field public static final blacklist SCANSTATUS_EMPTY:I = 0x2

.field public static final blacklist SCANSTATUS_FAIL:I = 0x1

.field public static final blacklist SCANSTATUS_NOTSCANNED:I = -0x1

.field public static final blacklist SCANSTATUS_SUCCESS:I = 0x0

.field private static final blacklist TAG:Ljava/lang/String; = "AlsaCardsParser"

.field private static final blacklist kAlsaFolderPath:Ljava/lang/String; = "/proc/asound"

.field private static final blacklist kCardsFilePath:Ljava/lang/String; = "/proc/asound/cards"

.field private static final blacklist kDeviceAddressPrefix:Ljava/lang/String; = "/dev/bus/usb/"

.field private static blacklist mTokenizer:Lcom/android/internal/alsa/LineTokenizer;


# instance fields
.field private blacklist mCardRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mScanStatus:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetmTokenizer()Lcom/android/internal/alsa/LineTokenizer;
    .locals 1

    sget-object v0, Lcom/android/internal/alsa/AlsaCardsParser;->mTokenizer:Lcom/android/internal/alsa/LineTokenizer;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 2

    .line 38
    new-instance v0, Lcom/android/internal/alsa/LineTokenizer;

    const-string v1, " :[]"

    invoke-direct {v0, v1}, Lcom/android/internal/alsa/LineTokenizer;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/alsa/AlsaCardsParser;->mTokenizer:Lcom/android/internal/alsa/LineTokenizer;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/alsa/AlsaCardsParser;->mCardRecords:Ljava/util/ArrayList;

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/alsa/AlsaCardsParser;->mScanStatus:I

    .line 134
    return-void
.end method

.method private blacklist Log(Ljava/lang/String;)V
    .locals 4
    .param p1, "heading"    # Ljava/lang/String;

    .line 214
    const-string v0, "AlsaCardsParser"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget-object v1, p0, Lcom/android/internal/alsa/AlsaCardsParser;->mCardRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;

    .line 216
    .local v2, "cardRec":Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;
    invoke-virtual {v2}, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->textFormat()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    .end local v2    # "cardRec":Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;
    goto :goto_0

    .line 219
    :cond_0
    return-void
.end method


# virtual methods
.method public blacklist findCardNumFor(Ljava/lang/String;)Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;
    .locals 3
    .param p1, "deviceAddress"    # Ljava/lang/String;

    .line 201
    iget-object v0, p0, Lcom/android/internal/alsa/AlsaCardsParser;->mCardRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;

    .line 202
    .local v1, "cardRec":Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;
    invoke-virtual {v1}, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->isUsb()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->-$$Nest$fgetmUsbDeviceAddress(Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 203
    return-object v1

    .line 205
    .end local v1    # "cardRec":Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;
    :cond_0
    goto :goto_0

    .line 206
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getScanStatus()I
    .locals 1

    .line 197
    iget v0, p0, Lcom/android/internal/alsa/AlsaCardsParser;->mScanStatus:I

    return v0
.end method

.method public blacklist scan()I
    .locals 15

    .line 138
    const-string v0, "  "

    const-string v1, "AlsaCardsParser"

    const-string v2, "AlsaCardsParser.scan()...."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/alsa/AlsaCardsParser;->mCardRecords:Ljava/util/ArrayList;

    .line 143
    new-instance v2, Ljava/io/File;

    const-string v3, "/proc/asound/cards"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 145
    .local v2, "cardsFile":Ljava/io/File;
    const/4 v3, 0x1

    :try_start_0
    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 146
    .local v4, "reader":Ljava/io/FileReader;
    new-instance v5, Ljava/io/BufferedReader;

    invoke-direct {v5, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 147
    .local v5, "bufferedReader":Ljava/io/BufferedReader;
    const-string v6, ""

    .line 148
    .local v6, "line":Ljava/lang/String;
    :goto_0
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    const/4 v8, 0x0

    if-eqz v7, :cond_3

    .line 149
    new-instance v7, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;

    invoke-direct {v7, p0}, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;-><init>(Lcom/android/internal/alsa/AlsaCardsParser;)V

    .line 151
    .local v7, "cardRecord":Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    invoke-static {v7, v6, v8}, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->-$$Nest$mparse(Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;Ljava/lang/String;I)Z

    .line 155
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    move-object v6, v9

    .line 156
    if-nez v6, :cond_0

    .line 157
    goto/16 :goto_1

    .line 160
    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    invoke-static {v7, v6, v3}, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->-$$Nest$mparse(Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;Ljava/lang/String;I)Z

    .line 165
    iget v8, v7, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->mCardNum:I

    .line 166
    .local v8, "cardNum":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "/proc/asound/card"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 167
    .local v9, "cardFolderPath":Ljava/lang/String;
    new-instance v10, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/usbbus"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 168
    .local v10, "usbbusFile":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 170
    new-instance v11, Ljava/io/FileReader;

    invoke-direct {v11, v10}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 171
    .local v11, "usbbusReader":Ljava/io/FileReader;
    new-instance v12, Ljava/io/BufferedReader;

    invoke-direct {v12, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v12}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v12

    .line 172
    .local v12, "deviceAddress":Ljava/lang/String;
    if-eqz v12, :cond_1

    .line 173
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "/dev/bus/usb/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->setDeviceAddress(Ljava/lang/String;)V

    .line 175
    :cond_1
    invoke-virtual {v11}, Ljava/io/FileReader;->close()V

    .line 177
    .end local v11    # "usbbusReader":Ljava/io/FileReader;
    .end local v12    # "deviceAddress":Ljava/lang/String;
    :cond_2
    iget-object v11, p0, Lcom/android/internal/alsa/AlsaCardsParser;->mCardRecords:Ljava/util/ArrayList;

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    nop

    .end local v7    # "cardRecord":Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;
    .end local v8    # "cardNum":I
    .end local v9    # "cardFolderPath":Ljava/lang/String;
    .end local v10    # "usbbusFile":Ljava/io/File;
    goto/16 :goto_0

    .line 179
    :cond_3
    :goto_1
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V

    .line 180
    iget-object v0, p0, Lcom/android/internal/alsa/AlsaCardsParser;->mCardRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 181
    iput v8, p0, Lcom/android/internal/alsa/AlsaCardsParser;->mScanStatus:I

    goto :goto_2

    .line 183
    :cond_4
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/alsa/AlsaCardsParser;->mScanStatus:I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 187
    .end local v4    # "reader":Ljava/io/FileReader;
    .end local v5    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v6    # "line":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 188
    .local v0, "e":Ljava/io/IOException;
    iput v3, p0, Lcom/android/internal/alsa/AlsaCardsParser;->mScanStatus:I

    goto :goto_3

    .line 185
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 186
    .local v0, "e":Ljava/io/FileNotFoundException;
    iput v3, p0, Lcom/android/internal/alsa/AlsaCardsParser;->mScanStatus:I

    .line 189
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :goto_2
    nop

    .line 191
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  status:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/android/internal/alsa/AlsaCardsParser;->mScanStatus:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget v0, p0, Lcom/android/internal/alsa/AlsaCardsParser;->mScanStatus:I

    return v0
.end method
