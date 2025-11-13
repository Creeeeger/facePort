.class public Landroid/content/ContentProviderOperation;
.super Ljava/lang/Object;
.source "ContentProviderOperation.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/ContentProviderOperation$Builder;,
        Landroid/content/ContentProviderOperation$BackReference;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/ContentProviderOperation;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o TAG:Ljava/lang/String; = "ContentProviderOperation"

.field public static final greylist-max-o TYPE_ASSERT:I = 0x4

.field public static final blacklist TYPE_CALL:I = 0x5

.field public static final greylist TYPE_DELETE:I = 0x3

.field public static final greylist TYPE_INSERT:I = 0x1

.field public static final greylist TYPE_UPDATE:I = 0x2


# instance fields
.field private final blacklist mArg:Ljava/lang/String;

.field private final blacklist mExceptionAllowed:Z

.field private final greylist-max-o mExpectedCount:Ljava/lang/Integer;

.field private final blacklist mExtras:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mMethod:Ljava/lang/String;

.field private final greylist mSelection:Ljava/lang/String;

.field private final blacklist mSelectionArgs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist mType:I

.field private final greylist mUri:Landroid/net/Uri;

.field private final blacklist mValues:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mYieldAllowed:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/content/ContentProviderOperation$1;

    invoke-direct {v0}, Landroid/content/ContentProviderOperation$1;-><init>()V

    sput-object v0, Landroid/content/ContentProviderOperation;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/content/ContentProviderOperation$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/content/ContentProviderOperation$Builder;->-$$Nest$fgetmType(Landroid/content/ContentProviderOperation$Builder;)I

    move-result v0

    iput v0, p0, Landroid/content/ContentProviderOperation;->mType:I

    invoke-static {p1}, Landroid/content/ContentProviderOperation$Builder;->-$$Nest$fgetmUri(Landroid/content/ContentProviderOperation$Builder;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/content/ContentProviderOperation;->mUri:Landroid/net/Uri;

    invoke-static {p1}, Landroid/content/ContentProviderOperation$Builder;->-$$Nest$fgetmMethod(Landroid/content/ContentProviderOperation$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/ContentProviderOperation;->mMethod:Ljava/lang/String;

    invoke-static {p1}, Landroid/content/ContentProviderOperation$Builder;->-$$Nest$fgetmArg(Landroid/content/ContentProviderOperation$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/ContentProviderOperation;->mArg:Ljava/lang/String;

    invoke-static {p1}, Landroid/content/ContentProviderOperation$Builder;->-$$Nest$fgetmValues(Landroid/content/ContentProviderOperation$Builder;)Landroid/util/ArrayMap;

    move-result-object v0

    iput-object v0, p0, Landroid/content/ContentProviderOperation;->mValues:Landroid/util/ArrayMap;

    invoke-static {p1}, Landroid/content/ContentProviderOperation$Builder;->-$$Nest$fgetmExtras(Landroid/content/ContentProviderOperation$Builder;)Landroid/util/ArrayMap;

    move-result-object v0

    iput-object v0, p0, Landroid/content/ContentProviderOperation;->mExtras:Landroid/util/ArrayMap;

    invoke-static {p1}, Landroid/content/ContentProviderOperation$Builder;->-$$Nest$fgetmSelection(Landroid/content/ContentProviderOperation$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/ContentProviderOperation;->mSelection:Ljava/lang/String;

    invoke-static {p1}, Landroid/content/ContentProviderOperation$Builder;->-$$Nest$fgetmSelectionArgs(Landroid/content/ContentProviderOperation$Builder;)Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p0, Landroid/content/ContentProviderOperation;->mSelectionArgs:Landroid/util/SparseArray;

    invoke-static {p1}, Landroid/content/ContentProviderOperation$Builder;->-$$Nest$fgetmExpectedCount(Landroid/content/ContentProviderOperation$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/content/ContentProviderOperation;->mExpectedCount:Ljava/lang/Integer;

    invoke-static {p1}, Landroid/content/ContentProviderOperation$Builder;->-$$Nest$fgetmYieldAllowed(Landroid/content/ContentProviderOperation$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/ContentProviderOperation;->mYieldAllowed:Z

    invoke-static {p1}, Landroid/content/ContentProviderOperation$Builder;->-$$Nest$fgetmExceptionAllowed(Landroid/content/ContentProviderOperation$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/ContentProviderOperation;->mExceptionAllowed:Z

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/content/ContentProviderOperation$Builder;Landroid/content/ContentProviderOperation-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/content/ContentProviderOperation;-><init>(Landroid/content/ContentProviderOperation$Builder;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/ContentProviderOperation;Landroid/net/Uri;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Landroid/content/ContentProviderOperation;->mType:I

    iput v0, p0, Landroid/content/ContentProviderOperation;->mType:I

    iput-object p2, p0, Landroid/content/ContentProviderOperation;->mUri:Landroid/net/Uri;

    iget-object v0, p1, Landroid/content/ContentProviderOperation;->mMethod:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/ContentProviderOperation;->mMethod:Ljava/lang/String;

    iget-object v0, p1, Landroid/content/ContentProviderOperation;->mArg:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/ContentProviderOperation;->mArg:Ljava/lang/String;

    iget-object v0, p1, Landroid/content/ContentProviderOperation;->mValues:Landroid/util/ArrayMap;

    iput-object v0, p0, Landroid/content/ContentProviderOperation;->mValues:Landroid/util/ArrayMap;

    iget-object v0, p1, Landroid/content/ContentProviderOperation;->mExtras:Landroid/util/ArrayMap;

    iput-object v0, p0, Landroid/content/ContentProviderOperation;->mExtras:Landroid/util/ArrayMap;

    iget-object v0, p1, Landroid/content/ContentProviderOperation;->mSelection:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/ContentProviderOperation;->mSelection:Ljava/lang/String;

    iget-object v0, p1, Landroid/content/ContentProviderOperation;->mSelectionArgs:Landroid/util/SparseArray;

    iput-object v0, p0, Landroid/content/ContentProviderOperation;->mSelectionArgs:Landroid/util/SparseArray;

    iget-object v0, p1, Landroid/content/ContentProviderOperation;->mExpectedCount:Ljava/lang/Integer;

    iput-object v0, p0, Landroid/content/ContentProviderOperation;->mExpectedCount:Ljava/lang/Integer;

    iget-boolean v0, p1, Landroid/content/ContentProviderOperation;->mYieldAllowed:Z

    iput-boolean v0, p0, Landroid/content/ContentProviderOperation;->mYieldAllowed:Z

    iget-boolean v0, p1, Landroid/content/ContentProviderOperation;->mExceptionAllowed:Z

    iput-boolean v0, p0, Landroid/content/ContentProviderOperation;->mExceptionAllowed:Z

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/ContentProviderOperation;->mType:I

    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroid/content/ContentProviderOperation;->mUri:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iput-object v0, p0, Landroid/content/ContentProviderOperation;->mMethod:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    iput-object v0, p0, Landroid/content/ContentProviderOperation;->mArg:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3, v0}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v3, p0, Landroid/content/ContentProviderOperation;->mValues:Landroid/util/ArrayMap;

    iget-object v3, p0, Landroid/content/ContentProviderOperation;->mValues:Landroid/util/ArrayMap;

    invoke-virtual {p1, v3, v1}, Landroid/os/Parcel;->readArrayMap(Landroid/util/ArrayMap;Ljava/lang/ClassLoader;)V

    goto :goto_2

    :cond_2
    iput-object v1, p0, Landroid/content/ContentProviderOperation;->mValues:Landroid/util/ArrayMap;

    :goto_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eq v3, v2, :cond_3

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2, v3}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v2, p0, Landroid/content/ContentProviderOperation;->mExtras:Landroid/util/ArrayMap;

    iget-object v2, p0, Landroid/content/ContentProviderOperation;->mExtras:Landroid/util/ArrayMap;

    invoke-virtual {p1, v2, v1}, Landroid/os/Parcel;->readArrayMap(Landroid/util/ArrayMap;Ljava/lang/ClassLoader;)V

    goto :goto_3

    :cond_3
    iput-object v1, p0, Landroid/content/ContentProviderOperation;->mExtras:Landroid/util/ArrayMap;

    :goto_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :cond_4
    move-object v2, v1

    :goto_4
    iput-object v2, p0, Landroid/content/ContentProviderOperation;->mSelection:Ljava/lang/String;

    const-class v2, Ljava/lang/Object;

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->readSparseArray(Ljava/lang/ClassLoader;Ljava/lang/Class;)Landroid/util/SparseArray;

    move-result-object v2

    iput-object v2, p0, Landroid/content/ContentProviderOperation;->mSelectionArgs:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_5
    iput-object v1, p0, Landroid/content/ContentProviderOperation;->mExpectedCount:Ljava/lang/Integer;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_6

    move v1, v2

    goto :goto_5

    :cond_6
    move v1, v4

    :goto_5
    iput-boolean v1, p0, Landroid/content/ContentProviderOperation;->mYieldAllowed:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_6

    :cond_7
    move v2, v4

    :goto_6
    iput-boolean v2, p0, Landroid/content/ContentProviderOperation;->mExceptionAllowed:Z

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/content/ContentProviderOperation-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/content/ContentProviderOperation;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private blacklist applyInternal(Landroid/content/ContentProvider;[Landroid/content/ContentProviderResult;I)Landroid/content/ContentProviderResult;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    invoke-virtual {p0, p2, p3}, Landroid/content/ContentProviderOperation;->resolveValueBackReferences([Landroid/content/ContentProviderResult;I)Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {p0, p2, p3}, Landroid/content/ContentProviderOperation;->resolveExtrasBackReferences([Landroid/content/ContentProviderResult;I)Landroid/os/Bundle;

    move-result-object v1

    iget-object v2, p0, Landroid/content/ContentProviderOperation;->mSelection:Ljava/lang/String;

    if-eqz v2, :cond_1

    if-eqz v1, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    :goto_0
    move-object v1, v2

    const-string v2, "android:query-arg-sql-selection"

    iget-object v3, p0, Landroid/content/ContentProviderOperation;->mSelection:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v2, p0, Landroid/content/ContentProviderOperation;->mSelectionArgs:Landroid/util/SparseArray;

    if-eqz v2, :cond_3

    if-eqz v1, :cond_2

    move-object v2, v1

    goto :goto_1

    :cond_2
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    :goto_1
    move-object v1, v2

    nop

    invoke-virtual {p0, p2, p3}, Landroid/content/ContentProviderOperation;->resolveSelectionArgsBackReferences([Landroid/content/ContentProviderResult;I)[Ljava/lang/String;

    move-result-object v2

    const-string v3, "android:query-arg-sql-selection-args"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_3
    iget v2, p0, Landroid/content/ContentProviderOperation;->mType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Landroid/content/ContentProviderOperation;->mUri:Landroid/net/Uri;

    invoke-virtual {p1, v2, v0, v1}, Landroid/content/ContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;Landroid/os/Bundle;)Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_4

    new-instance v3, Landroid/content/ContentProviderResult;

    invoke-direct {v3, v2}, Landroid/content/ContentProviderResult;-><init>(Landroid/net/Uri;)V

    return-object v3

    :cond_4
    new-instance v3, Landroid/content/OperationApplicationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Insert into "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/content/ContentProviderOperation;->mUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " returned no result"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/content/OperationApplicationException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_5
    iget v2, p0, Landroid/content/ContentProviderOperation;->mType:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_6

    iget-object v2, p0, Landroid/content/ContentProviderOperation;->mUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/content/ContentProviderOperation;->mMethod:Ljava/lang/String;

    iget-object v4, p0, Landroid/content/ContentProviderOperation;->mArg:Ljava/lang/String;

    invoke-virtual {p1, v2, v3, v4, v1}, Landroid/content/ContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    new-instance v3, Landroid/content/ContentProviderResult;

    invoke-direct {v3, v2}, Landroid/content/ContentProviderResult;-><init>(Landroid/os/Bundle;)V

    return-object v3

    :cond_6
    iget v2, p0, Landroid/content/ContentProviderOperation;->mType:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_7

    iget-object v2, p0, Landroid/content/ContentProviderOperation;->mUri:Landroid/net/Uri;

    invoke-virtual {p1, v2, v1}, Landroid/content/ContentProvider;->delete(Landroid/net/Uri;Landroid/os/Bundle;)I

    move-result v2

    goto/16 :goto_5

    :cond_7
    iget v2, p0, Landroid/content/ContentProviderOperation;->mType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_8

    iget-object v2, p0, Landroid/content/ContentProviderOperation;->mUri:Landroid/net/Uri;

    invoke-virtual {p1, v2, v0, v1}, Landroid/content/ContentProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Landroid/os/Bundle;)I

    move-result v2

    goto/16 :goto_5

    :cond_8
    iget v2, p0, Landroid/content/ContentProviderOperation;->mType:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_10

    const/4 v2, 0x0

    if-eqz v0, :cond_a

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_9
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    move-object v2, v4

    check-cast v2, [Ljava/lang/String;

    :cond_a
    iget-object v3, p0, Landroid/content/ContentProviderOperation;->mUri:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v2, v1, v4}, Landroid/content/ContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v3

    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-eqz v2, :cond_d

    :goto_3
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_d

    const/4 v5, 0x0

    :goto_4
    array-length v6, v2

    if-ge v5, v6, :cond_c

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    aget-object v7, v2, v5

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_b

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_b
    new-instance v8, Landroid/content/OperationApplicationException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Found value "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " when expected "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " for column "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v2, v5

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/content/OperationApplicationException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_c
    goto :goto_3

    :cond_d
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    nop

    move v2, v4

    :goto_5
    iget-object v3, p0, Landroid/content/ContentProviderOperation;->mExpectedCount:Ljava/lang/Integer;

    if-eqz v3, :cond_f

    iget-object v3, p0, Landroid/content/ContentProviderOperation;->mExpectedCount:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v2, :cond_e

    goto :goto_6

    :cond_e
    new-instance v3, Landroid/content/OperationApplicationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expected "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/content/ContentProviderOperation;->mExpectedCount:Ljava/lang/Integer;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " rows but actual "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/content/OperationApplicationException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_f
    :goto_6
    new-instance v3, Landroid/content/ContentProviderResult;

    invoke-direct {v3, v2}, Landroid/content/ContentProviderResult;-><init>(I)V

    return-object v3

    :catchall_0
    move-exception v4

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    throw v4

    :cond_10
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bad type, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/content/ContentProviderOperation;->mType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static whitelist newAssertQuery(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;
    .locals 3

    new-instance v0, Landroid/content/ContentProviderOperation$Builder;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Landroid/content/ContentProviderOperation$Builder;-><init>(ILandroid/net/Uri;Landroid/content/ContentProviderOperation$Builder-IA;)V

    return-object v0
.end method

.method public static whitelist newCall(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;
    .locals 7

    new-instance v6, Landroid/content/ContentProviderOperation$Builder;

    const/4 v1, 0x5

    const/4 v5, 0x0

    move-object v0, v6

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Landroid/content/ContentProviderOperation$Builder;-><init>(ILandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentProviderOperation$Builder-IA;)V

    return-object v6
.end method

.method public static whitelist newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;
    .locals 3

    new-instance v0, Landroid/content/ContentProviderOperation$Builder;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Landroid/content/ContentProviderOperation$Builder;-><init>(ILandroid/net/Uri;Landroid/content/ContentProviderOperation$Builder-IA;)V

    return-object v0
.end method

.method public static whitelist newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;
    .locals 3

    new-instance v0, Landroid/content/ContentProviderOperation$Builder;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Landroid/content/ContentProviderOperation$Builder;-><init>(ILandroid/net/Uri;Landroid/content/ContentProviderOperation$Builder-IA;)V

    return-object v0
.end method

.method public static whitelist newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;
    .locals 3

    new-instance v0, Landroid/content/ContentProviderOperation$Builder;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Landroid/content/ContentProviderOperation$Builder;-><init>(ILandroid/net/Uri;Landroid/content/ContentProviderOperation$Builder-IA;)V

    return-object v0
.end method

.method public static blacklist typeToString(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "call"

    return-object v0

    :pswitch_1
    const-string v0, "assert"

    return-object v0

    :pswitch_2
    const-string v0, "delete"

    return-object v0

    :pswitch_3
    const-string/jumbo v0, "update"

    return-object v0

    :pswitch_4
    const-string v0, "insert"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist apply(Landroid/content/ContentProvider;[Landroid/content/ContentProviderResult;I)Landroid/content/ContentProviderResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    iget-boolean v0, p0, Landroid/content/ContentProviderOperation;->mExceptionAllowed:Z

    if-eqz v0, :cond_0

    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Landroid/content/ContentProviderOperation;->applyInternal(Landroid/content/ContentProvider;[Landroid/content/ContentProviderResult;I)Landroid/content/ContentProviderResult;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Landroid/content/ContentProviderResult;

    invoke-direct {v1, v0}, Landroid/content/ContentProviderResult;-><init>(Ljava/lang/Throwable;)V

    return-object v1

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroid/content/ContentProviderOperation;->applyInternal(Landroid/content/ContentProvider;[Landroid/content/ContentProviderResult;I)Landroid/content/ContentProviderResult;

    move-result-object v0

    return-object v0
.end method

.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public greylist getType()I
    .locals 1

    iget v0, p0, Landroid/content/ContentProviderOperation;->mType:I

    return v0
.end method

.method public whitelist getUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Landroid/content/ContentProviderOperation;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public whitelist isAssertQuery()Z
    .locals 2

    iget v0, p0, Landroid/content/ContentProviderOperation;->mType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist isCall()Z
    .locals 2

    iget v0, p0, Landroid/content/ContentProviderOperation;->mType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist isDelete()Z
    .locals 2

    iget v0, p0, Landroid/content/ContentProviderOperation;->mType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist isExceptionAllowed()Z
    .locals 1

    iget-boolean v0, p0, Landroid/content/ContentProviderOperation;->mExceptionAllowed:Z

    return v0
.end method

.method public whitelist isInsert()Z
    .locals 2

    iget v0, p0, Landroid/content/ContentProviderOperation;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public whitelist isReadOperation()Z
    .locals 2

    iget v0, p0, Landroid/content/ContentProviderOperation;->mType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist isUpdate()Z
    .locals 2

    iget v0, p0, Landroid/content/ContentProviderOperation;->mType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist isWriteOperation()Z
    .locals 3

    iget v0, p0, Landroid/content/ContentProviderOperation;->mType:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Landroid/content/ContentProviderOperation;->mType:I

    if-eq v0, v2, :cond_1

    iget v0, p0, Landroid/content/ContentProviderOperation;->mType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    return v2
.end method

.method public whitelist isYieldAllowed()Z
    .locals 1

    iget-boolean v0, p0, Landroid/content/ContentProviderOperation;->mYieldAllowed:Z

    return v0
.end method

.method public whitelist resolveExtrasBackReferences([Landroid/content/ContentProviderResult;I)Landroid/os/Bundle;
    .locals 5

    iget-object v0, p0, Landroid/content/ContentProviderOperation;->mExtras:Landroid/util/ArrayMap;

    if-eqz v0, :cond_2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Landroid/content/ContentProviderOperation;->mExtras:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Landroid/content/ContentProviderOperation;->mExtras:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Landroid/content/ContentProviderOperation$BackReference;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Landroid/content/ContentProviderOperation$BackReference;

    invoke-virtual {v3, p1, p2}, Landroid/content/ContentProviderOperation$BackReference;->resolve([Landroid/content/ContentProviderResult;I)Ljava/lang/Object;

    move-result-object v3

    goto :goto_1

    :cond_0
    move-object v3, v2

    :goto_1
    iget-object v4, p0, Landroid/content/ContentProviderOperation;->mExtras:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putObject(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist resolveSelectionArgsBackReferences([Landroid/content/ContentProviderResult;I)[Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Landroid/content/ContentProviderOperation;->mSelectionArgs:Landroid/util/SparseArray;

    if-eqz v0, :cond_3

    const/4 v0, -0x1

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Landroid/content/ContentProviderOperation;->mSelectionArgs:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Landroid/content/ContentProviderOperation;->mSelectionArgs:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v0, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_1
    iget-object v3, p0, Landroid/content/ContentProviderOperation;->mSelectionArgs:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Landroid/content/ContentProviderOperation;->mSelectionArgs:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Landroid/content/ContentProviderOperation$BackReference;

    if-eqz v4, :cond_1

    move-object v4, v3

    check-cast v4, Landroid/content/ContentProviderOperation$BackReference;

    invoke-virtual {v4, p1, p2}, Landroid/content/ContentProviderOperation$BackReference;->resolve([Landroid/content/ContentProviderResult;I)Ljava/lang/Object;

    move-result-object v4

    goto :goto_2

    :cond_1
    move-object v4, v3

    :goto_2
    iget-object v5, p0, Landroid/content/ContentProviderOperation;->mSelectionArgs:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-object v1

    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist resolveValueBackReferences([Landroid/content/ContentProviderResult;I)Landroid/content/ContentValues;
    .locals 5

    iget-object v0, p0, Landroid/content/ContentProviderOperation;->mValues:Landroid/util/ArrayMap;

    if-eqz v0, :cond_2

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Landroid/content/ContentProviderOperation;->mValues:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Landroid/content/ContentProviderOperation;->mValues:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Landroid/content/ContentProviderOperation$BackReference;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Landroid/content/ContentProviderOperation$BackReference;

    invoke-virtual {v3, p1, p2}, Landroid/content/ContentProviderOperation$BackReference;->resolve([Landroid/content/ContentProviderResult;I)Ljava/lang/Object;

    move-result-object v3

    goto :goto_1

    :cond_0
    move-object v3, v2

    :goto_1
    iget-object v4, p0, Landroid/content/ContentProviderOperation;->mValues:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->putObject(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ContentProviderOperation("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/content/ContentProviderOperation;->mType:I

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->typeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/content/ContentProviderOperation;->mUri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    const-string/jumbo v1, "uri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/content/ContentProviderOperation;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p0, Landroid/content/ContentProviderOperation;->mValues:Landroid/util/ArrayMap;

    if-eqz v1, :cond_1

    const-string/jumbo v1, "values="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/content/ContentProviderOperation;->mValues:Landroid/util/ArrayMap;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v1, p0, Landroid/content/ContentProviderOperation;->mSelection:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string/jumbo v1, "selection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/content/ContentProviderOperation;->mSelection:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v1, p0, Landroid/content/ContentProviderOperation;->mSelectionArgs:Landroid/util/SparseArray;

    if-eqz v1, :cond_3

    const-string/jumbo v1, "selectionArgs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/content/ContentProviderOperation;->mSelectionArgs:Landroid/util/SparseArray;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    iget-object v1, p0, Landroid/content/ContentProviderOperation;->mExpectedCount:Ljava/lang/Integer;

    if-eqz v1, :cond_4

    const-string v1, "expectedCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/content/ContentProviderOperation;->mExpectedCount:Ljava/lang/Integer;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_4
    iget-boolean v1, p0, Landroid/content/ContentProviderOperation;->mYieldAllowed:Z

    if-eqz v1, :cond_5

    const-string/jumbo v1, "yieldAllowed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    iget-boolean v1, p0, Landroid/content/ContentProviderOperation;->mExceptionAllowed:Z

    if-eqz v1, :cond_6

    const-string v1, "exceptionAllowed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    iget v0, p0, Landroid/content/ContentProviderOperation;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/content/ContentProviderOperation;->mUri:Landroid/net/Uri;

    invoke-static {p1, v0}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;Landroid/net/Uri;)V

    iget-object v0, p0, Landroid/content/ContentProviderOperation;->mMethod:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/content/ContentProviderOperation;->mMethod:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    iget-object v0, p0, Landroid/content/ContentProviderOperation;->mArg:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/content/ContentProviderOperation;->mArg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    iget-object v0, p0, Landroid/content/ContentProviderOperation;->mValues:Landroid/util/ArrayMap;

    const/4 v3, -0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/content/ContentProviderOperation;->mValues:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/content/ContentProviderOperation;->mValues:Landroid/util/ArrayMap;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeArrayMap(Landroid/util/ArrayMap;)V

    goto :goto_2

    :cond_2
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2
    iget-object v0, p0, Landroid/content/ContentProviderOperation;->mExtras:Landroid/util/ArrayMap;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/content/ContentProviderOperation;->mExtras:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/content/ContentProviderOperation;->mExtras:Landroid/util/ArrayMap;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeArrayMap(Landroid/util/ArrayMap;)V

    goto :goto_3

    :cond_3
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_3
    iget-object v0, p0, Landroid/content/ContentProviderOperation;->mSelection:Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/content/ContentProviderOperation;->mSelection:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    goto :goto_4

    :cond_4
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_4
    iget-object v0, p0, Landroid/content/ContentProviderOperation;->mSelectionArgs:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSparseArray(Landroid/util/SparseArray;)V

    iget-object v0, p0, Landroid/content/ContentProviderOperation;->mExpectedCount:Ljava/lang/Integer;

    if-eqz v0, :cond_5

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/content/ContentProviderOperation;->mExpectedCount:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5

    :cond_5
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_5
    iget-boolean v0, p0, Landroid/content/ContentProviderOperation;->mYieldAllowed:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/content/ContentProviderOperation;->mExceptionAllowed:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
