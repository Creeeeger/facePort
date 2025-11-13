.class public Landroid/blockchain/TACommandRequest;
.super Ljava/lang/Object;
.source "TACommandRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/blockchain/TACommandRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist DEBUG:Z = false

.field public static final blacklist HEADER_SIZE:I = 0x64

.field public static final blacklist MAX_BUFFER_SIZE:I = 0x500000

.field public static final blacklist MAX_DATA_TRANSACTION_SIZE:I = 0xc00

.field public static final blacklist PAYLOAD_SIZE:I = 0xb9c

.field private static final blacklist TAG:Ljava/lang/String; = "TACommandRequest"


# instance fields
.field public blacklist mCommandId:I

.field public blacklist mLength:I

.field public blacklist mMagicNum:[B

.field public blacklist mOffset:I

.field public blacklist mRequest:[B

.field public blacklist mVersion:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 25
    const/4 v0, 0x1

    sput-boolean v0, Landroid/blockchain/TACommandRequest;->DEBUG:Z

    .line 75
    new-instance v0, Landroid/blockchain/TACommandRequest$1;

    invoke-direct {v0}, Landroid/blockchain/TACommandRequest$1;-><init>()V

    sput-object v0, Landroid/blockchain/TACommandRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 3

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Landroid/blockchain/TACommandRequest;->mVersion:I

    .line 40
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/blockchain/TACommandRequest;->mMagicNum:[B

    .line 42
    const/4 v2, 0x0

    iput v2, p0, Landroid/blockchain/TACommandRequest;->mLength:I

    .line 43
    iput v2, p0, Landroid/blockchain/TACommandRequest;->mOffset:I

    .line 45
    iput v0, p0, Landroid/blockchain/TACommandRequest;->mCommandId:I

    .line 46
    iput-object v1, p0, Landroid/blockchain/TACommandRequest;->mRequest:[B

    .line 54
    return-void
.end method

.method private constructor blacklist <init>(I[BIII[B)V
    .locals 3
    .param p1, "_version"    # I
    .param p2, "_magicNum"    # [B
    .param p3, "_commandId"    # I
    .param p4, "_length"    # I
    .param p5, "_offset"    # I
    .param p6, "_requestPayload"    # [B

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Landroid/blockchain/TACommandRequest;->mVersion:I

    .line 40
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/blockchain/TACommandRequest;->mMagicNum:[B

    .line 42
    const/4 v2, 0x0

    iput v2, p0, Landroid/blockchain/TACommandRequest;->mLength:I

    .line 43
    iput v2, p0, Landroid/blockchain/TACommandRequest;->mOffset:I

    .line 45
    iput v0, p0, Landroid/blockchain/TACommandRequest;->mCommandId:I

    .line 46
    iput-object v1, p0, Landroid/blockchain/TACommandRequest;->mRequest:[B

    .line 135
    iput p1, p0, Landroid/blockchain/TACommandRequest;->mVersion:I

    .line 136
    iput-object p2, p0, Landroid/blockchain/TACommandRequest;->mMagicNum:[B

    .line 137
    iput p3, p0, Landroid/blockchain/TACommandRequest;->mCommandId:I

    .line 138
    iput p4, p0, Landroid/blockchain/TACommandRequest;->mLength:I

    .line 139
    iput p5, p0, Landroid/blockchain/TACommandRequest;->mOffset:I

    .line 140
    iput-object p6, p0, Landroid/blockchain/TACommandRequest;->mRequest:[B

    .line 141
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Landroid/blockchain/TACommandRequest;->mVersion:I

    .line 40
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/blockchain/TACommandRequest;->mMagicNum:[B

    .line 42
    const/4 v2, 0x0

    iput v2, p0, Landroid/blockchain/TACommandRequest;->mLength:I

    .line 43
    iput v2, p0, Landroid/blockchain/TACommandRequest;->mOffset:I

    .line 45
    iput v0, p0, Landroid/blockchain/TACommandRequest;->mCommandId:I

    .line 46
    iput-object v1, p0, Landroid/blockchain/TACommandRequest;->mRequest:[B

    .line 88
    invoke-virtual {p0, p1}, Landroid/blockchain/TACommandRequest;->readFromParcel(Landroid/os/Parcel;)V

    .line 89
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/blockchain/TACommandRequest-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/blockchain/TACommandRequest;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 130
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist disassemble()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/blockchain/TACommandRequest;",
            ">;"
        }
    .end annotation

    .line 157
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 158
    .local v0, "arr":Ljava/util/List;, "Ljava/util/List<Landroid/blockchain/TACommandRequest;>;"
    iget-object v1, p0, Landroid/blockchain/TACommandRequest;->mRequest:[B

    if-nez v1, :cond_0

    .line 159
    const/4 v1, 0x0

    return-object v1

    .line 162
    :cond_0
    array-length v1, v1

    const-string v2, "TACommandRequest"

    const/16 v3, 0xb9c

    if-gt v1, v3, :cond_2

    .line 163
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    sget-boolean v1, Landroid/blockchain/TACommandRequest;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 165
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "no need to divide the mRequest, len="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/blockchain/TACommandRequest;->mRequest:[B

    array-length v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_1
    return-object v0

    .line 170
    :cond_2
    sget-boolean v1, Landroid/blockchain/TACommandRequest;->DEBUG:Z

    if-eqz v1, :cond_3

    .line 171
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dividing the mRequest, len="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/blockchain/TACommandRequest;->mRequest:[B

    array-length v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :cond_3
    const/4 v1, 0x0

    .line 175
    .local v1, "offset":I
    :goto_0
    add-int/lit16 v3, v1, 0xb9c

    iget v4, p0, Landroid/blockchain/TACommandRequest;->mLength:I

    const-string v10, " to "

    const-string v11, "generating the chunk from "

    if-ge v3, v4, :cond_5

    .line 176
    sget-boolean v3, Landroid/blockchain/TACommandRequest;->DEBUG:Z

    if-eqz v3, :cond_4

    .line 177
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit16 v4, v1, 0xb9c

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :cond_4
    new-instance v10, Landroid/blockchain/TACommandRequest;

    iget v4, p0, Landroid/blockchain/TACommandRequest;->mVersion:I

    iget-object v5, p0, Landroid/blockchain/TACommandRequest;->mMagicNum:[B

    iget v6, p0, Landroid/blockchain/TACommandRequest;->mCommandId:I

    iget v7, p0, Landroid/blockchain/TACommandRequest;->mLength:I

    iget-object v3, p0, Landroid/blockchain/TACommandRequest;->mRequest:[B

    add-int/lit16 v8, v1, 0xb9c

    .line 180
    invoke-static {v3, v1, v8}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v9

    move-object v3, v10

    move v8, v1

    invoke-direct/range {v3 .. v9}, Landroid/blockchain/TACommandRequest;-><init>(I[BIII[B)V

    .line 179
    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    add-int/lit16 v1, v1, 0xb9c

    goto :goto_0

    .line 184
    :cond_5
    new-instance v12, Landroid/blockchain/TACommandRequest;

    iget v4, p0, Landroid/blockchain/TACommandRequest;->mVersion:I

    iget-object v5, p0, Landroid/blockchain/TACommandRequest;->mMagicNum:[B

    iget v6, p0, Landroid/blockchain/TACommandRequest;->mCommandId:I

    iget v7, p0, Landroid/blockchain/TACommandRequest;->mLength:I

    iget-object v3, p0, Landroid/blockchain/TACommandRequest;->mRequest:[B

    .line 185
    invoke-static {v3, v1, v7}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v9

    move-object v3, v12

    move v8, v1

    invoke-direct/range {v3 .. v9}, Landroid/blockchain/TACommandRequest;-><init>(I[BIII[B)V

    .line 184
    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    sget-boolean v3, Landroid/blockchain/TACommandRequest;->DEBUG:Z

    if-eqz v3, :cond_6

    .line 187
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/blockchain/TACommandRequest;->mLength:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :cond_6
    return-object v0
.end method

.method public blacklist dump()V
    .locals 6

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Command ID = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/blockchain/TACommandRequest;->mCommandId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TACommandRequest"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Length = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/blockchain/TACommandRequest;->mRequest:[B

    array-length v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/blockchain/TACommandRequest;->mRequest:[B

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x64

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 197
    .local v0, "hex":Ljava/lang/StringBuilder;
    const-string/jumbo v2, "{"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Landroid/blockchain/TACommandRequest;->mRequest:[B

    array-length v4, v3

    const/4 v5, 0x0

    if-ge v2, v4, :cond_1

    .line 199
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aget-byte v3, v3, v2

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v4, v5

    const-string v3, "0x%02X"

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    iget-object v3, p0, Landroid/blockchain/TACommandRequest;->mRequest:[B

    array-length v3, v3

    if-eq v2, v3, :cond_0

    .line 201
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 203
    .end local v2    # "i":I
    :cond_1
    const-string/jumbo v2, "}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    const/4 v1, 0x0

    .line 207
    .local v1, "outFile":Ljava/io/FileWriter;
    const/4 v2, 0x0

    .line 209
    .local v2, "bw":Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v3, Ljava/io/FileWriter;

    const-string v4, "/mnt/sdcard/sendbuf.txt"

    invoke-direct {v3, v4, v5}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    move-object v1, v3

    .line 210
    new-instance v3, Ljava/io/BufferedWriter;

    invoke-direct {v3, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    move-object v2, v3

    .line 211
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    nop

    .line 217
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    .line 219
    nop

    .line 220
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 226
    :cond_2
    :goto_1
    goto :goto_2

    .line 224
    :catch_0
    move-exception v3

    .line 225
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 227
    .end local v3    # "e":Ljava/lang/Exception;
    goto :goto_2

    .line 222
    :catch_1
    move-exception v3

    .line 223
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 215
    :catchall_0
    move-exception v3

    goto :goto_3

    .line 212
    :catch_2
    move-exception v3

    .line 213
    .local v3, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 216
    .end local v3    # "e":Ljava/lang/Exception;
    if-eqz v2, :cond_3

    .line 217
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    .line 219
    :cond_3
    if-eqz v1, :cond_2

    .line 220
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 228
    :goto_2
    return-void

    .line 216
    :goto_3
    if-eqz v2, :cond_4

    .line 217
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    goto :goto_4

    .line 224
    :catch_3
    move-exception v4

    goto :goto_5

    .line 222
    :catch_4
    move-exception v4

    goto :goto_6

    .line 219
    :cond_4
    :goto_4
    if-eqz v1, :cond_5

    .line 220
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_7

    .line 225
    .local v4, "e":Ljava/lang/Exception;
    :goto_5
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8

    .line 223
    .local v4, "e":Ljava/io/IOException;
    :goto_6
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 226
    .end local v4    # "e":Ljava/io/IOException;
    :cond_5
    :goto_7
    nop

    .line 227
    :goto_8
    throw v3
.end method

.method public blacklist getChunkOffset()I
    .locals 1

    .line 148
    iget v0, p0, Landroid/blockchain/TACommandRequest;->mOffset:I

    return v0
.end method

.method public blacklist getPayload()[B
    .locals 1

    .line 152
    iget-object v0, p0, Landroid/blockchain/TACommandRequest;->mRequest:[B

    return-object v0
.end method

.method public blacklist getTotalLength()I
    .locals 1

    .line 144
    iget v0, p0, Landroid/blockchain/TACommandRequest;->mLength:I

    return v0
.end method

.method public blacklist init(I[BI[B)V
    .locals 2
    .param p1, "version"    # I
    .param p2, "magic"    # [B
    .param p3, "cmdId"    # I
    .param p4, "request"    # [B

    .line 62
    iput p1, p0, Landroid/blockchain/TACommandRequest;->mVersion:I

    .line 63
    iput-object p2, p0, Landroid/blockchain/TACommandRequest;->mMagicNum:[B

    .line 64
    iput p3, p0, Landroid/blockchain/TACommandRequest;->mCommandId:I

    .line 65
    iput-object p4, p0, Landroid/blockchain/TACommandRequest;->mRequest:[B

    .line 66
    const/4 v0, 0x0

    if-eqz p4, :cond_0

    .line 67
    array-length v1, p4

    iput v1, p0, Landroid/blockchain/TACommandRequest;->mLength:I

    goto :goto_0

    .line 69
    :cond_0
    iput v0, p0, Landroid/blockchain/TACommandRequest;->mLength:I

    .line 71
    :goto_0
    iput v0, p0, Landroid/blockchain/TACommandRequest;->mOffset:I

    .line 72
    return-void
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/blockchain/TACommandRequest;->mVersion:I

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 112
    .local v0, "len":I
    if-lez v0, :cond_0

    .line 113
    new-array v1, v0, [B

    iput-object v1, p0, Landroid/blockchain/TACommandRequest;->mMagicNum:[B

    .line 114
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readByteArray([B)V

    .line 117
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/blockchain/TACommandRequest;->mCommandId:I

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/blockchain/TACommandRequest;->mLength:I

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/blockchain/TACommandRequest;->mOffset:I

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 121
    if-lez v0, :cond_1

    .line 122
    new-array v1, v0, [B

    iput-object v1, p0, Landroid/blockchain/TACommandRequest;->mRequest:[B

    .line 123
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readByteArray([B)V

    .line 125
    :cond_1
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flag"    # I

    .line 93
    iget v0, p0, Landroid/blockchain/TACommandRequest;->mVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    iget-object v0, p0, Landroid/blockchain/TACommandRequest;->mMagicNum:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    iget-object v0, p0, Landroid/blockchain/TACommandRequest;->mMagicNum:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 97
    iget v0, p0, Landroid/blockchain/TACommandRequest;->mCommandId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    iget v0, p0, Landroid/blockchain/TACommandRequest;->mLength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 99
    iget v0, p0, Landroid/blockchain/TACommandRequest;->mOffset:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    iget-object v0, p0, Landroid/blockchain/TACommandRequest;->mRequest:[B

    if-eqz v0, :cond_1

    array-length v1, v0

    if-nez v1, :cond_0

    goto :goto_0

    .line 104
    :cond_0
    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    iget-object v0, p0, Landroid/blockchain/TACommandRequest;->mRequest:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 106
    return-void

    .line 101
    :cond_1
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    return-void
.end method
