.class abstract Landroid/content/pm/BaseParceledListSlice;
.super Ljava/lang/Object;
.source "BaseParceledListSlice.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field private static greylist-max-o DEBUG:Z

.field private static final greylist-max-o MAX_IPC_SIZE:I

.field private static greylist-max-o TAG:Ljava/lang/String;


# instance fields
.field private blacklist mHasBeenParceled:Z

.field private greylist-max-o mInlineCountLimit:I

.field private greylist-max-o mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmList(Landroid/content/pm/BaseParceledListSlice;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroid/content/pm/BaseParceledListSlice;->mList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmList(Landroid/content/pm/BaseParceledListSlice;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Landroid/content/pm/BaseParceledListSlice;->mList:Ljava/util/List;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetDEBUG()Z
    .locals 1

    sget-boolean v0, Landroid/content/pm/BaseParceledListSlice;->DEBUG:Z

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/content/pm/BaseParceledListSlice;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smverifySameType(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 0

    invoke-static {p0, p1}, Landroid/content/pm/BaseParceledListSlice;->verifySameType(Ljava/lang/Class;Ljava/lang/Class;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 44
    const-string v0, "ParceledListSlice"

    sput-object v0, Landroid/content/pm/BaseParceledListSlice;->TAG:Ljava/lang/String;

    .line 45
    const/4 v0, 0x0

    sput-boolean v0, Landroid/content/pm/BaseParceledListSlice;->DEBUG:Z

    .line 51
    invoke-static {}, Landroid/os/IBinder;->getSuggestedMaxIpcSizeBytes()I

    move-result v0

    sput v0, Landroid/content/pm/BaseParceledListSlice;->MAX_IPC_SIZE:I

    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .locals 17
    .param p1, "p"    # Landroid/os/Parcel;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .line 64
    .local p0, "this":Landroid/content/pm/BaseParceledListSlice;, "Landroid/content/pm/BaseParceledListSlice<TT;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const v0, 0x7fffffff

    iput v0, v1, Landroid/content/pm/BaseParceledListSlice;->mInlineCountLimit:I

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, v1, Landroid/content/pm/BaseParceledListSlice;->mHasBeenParceled:Z

    .line 65
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 66
    .local v3, "N":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, v1, Landroid/content/pm/BaseParceledListSlice;->mList:Ljava/util/List;

    .line 67
    sget-boolean v4, Landroid/content/pm/BaseParceledListSlice;->DEBUG:Z

    if-eqz v4, :cond_0

    sget-object v4, Landroid/content/pm/BaseParceledListSlice;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Retrieving "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " items"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :cond_0
    if-gtz v3, :cond_1

    .line 69
    return-void

    .line 72
    :cond_1
    invoke-virtual/range {p0 .. p2}, Landroid/content/pm/BaseParceledListSlice;->readParcelableCreator(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroid/os/Parcelable$Creator;

    move-result-object v4

    .line 73
    .local v4, "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<*>;"
    const/4 v5, 0x0

    .line 75
    .local v5, "listElementClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v6, 0x0

    .line 76
    .local v6, "i":I
    :goto_0
    const-string v7, ": "

    const/4 v8, 0x1

    if-ge v6, v3, :cond_4

    .line 77
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-nez v9, :cond_2

    .line 78
    move-object/from16 v9, p1

    goto :goto_1

    .line 80
    :cond_2
    move-object/from16 v9, p1

    invoke-direct {v1, v4, v9, v2, v5}, Landroid/content/pm/BaseParceledListSlice;->readVerifyAndAddElement(Landroid/os/Parcelable$Creator;Landroid/os/Parcel;Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v5

    .line 81
    sget-boolean v10, Landroid/content/pm/BaseParceledListSlice;->DEBUG:Z

    if-eqz v10, :cond_3

    sget-object v10, Landroid/content/pm/BaseParceledListSlice;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Read inline #"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v11, v1, Landroid/content/pm/BaseParceledListSlice;->mList:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    sub-int/2addr v12, v8

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 76
    :cond_4
    move-object/from16 v9, p1

    .line 84
    :goto_1
    if-lt v6, v3, :cond_5

    .line 85
    return-void

    .line 87
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v10

    .line 88
    .local v10, "retriever":Landroid/os/IBinder;
    :goto_2
    if-ge v6, v3, :cond_9

    .line 89
    sget-boolean v11, Landroid/content/pm/BaseParceledListSlice;->DEBUG:Z

    const-string v12, " of "

    if-eqz v11, :cond_6

    sget-object v11, Landroid/content/pm/BaseParceledListSlice;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Reading more @"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ": retriever="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :cond_6
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v11

    .line 91
    .local v11, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v13

    .line 92
    .local v13, "reply":Landroid/os/Parcel;
    invoke-virtual {v11, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    :try_start_0
    invoke-interface {v10, v8, v11, v13, v0}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    nop

    .line 99
    :goto_3
    if-ge v6, v3, :cond_8

    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v12

    if-eqz v12, :cond_8

    .line 100
    invoke-direct {v1, v4, v13, v2, v5}, Landroid/content/pm/BaseParceledListSlice;->readVerifyAndAddElement(Landroid/os/Parcelable$Creator;Landroid/os/Parcel;Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v5

    .line 102
    sget-boolean v12, Landroid/content/pm/BaseParceledListSlice;->DEBUG:Z

    if-eqz v12, :cond_7

    sget-object v12, Landroid/content/pm/BaseParceledListSlice;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Read extra #"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v1, Landroid/content/pm/BaseParceledListSlice;->mList:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v16

    add-int/lit8 v0, v16, -0x1

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_7
    add-int/lit8 v6, v6, 0x1

    const/4 v0, 0x0

    goto :goto_3

    .line 105
    :cond_8
    invoke-virtual {v13}, Landroid/os/Parcel;->recycle()V

    .line 106
    invoke-virtual {v11}, Landroid/os/Parcel;->recycle()V

    .line 107
    .end local v11    # "data":Landroid/os/Parcel;
    .end local v13    # "reply":Landroid/os/Parcel;
    const/4 v0, 0x0

    goto/16 :goto_2

    .line 95
    .restart local v11    # "data":Landroid/os/Parcel;
    .restart local v13    # "reply":Landroid/os/Parcel;
    :catch_0
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    .line 96
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v7, Landroid/content/pm/BaseParceledListSlice;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Failure retrieving array; only received "

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 97
    return-void

    .line 108
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v11    # "data":Landroid/os/Parcel;
    .end local v13    # "reply":Landroid/os/Parcel;
    :cond_9
    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 59
    .local p0, "this":Landroid/content/pm/BaseParceledListSlice;, "Landroid/content/pm/BaseParceledListSlice<TT;>;"
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const v0, 0x7fffffff

    iput v0, p0, Landroid/content/pm/BaseParceledListSlice;->mInlineCountLimit:I

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/pm/BaseParceledListSlice;->mHasBeenParceled:Z

    .line 60
    iput-object p1, p0, Landroid/content/pm/BaseParceledListSlice;->mList:Ljava/util/List;

    .line 61
    return-void
.end method

.method private greylist-max-o readCreator(Landroid/os/Parcelable$Creator;Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 2
    .param p2, "p"    # Landroid/os/Parcel;
    .param p3, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcelable$Creator<",
            "*>;",
            "Landroid/os/Parcel;",
            "Ljava/lang/ClassLoader;",
            ")TT;"
        }
    .end annotation

    .line 123
    .local p0, "this":Landroid/content/pm/BaseParceledListSlice;, "Landroid/content/pm/BaseParceledListSlice<TT;>;"
    .local p1, "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<*>;"
    instance-of v0, p1, Landroid/os/Parcelable$ClassLoaderCreator;

    if-eqz v0, :cond_0

    .line 124
    move-object v0, p1

    check-cast v0, Landroid/os/Parcelable$ClassLoaderCreator;

    .line 126
    .local v0, "classLoaderCreator":Landroid/os/Parcelable$ClassLoaderCreator;, "Landroid/os/Parcelable$ClassLoaderCreator<*>;"
    invoke-interface {v0, p2, p3}, Landroid/os/Parcelable$ClassLoaderCreator;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 128
    .end local v0    # "classLoaderCreator":Landroid/os/Parcelable$ClassLoaderCreator;, "Landroid/os/Parcelable$ClassLoaderCreator<*>;"
    :cond_0
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private blacklist readVerifyAndAddElement(Landroid/os/Parcelable$Creator;Landroid/os/Parcel;Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Class;
    .locals 2
    .param p2, "p"    # Landroid/os/Parcel;
    .param p3, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcelable$Creator<",
            "*>;",
            "Landroid/os/Parcel;",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 112
    .local p0, "this":Landroid/content/pm/BaseParceledListSlice;, "Landroid/content/pm/BaseParceledListSlice<TT;>;"
    .local p1, "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<*>;"
    .local p4, "listElementClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/content/pm/BaseParceledListSlice;->readCreator(Landroid/os/Parcelable$Creator;Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    .line 113
    .local v0, "parcelable":Ljava/lang/Object;, "TT;"
    if-nez p4, :cond_0

    .line 114
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p4

    goto :goto_0

    .line 116
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {p4, v1}, Landroid/content/pm/BaseParceledListSlice;->verifySameType(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 118
    :goto_0
    iget-object v1, p0, Landroid/content/pm/BaseParceledListSlice;->mList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    return-object p4
.end method

.method private static greylist-max-o verifySameType(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 132
    .local p0, "expected":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "actual":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 133
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t unparcel type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 134
    const/4 v2, 0x0

    if-nez p1, :cond_0

    move-object v3, v2

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " in list of type "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 135
    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :cond_2
    return-void
.end method


# virtual methods
.method public greylist-max-r getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 141
    .local p0, "this":Landroid/content/pm/BaseParceledListSlice;, "Landroid/content/pm/BaseParceledListSlice<TT;>;"
    iget-object v0, p0, Landroid/content/pm/BaseParceledListSlice;->mList:Ljava/util/List;

    return-object v0
.end method

.method protected abstract greylist-max-o readParcelableCreator(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "Ljava/lang/ClassLoader;",
            ")",
            "Landroid/os/Parcelable$Creator<",
            "*>;"
        }
    .end annotation
.end method

.method public greylist-max-o setInlineCountLimit(I)V
    .locals 0
    .param p1, "maxCount"    # I

    .line 149
    .local p0, "this":Landroid/content/pm/BaseParceledListSlice;, "Landroid/content/pm/BaseParceledListSlice<TT;>;"
    iput p1, p0, Landroid/content/pm/BaseParceledListSlice;->mInlineCountLimit:I

    .line 150
    return-void
.end method

.method protected abstract greylist-max-o writeElement(Ljava/lang/Object;Landroid/os/Parcel;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/os/Parcel;",
            "I)V"
        }
    .end annotation
.end method

.method protected abstract greylist-max-r writeParcelableCreator(Ljava/lang/Object;Landroid/os/Parcel;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/os/Parcel;",
            ")V"
        }
    .end annotation
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 10
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 163
    .local p0, "this":Landroid/content/pm/BaseParceledListSlice;, "Landroid/content/pm/BaseParceledListSlice<TT;>;"
    iget-boolean v0, p0, Landroid/content/pm/BaseParceledListSlice;->mHasBeenParceled:Z

    if-nez v0, :cond_5

    .line 166
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/pm/BaseParceledListSlice;->mHasBeenParceled:Z

    .line 167
    iget-object v1, p0, Landroid/content/pm/BaseParceledListSlice;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 168
    .local v1, "N":I
    move v2, p2

    .line 169
    .local v2, "callFlags":I
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 170
    sget-boolean v3, Landroid/content/pm/BaseParceledListSlice;->DEBUG:Z

    if-eqz v3, :cond_0

    sget-object v3, Landroid/content/pm/BaseParceledListSlice;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Writing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " items"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :cond_0
    if-lez v1, :cond_4

    .line 172
    iget-object v3, p0, Landroid/content/pm/BaseParceledListSlice;->mList:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 173
    .local v3, "listElementClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v5, p0, Landroid/content/pm/BaseParceledListSlice;->mList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, v5, p1}, Landroid/content/pm/BaseParceledListSlice;->writeParcelableCreator(Ljava/lang/Object;Landroid/os/Parcel;)V

    .line 174
    const/4 v5, 0x0

    .line 175
    .local v5, "i":I
    :goto_0
    if-ge v5, v1, :cond_2

    iget v6, p0, Landroid/content/pm/BaseParceledListSlice;->mInlineCountLimit:I

    if-ge v5, v6, :cond_2

    invoke-virtual {p1}, Landroid/os/Parcel;->dataSize()I

    move-result v6

    sget v7, Landroid/content/pm/BaseParceledListSlice;->MAX_IPC_SIZE:I

    if-ge v6, v7, :cond_2

    .line 176
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 178
    iget-object v6, p0, Landroid/content/pm/BaseParceledListSlice;->mList:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 179
    .local v6, "parcelable":Ljava/lang/Object;, "TT;"
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/content/pm/BaseParceledListSlice;->verifySameType(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 180
    invoke-virtual {p0, v6, p1, v2}, Landroid/content/pm/BaseParceledListSlice;->writeElement(Ljava/lang/Object;Landroid/os/Parcel;I)V

    .line 182
    sget-boolean v7, Landroid/content/pm/BaseParceledListSlice;->DEBUG:Z

    if-eqz v7, :cond_1

    sget-object v7, Landroid/content/pm/BaseParceledListSlice;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Wrote inline #"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/content/pm/BaseParceledListSlice;->mList:Ljava/util/List;

    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_1
    nop

    .end local v6    # "parcelable":Ljava/lang/Object;, "TT;"
    add-int/lit8 v5, v5, 0x1

    .line 184
    goto :goto_0

    .line 185
    :cond_2
    if-ge v5, v1, :cond_4

    .line 186
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 187
    new-instance v0, Landroid/content/pm/BaseParceledListSlice$1;

    invoke-direct {v0, p0, v1, v3, v2}, Landroid/content/pm/BaseParceledListSlice$1;-><init>(Landroid/content/pm/BaseParceledListSlice;ILjava/lang/Class;I)V

    .line 224
    .local v0, "retriever":Landroid/os/Binder;
    sget-boolean v4, Landroid/content/pm/BaseParceledListSlice;->DEBUG:Z

    if-eqz v4, :cond_3

    sget-object v4, Landroid/content/pm/BaseParceledListSlice;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Breaking @"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": retriever="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :cond_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 228
    .end local v0    # "retriever":Landroid/os/Binder;
    .end local v3    # "listElementClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "i":I
    :cond_4
    return-void

    .line 164
    .end local v1    # "N":I
    .end local v2    # "callFlags":I
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t Parcel a ParceledListSlice more than once"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
