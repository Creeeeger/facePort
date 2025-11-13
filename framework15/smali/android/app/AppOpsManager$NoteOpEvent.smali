.class public final Landroid/app/AppOpsManager$NoteOpEvent;
.super Ljava/lang/Object;
.source "AppOpsManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/AppOpsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NoteOpEvent"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/AppOpsManager$NoteOpEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mDuration:J

.field private blacklist mNoteTime:J

.field private blacklist mProxy:Landroid/app/AppOpsManager$OpEventProxyInfo;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmProxy(Landroid/app/AppOpsManager$NoteOpEvent;)Landroid/app/AppOpsManager$OpEventProxyInfo;
    .locals 0

    iget-object p0, p0, Landroid/app/AppOpsManager$NoteOpEvent;->mProxy:Landroid/app/AppOpsManager$OpEventProxyInfo;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmProxy(Landroid/app/AppOpsManager$NoteOpEvent;Landroid/app/AppOpsManager$OpEventProxyInfo;)V
    .locals 0

    iput-object p1, p0, Landroid/app/AppOpsManager$NoteOpEvent;->mProxy:Landroid/app/AppOpsManager$OpEventProxyInfo;

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/app/AppOpsManager$NoteOpEvent$1;

    invoke-direct {v0}, Landroid/app/AppOpsManager$NoteOpEvent$1;-><init>()V

    sput-object v0, Landroid/app/AppOpsManager$NoteOpEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(JJLandroid/app/AppOpsManager$OpEventProxyInfo;)V
    .locals 12

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-wide v1, p1

    iput-wide v1, v0, Landroid/app/AppOpsManager$NoteOpEvent;->mNoteTime:J

    const-class v3, Landroid/annotation/IntRange;

    iget-wide v5, v0, Landroid/app/AppOpsManager$NoteOpEvent;->mNoteTime:J

    const-string v7, "from"

    const-wide/16 v8, 0x0

    const/4 v4, 0x0

    invoke-static/range {v3 .. v9}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/IntRange;JLjava/lang/String;J)V

    move-wide v3, p3

    iput-wide v3, v0, Landroid/app/AppOpsManager$NoteOpEvent;->mDuration:J

    const-class v5, Landroid/annotation/IntRange;

    iget-wide v7, v0, Landroid/app/AppOpsManager$NoteOpEvent;->mDuration:J

    const-string v9, "from"

    const-wide/16 v10, -0x1

    const/4 v6, 0x0

    invoke-static/range {v5 .. v11}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/IntRange;JLjava/lang/String;J)V

    move-object/from16 v5, p5

    iput-object v5, v0, Landroid/app/AppOpsManager$NoteOpEvent;->mProxy:Landroid/app/AppOpsManager$OpEventProxyInfo;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/app/AppOpsManager$NoteOpEvent;)V
    .locals 6

    iget-wide v1, p1, Landroid/app/AppOpsManager$NoteOpEvent;->mNoteTime:J

    iget-wide v3, p1, Landroid/app/AppOpsManager$NoteOpEvent;->mDuration:J

    iget-object v0, p1, Landroid/app/AppOpsManager$NoteOpEvent;->mProxy:Landroid/app/AppOpsManager$OpEventProxyInfo;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/app/AppOpsManager$OpEventProxyInfo;

    iget-object v5, p1, Landroid/app/AppOpsManager$NoteOpEvent;->mProxy:Landroid/app/AppOpsManager$OpEventProxyInfo;

    invoke-direct {v0, v5}, Landroid/app/AppOpsManager$OpEventProxyInfo;-><init>(Landroid/app/AppOpsManager$OpEventProxyInfo;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v5, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/AppOpsManager$NoteOpEvent;-><init>(JJLandroid/app/AppOpsManager$OpEventProxyInfo;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 22

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    and-int/lit8 v6, v1, 0x4

    if-nez v6, :cond_0

    const/4 v6, 0x0

    move-object/from16 v7, p1

    goto :goto_0

    :cond_0
    sget-object v6, Landroid/app/AppOpsManager$OpEventProxyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v7, p1

    invoke-virtual {v7, v6}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AppOpsManager$OpEventProxyInfo;

    :goto_0
    iput-wide v2, v0, Landroid/app/AppOpsManager$NoteOpEvent;->mNoteTime:J

    const-class v8, Landroid/annotation/IntRange;

    iget-wide v10, v0, Landroid/app/AppOpsManager$NoteOpEvent;->mNoteTime:J

    const-string v12, "from"

    const-wide/16 v13, 0x0

    const/4 v9, 0x0

    invoke-static/range {v8 .. v14}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/IntRange;JLjava/lang/String;J)V

    iput-wide v4, v0, Landroid/app/AppOpsManager$NoteOpEvent;->mDuration:J

    const-class v15, Landroid/annotation/IntRange;

    iget-wide v8, v0, Landroid/app/AppOpsManager$NoteOpEvent;->mDuration:J

    const-string v19, "from"

    const-wide/16 v20, -0x1

    const/16 v16, 0x0

    move-wide/from16 v17, v8

    invoke-static/range {v15 .. v21}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/IntRange;JLjava/lang/String;J)V

    iput-object v6, v0, Landroid/app/AppOpsManager$NoteOpEvent;->mProxy:Landroid/app/AppOpsManager$OpEventProxyInfo;

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getDuration()J
    .locals 2

    iget-wide v0, p0, Landroid/app/AppOpsManager$NoteOpEvent;->mDuration:J

    return-wide v0
.end method

.method public blacklist getNoteTime()J
    .locals 2

    iget-wide v0, p0, Landroid/app/AppOpsManager$NoteOpEvent;->mNoteTime:J

    return-wide v0
.end method

.method public blacklist getProxy()Landroid/app/AppOpsManager$OpEventProxyInfo;
    .locals 1

    iget-object v0, p0, Landroid/app/AppOpsManager$NoteOpEvent;->mProxy:Landroid/app/AppOpsManager$OpEventProxyInfo;

    return-object v0
.end method

.method public blacklist reinit(JJLandroid/app/AppOpsManager$OpEventProxyInfo;Landroid/util/Pools$Pool;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Landroid/app/AppOpsManager$OpEventProxyInfo;",
            "Landroid/util/Pools$Pool<",
            "Landroid/app/AppOpsManager$OpEventProxyInfo;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/AppOpsManager$NoteOpEvent;->mNoteTime:J

    const-wide v6, 0x7fffffffffffffffL

    const-string v8, "duration"

    const-wide/16 v4, -0x1

    move-wide v2, p3

    invoke-static/range {v2 .. v8}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(JJJLjava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/AppOpsManager$NoteOpEvent;->mDuration:J

    iget-object v0, p0, Landroid/app/AppOpsManager$NoteOpEvent;->mProxy:Landroid/app/AppOpsManager$OpEventProxyInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/AppOpsManager$NoteOpEvent;->mProxy:Landroid/app/AppOpsManager$OpEventProxyInfo;

    invoke-interface {p6, v0}, Landroid/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    :cond_0
    iput-object p5, p0, Landroid/app/AppOpsManager$NoteOpEvent;->mProxy:Landroid/app/AppOpsManager$OpEventProxyInfo;

    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/app/AppOpsManager$NoteOpEvent;->mProxy:Landroid/app/AppOpsManager$OpEventProxyInfo;

    if-eqz v1, :cond_0

    or-int/lit8 v1, v0, 0x4

    int-to-byte v0, v1

    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-wide v1, p0, Landroid/app/AppOpsManager$NoteOpEvent;->mNoteTime:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v1, p0, Landroid/app/AppOpsManager$NoteOpEvent;->mDuration:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v1, p0, Landroid/app/AppOpsManager$NoteOpEvent;->mProxy:Landroid/app/AppOpsManager$OpEventProxyInfo;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/app/AppOpsManager$NoteOpEvent;->mProxy:Landroid/app/AppOpsManager$OpEventProxyInfo;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    :cond_1
    return-void
.end method
