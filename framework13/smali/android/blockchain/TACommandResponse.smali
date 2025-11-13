.class public Landroid/blockchain/TACommandResponse;
.super Ljava/lang/Object;
.source "TACommandResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/blockchain/TACommandResponse;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "TACommandResponse"


# instance fields
.field public blacklist mErrorMsg:Ljava/lang/String;

.field public blacklist mResponse:[B

.field public blacklist mResponseCode:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 48
    new-instance v0, Landroid/blockchain/TACommandResponse$1;

    invoke-direct {v0}, Landroid/blockchain/TACommandResponse$1;-><init>()V

    sput-object v0, Landroid/blockchain/TACommandResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, -0x1

    iput v0, p0, Landroid/blockchain/TACommandResponse;->mResponseCode:I

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/blockchain/TACommandResponse;->mErrorMsg:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Landroid/blockchain/TACommandResponse;->mResponse:[B

    .line 34
    return-void
.end method

.method public constructor blacklist <init>(ILjava/lang/String;[B)V
    .locals 1
    .param p1, "responseId"    # I
    .param p2, "errorMsg"    # Ljava/lang/String;
    .param p3, "response"    # [B

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, -0x1

    iput v0, p0, Landroid/blockchain/TACommandResponse;->mResponseCode:I

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/blockchain/TACommandResponse;->mErrorMsg:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Landroid/blockchain/TACommandResponse;->mResponse:[B

    .line 42
    iput p1, p0, Landroid/blockchain/TACommandResponse;->mResponseCode:I

    .line 43
    iput-object p2, p0, Landroid/blockchain/TACommandResponse;->mErrorMsg:Ljava/lang/String;

    .line 44
    iput-object p3, p0, Landroid/blockchain/TACommandResponse;->mResponse:[B

    .line 45
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, -0x1

    iput v0, p0, Landroid/blockchain/TACommandResponse;->mResponseCode:I

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/blockchain/TACommandResponse;->mErrorMsg:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Landroid/blockchain/TACommandResponse;->mResponse:[B

    .line 61
    invoke-virtual {p0, p1}, Landroid/blockchain/TACommandResponse;->readFromParcel(Landroid/os/Parcel;)V

    .line 62
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/blockchain/TACommandResponse-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/blockchain/TACommandResponse;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist dump()V
    .locals 6

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Length = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/blockchain/TACommandResponse;->mResponse:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TACommandResponse"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/blockchain/TACommandResponse;->mResponse:[B

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x3

    add-int/lit8 v2, v2, 0x64

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 92
    .local v0, "hex":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Landroid/blockchain/TACommandResponse;->mResponse:[B

    array-length v4, v3

    const/4 v5, 0x0

    if-ge v2, v4, :cond_1

    .line 93
    if-lez v2, :cond_0

    aget-byte v4, v3, v2

    if-eqz v4, :cond_0

    add-int/lit8 v4, v2, -0x1

    aget-byte v3, v3, v4

    if-nez v3, :cond_0

    .line 94
    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    :cond_0
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Landroid/blockchain/TACommandResponse;->mResponse:[B

    aget-byte v4, v4, v2

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v3, v5

    const-string v4, "%02X "

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 98
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    const/4 v1, 0x0

    .line 101
    .local v1, "outFile":Ljava/io/FileWriter;
    const/4 v2, 0x0

    .line 103
    .local v2, "bw":Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v3, Ljava/io/FileWriter;

    const-string v4, "/mnt/sdcard/respbuf.txt"

    invoke-direct {v3, v4, v5}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    move-object v1, v3

    .line 104
    new-instance v3, Ljava/io/BufferedWriter;

    invoke-direct {v3, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    move-object v2, v3

    .line 105
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    nop

    .line 111
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    .line 113
    nop

    .line 114
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 120
    :cond_2
    :goto_1
    goto :goto_2

    .line 118
    :catch_0
    move-exception v3

    .line 119
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 121
    .end local v3    # "e":Ljava/lang/Exception;
    goto :goto_2

    .line 116
    :catch_1
    move-exception v3

    .line 117
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 109
    :catchall_0
    move-exception v3

    goto :goto_3

    .line 106
    :catch_2
    move-exception v3

    .line 107
    .local v3, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 110
    .end local v3    # "e":Ljava/lang/Exception;
    if-eqz v2, :cond_3

    .line 111
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    .line 113
    :cond_3
    if-eqz v1, :cond_2

    .line 114
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 122
    :goto_2
    return-void

    .line 110
    :goto_3
    if-eqz v2, :cond_4

    .line 111
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    goto :goto_4

    .line 118
    :catch_3
    move-exception v4

    goto :goto_5

    .line 116
    :catch_4
    move-exception v4

    goto :goto_6

    .line 113
    :cond_4
    :goto_4
    if-eqz v1, :cond_5

    .line 114
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_7

    .line 119
    .local v4, "e":Ljava/lang/Exception;
    :goto_5
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8

    .line 117
    .local v4, "e":Ljava/io/IOException;
    :goto_6
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 120
    .end local v4    # "e":Ljava/io/IOException;
    :cond_5
    :goto_7
    nop

    .line 121
    :goto_8
    throw v3
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/blockchain/TACommandResponse;->mResponseCode:I

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/blockchain/TACommandResponse;->mErrorMsg:Ljava/lang/String;

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 78
    .local v0, "len":I
    new-array v1, v0, [B

    iput-object v1, p0, Landroid/blockchain/TACommandResponse;->mResponse:[B

    .line 79
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readByteArray([B)V

    .line 80
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flag"    # I

    .line 67
    iget v0, p0, Landroid/blockchain/TACommandResponse;->mResponseCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 68
    iget-object v0, p0, Landroid/blockchain/TACommandResponse;->mErrorMsg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Landroid/blockchain/TACommandResponse;->mResponse:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 70
    iget-object v0, p0, Landroid/blockchain/TACommandResponse;->mResponse:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 71
    return-void
.end method
