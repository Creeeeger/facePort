.class public final Landroid/nfc/Tag;
.super Ljava/lang/Object;
.source "Tag.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/nfc/Tag;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field greylist-max-o mConnectedTechnology:I

.field blacklist mCookie:J

.field final greylist-max-r mId:[B

.field final greylist-max-o mServiceHandle:I

.field final greylist-max-o mTagService:Landroid/nfc/INfcTag;

.field final greylist-max-o mTechExtras:[Landroid/os/Bundle;

.field final greylist-max-o mTechList:[I

.field final greylist-max-o mTechStringList:[Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 454
    new-instance v0, Landroid/nfc/Tag$1;

    invoke-direct {v0}, Landroid/nfc/Tag$1;-><init>()V

    sput-object v0, Landroid/nfc/Tag;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>([B[I[Landroid/os/Bundle;ILandroid/nfc/INfcTag;)V
    .locals 2
    .param p1, "id"    # [B
    .param p2, "techList"    # [I
    .param p3, "techListExtras"    # [Landroid/os/Bundle;
    .param p4, "serviceHandle"    # I
    .param p5, "tagService"    # Landroid/nfc/INfcTag;

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    if-eqz p2, :cond_1

    .line 136
    iput-object p1, p0, Landroid/nfc/Tag;->mId:[B

    .line 137
    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Landroid/nfc/Tag;->mTechList:[I

    .line 138
    invoke-direct {p0, p2}, Landroid/nfc/Tag;->generateTechStringList([I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/nfc/Tag;->mTechStringList:[Ljava/lang/String;

    .line 140
    array-length v0, p2

    invoke-static {p3, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/Bundle;

    iput-object v0, p0, Landroid/nfc/Tag;->mTechExtras:[Landroid/os/Bundle;

    .line 141
    iput p4, p0, Landroid/nfc/Tag;->mServiceHandle:I

    .line 142
    iput-object p5, p0, Landroid/nfc/Tag;->mTagService:Landroid/nfc/INfcTag;

    .line 144
    const/4 v0, -0x1

    iput v0, p0, Landroid/nfc/Tag;->mConnectedTechnology:I

    .line 145
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/nfc/Tag;->mCookie:J

    .line 147
    if-nez p5, :cond_0

    .line 148
    return-void

    .line 152
    :cond_0
    :try_start_0
    invoke-interface {p5, v0, v1}, Landroid/nfc/INfcTag;->setTagUpToDate(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    nop

    .line 156
    return-void

    .line 153
    :catch_0
    move-exception v0

    .line 154
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 134
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "rawTargets cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static greylist-max-o createMockTag([B[I[Landroid/os/Bundle;)Landroid/nfc/Tag;
    .locals 7
    .param p0, "id"    # [B
    .param p1, "techList"    # [I
    .param p2, "techListExtras"    # [Landroid/os/Bundle;

    .line 170
    new-instance v6, Landroid/nfc/Tag;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/nfc/Tag;-><init>([B[I[Landroid/os/Bundle;ILandroid/nfc/INfcTag;)V

    return-object v6
.end method

.method private greylist-max-o generateTechStringList([I)[Ljava/lang/String;
    .locals 6
    .param p1, "techList"    # [I

    .line 174
    array-length v0, p1

    .line 175
    .local v0, "size":I
    new-array v1, v0, [Ljava/lang/String;

    .line 176
    .local v1, "strings":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 177
    aget v3, p1, v2

    packed-switch v3, :pswitch_data_0

    .line 209
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown tech type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, p1, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 206
    :pswitch_0
    const-class v3, Landroid/nfc/tech/NfcBarcode;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 207
    goto :goto_1

    .line 185
    :pswitch_1
    const-class v3, Landroid/nfc/tech/MifareUltralight;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 186
    goto :goto_1

    .line 182
    :pswitch_2
    const-class v3, Landroid/nfc/tech/MifareClassic;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 183
    goto :goto_1

    .line 191
    :pswitch_3
    const-class v3, Landroid/nfc/tech/NdefFormatable;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 192
    goto :goto_1

    .line 188
    :pswitch_4
    const-class v3, Landroid/nfc/tech/Ndef;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 189
    goto :goto_1

    .line 203
    :pswitch_5
    const-class v3, Landroid/nfc/tech/NfcV;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 204
    goto :goto_1

    .line 200
    :pswitch_6
    const-class v3, Landroid/nfc/tech/NfcF;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 201
    goto :goto_1

    .line 179
    :pswitch_7
    const-class v3, Landroid/nfc/tech/IsoDep;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 180
    goto :goto_1

    .line 197
    :pswitch_8
    const-class v3, Landroid/nfc/tech/NfcB;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 198
    goto :goto_1

    .line 194
    :pswitch_9
    const-class v3, Landroid/nfc/tech/NfcA;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 195
    nop

    .line 176
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 212
    .end local v2    # "i":I
    :cond_0
    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
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

.method static greylist-max-o getTechCodesFromStrings([Ljava/lang/String;)[I
    .locals 7
    .param p0, "techStringList"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 216
    if-eqz p0, :cond_2

    .line 219
    array-length v0, p0

    new-array v0, v0, [I

    .line 220
    .local v0, "techIntList":[I
    invoke-static {}, Landroid/nfc/Tag;->getTechStringToCodeMap()Ljava/util/HashMap;

    move-result-object v1

    .line 221
    .local v1, "stringToCodeMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    .line 222
    aget-object v3, p0, v2

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 224
    .local v3, "code":Ljava/lang/Integer;
    if-eqz v3, :cond_0

    .line 228
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v0, v2

    .line 221
    .end local v3    # "code":Ljava/lang/Integer;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 225
    .restart local v3    # "code":Ljava/lang/Integer;
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown tech type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, p0, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 230
    .end local v2    # "i":I
    .end local v3    # "code":Ljava/lang/Integer;
    :cond_1
    return-object v0

    .line 217
    .end local v0    # "techIntList":[I
    .end local v1    # "stringToCodeMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "List cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static greylist-max-o getTechStringToCodeMap()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 234
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 236
    .local v0, "techStringToCodeMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const-class v1, Landroid/nfc/tech/IsoDep;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    const-class v1, Landroid/nfc/tech/MifareClassic;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    const-class v1, Landroid/nfc/tech/MifareUltralight;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    const-class v1, Landroid/nfc/tech/Ndef;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    const-class v1, Landroid/nfc/tech/NdefFormatable;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    const-class v1, Landroid/nfc/tech/NfcA;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    const-class v1, Landroid/nfc/tech/NfcB;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    const-class v1, Landroid/nfc/tech/NfcF;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    const-class v1, Landroid/nfc/tech/NfcV;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    const-class v1, Landroid/nfc/tech/NfcBarcode;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    return-object v0
.end method

.method static greylist-max-o readBytesWithNull(Landroid/os/Parcel;)[B
    .locals 2
    .param p0, "in"    # Landroid/os/Parcel;

    .line 415
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 416
    .local v0, "len":I
    const/4 v1, 0x0

    .line 417
    .local v1, "result":[B
    if-ltz v0, :cond_0

    .line 418
    new-array v1, v0, [B

    .line 419
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->readByteArray([B)V

    .line 421
    :cond_0
    return-object v1
.end method

.method static greylist-max-o writeBytesWithNull(Landroid/os/Parcel;[B)V
    .locals 1
    .param p0, "out"    # Landroid/os/Parcel;
    .param p1, "b"    # [B

    .line 425
    if-nez p1, :cond_0

    .line 426
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 427
    return-void

    .line 429
    :cond_0
    array-length v0, p1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 430
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 431
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 435
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o getConnectedTechnology()I
    .locals 1

    .line 502
    iget v0, p0, Landroid/nfc/Tag;->mConnectedTechnology:I

    return v0
.end method

.method public whitelist getId()[B
    .locals 1

    .line 280
    iget-object v0, p0, Landroid/nfc/Tag;->mId:[B

    return-object v0
.end method

.method public greylist getServiceHandle()I
    .locals 1

    .line 256
    iget v0, p0, Landroid/nfc/Tag;->mServiceHandle:I

    return v0
.end method

.method public greylist getTagService()Landroid/nfc/INfcTag;
    .locals 7

    .line 377
    iget-object v0, p0, Landroid/nfc/Tag;->mTagService:Landroid/nfc/INfcTag;

    if-nez v0, :cond_0

    .line 378
    const/4 v0, 0x0

    return-object v0

    .line 382
    :cond_0
    :try_start_0
    iget-wide v1, p0, Landroid/nfc/Tag;->mCookie:J

    invoke-interface {v0, v1, v2}, Landroid/nfc/INfcTag;->isTagUpToDate(J)Z

    move-result v0

    if-nez v0, :cond_2

    .line 383
    const-string v0, ""

    .line 384
    .local v0, "id_str":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/nfc/Tag;->mId:[B

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 385
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%02X "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Landroid/nfc/Tag;->mId:[B

    aget-byte v6, v6, v1

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 384
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 387
    .end local v1    # "i":I
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission Denial: Tag ( ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is out of date"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 388
    .local v1, "msg":Ljava/lang/String;
    new-instance v2, Ljava/lang/SecurityException;

    invoke-direct {v2, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/nfc/Tag;
    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 392
    .end local v0    # "id_str":Ljava/lang/String;
    .end local v1    # "msg":Ljava/lang/String;
    .restart local p0    # "this":Landroid/nfc/Tag;
    :cond_2
    nop

    .line 393
    iget-object v0, p0, Landroid/nfc/Tag;->mTagService:Landroid/nfc/INfcTag;

    return-object v0

    .line 390
    :catch_0
    move-exception v0

    .line 391
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o getTechCodeList()[I
    .locals 1

    .line 264
    iget-object v0, p0, Landroid/nfc/Tag;->mTechList:[I

    return-object v0
.end method

.method public greylist-max-o getTechExtras(I)Landroid/os/Bundle;
    .locals 4
    .param p1, "tech"    # I

    .line 360
    const/4 v0, -0x1

    .line 361
    .local v0, "pos":I
    const/4 v1, 0x0

    .local v1, "idx":I
    :goto_0
    iget-object v2, p0, Landroid/nfc/Tag;->mTechList:[I

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 362
    aget v2, v2, v1

    if-ne v2, p1, :cond_0

    .line 363
    move v0, v1

    .line 364
    goto :goto_1

    .line 361
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 367
    .end local v1    # "idx":I
    :cond_1
    :goto_1
    if-gez v0, :cond_2

    .line 368
    const/4 v1, 0x0

    return-object v1

    .line 371
    :cond_2
    iget-object v1, p0, Landroid/nfc/Tag;->mTechExtras:[Landroid/os/Bundle;

    aget-object v1, v1, v0

    return-object v1
.end method

.method public whitelist getTechList()[Ljava/lang/String;
    .locals 1

    .line 300
    iget-object v0, p0, Landroid/nfc/Tag;->mTechStringList:[Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o hasTech(I)Z
    .locals 5
    .param p1, "techType"    # I

    .line 352
    iget-object v0, p0, Landroid/nfc/Tag;->mTechList:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget v4, v0, v3

    .line 353
    .local v4, "tech":I
    if-ne v4, p1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 352
    .end local v4    # "tech":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 355
    :cond_1
    return v2
.end method

.method public greylist-max-o rediscover()Landroid/nfc/Tag;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 330
    invoke-virtual {p0}, Landroid/nfc/Tag;->getConnectedTechnology()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 334
    iget-object v0, p0, Landroid/nfc/Tag;->mTagService:Landroid/nfc/INfcTag;

    if-eqz v0, :cond_1

    .line 338
    :try_start_0
    invoke-virtual {p0}, Landroid/nfc/Tag;->getServiceHandle()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/nfc/INfcTag;->rediscover(I)Landroid/nfc/Tag;

    move-result-object v0

    .line 339
    .local v0, "newTag":Landroid/nfc/Tag;
    if-eqz v0, :cond_0

    .line 340
    return-object v0

    .line 342
    :cond_0
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Failed to rediscover tag"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/nfc/Tag;
    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 344
    .end local v0    # "newTag":Landroid/nfc/Tag;
    .restart local p0    # "this":Landroid/nfc/Tag;
    :catch_0
    move-exception v0

    .line 345
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/io/IOException;

    const-string v2, "NFC service dead"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 335
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Mock tags don\'t support this operation."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 331
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Close connection to the technology first!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized blacklist setConnectedTechnology(I)Z
    .locals 2
    .param p1, "technology"    # I

    monitor-enter p0

    .line 489
    :try_start_0
    iget v0, p0, Landroid/nfc/Tag;->mConnectedTechnology:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 490
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 492
    :cond_0
    :try_start_1
    iput p1, p0, Landroid/nfc/Tag;->mConnectedTechnology:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 493
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 488
    .end local p0    # "this":Landroid/nfc/Tag;
    .end local p1    # "technology":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public greylist-max-o setTechnologyDisconnected()V
    .locals 1

    .line 511
    const/4 v0, -0x1

    iput v0, p0, Landroid/nfc/Tag;->mConnectedTechnology:I

    .line 512
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 5

    .line 401
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TAG: Tech ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 402
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Landroid/nfc/Tag;->getTechList()[Ljava/lang/String;

    move-result-object v1

    .line 403
    .local v1, "techList":[Ljava/lang/String;
    array-length v2, v1

    .line 404
    .local v2, "length":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 405
    aget-object v4, v1, v3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    add-int/lit8 v4, v2, -0x1

    if-ge v3, v4, :cond_0

    .line 407
    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 410
    .end local v3    # "i":I
    :cond_1
    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 441
    iget-object v0, p0, Landroid/nfc/Tag;->mTagService:Landroid/nfc/INfcTag;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 443
    .local v0, "isMock":I
    :goto_0
    iget-object v2, p0, Landroid/nfc/Tag;->mId:[B

    invoke-static {p1, v2}, Landroid/nfc/Tag;->writeBytesWithNull(Landroid/os/Parcel;[B)V

    .line 444
    iget-object v2, p0, Landroid/nfc/Tag;->mTechList:[I

    array-length v2, v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 445
    iget-object v2, p0, Landroid/nfc/Tag;->mTechList:[I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 446
    iget-object v2, p0, Landroid/nfc/Tag;->mTechExtras:[Landroid/os/Bundle;

    invoke-virtual {p1, v2, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 447
    iget v1, p0, Landroid/nfc/Tag;->mServiceHandle:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 448
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 449
    if-nez v0, :cond_1

    .line 450
    iget-object v1, p0, Landroid/nfc/Tag;->mTagService:Landroid/nfc/INfcTag;

    invoke-interface {v1}, Landroid/nfc/INfcTag;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 452
    :cond_1
    return-void
.end method
