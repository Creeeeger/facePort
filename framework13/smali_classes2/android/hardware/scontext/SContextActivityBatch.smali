.class public Landroid/hardware/scontext/SContextActivityBatch;
.super Landroid/hardware/scontext/SContextEventContext;
.source "SContextActivityBatch.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/scontext/SContextActivityBatch;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mContext:Landroid/os/Bundle;

.field private blacklist mMode:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 222
    new-instance v0, Landroid/hardware/scontext/SContextActivityBatch$1;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextActivityBatch$1;-><init>()V

    sput-object v0, Landroid/hardware/scontext/SContextActivityBatch;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>()V
    .locals 1

    .line 100
    invoke-direct {p0}, Landroid/hardware/scontext/SContextEventContext;-><init>()V

    .line 101
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextActivityBatch;->mContext:Landroid/os/Bundle;

    .line 102
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/scontext/SContextActivityBatch;->mMode:I

    .line 103
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "src"    # Landroid/os/Parcel;

    .line 108
    invoke-direct {p0}, Landroid/hardware/scontext/SContextEventContext;-><init>()V

    .line 109
    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextActivityBatch;->readFromParcel(Landroid/os/Parcel;)V

    .line 110
    return-void
.end method

.method private blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;

    .line 213
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/scontext/SContextActivityBatch;->mContext:Landroid/os/Bundle;

    .line 214
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/scontext/SContextActivityBatch;->mMode:I

    .line 215
    return-void
.end method


# virtual methods
.method public blacklist getAccuracy()[I
    .locals 2

    .line 167
    iget-object v0, p0, Landroid/hardware/scontext/SContextActivityBatch;->mContext:Landroid/os/Bundle;

    const-string v1, "Accuracy"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public blacklist getMode()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 177
    iget v0, p0, Landroid/hardware/scontext/SContextActivityBatch;->mMode:I

    return v0
.end method

.method public blacklist getMostActivity()I
    .locals 2

    .line 155
    iget-object v0, p0, Landroid/hardware/scontext/SContextActivityBatch;->mContext:Landroid/os/Bundle;

    const-string v1, "MostActivity"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist getStatus()[I
    .locals 2

    .line 146
    iget-object v0, p0, Landroid/hardware/scontext/SContextActivityBatch;->mContext:Landroid/os/Bundle;

    const-string v1, "ActivityType"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public blacklist getTimeStamp()[J
    .locals 8

    .line 118
    const/4 v0, 0x0

    .line 119
    .local v0, "timestamp":[J
    iget v1, p0, Landroid/hardware/scontext/SContextActivityBatch;->mMode:I

    if-nez v1, :cond_2

    .line 120
    iget-object v1, p0, Landroid/hardware/scontext/SContextActivityBatch;->mContext:Landroid/os/Bundle;

    const-string v2, "Count"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 121
    .local v1, "size":I
    iget-object v2, p0, Landroid/hardware/scontext/SContextActivityBatch;->mContext:Landroid/os/Bundle;

    const-string v3, "Duration"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v2

    .line 122
    .local v2, "duration":[J
    new-array v0, v1, [J

    .line 123
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 124
    if-nez v3, :cond_0

    .line 125
    iget-object v4, p0, Landroid/hardware/scontext/SContextActivityBatch;->mContext:Landroid/os/Bundle;

    const-string v5, "TimeStamp"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    aput-wide v4, v0, v3

    goto :goto_1

    .line 127
    :cond_0
    add-int/lit8 v4, v3, -0x1

    aget-wide v4, v0, v4

    add-int/lit8 v6, v3, -0x1

    aget-wide v6, v2, v6

    add-long/2addr v4, v6

    aput-wide v4, v0, v3

    .line 123
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v1    # "size":I
    .end local v2    # "duration":[J
    .end local v3    # "i":I
    :cond_1
    goto :goto_2

    .line 130
    :cond_2
    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 131
    iget-object v1, p0, Landroid/hardware/scontext/SContextActivityBatch;->mContext:Landroid/os/Bundle;

    const-string v2, "TimeStampArray"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v0

    goto :goto_3

    .line 130
    :cond_3
    :goto_2
    nop

    .line 133
    :goto_3
    return-object v0
.end method

.method public blacklist setValues(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "context"    # Landroid/os/Bundle;

    .line 187
    iput-object p1, p0, Landroid/hardware/scontext/SContextActivityBatch;->mContext:Landroid/os/Bundle;

    .line 188
    const-string v0, "Mode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/hardware/scontext/SContextActivityBatch;->mMode:I

    .line 189
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 202
    iget-object v0, p0, Landroid/hardware/scontext/SContextActivityBatch;->mContext:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 203
    iget v0, p0, Landroid/hardware/scontext/SContextActivityBatch;->mMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 204
    return-void
.end method
