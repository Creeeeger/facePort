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

.field private blacklist mUidCalling:I


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

    .line 3827
    new-instance v0, Landroid/app/AppOpsManager$NoteOpEvent$1;

    invoke-direct {v0}, Landroid/app/AppOpsManager$NoteOpEvent$1;-><init>()V

    sput-object v0, Landroid/app/AppOpsManager$NoteOpEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(JJLandroid/app/AppOpsManager$OpEventProxyInfo;)V
    .locals 17
    .param p1, "noteTime"    # J
    .param p3, "duration"    # J
    .param p5, "proxy"    # Landroid/app/AppOpsManager$OpEventProxyInfo;

    .line 3713
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3714
    move-wide/from16 v8, p1

    iput-wide v8, v0, Landroid/app/AppOpsManager$NoteOpEvent;->mNoteTime:J

    .line 3715
    const-class v1, Landroid/annotation/IntRange;

    const/4 v2, 0x0

    const-string v5, "from"

    const-wide/16 v6, 0x0

    move-wide/from16 v3, p1

    invoke-static/range {v1 .. v7}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/IntRange;JLjava/lang/String;J)V

    .line 3718
    move-wide/from16 v1, p3

    iput-wide v1, v0, Landroid/app/AppOpsManager$NoteOpEvent;->mDuration:J

    .line 3719
    const-class v10, Landroid/annotation/IntRange;

    const/4 v11, 0x0

    const-string v14, "from"

    const-wide/16 v15, -0x1

    move-wide/from16 v12, p3

    invoke-static/range {v10 .. v16}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/IntRange;JLjava/lang/String;J)V

    .line 3722
    move-object/from16 v3, p5

    iput-object v3, v0, Landroid/app/AppOpsManager$NoteOpEvent;->mProxy:Landroid/app/AppOpsManager$OpEventProxyInfo;

    .line 3725
    return-void
.end method

.method public constructor blacklist <init>(JJLandroid/app/AppOpsManager$OpEventProxyInfo;I)V
    .locals 17
    .param p1, "noteTime"    # J
    .param p3, "duration"    # J
    .param p5, "proxy"    # Landroid/app/AppOpsManager$OpEventProxyInfo;
    .param p6, "uidCalling"    # I

    .line 3732
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3733
    move-wide/from16 v8, p1

    iput-wide v8, v0, Landroid/app/AppOpsManager$NoteOpEvent;->mNoteTime:J

    .line 3734
    const-class v1, Landroid/annotation/IntRange;

    const/4 v2, 0x0

    const-string v5, "from"

    const-wide/16 v6, 0x0

    move-wide/from16 v3, p1

    invoke-static/range {v1 .. v7}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/IntRange;JLjava/lang/String;J)V

    .line 3737
    move-wide/from16 v1, p3

    iput-wide v1, v0, Landroid/app/AppOpsManager$NoteOpEvent;->mDuration:J

    .line 3738
    const-class v10, Landroid/annotation/IntRange;

    const/4 v11, 0x0

    const-string v14, "from"

    const-wide/16 v15, -0x1

    move-wide/from16 v12, p3

    invoke-static/range {v10 .. v16}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/IntRange;JLjava/lang/String;J)V

    .line 3741
    move-object/from16 v3, p5

    iput-object v3, v0, Landroid/app/AppOpsManager$NoteOpEvent;->mProxy:Landroid/app/AppOpsManager$OpEventProxyInfo;

    .line 3742
    move/from16 v4, p6

    iput v4, v0, Landroid/app/AppOpsManager$NoteOpEvent;->mUidCalling:I

    .line 3745
    return-void
.end method

.method public constructor blacklist <init>(Landroid/app/AppOpsManager$NoteOpEvent;)V
    .locals 7
    .param p1, "original"    # Landroid/app/AppOpsManager$NoteOpEvent;

    .line 3680
    iget-wide v1, p1, Landroid/app/AppOpsManager$NoteOpEvent;->mNoteTime:J

    iget-wide v3, p1, Landroid/app/AppOpsManager$NoteOpEvent;->mDuration:J

    .line 3681
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

    iget v6, p1, Landroid/app/AppOpsManager$NoteOpEvent;->mUidCalling:I

    .line 3680
    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Landroid/app/AppOpsManager$NoteOpEvent;-><init>(JJLandroid/app/AppOpsManager$OpEventProxyInfo;I)V

    .line 3682
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 13
    .param p1, "in"    # Landroid/os/Parcel;

    .line 3802
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3806
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 3807
    .local v0, "flg":B
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 3808
    .local v8, "noteTime":J
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    .line 3809
    .local v10, "duration":J
    and-int/lit8 v1, v0, 0x4

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    sget-object v1, Landroid/app/AppOpsManager$OpEventProxyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager$OpEventProxyInfo;

    :goto_0
    move-object v12, v1

    .line 3811
    .local v12, "proxy":Landroid/app/AppOpsManager$OpEventProxyInfo;
    iput-wide v8, p0, Landroid/app/AppOpsManager$NoteOpEvent;->mNoteTime:J

    .line 3812
    const-class v1, Landroid/annotation/IntRange;

    const/4 v2, 0x0

    const-wide/16 v6, 0x0

    const-string v5, "from"

    move-wide v3, v8

    invoke-static/range {v1 .. v7}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/IntRange;JLjava/lang/String;J)V

    .line 3815
    iput-wide v10, p0, Landroid/app/AppOpsManager$NoteOpEvent;->mDuration:J

    .line 3816
    const-class v1, Landroid/annotation/IntRange;

    const-wide/16 v6, -0x1

    const-string v5, "from"

    move-wide v3, v10

    invoke-static/range {v1 .. v7}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/IntRange;JLjava/lang/String;J)V

    .line 3819
    iput-object v12, p0, Landroid/app/AppOpsManager$NoteOpEvent;->mProxy:Landroid/app/AppOpsManager$OpEventProxyInfo;

    .line 3821
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/AppOpsManager$NoteOpEvent;->mUidCalling:I

    .line 3824
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 3797
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getDuration()J
    .locals 2

    .line 3761
    iget-wide v0, p0, Landroid/app/AppOpsManager$NoteOpEvent;->mDuration:J

    return-wide v0
.end method

.method public blacklist getNoteTime()J
    .locals 2

    .line 3753
    iget-wide v0, p0, Landroid/app/AppOpsManager$NoteOpEvent;->mNoteTime:J

    return-wide v0
.end method

.method public blacklist getProxy()Landroid/app/AppOpsManager$OpEventProxyInfo;
    .locals 1

    .line 3769
    iget-object v0, p0, Landroid/app/AppOpsManager$NoteOpEvent;->mProxy:Landroid/app/AppOpsManager$OpEventProxyInfo;

    return-object v0
.end method

.method public blacklist getUidCalling()I
    .locals 1

    .line 3775
    iget v0, p0, Landroid/app/AppOpsManager$NoteOpEvent;->mUidCalling:I

    return v0
.end method

.method public blacklist reinit(JJLandroid/app/AppOpsManager$OpEventProxyInfo;Landroid/util/Pools$Pool;I)V
    .locals 10
    .param p1, "noteTime"    # J
    .param p3, "duration"    # J
    .param p5, "proxy"    # Landroid/app/AppOpsManager$OpEventProxyInfo;
    .param p7, "uidCalling"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Landroid/app/AppOpsManager$OpEventProxyInfo;",
            "Landroid/util/Pools$Pool<",
            "Landroid/app/AppOpsManager$OpEventProxyInfo;",
            ">;I)V"
        }
    .end annotation

    .line 3662
    .local p6, "proxyPool":Landroid/util/Pools$Pool;, "Landroid/util/Pools$Pool<Landroid/app/AppOpsManager$OpEventProxyInfo;>;"
    move-object v0, p0

    invoke-static {p1, p2}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(J)J

    move-result-wide v1

    iput-wide v1, v0, Landroid/app/AppOpsManager$NoteOpEvent;->mNoteTime:J

    .line 3663
    const-wide/16 v5, -0x1

    const-wide v7, 0x7fffffffffffffffL

    const-string v9, "duration"

    move-wide v3, p3

    invoke-static/range {v3 .. v9}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(JJJLjava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Landroid/app/AppOpsManager$NoteOpEvent;->mDuration:J

    .line 3666
    iget-object v1, v0, Landroid/app/AppOpsManager$NoteOpEvent;->mProxy:Landroid/app/AppOpsManager$OpEventProxyInfo;

    if-eqz v1, :cond_0

    .line 3667
    move-object/from16 v2, p6

    invoke-interface {v2, v1}, Landroid/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3666
    :cond_0
    move-object/from16 v2, p6

    .line 3669
    :goto_0
    move-object v1, p5

    iput-object v1, v0, Landroid/app/AppOpsManager$NoteOpEvent;->mProxy:Landroid/app/AppOpsManager$OpEventProxyInfo;

    .line 3671
    move/from16 v3, p7

    iput v3, v0, Landroid/app/AppOpsManager$NoteOpEvent;->mUidCalling:I

    .line 3672
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 3785
    const/4 v0, 0x0

    .line 3786
    .local v0, "flg":B
    iget-object v1, p0, Landroid/app/AppOpsManager$NoteOpEvent;->mProxy:Landroid/app/AppOpsManager$OpEventProxyInfo;

    if-eqz v1, :cond_0

    or-int/lit8 v1, v0, 0x4

    int-to-byte v0, v1

    .line 3787
    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 3788
    iget-wide v1, p0, Landroid/app/AppOpsManager$NoteOpEvent;->mNoteTime:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 3789
    iget-wide v1, p0, Landroid/app/AppOpsManager$NoteOpEvent;->mDuration:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 3790
    iget-object v1, p0, Landroid/app/AppOpsManager$NoteOpEvent;->mProxy:Landroid/app/AppOpsManager$OpEventProxyInfo;

    if-eqz v1, :cond_1

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3792
    :cond_1
    iget v1, p0, Landroid/app/AppOpsManager$NoteOpEvent;->mUidCalling:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3793
    return-void
.end method
