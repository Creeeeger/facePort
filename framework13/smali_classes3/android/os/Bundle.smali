.class public final Landroid/os/Bundle;
.super Landroid/os/BaseBundle;
.source "Bundle.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist EMPTY:Landroid/os/Bundle;

.field static final greylist-max-o FLAG_ALLOW_FDS:I = 0x400

.field static final greylist-max-o FLAG_HAS_FDS:I = 0x100

.field static final greylist-max-o FLAG_HAS_FDS_KNOWN:I = 0x200

.field public static final greylist-max-o STRIPPED:Landroid/os/Bundle;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 3

    .line 65
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sput-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    .line 66
    sget-object v1, Landroid/util/ArrayMap;->EMPTY:Landroid/util/ArrayMap;

    iput-object v1, v0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    .line 68
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sput-object v0, Landroid/os/Bundle;->STRIPPED:Landroid/os/Bundle;

    .line 69
    const-string v1, "STRIPPED"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1328
    new-instance v0, Landroid/os/Bundle$1;

    invoke-direct {v0}, Landroid/os/Bundle$1;-><init>()V

    sput-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 1

    .line 76
    invoke-direct {p0}, Landroid/os/BaseBundle;-><init>()V

    .line 77
    const/16 v0, 0x600

    iput v0, p0, Landroid/os/Bundle;->mFlags:I

    .line 78
    return-void
.end method

.method public constructor whitelist <init>(I)V
    .locals 1
    .param p1, "capacity"    # I

    .line 155
    invoke-direct {p0, p1}, Landroid/os/BaseBundle;-><init>(I)V

    .line 156
    const/16 v0, 0x600

    iput v0, p0, Landroid/os/Bundle;->mFlags:I

    .line 157
    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "b"    # Landroid/os/Bundle;

    .line 169
    invoke-direct {p0, p1}, Landroid/os/BaseBundle;-><init>(Landroid/os/BaseBundle;)V

    .line 170
    iget v0, p1, Landroid/os/Bundle;->mFlags:I

    iput v0, p0, Landroid/os/Bundle;->mFlags:I

    .line 171
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Bundle;Z)V
    .locals 0
    .param p1, "from"    # Landroid/os/Bundle;
    .param p2, "deep"    # Z

    .line 117
    invoke-direct {p0, p1, p2}, Landroid/os/BaseBundle;-><init>(Landroid/os/BaseBundle;Z)V

    .line 118
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "parcelledData"    # Landroid/os/Parcel;

    .line 90
    invoke-direct {p0, p1}, Landroid/os/BaseBundle;-><init>(Landroid/os/Parcel;)V

    .line 91
    const/16 v0, 0x400

    iput v0, p0, Landroid/os/Bundle;->mFlags:I

    .line 92
    invoke-direct {p0}, Landroid/os/Bundle;->maybePrefillHasFds()V

    .line 93
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcelledData"    # Landroid/os/Parcel;
    .param p2, "length"    # I

    .line 103
    invoke-direct {p0, p1, p2}, Landroid/os/BaseBundle;-><init>(Landroid/os/Parcel;I)V

    .line 104
    const/16 v0, 0x400

    iput v0, p0, Landroid/os/Bundle;->mFlags:I

    .line 105
    invoke-direct {p0}, Landroid/os/Bundle;->maybePrefillHasFds()V

    .line 106
    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/PersistableBundle;)V
    .locals 1
    .param p1, "b"    # Landroid/os/PersistableBundle;

    .line 181
    invoke-direct {p0, p1}, Landroid/os/BaseBundle;-><init>(Landroid/os/BaseBundle;)V

    .line 182
    const/16 v0, 0x600

    iput v0, p0, Landroid/os/Bundle;->mFlags:I

    .line 183
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/ClassLoader;)V
    .locals 1
    .param p1, "loader"    # Ljava/lang/ClassLoader;

    .line 144
    invoke-direct {p0, p1}, Landroid/os/BaseBundle;-><init>(Ljava/lang/ClassLoader;)V

    .line 145
    const/16 v0, 0x600

    iput v0, p0, Landroid/os/Bundle;->mFlags:I

    .line 146
    return-void
.end method

.method public static greylist-max-r forPair(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .line 192
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 193
    .local v0, "b":Landroid/os/Bundle;
    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    return-object v0
.end method

.method private greylist-max-o maybePrefillHasFds()V
    .locals 1

    .line 127
    iget-object v0, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    if-eqz v0, :cond_1

    .line 128
    iget-object v0, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->hasFileDescriptors()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    iget v0, p0, Landroid/os/Bundle;->mFlags:I

    or-int/lit16 v0, v0, 0x300

    iput v0, p0, Landroid/os/Bundle;->mFlags:I

    goto :goto_0

    .line 131
    :cond_0
    iget v0, p0, Landroid/os/Bundle;->mFlags:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Landroid/os/Bundle;->mFlags:I

    .line 134
    :cond_1
    :goto_0
    return-void
.end method

.method public static greylist setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;
    .locals 0
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "defusable"    # Z

    .line 249
    if-eqz p0, :cond_0

    .line 250
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->setDefusable(Z)V

    .line 252
    :cond_0
    return-object p0
.end method


# virtual methods
.method public whitelist clear()V
    .locals 1

    .line 280
    invoke-super {p0}, Landroid/os/BaseBundle;->clear()V

    .line 281
    const/16 v0, 0x600

    iput v0, p0, Landroid/os/Bundle;->mFlags:I

    .line 282
    return-void
.end method

.method public whitelist test-api clone()Ljava/lang/Object;
    .locals 1

    .line 261
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public whitelist deepCopy()Landroid/os/Bundle;
    .locals 2

    .line 272
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;Z)V

    return-object v0
.end method

.method public whitelist describeContents()I
    .locals 2

    .line 1346
    const/4 v0, 0x0

    .line 1347
    .local v0, "mask":I
    invoke-virtual {p0}, Landroid/os/Bundle;->hasFileDescriptors()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1348
    or-int/lit8 v0, v0, 0x1

    .line 1350
    :cond_0
    return v0
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 5
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 1412
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 1414
    .local v0, "token":J
    iget-object v2, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    if-eqz v2, :cond_1

    .line 1415
    invoke-virtual {p0}, Landroid/os/Bundle;->isEmptyParcel()Z

    move-result v2

    const-wide v3, 0x10500000001L

    if-eqz v2, :cond_0

    .line 1416
    const/4 v2, 0x0

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_0

    .line 1418
    :cond_0
    iget-object v2, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->dataSize()I

    move-result v2

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_0

    .line 1421
    :cond_1
    const-wide v2, 0x10900000002L

    iget-object v4, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1424
    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1425
    return-void
.end method

.method public whitelist getBinder(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .line 1287
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 1288
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1289
    .local v0, "o":Ljava/lang/Object;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1290
    return-object v1

    .line 1293
    :cond_0
    :try_start_0
    move-object v2, v0

    check-cast v2, Landroid/os/IBinder;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 1294
    :catch_0
    move-exception v2

    .line 1295
    .local v2, "e":Ljava/lang/ClassCastException;
    const-string v3, "IBinder"

    invoke-virtual {p0, p1, v0, v3, v2}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/RuntimeException;)V

    .line 1296
    return-object v1
.end method

.method public whitelist getBundle(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .line 881
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 882
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 883
    .local v0, "o":Ljava/lang/Object;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 884
    return-object v1

    .line 887
    :cond_0
    :try_start_0
    move-object v2, v0

    check-cast v2, Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 888
    :catch_0
    move-exception v2

    .line 889
    .local v2, "e":Ljava/lang/ClassCastException;
    const-string v3, "Bundle"

    invoke-virtual {p0, p1, v0, v3, v2}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/RuntimeException;)V

    .line 890
    return-object v1
.end method

.method public whitelist getByte(Ljava/lang/String;)B
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 710
    invoke-super {p0, p1}, Landroid/os/BaseBundle;->getByte(Ljava/lang/String;)B

    move-result v0

    return v0
.end method

.method public whitelist getByte(Ljava/lang/String;B)Ljava/lang/Byte;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # B

    .line 723
    invoke-super {p0, p1, p2}, Landroid/os/BaseBundle;->getByte(Ljava/lang/String;B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getByteArray(Ljava/lang/String;)[B
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 1218
    invoke-super {p0, p1}, Landroid/os/BaseBundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public whitelist getChar(Ljava/lang/String;)C
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 735
    invoke-super {p0, p1}, Landroid/os/BaseBundle;->getChar(Ljava/lang/String;)C

    move-result v0

    return v0
.end method

.method public whitelist getChar(Ljava/lang/String;C)C
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # C

    .line 748
    invoke-super {p0, p1, p2}, Landroid/os/BaseBundle;->getChar(Ljava/lang/String;C)C

    move-result v0

    return v0
.end method

.method public whitelist getCharArray(Ljava/lang/String;)[C
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 1246
    invoke-super {p0, p1}, Landroid/os/BaseBundle;->getCharArray(Ljava/lang/String;)[C

    move-result-object v0

    return-object v0
.end method

.method public whitelist getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 812
    invoke-super {p0, p1}, Landroid/os/BaseBundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/CharSequence;

    .line 828
    invoke-super {p0, p1, p2}, Landroid/os/BaseBundle;->getCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 1274
    invoke-super {p0, p1}, Landroid/os/BaseBundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getCharSequenceArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 1204
    invoke-super {p0, p1}, Landroid/os/BaseBundle;->getCharSequenceArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .line 213
    invoke-super {p0}, Landroid/os/BaseBundle;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getFloat(Ljava/lang/String;)F
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 785
    invoke-super {p0, p1}, Landroid/os/BaseBundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public whitelist getFloat(Ljava/lang/String;F)F
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # F

    .line 798
    invoke-super {p0, p1, p2}, Landroid/os/BaseBundle;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public whitelist getFloatArray(Ljava/lang/String;)[F
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 1260
    invoke-super {p0, p1}, Landroid/os/BaseBundle;->getFloatArray(Ljava/lang/String;)[F

    move-result-object v0

    return-object v0
.end method

.method public greylist getIBinder(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1315
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 1316
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1317
    .local v0, "o":Ljava/lang/Object;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1318
    return-object v1

    .line 1321
    :cond_0
    :try_start_0
    move-object v2, v0

    check-cast v2, Landroid/os/IBinder;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 1322
    :catch_0
    move-exception v2

    .line 1323
    .local v2, "e":Ljava/lang/ClassCastException;
    const-string v3, "IBinder"

    invoke-virtual {p0, p1, v0, v3, v2}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/RuntimeException;)V

    .line 1324
    return-object v1
.end method

.method public whitelist getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1176
    invoke-super {p0, p1}, Landroid/os/BaseBundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 912
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 913
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 914
    .local v0, "o":Ljava/lang/Object;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 915
    return-object v1

    .line 918
    :cond_0
    :try_start_0
    move-object v2, v0

    check-cast v2, Landroid/os/Parcelable;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 919
    :catch_0
    move-exception v2

    .line 920
    .local v2, "e":Ljava/lang/ClassCastException;
    const-string v3, "Parcelable"

    invoke-virtual {p0, p1, v0, v3, v2}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/RuntimeException;)V

    .line 921
    return-object v1
.end method

.method public whitelist getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 947
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 968
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 969
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 970
    .local v0, "o":Ljava/lang/Object;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 971
    return-object v1

    .line 974
    :cond_0
    :try_start_0
    move-object v2, v0

    check-cast v2, [Landroid/os/Parcelable;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 975
    :catch_0
    move-exception v2

    .line 976
    .local v2, "e":Ljava/lang/ClassCastException;
    const-string v3, "Parcelable[]"

    invoke-virtual {p0, p1, v0, v3, v2}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/RuntimeException;)V

    .line 977
    return-object v1
.end method

.method public whitelist getParcelableArray(Ljava/lang/String;Ljava/lang/Class;)[Ljava/lang/Object;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)[TT;"
        }
    .end annotation

    .line 1004
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 1007
    :try_start_0
    const-class v0, [Landroid/os/Parcelable;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    aput-object v3, v1, v2

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Bundle;->getValue(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/BadTypeParcelableException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1008
    :catch_0
    move-exception v0

    .line 1009
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "[]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1, v0}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/RuntimeException;)V

    .line 1010
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1032
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 1033
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1034
    .local v0, "o":Ljava/lang/Object;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1035
    return-object v1

    .line 1038
    :cond_0
    :try_start_0
    move-object v2, v0

    check-cast v2, Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 1039
    :catch_0
    move-exception v2

    .line 1040
    .local v2, "e":Ljava/lang/ClassCastException;
    const-string v3, "ArrayList"

    invoke-virtual {p0, p1, v0, v3, v2}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/RuntimeException;)V

    .line 1041
    return-object v1
.end method

.method public whitelist getParcelableArrayList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+TT;>;)",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation

    .line 1070
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+TT;>;"
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->getArrayList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getSerializable(Ljava/lang/String;)Ljava/io/Serializable;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1144
    invoke-super {p0, p1}, Landroid/os/BaseBundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getSerializable(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/io/Serializable;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1162
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-super {p0, p1, v0}, Landroid/os/BaseBundle;->getSerializable(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getShort(Ljava/lang/String;)S
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 760
    invoke-super {p0, p1}, Landroid/os/BaseBundle;->getShort(Ljava/lang/String;)S

    move-result v0

    return v0
.end method

.method public whitelist getShort(Ljava/lang/String;S)S
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # S

    .line 773
    invoke-super {p0, p1, p2}, Landroid/os/BaseBundle;->getShort(Ljava/lang/String;S)S

    move-result v0

    return v0
.end method

.method public whitelist getShortArray(Ljava/lang/String;)[S
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 1232
    invoke-super {p0, p1}, Landroid/os/BaseBundle;->getShortArray(Ljava/lang/String;)[S

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-r getSize()I
    .locals 1

    .line 324
    iget-object v0, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->dataSize()I

    move-result v0

    return v0

    .line 327
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getSize(Ljava/lang/String;)Landroid/util/Size;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .line 841
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 842
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 844
    .local v0, "o":Ljava/lang/Object;
    :try_start_0
    move-object v1, v0

    check-cast v1, Landroid/util/Size;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 845
    :catch_0
    move-exception v1

    .line 846
    .local v1, "e":Ljava/lang/ClassCastException;
    const-string v2, "Size"

    invoke-virtual {p0, p1, v0, v2, v1}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/RuntimeException;)V

    .line 847
    const/4 v2, 0x0

    return-object v2
.end method

.method public whitelist getSizeF(Ljava/lang/String;)Landroid/util/SizeF;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .line 861
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 862
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 864
    .local v0, "o":Ljava/lang/Object;
    :try_start_0
    move-object v1, v0

    check-cast v1, Landroid/util/SizeF;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 865
    :catch_0
    move-exception v1

    .line 866
    .local v1, "e":Ljava/lang/ClassCastException;
    const-string v2, "SizeF"

    invoke-virtual {p0, p1, v0, v2, v1}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/RuntimeException;)V

    .line 867
    const/4 v2, 0x0

    return-object v2
.end method

.method public whitelist getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/SparseArray<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1087
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 1088
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1089
    .local v0, "o":Ljava/lang/Object;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1090
    return-object v1

    .line 1093
    :cond_0
    :try_start_0
    move-object v2, v0

    check-cast v2, Landroid/util/SparseArray;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 1094
    :catch_0
    move-exception v2

    .line 1095
    .local v2, "e":Ljava/lang/ClassCastException;
    const-string v3, "SparseArray"

    invoke-virtual {p0, p1, v0, v3, v2}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/RuntimeException;)V

    .line 1096
    return-object v1
.end method

.method public whitelist getSparseParcelableArray(Ljava/lang/String;Ljava/lang/Class;)Landroid/util/SparseArray;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+TT;>;)",
            "Landroid/util/SparseArray<",
            "TT;>;"
        }
    .end annotation

    .line 1120
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+TT;>;"
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 1122
    :try_start_0
    const-class v0, Landroid/util/SparseArray;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    aput-object v3, v1, v2

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Bundle;->getValue(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/BadTypeParcelableException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1123
    :catch_0
    move-exception v0

    .line 1124
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SparseArray<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1, v0}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/RuntimeException;)V

    .line 1125
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1190
    invoke-super {p0, p1}, Landroid/os/BaseBundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public whitelist hasFileDescriptors()Z
    .locals 2

    .line 335
    iget v0, p0, Landroid/os/Bundle;->mFlags:I

    and-int/lit16 v0, v0, 0x200

    if-nez v0, :cond_2

    .line 336
    iget-object v0, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    .line 337
    .local v0, "p":Landroid/os/Parcel;
    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    :goto_0
    invoke-static {v1}, Landroid/os/Parcel;->hasFileDescriptors(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 338
    iget v1, p0, Landroid/os/Bundle;->mFlags:I

    or-int/lit16 v1, v1, 0x100

    goto :goto_1

    .line 339
    :cond_1
    iget v1, p0, Landroid/os/Bundle;->mFlags:I

    and-int/lit16 v1, v1, -0x101

    :goto_1
    iput v1, p0, Landroid/os/Bundle;->mFlags:I

    .line 340
    iget v1, p0, Landroid/os/Bundle;->mFlags:I

    or-int/lit16 v1, v1, 0x200

    iput v1, p0, Landroid/os/Bundle;->mFlags:I

    .line 342
    .end local v0    # "p":Landroid/os/Parcel;
    :cond_2
    iget v0, p0, Landroid/os/Bundle;->mFlags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    return v0
.end method

.method public whitelist putAll(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 302
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 303
    invoke-virtual {p1}, Landroid/os/Bundle;->unparcel()V

    .line 304
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/Bundle;->mOwnsLazyValues:Z

    .line 305
    iput-boolean v0, p1, Landroid/os/Bundle;->mOwnsLazyValues:Z

    .line 306
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    iget-object v1, p1, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    .line 309
    iget v0, p1, Landroid/os/Bundle;->mFlags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    .line 310
    iget v0, p0, Landroid/os/Bundle;->mFlags:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Landroid/os/Bundle;->mFlags:I

    .line 312
    :cond_0
    iget v0, p1, Landroid/os/Bundle;->mFlags:I

    and-int/lit16 v0, v0, 0x200

    if-nez v0, :cond_1

    .line 313
    iget v0, p0, Landroid/os/Bundle;->mFlags:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Landroid/os/Bundle;->mFlags:I

    .line 315
    :cond_1
    return-void
.end method

.method public whitelist putBinder(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/os/IBinder;

    .line 680
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 681
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 682
    return-void
.end method

.method public whitelist putBundle(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/os/Bundle;

    .line 661
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 662
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 663
    return-void
.end method

.method public whitelist putByte(Ljava/lang/String;B)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # B

    .line 404
    invoke-super {p0, p1, p2}, Landroid/os/BaseBundle;->putByte(Ljava/lang/String;B)V

    .line 405
    return-void
.end method

.method public whitelist putByteArray(Ljava/lang/String;[B)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [B

    .line 602
    invoke-super {p0, p1, p2}, Landroid/os/BaseBundle;->putByteArray(Ljava/lang/String;[B)V

    .line 603
    return-void
.end method

.method public whitelist putChar(Ljava/lang/String;C)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # C

    .line 416
    invoke-super {p0, p1, p2}, Landroid/os/BaseBundle;->putChar(Ljava/lang/String;C)V

    .line 417
    return-void
.end method

.method public whitelist putCharArray(Ljava/lang/String;[C)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [C

    .line 626
    invoke-super {p0, p1, p2}, Landroid/os/BaseBundle;->putCharArray(Ljava/lang/String;[C)V

    .line 627
    return-void
.end method

.method public whitelist putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/CharSequence;

    .line 452
    invoke-super {p0, p1, p2}, Landroid/os/BaseBundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 453
    return-void
.end method

.method public whitelist putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [Ljava/lang/CharSequence;

    .line 650
    invoke-super {p0, p1, p2}, Landroid/os/BaseBundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 651
    return-void
.end method

.method public whitelist putCharSequenceArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .line 578
    .local p2, "value":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    invoke-super {p0, p1, p2}, Landroid/os/BaseBundle;->putCharSequenceArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 579
    return-void
.end method

.method public whitelist putFloat(Ljava/lang/String;F)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # F

    .line 440
    invoke-super {p0, p1, p2}, Landroid/os/BaseBundle;->putFloat(Ljava/lang/String;F)V

    .line 441
    return-void
.end method

.method public whitelist putFloatArray(Ljava/lang/String;[F)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [F

    .line 638
    invoke-super {p0, p1, p2}, Landroid/os/BaseBundle;->putFloatArray(Ljava/lang/String;[F)V

    .line 639
    return-void
.end method

.method public greylist putIBinder(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/os/IBinder;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 697
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 698
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 699
    return-void
.end method

.method public whitelist putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 553
    .local p2, "value":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-super {p0, p1, p2}, Landroid/os/BaseBundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 554
    return-void
.end method

.method public blacklist putObject(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 348
    instance-of v0, p2, Ljava/lang/Byte;

    if-eqz v0, :cond_0

    .line 349
    move-object v0, p2

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    goto/16 :goto_0

    .line 350
    :cond_0
    instance-of v0, p2, Ljava/lang/Character;

    if-eqz v0, :cond_1

    .line 351
    move-object v0, p2

    check-cast v0, Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putChar(Ljava/lang/String;C)V

    goto/16 :goto_0

    .line 352
    :cond_1
    instance-of v0, p2, Ljava/lang/Short;

    if-eqz v0, :cond_2

    .line 353
    move-object v0, p2

    check-cast v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putShort(Ljava/lang/String;S)V

    goto/16 :goto_0

    .line 354
    :cond_2
    instance-of v0, p2, Ljava/lang/Float;

    if-eqz v0, :cond_3

    .line 355
    move-object v0, p2

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto/16 :goto_0

    .line 356
    :cond_3
    instance-of v0, p2, Ljava/lang/CharSequence;

    if-eqz v0, :cond_4

    .line 357
    move-object v0, p2

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 358
    :cond_4
    instance-of v0, p2, Landroid/os/Parcelable;

    if-eqz v0, :cond_5

    .line 359
    move-object v0, p2

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto/16 :goto_0

    .line 360
    :cond_5
    instance-of v0, p2, Landroid/util/Size;

    if-eqz v0, :cond_6

    .line 361
    move-object v0, p2

    check-cast v0, Landroid/util/Size;

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putSize(Ljava/lang/String;Landroid/util/Size;)V

    goto/16 :goto_0

    .line 362
    :cond_6
    instance-of v0, p2, Landroid/util/SizeF;

    if-eqz v0, :cond_7

    .line 363
    move-object v0, p2

    check-cast v0, Landroid/util/SizeF;

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putSizeF(Ljava/lang/String;Landroid/util/SizeF;)V

    goto/16 :goto_0

    .line 364
    :cond_7
    instance-of v0, p2, [Landroid/os/Parcelable;

    if-eqz v0, :cond_8

    .line 365
    move-object v0, p2

    check-cast v0, [Landroid/os/Parcelable;

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    goto/16 :goto_0

    .line 366
    :cond_8
    instance-of v0, p2, Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    .line 367
    move-object v0, p2

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 368
    :cond_9
    instance-of v0, p2, Ljava/util/List;

    if-eqz v0, :cond_a

    .line 369
    move-object v0, p2

    check-cast v0, Ljava/util/List;

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putParcelableList(Ljava/lang/String;Ljava/util/List;)V

    goto/16 :goto_0

    .line 370
    :cond_a
    instance-of v0, p2, Landroid/util/SparseArray;

    if-eqz v0, :cond_b

    .line 371
    move-object v0, p2

    check-cast v0, Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    goto/16 :goto_0

    .line 372
    :cond_b
    instance-of v0, p2, Ljava/io/Serializable;

    if-eqz v0, :cond_c

    .line 373
    move-object v0, p2

    check-cast v0, Ljava/io/Serializable;

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    goto :goto_0

    .line 374
    :cond_c
    instance-of v0, p2, [B

    if-eqz v0, :cond_d

    .line 375
    move-object v0, p2

    check-cast v0, [B

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    goto :goto_0

    .line 376
    :cond_d
    instance-of v0, p2, [S

    if-eqz v0, :cond_e

    .line 377
    move-object v0, p2

    check-cast v0, [S

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putShortArray(Ljava/lang/String;[S)V

    goto :goto_0

    .line 378
    :cond_e
    instance-of v0, p2, [C

    if-eqz v0, :cond_f

    .line 379
    move-object v0, p2

    check-cast v0, [C

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putCharArray(Ljava/lang/String;[C)V

    goto :goto_0

    .line 380
    :cond_f
    instance-of v0, p2, [F

    if-eqz v0, :cond_10

    .line 381
    move-object v0, p2

    check-cast v0, [F

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    goto :goto_0

    .line 382
    :cond_10
    instance-of v0, p2, [Ljava/lang/CharSequence;

    if-eqz v0, :cond_11

    .line 383
    move-object v0, p2

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 384
    :cond_11
    instance-of v0, p2, Landroid/os/Bundle;

    if-eqz v0, :cond_12

    .line 385
    move-object v0, p2

    check-cast v0, Landroid/os/Bundle;

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 386
    :cond_12
    instance-of v0, p2, Landroid/os/Binder;

    if-eqz v0, :cond_13

    .line 387
    move-object v0, p2

    check-cast v0, Landroid/os/Binder;

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    goto :goto_0

    .line 388
    :cond_13
    instance-of v0, p2, Landroid/os/IBinder;

    if-eqz v0, :cond_14

    .line 389
    move-object v0, p2

    check-cast v0, Landroid/os/IBinder;

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putIBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    goto :goto_0

    .line 391
    :cond_14
    invoke-super {p0, p1, p2}, Landroid/os/BaseBundle;->putObject(Ljava/lang/String;Ljava/lang/Object;)V

    .line 393
    :goto_0
    return-void
.end method

.method public whitelist putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/os/Parcelable;

    .line 463
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 464
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    iget v0, p0, Landroid/os/Bundle;->mFlags:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Landroid/os/Bundle;->mFlags:I

    .line 466
    return-void
.end method

.method public whitelist putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [Landroid/os/Parcelable;

    .line 501
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 502
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    iget v0, p0, Landroid/os/Bundle;->mFlags:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Landroid/os/Bundle;->mFlags:I

    .line 504
    return-void
.end method

.method public whitelist putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "+",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 516
    .local p2, "value":Ljava/util/ArrayList;, "Ljava/util/ArrayList<+Landroid/os/Parcelable;>;"
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 517
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 518
    iget v0, p0, Landroid/os/Bundle;->mFlags:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Landroid/os/Bundle;->mFlags:I

    .line 519
    return-void
.end method

.method public greylist putParcelableList(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 524
    .local p2, "value":Ljava/util/List;, "Ljava/util/List<+Landroid/os/Parcelable;>;"
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 525
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 526
    iget v0, p0, Landroid/os/Bundle;->mFlags:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Landroid/os/Bundle;->mFlags:I

    .line 527
    return-void
.end method

.method public whitelist putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/io/Serializable;

    .line 590
    invoke-super {p0, p1, p2}, Landroid/os/BaseBundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 591
    return-void
.end method

.method public whitelist putShort(Ljava/lang/String;S)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # S

    .line 428
    invoke-super {p0, p1, p2}, Landroid/os/BaseBundle;->putShort(Ljava/lang/String;S)V

    .line 429
    return-void
.end method

.method public whitelist putShortArray(Ljava/lang/String;[S)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [S

    .line 614
    invoke-super {p0, p1, p2}, Landroid/os/BaseBundle;->putShortArray(Ljava/lang/String;[S)V

    .line 615
    return-void
.end method

.method public whitelist putSize(Ljava/lang/String;Landroid/util/Size;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/util/Size;

    .line 476
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 477
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    return-void
.end method

.method public whitelist putSizeF(Ljava/lang/String;Landroid/util/SizeF;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/util/SizeF;

    .line 488
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 489
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    return-void
.end method

.method public whitelist putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "+",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 539
    .local p2, "value":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/Parcelable;>;"
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 540
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 541
    iget v0, p0, Landroid/os/Bundle;->mFlags:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Landroid/os/Bundle;->mFlags:I

    .line 542
    return-void
.end method

.method public whitelist putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 565
    .local p2, "value":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-super {p0, p1, p2}, Landroid/os/BaseBundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 566
    return-void
.end method

.method public whitelist readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 1374
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->readFromParcelInner(Landroid/os/Parcel;)V

    .line 1375
    const/16 v0, 0x400

    iput v0, p0, Landroid/os/Bundle;->mFlags:I

    .line 1376
    invoke-direct {p0}, Landroid/os/Bundle;->maybePrefillHasFds()V

    .line 1377
    return-void
.end method

.method public whitelist remove(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 290
    invoke-super {p0, p1}, Landroid/os/BaseBundle;->remove(Ljava/lang/String;)V

    .line 291
    iget v0, p0, Landroid/os/Bundle;->mFlags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    .line 292
    iget v0, p0, Landroid/os/Bundle;->mFlags:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Landroid/os/Bundle;->mFlags:I

    .line 294
    :cond_0
    return-void
.end method

.method public greylist-max-o setAllowFds(Z)Z
    .locals 2
    .param p1, "allowFds"    # Z

    .line 218
    iget v0, p0, Landroid/os/Bundle;->mFlags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 219
    .local v0, "orig":Z
    :goto_0
    if-eqz p1, :cond_1

    .line 220
    iget v1, p0, Landroid/os/Bundle;->mFlags:I

    or-int/lit16 v1, v1, 0x400

    iput v1, p0, Landroid/os/Bundle;->mFlags:I

    goto :goto_1

    .line 222
    :cond_1
    iget v1, p0, Landroid/os/Bundle;->mFlags:I

    and-int/lit16 v1, v1, -0x401

    iput v1, p0, Landroid/os/Bundle;->mFlags:I

    .line 224
    :goto_1
    return v0
.end method

.method public whitelist setClassLoader(Ljava/lang/ClassLoader;)V
    .locals 0
    .param p1, "loader"    # Ljava/lang/ClassLoader;

    .line 205
    invoke-super {p0, p1}, Landroid/os/BaseBundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 206
    return-void
.end method

.method public greylist-max-o setDefusable(Z)V
    .locals 1
    .param p1, "defusable"    # Z

    .line 239
    if-eqz p1, :cond_0

    .line 240
    iget v0, p0, Landroid/os/Bundle;->mFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/os/Bundle;->mFlags:I

    goto :goto_0

    .line 242
    :cond_0
    iget v0, p0, Landroid/os/Bundle;->mFlags:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Landroid/os/Bundle;->mFlags:I

    .line 244
    :goto_0
    return-void
.end method

.method public declared-synchronized greylist-max-o toShortString()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    .line 1400
    :try_start_0
    iget-object v0, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    if-eqz v0, :cond_1

    .line 1401
    invoke-virtual {p0}, Landroid/os/Bundle;->isEmptyParcel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1402
    const-string v0, "EMPTY_PARCEL"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1404
    .end local p0    # "this":Landroid/os/Bundle;
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mParcelledData.dataSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->dataSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1407
    :cond_1
    :try_start_2
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1399
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized whitelist test-api toString()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    .line 1385
    :try_start_0
    iget-object v0, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    if-eqz v0, :cond_1

    .line 1386
    invoke-virtual {p0}, Landroid/os/Bundle;->isEmptyParcel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1387
    const-string v0, "Bundle[EMPTY_PARCEL]"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1389
    .end local p0    # "this":Landroid/os/Bundle;
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bundle[mParcelledData.dataSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    .line 1390
    invoke-virtual {v1}, Landroid/os/Parcel;->dataSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1389
    monitor-exit p0

    return-object v0

    .line 1393
    :cond_1
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bundle["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1384
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1360
    iget v0, p0, Landroid/os/Bundle;->mFlags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->pushAllowFds(Z)Z

    move-result v0

    .line 1362
    .local v0, "oldAllowFds":Z
    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->writeToParcelInner(Landroid/os/Parcel;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1364
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->restoreAllowFds(Z)V

    .line 1365
    nop

    .line 1366
    return-void

    .line 1364
    :catchall_0
    move-exception v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->restoreAllowFds(Z)V

    .line 1365
    throw v1
.end method
