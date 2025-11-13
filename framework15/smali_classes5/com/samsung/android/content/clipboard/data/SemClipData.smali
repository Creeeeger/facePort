.class public abstract Lcom/samsung/android/content/clipboard/data/SemClipData;
.super Ljava/lang/Object;
.source "SemClipData.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/content/clipboard/data/SemClipData;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "SemClipData"

.field private static final whitelist serialVersionUID:J = 0x1L


# instance fields
.field private transient blacklist activePermissionOwners:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private transient blacklist mBundle:Landroid/os/PersistableBundle;

.field private blacklist mCallerUid:J

.field protected transient blacklist mClipData:Landroid/content/ClipData;

.field private blacklist mClipId:Ljava/lang/String;

.field private blacklist mIsPCClip:Z

.field private blacklist mIsProtected:Z

.field private blacklist mIsRemoteClip:Z

.field private blacklist mKeyList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mLabel:Ljava/lang/CharSequence;

.field private blacklist mMimeTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mObjList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private transient blacklist mParcelFd:Landroid/os/ParcelFileDescriptor;

.field private blacklist mRemoteClipId:Ljava/lang/String;

.field private blacklist mRemoteState:I

.field private blacklist mTimestamp:J

.field private blacklist mType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/content/clipboard/data/SemClipData$1;

    invoke-direct {v0}, Lcom/samsung/android/content/clipboard/data/SemClipData$1;-><init>()V

    sput-object v0, Lcom/samsung/android/content/clipboard/data/SemClipData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(I)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mTimestamp:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mIsProtected:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mClipData:Landroid/content/ClipData;

    const-string v2, ""

    iput-object v2, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mLabel:Ljava/lang/CharSequence;

    iput-object v1, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mBundle:Landroid/os/PersistableBundle;

    iput-boolean v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mIsPCClip:Z

    iput-boolean v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mIsRemoteClip:Z

    iput v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mRemoteState:I

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->activePermissionOwners:Ljava/util/HashSet;

    iput p1, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mType:I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    int-to-long v2, v0

    iput-wide v2, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mCallerUid:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mTimestamp:J

    iput-object v1, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mParcelFd:Landroid/os/ParcelFileDescriptor;

    invoke-direct {p0}, Lcom/samsung/android/content/clipboard/data/SemClipData;->createUniqueId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mClipId:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mTimestamp:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mIsProtected:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mClipData:Landroid/content/ClipData;

    const-string v2, ""

    iput-object v2, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mLabel:Ljava/lang/CharSequence;

    iput-object v1, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mBundle:Landroid/os/PersistableBundle;

    iput-boolean v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mIsPCClip:Z

    iput-boolean v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mIsRemoteClip:Z

    iput v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mRemoteState:I

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->activePermissionOwners:Ljava/util/HashSet;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mTimestamp:J

    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mIsProtected:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mCallerUid:J

    const-class v0, Landroid/content/ClipData;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/ClipData;

    iput-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mClipData:Landroid/content/ClipData;

    const-class v0, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    iput-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mParcelFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mClipId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mMimeTypes:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mLabel:Ljava/lang/CharSequence;

    const-class v0, Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mKeyList:Ljava/util/ArrayList;

    const-class v0, Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mObjList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/os/Parcel;->readPersistableBundle()Landroid/os/PersistableBundle;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mBundle:Landroid/os/PersistableBundle;

    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mIsPCClip:Z

    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mIsRemoteClip:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mRemoteClipId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mRemoteState:I

    return-void
.end method

.method private blacklist createUniqueId()Ljava/lang/String;
    .locals 6

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const/16 v4, 0xc

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const/16 v4, 0xd

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const/16 v4, 0xe

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v2, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private blacklist putIntoBundle(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mBundle:Landroid/os/PersistableBundle;

    move-object v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_0
    instance-of v0, p2, [I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mBundle:Landroid/os/PersistableBundle;

    move-object v1, p2

    check-cast v1, [I

    invoke-virtual {v0, p1, v1}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    goto/16 :goto_0

    :cond_1
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mBundle:Landroid/os/PersistableBundle;

    move-object v1, p2

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    goto/16 :goto_0

    :cond_2
    instance-of v0, p2, [J

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mBundle:Landroid/os/PersistableBundle;

    move-object v1, p2

    check-cast v1, [J

    invoke-virtual {v0, p1, v1}, Landroid/os/PersistableBundle;->putLongArray(Ljava/lang/String;[J)V

    goto/16 :goto_0

    :cond_3
    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mBundle:Landroid/os/PersistableBundle;

    move-object v1, p2

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/PersistableBundle;->putDouble(Ljava/lang/String;D)V

    goto/16 :goto_0

    :cond_4
    instance-of v0, p2, [D

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mBundle:Landroid/os/PersistableBundle;

    move-object v1, p2

    check-cast v1, [D

    invoke-virtual {v0, p1, v1}, Landroid/os/PersistableBundle;->putDoubleArray(Ljava/lang/String;[D)V

    goto :goto_0

    :cond_5
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mBundle:Landroid/os/PersistableBundle;

    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    instance-of v0, p2, [Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mBundle:Landroid/os/PersistableBundle;

    move-object v1, p2

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mBundle:Landroid/os/PersistableBundle;

    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_8
    instance-of v0, p2, [Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mBundle:Landroid/os/PersistableBundle;

    move-object v1, p2

    check-cast v1, [Z

    invoke-virtual {v0, p1, v1}, Landroid/os/PersistableBundle;->putBooleanArray(Ljava/lang/String;[Z)V

    goto :goto_0

    :cond_9
    instance-of v0, p2, Landroid/os/PersistableBundle;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mBundle:Landroid/os/PersistableBundle;

    move-object v1, p2

    check-cast v1, Landroid/os/PersistableBundle;

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->putAll(Landroid/os/PersistableBundle;)V

    goto :goto_0

    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "putIntoBundle fails. value is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemClipData"

    invoke-static {v1, v0}, Landroid/sec/clipboard/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public blacklist canAlternateClipData(I)Z
    .locals 2

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    iget v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mType:I

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Landroid/sec/clipboard/data/ClipboardDataFactory;->createClipBoardData(I)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/content/clipboard/data/SemClipData;->setAlternateClipData(ILcom/samsung/android/content/clipboard/data/SemClipData;)Z

    move-result v1

    return v1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist checkClipId()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mClipId:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/content/clipboard/data/SemClipData;->createUniqueId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mClipId:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public blacklist closeParcelFileDescriptor()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mParcelFd:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mParcelFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string v1, "SemClipData"

    const-string v2, "IOException!"

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mParcelFd:Landroid/os/ParcelFileDescriptor;

    :cond_1
    return-void
.end method

.method public abstract blacklist convertForRemote()V
.end method

.method public blacklist createThumbnailFromData(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract blacklist deleteContentUri(Landroid/content/Context;Ljava/lang/String;)V
.end method

.method protected blacklist deleteContentUriInternal(Landroid/content/Context;Ljava/lang/String;)V
    .locals 10

    const-string/jumbo v0, "id"

    const-string v1, "SemClipData"

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/content/clipboard/provider/SemImageClipDataProvider;->CONTENT_URI:Landroid/net/Uri;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v6

    const-string v7, "_data=? "

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    move-object v3, v4

    if-eqz v3, :cond_0

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_0

    nop

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    sget-object v4, Lcom/samsung/android/content/clipboard/provider/SemImageClipDataProvider;->CONTENT_URI:Landroid/net/Uri;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v4

    :cond_0
    if-eqz v3, :cond_1

    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    const/4 v3, 0x0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_5

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SQLiteException occurs in deleteContentUri because "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/sec/clipboard/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v2, :cond_2

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    :try_start_2
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v6, 0x0

    invoke-virtual {v0, v2, v6, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    nop

    :goto_2
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    :try_start_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception occurs in deleteContentUri because "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/sec/clipboard/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    nop

    goto :goto_2

    :goto_3
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_2
    :goto_4
    return-void

    :goto_5
    if-eqz v3, :cond_3

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    const/4 v3, 0x0

    :cond_3
    throw v0
.end method

.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    instance-of v1, p1, Lcom/samsung/android/content/clipboard/data/SemClipData;

    if-eqz v1, :cond_1

    move-object v1, p1

    check-cast v1, Lcom/samsung/android/content/clipboard/data/SemClipData;

    invoke-virtual {v1}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getClipType()I

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getClipType()I

    move-result v3

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move v0, v2

    goto :goto_1

    :cond_1
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    :cond_2
    :goto_1
    return v0
.end method

.method public blacklist getActivePermissionOwners()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->activePermissionOwners:Ljava/util/HashSet;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->activePermissionOwners:Ljava/util/HashSet;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->activePermissionOwners:Ljava/util/HashSet;

    return-object v0
.end method

.method public blacklist getAlternateClipData(I)Lcom/samsung/android/content/clipboard/data/SemClipData;
    .locals 3

    invoke-static {p1}, Landroid/sec/clipboard/data/ClipboardDataFactory;->createClipBoardData(I)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/content/clipboard/data/SemClipData;->isProtected()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/content/clipboard/data/SemClipData;->setProtected(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/content/clipboard/data/SemClipData;->isPCClip()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/content/clipboard/data/SemClipData;->setPCClip(Z)V

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/content/clipboard/data/SemClipData;->setAlternateClipData(ILcom/samsung/android/content/clipboard/data/SemClipData;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ClipBoardDataFactory.createClipBoardData() is null : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemClipData"

    invoke-static {v2, v1}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-object v0
.end method

.method public blacklist getCallerUid()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mCallerUid:J

    return-wide v0
.end method

.method public whitelist getClipData()Landroid/content/ClipData;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getClipDataInternal()Landroid/content/ClipData;

    move-result-object v0

    return-object v0
.end method

.method protected abstract blacklist getClipDataInternal()Landroid/content/ClipData;
.end method

.method public whitelist getClipId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mClipId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getClipType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mType:I

    return v0
.end method

.method public blacklist getKeyList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mKeyList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public blacklist getLabel()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public blacklist getObjList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mObjList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public blacklist getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mParcelFd:Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method

.method public blacklist getPersistableBundle()Landroid/os/PersistableBundle;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mBundle:Landroid/os/PersistableBundle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mBundle:Landroid/os/PersistableBundle;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mKeyList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mObjList:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mIsPCClip:Z

    if-nez v0, :cond_2

    const/4 v0, 0x0

    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mKeyList:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mObjList:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mKeyList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-instance v1, Landroid/os/PersistableBundle;

    invoke-direct {v1, v0}, Landroid/os/PersistableBundle;-><init>(I)V

    iput-object v1, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mBundle:Landroid/os/PersistableBundle;

    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_3

    iget-object v1, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mKeyList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mObjList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/content/clipboard/data/SemClipData;->putIntoBundle(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mIsPCClip:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mKeyList:Ljava/util/ArrayList;

    if-nez v0, :cond_4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mKeyList:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mKeyList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mObjList:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mObjList:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mObjList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mBundle:Landroid/os/PersistableBundle;

    if-nez v0, :cond_6

    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mBundle:Landroid/os/PersistableBundle;

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mKeyList:Ljava/util/ArrayList;

    const-string v1, "PCCLIP"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mObjList:Ljava/util/ArrayList;

    iget-boolean v2, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mIsPCClip:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mBundle:Landroid/os/PersistableBundle;

    iget-boolean v2, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mIsPCClip:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_7
    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mBundle:Landroid/os/PersistableBundle;

    return-object v0
.end method

.method public blacklist getRemoteClipId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mRemoteClipId:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getRemoteState()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mRemoteState:I

    return v0
.end method

.method public blacklist getThumbnailPath()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mTimestamp:J

    return-wide v0
.end method

.method public abstract blacklist insertContentUri(Landroid/content/Context;Ljava/lang/String;)V
.end method

.method public blacklist isPCClip()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mIsPCClip:Z

    return v0
.end method

.method public whitelist isProtected()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mIsProtected:Z

    return v0
.end method

.method public blacklist isRemoteClip()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mIsRemoteClip:Z

    return v0
.end method

.method protected abstract blacklist readFromSource(Landroid/os/Parcel;)V
.end method

.method public blacklist setAlternateClipData(ILcom/samsung/android/content/clipboard/data/SemClipData;)Z
    .locals 2

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mParcelFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p2, v0}, Lcom/samsung/android/content/clipboard/data/SemClipData;->setParcelFileDescriptor(Landroid/os/ParcelFileDescriptor;)V

    iget-wide v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mTimestamp:J

    invoke-virtual {p2, v0, v1}, Lcom/samsung/android/content/clipboard/data/SemClipData;->setTimestamp(J)V

    iget-wide v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mCallerUid:J

    invoke-virtual {p2, v0, v1}, Lcom/samsung/android/content/clipboard/data/SemClipData;->setCallerUid(J)V

    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mClipData:Landroid/content/ClipData;

    invoke-virtual {p2, v0}, Lcom/samsung/android/content/clipboard/data/SemClipData;->setClipData(Landroid/content/ClipData;)V

    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mClipId:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/samsung/android/content/clipboard/data/SemClipData;->setClipId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mMimeTypes:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Lcom/samsung/android/content/clipboard/data/SemClipData;->setMimeTypes(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Lcom/samsung/android/content/clipboard/data/SemClipData;->setLabel(Ljava/lang/CharSequence;)Z

    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mKeyList:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Lcom/samsung/android/content/clipboard/data/SemClipData;->setKeyList(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mObjList:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Lcom/samsung/android/content/clipboard/data/SemClipData;->setObjList(Ljava/util/ArrayList;)V

    invoke-virtual {p0}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getPersistableBundle()Landroid/os/PersistableBundle;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/samsung/android/content/clipboard/data/SemClipData;->setPersistableBundle(Landroid/os/PersistableBundle;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setCallerUid(J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mCallerUid:J

    return-void
.end method

.method public blacklist setClipData(Landroid/content/ClipData;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mClipData:Landroid/content/ClipData;

    return-void
.end method

.method public blacklist setClipData([Ljava/lang/String;Landroid/content/ClipData$Item;)V
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mMimeTypes:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    new-instance v1, Landroid/content/ClipData;

    invoke-direct {v1, v0, p1, p2}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/content/ClipData;

    iget-object v2, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mMimeTypes:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mMimeTypes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-direct {v1, v0, v2, p2}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    goto :goto_0

    :cond_1
    new-instance v1, Landroid/content/ClipData;

    const-string v2, "clipboarddragNdrop"

    invoke-direct {v1, v2, p1, p2}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getPersistableBundle()Landroid/os/PersistableBundle;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/ClipDescription;->setExtras(Landroid/os/PersistableBundle;)V

    :cond_2
    iput-object v1, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mClipData:Landroid/content/ClipData;

    return-void
.end method

.method public blacklist setClipId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mClipId:Ljava/lang/String;

    return-void
.end method

.method public blacklist setKeyList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mKeyList:Ljava/util/ArrayList;

    return-void
.end method

.method public blacklist setLabel(Ljava/lang/CharSequence;)Z
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/high16 v2, 0x20000

    if-le v0, v2, :cond_1

    invoke-interface {p1, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    :cond_1
    iput-object p1, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mLabel:Ljava/lang/CharSequence;

    const/4 v0, 0x1

    return v0
.end method

.method public blacklist setLabelAndMimeType(Landroid/content/ClipData;)V
    .locals 3

    invoke-virtual {p1}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/ClipDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/content/ClipDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/content/clipboard/data/SemClipData;->setLabel(Ljava/lang/CharSequence;)Z

    :cond_0
    invoke-virtual {v0}, Landroid/content/ClipDescription;->getMimeTypeCount()I

    move-result v1

    :goto_0
    add-int/lit8 v2, v1, -0x1

    if-lez v1, :cond_1

    invoke-virtual {v0, v2}, Landroid/content/ClipDescription;->getMimeType(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/content/clipboard/data/SemClipData;->setMimeType(Ljava/lang/String;)V

    move v1, v2

    goto :goto_0

    :cond_1
    return-void
.end method

.method public blacklist setMimeType(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mMimeTypes:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mMimeTypes:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mMimeTypes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method blacklist setMimeTypes(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mMimeTypes:Ljava/util/ArrayList;

    return-void
.end method

.method public blacklist setObjList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mObjList:Ljava/util/ArrayList;

    return-void
.end method

.method public blacklist setPCClip(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mIsPCClip:Z

    return-void
.end method

.method public blacklist setPCClipExtra(Z)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mBundle:Landroid/os/PersistableBundle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mKeyList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mObjList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mKeyList:Ljava/util/ArrayList;

    const-string v1, "PCCLIP"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mObjList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mBundle:Landroid/os/PersistableBundle;

    invoke-virtual {v2, v1, p1}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public blacklist setParcelFileDescriptor(Landroid/os/ParcelFileDescriptor;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mParcelFd:Landroid/os/ParcelFileDescriptor;

    return-void
.end method

.method public blacklist setPersistableBundle(Landroid/os/PersistableBundle;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mBundle:Landroid/os/PersistableBundle;

    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mKeyList:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mKeyList:Ljava/util/ArrayList;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mObjList:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mObjList:Ljava/util/ArrayList;

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mKeyList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mObjList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p1}, Landroid/os/PersistableBundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mKeyList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mObjList:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mKeyList:Ljava/util/ArrayList;

    const-string v2, "PCCLIP"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mObjList:Ljava/util/ArrayList;

    iget-boolean v3, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mIsPCClip:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mBundle:Landroid/os/PersistableBundle;

    iget-boolean v3, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mIsPCClip:Z

    invoke-virtual {v1, v2, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public blacklist setProtectState(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-boolean p1, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mIsProtected:Z

    return-void
.end method

.method public whitelist setProtected(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mIsProtected:Z

    iget-boolean v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mIsPCClip:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0, v1}, Lcom/samsung/android/content/clipboard/data/SemClipData;->setPCClip(Z)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/content/clipboard/data/SemClipData;->setPCClipExtra(Z)V

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mIsRemoteClip:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p0, v1}, Lcom/samsung/android/content/clipboard/data/SemClipData;->setRemoteClip(Z)V

    :cond_1
    return-void
.end method

.method public blacklist setRemoteClip(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mIsRemoteClip:Z

    return-void
.end method

.method public blacklist setRemoteClipId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mRemoteClipId:Ljava/lang/String;

    return-void
.end method

.method public blacklist setRemoteState(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mRemoteState:I

    return-void
.end method

.method public blacklist setThumbnailPath(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setTimestamp(J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mTimestamp:J

    return-void
.end method

.method public abstract blacklist toLoad()V
.end method

.method public abstract blacklist toSave()V
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mTimestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-boolean v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mIsProtected:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    iget-wide v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mCallerUid:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mClipData:Landroid/content/ClipData;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mParcelFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mClipId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mMimeTypes:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mKeyList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mObjList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getPersistableBundle()Landroid/os/PersistableBundle;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writePersistableBundle(Landroid/os/PersistableBundle;)V

    iget-boolean v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mIsPCClip:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mIsRemoteClip:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mRemoteClipId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mRemoteState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
