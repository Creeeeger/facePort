.class public final Landroid/app/AppOpsManager$OpEntry;
.super Ljava/lang/Object;
.source "AppOpsManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/AppOpsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OpEntry"
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/AppOpsManager$OpEntry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAttributedOpEntries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/app/AppOpsManager$AttributedOpEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mMode:I

.field private final greylist-max-o mOp:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 5121
    new-instance v0, Landroid/app/AppOpsManager$OpEntry$1;

    invoke-direct {v0}, Landroid/app/AppOpsManager$OpEntry$1;-><init>()V

    sput-object v0, Landroid/app/AppOpsManager$OpEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(IILjava/util/Map;)V
    .locals 9
    .param p1, "op"    # I
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/app/AppOpsManager$AttributedOpEntry;",
            ">;)V"
        }
    .end annotation

    .line 5043
    .local p3, "attributedOpEntries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/app/AppOpsManager$AttributedOpEntry;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5044
    iput p1, p0, Landroid/app/AppOpsManager$OpEntry;->mOp:I

    .line 5045
    const-class v0, Landroid/annotation/IntRange;

    const/4 v1, 0x0

    const-string v3, "from"

    const-wide/16 v4, 0x0

    const-string/jumbo v6, "to"

    const-wide/16 v7, 0x78

    move v2, p1

    invoke-static/range {v0 .. v8}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/IntRange;ILjava/lang/String;JLjava/lang/String;J)V

    .line 5049
    iput p2, p0, Landroid/app/AppOpsManager$OpEntry;->mMode:I

    .line 5050
    const-class v0, Landroid/app/AppOpsManager$Mode;

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 5052
    iput-object p3, p0, Landroid/app/AppOpsManager$OpEntry;->mAttributedOpEntries:Ljava/util/Map;

    .line 5053
    const-class v0, Landroid/annotation/NonNull;

    invoke-static {v0, v1, p3}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 5057
    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 12
    .param p1, "in"    # Landroid/os/Parcel;

    .line 5096
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5100
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 5101
    .local v9, "op":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 5102
    .local v10, "mode":I
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    move-object v11, v0

    .line 5103
    .local v11, "attributions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/app/AppOpsManager$AttributedOpEntry;>;"
    const-class v0, Landroid/app/AppOpsManager$AttributedOpEntry;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v11, v0}, Landroid/os/Parcel;->readMap(Ljava/util/Map;Ljava/lang/ClassLoader;)V

    .line 5105
    iput v9, p0, Landroid/app/AppOpsManager$OpEntry;->mOp:I

    .line 5106
    const-class v0, Landroid/annotation/IntRange;

    const/4 v1, 0x0

    const-string v3, "from"

    const-wide/16 v4, 0x0

    const-string/jumbo v6, "to"

    const-wide/16 v7, 0x78

    move v2, v9

    invoke-static/range {v0 .. v8}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/IntRange;ILjava/lang/String;JLjava/lang/String;J)V

    .line 5110
    iput v10, p0, Landroid/app/AppOpsManager$OpEntry;->mMode:I

    .line 5111
    const-class v0, Landroid/app/AppOpsManager$Mode;

    invoke-static {v0, v1, v10}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 5113
    iput-object v11, p0, Landroid/app/AppOpsManager$OpEntry;->mAttributedOpEntries:Ljava/util/Map;

    .line 5114
    const-class v0, Landroid/annotation/NonNull;

    invoke-static {v0, v1, v11}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 5118
    return-void
.end method

.method private blacklist getLastAccessEvent(III)Landroid/app/AppOpsManager$NoteOpEvent;
    .locals 8
    .param p1, "fromUidState"    # I
    .param p2, "toUidState"    # I
    .param p3, "flags"    # I

    .line 4632
    const/4 v0, 0x0

    .line 4633
    .local v0, "lastAccessEvent":Landroid/app/AppOpsManager$NoteOpEvent;
    iget-object v1, p0, Landroid/app/AppOpsManager$OpEntry;->mAttributedOpEntries:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager$AttributedOpEntry;

    .line 4634
    .local v2, "attributionEntry":Landroid/app/AppOpsManager$AttributedOpEntry;
    invoke-static {v2, p1, p2, p3}, Landroid/app/AppOpsManager$AttributedOpEntry;->-$$Nest$mgetLastAccessEvent(Landroid/app/AppOpsManager$AttributedOpEntry;III)Landroid/app/AppOpsManager$NoteOpEvent;

    move-result-object v3

    .line 4637
    .local v3, "lastAttributionAccessEvent":Landroid/app/AppOpsManager$NoteOpEvent;
    if-eqz v0, :cond_0

    if-eqz v3, :cond_1

    .line 4638
    invoke-virtual {v3}, Landroid/app/AppOpsManager$NoteOpEvent;->getNoteTime()J

    move-result-wide v4

    .line 4639
    invoke-virtual {v0}, Landroid/app/AppOpsManager$NoteOpEvent;->getNoteTime()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    .line 4640
    :cond_0
    move-object v0, v3

    .line 4642
    .end local v2    # "attributionEntry":Landroid/app/AppOpsManager$AttributedOpEntry;
    .end local v3    # "lastAttributionAccessEvent":Landroid/app/AppOpsManager$NoteOpEvent;
    :cond_1
    goto :goto_0

    .line 4644
    :cond_2
    return-object v0
.end method

.method private blacklist getLastRejectEvent(III)Landroid/app/AppOpsManager$NoteOpEvent;
    .locals 8
    .param p1, "fromUidState"    # I
    .param p2, "toUidState"    # I
    .param p3, "flags"    # I

    .line 4747
    const/4 v0, 0x0

    .line 4748
    .local v0, "lastAccessEvent":Landroid/app/AppOpsManager$NoteOpEvent;
    iget-object v1, p0, Landroid/app/AppOpsManager$OpEntry;->mAttributedOpEntries:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager$AttributedOpEntry;

    .line 4749
    .local v2, "attributionEntry":Landroid/app/AppOpsManager$AttributedOpEntry;
    invoke-static {v2, p1, p2, p3}, Landroid/app/AppOpsManager$AttributedOpEntry;->-$$Nest$mgetLastRejectEvent(Landroid/app/AppOpsManager$AttributedOpEntry;III)Landroid/app/AppOpsManager$NoteOpEvent;

    move-result-object v3

    .line 4752
    .local v3, "lastAttributionAccessEvent":Landroid/app/AppOpsManager$NoteOpEvent;
    if-eqz v0, :cond_0

    if-eqz v3, :cond_1

    .line 4753
    invoke-virtual {v3}, Landroid/app/AppOpsManager$NoteOpEvent;->getNoteTime()J

    move-result-wide v4

    .line 4754
    invoke-virtual {v0}, Landroid/app/AppOpsManager$NoteOpEvent;->getNoteTime()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    .line 4755
    :cond_0
    move-object v0, v3

    .line 4757
    .end local v2    # "attributionEntry":Landroid/app/AppOpsManager$AttributedOpEntry;
    .end local v3    # "lastAttributionAccessEvent":Landroid/app/AppOpsManager$NoteOpEvent;
    :cond_1
    goto :goto_0

    .line 4759
    :cond_2
    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 5091
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getAttributedOpEntries()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/app/AppOpsManager$AttributedOpEntry;",
            ">;"
        }
    .end annotation

    .line 5075
    iget-object v0, p0, Landroid/app/AppOpsManager$OpEntry;->mAttributedOpEntries:Ljava/util/Map;

    return-object v0
.end method

.method public whitelist getDuration()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4806
    const/16 v0, 0x1f

    invoke-virtual {p0, v0}, Landroid/app/AppOpsManager$OpEntry;->getLastDuration(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getLastAccessBackgroundTime(I)J
    .locals 2
    .param p1, "flags"    # I

    .line 4619
    iget v0, p0, Landroid/app/AppOpsManager$OpEntry;->mOp:I

    invoke-static {v0}, Landroid/app/AppOpsManager;->resolveLastRestrictedUidState(I)I

    move-result v0

    const/16 v1, 0x2bc

    invoke-virtual {p0, v0, v1, p1}, Landroid/app/AppOpsManager$OpEntry;->getLastAccessTime(III)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getLastAccessForegroundTime(I)J
    .locals 2
    .param p1, "flags"    # I

    .line 4601
    iget v0, p0, Landroid/app/AppOpsManager$OpEntry;->mOp:I

    invoke-static {v0}, Landroid/app/AppOpsManager;->resolveFirstUnrestrictedUidState(I)I

    move-result v0

    const/16 v1, 0x64

    invoke-virtual {p0, v1, v0, p1}, Landroid/app/AppOpsManager$OpEntry;->getLastAccessTime(III)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getLastAccessTime(I)J
    .locals 2
    .param p1, "flags"    # I

    .line 4584
    const/16 v0, 0x64

    const/16 v1, 0x2bc

    invoke-virtual {p0, v0, v1, p1}, Landroid/app/AppOpsManager$OpEntry;->getLastAccessTime(III)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getLastAccessTime(III)J
    .locals 3
    .param p1, "fromUidState"    # I
    .param p2, "toUidState"    # I
    .param p3, "flags"    # I

    .line 4664
    invoke-direct {p0, p1, p2, p3}, Landroid/app/AppOpsManager$OpEntry;->getLastAccessEvent(III)Landroid/app/AppOpsManager$NoteOpEvent;

    move-result-object v0

    .line 4666
    .local v0, "lastEvent":Landroid/app/AppOpsManager$NoteOpEvent;
    if-nez v0, :cond_0

    .line 4667
    const-wide/16 v1, -0x1

    return-wide v1

    .line 4670
    :cond_0
    invoke-virtual {v0}, Landroid/app/AppOpsManager$NoteOpEvent;->getNoteTime()J

    move-result-wide v1

    return-wide v1
.end method

.method public whitelist getLastBackgroundDuration(I)J
    .locals 2
    .param p1, "flags"    # I

    .line 4855
    iget v0, p0, Landroid/app/AppOpsManager$OpEntry;->mOp:I

    invoke-static {v0}, Landroid/app/AppOpsManager;->resolveLastRestrictedUidState(I)I

    move-result v0

    const/16 v1, 0x2bc

    invoke-virtual {p0, v0, v1, p1}, Landroid/app/AppOpsManager$OpEntry;->getLastDuration(III)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getLastBackgroundProxyInfo(I)Landroid/app/AppOpsManager$OpEventProxyInfo;
    .locals 2
    .param p1, "flags"    # I

    .line 4984
    iget v0, p0, Landroid/app/AppOpsManager$OpEntry;->mOp:I

    invoke-static {v0}, Landroid/app/AppOpsManager;->resolveLastRestrictedUidState(I)I

    move-result v0

    const/16 v1, 0x2bc

    invoke-virtual {p0, v0, v1, p1}, Landroid/app/AppOpsManager$OpEntry;->getLastProxyInfo(III)Landroid/app/AppOpsManager$OpEventProxyInfo;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getLastDuration(I)J
    .locals 2
    .param p1, "flags"    # I

    .line 4822
    const/16 v0, 0x64

    const/16 v1, 0x2bc

    invoke-virtual {p0, v0, v1, p1}, Landroid/app/AppOpsManager$OpEntry;->getLastDuration(III)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getLastDuration(III)J
    .locals 3
    .param p1, "fromUidState"    # I
    .param p2, "toUidState"    # I
    .param p3, "flags"    # I

    .line 4875
    invoke-direct {p0, p1, p2, p3}, Landroid/app/AppOpsManager$OpEntry;->getLastAccessEvent(III)Landroid/app/AppOpsManager$NoteOpEvent;

    move-result-object v0

    .line 4876
    .local v0, "lastEvent":Landroid/app/AppOpsManager$NoteOpEvent;
    if-nez v0, :cond_0

    .line 4877
    const-wide/16 v1, -0x1

    return-wide v1

    .line 4880
    :cond_0
    invoke-virtual {v0}, Landroid/app/AppOpsManager$NoteOpEvent;->getDuration()J

    move-result-wide v1

    return-wide v1
.end method

.method public whitelist getLastForegroundDuration(I)J
    .locals 2
    .param p1, "flags"    # I

    .line 4838
    iget v0, p0, Landroid/app/AppOpsManager$OpEntry;->mOp:I

    invoke-static {v0}, Landroid/app/AppOpsManager;->resolveFirstUnrestrictedUidState(I)I

    move-result v0

    const/16 v1, 0x64

    invoke-virtual {p0, v1, v0, p1}, Landroid/app/AppOpsManager$OpEntry;->getLastDuration(III)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getLastForegroundProxyInfo(I)Landroid/app/AppOpsManager$OpEventProxyInfo;
    .locals 2
    .param p1, "flags"    # I

    .line 4966
    iget v0, p0, Landroid/app/AppOpsManager$OpEntry;->mOp:I

    invoke-static {v0}, Landroid/app/AppOpsManager;->resolveFirstUnrestrictedUidState(I)I

    move-result v0

    const/16 v1, 0x64

    invoke-virtual {p0, v1, v0, p1}, Landroid/app/AppOpsManager$OpEntry;->getLastProxyInfo(III)Landroid/app/AppOpsManager$OpEventProxyInfo;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getLastProxyInfo(I)Landroid/app/AppOpsManager$OpEventProxyInfo;
    .locals 2
    .param p1, "flags"    # I

    .line 4949
    const/16 v0, 0x64

    const/16 v1, 0x2bc

    invoke-virtual {p0, v0, v1, p1}, Landroid/app/AppOpsManager$OpEntry;->getLastProxyInfo(III)Landroid/app/AppOpsManager$OpEventProxyInfo;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getLastProxyInfo(III)Landroid/app/AppOpsManager$OpEventProxyInfo;
    .locals 2
    .param p1, "fromUidState"    # I
    .param p2, "toUidState"    # I
    .param p3, "flags"    # I

    .line 5005
    invoke-direct {p0, p1, p2, p3}, Landroid/app/AppOpsManager$OpEntry;->getLastAccessEvent(III)Landroid/app/AppOpsManager$NoteOpEvent;

    move-result-object v0

    .line 5006
    .local v0, "lastEvent":Landroid/app/AppOpsManager$NoteOpEvent;
    if-nez v0, :cond_0

    .line 5007
    const/4 v1, 0x0

    return-object v1

    .line 5010
    :cond_0
    invoke-virtual {v0}, Landroid/app/AppOpsManager$NoteOpEvent;->getProxy()Landroid/app/AppOpsManager$OpEventProxyInfo;

    move-result-object v1

    return-object v1
.end method

.method public whitelist getLastRejectBackgroundTime(I)J
    .locals 2
    .param p1, "flags"    # I

    .line 4734
    iget v0, p0, Landroid/app/AppOpsManager$OpEntry;->mOp:I

    invoke-static {v0}, Landroid/app/AppOpsManager;->resolveLastRestrictedUidState(I)I

    move-result v0

    const/16 v1, 0x2bc

    invoke-virtual {p0, v0, v1, p1}, Landroid/app/AppOpsManager$OpEntry;->getLastRejectTime(III)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getLastRejectForegroundTime(I)J
    .locals 2
    .param p1, "flags"    # I

    .line 4716
    iget v0, p0, Landroid/app/AppOpsManager$OpEntry;->mOp:I

    invoke-static {v0}, Landroid/app/AppOpsManager;->resolveFirstUnrestrictedUidState(I)I

    move-result v0

    const/16 v1, 0x64

    invoke-virtual {p0, v1, v0, p1}, Landroid/app/AppOpsManager$OpEntry;->getLastRejectTime(III)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getLastRejectTime(I)J
    .locals 2
    .param p1, "flags"    # I

    .line 4699
    const/16 v0, 0x64

    const/16 v1, 0x2bc

    invoke-virtual {p0, v0, v1, p1}, Landroid/app/AppOpsManager$OpEntry;->getLastRejectTime(III)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getLastRejectTime(III)J
    .locals 3
    .param p1, "fromUidState"    # I
    .param p2, "toUidState"    # I
    .param p3, "flags"    # I

    .line 4780
    invoke-direct {p0, p1, p2, p3}, Landroid/app/AppOpsManager$OpEntry;->getLastRejectEvent(III)Landroid/app/AppOpsManager$NoteOpEvent;

    move-result-object v0

    .line 4781
    .local v0, "lastEvent":Landroid/app/AppOpsManager$NoteOpEvent;
    if-nez v0, :cond_0

    .line 4782
    const-wide/16 v1, -0x1

    return-wide v1

    .line 4785
    :cond_0
    invoke-virtual {v0}, Landroid/app/AppOpsManager$NoteOpEvent;->getNoteTime()J

    move-result-wide v1

    return-wide v1
.end method

.method public whitelist getMode()I
    .locals 1

    .line 5064
    iget v0, p0, Landroid/app/AppOpsManager$OpEntry;->mMode:I

    return v0
.end method

.method public greylist-max-r getOp()I
    .locals 1

    .line 4548
    iget v0, p0, Landroid/app/AppOpsManager$OpEntry;->mOp:I

    return v0
.end method

.method public whitelist getOpStr()Ljava/lang/String;
    .locals 2

    .line 4555
    invoke-static {}, Landroid/app/AppOpsManager;->-$$Nest$sfgetsOpToString()[Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Landroid/app/AppOpsManager$OpEntry;->mOp:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public whitelist getProxyPackageName()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4914
    const/16 v0, 0x1f

    invoke-virtual {p0, v0}, Landroid/app/AppOpsManager$OpEntry;->getLastProxyInfo(I)Landroid/app/AppOpsManager$OpEventProxyInfo;

    move-result-object v0

    .line 4915
    .local v0, "proxy":Landroid/app/AppOpsManager$OpEventProxyInfo;
    if-nez v0, :cond_0

    .line 4916
    const/4 v1, 0x0

    return-object v1

    .line 4919
    :cond_0
    invoke-virtual {v0}, Landroid/app/AppOpsManager$OpEventProxyInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist getProxyPackageName(II)Ljava/lang/String;
    .locals 2
    .param p1, "uidState"    # I
    .param p2, "flags"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4927
    invoke-virtual {p0, p1, p1, p2}, Landroid/app/AppOpsManager$OpEntry;->getLastProxyInfo(III)Landroid/app/AppOpsManager$OpEventProxyInfo;

    move-result-object v0

    .line 4928
    .local v0, "proxy":Landroid/app/AppOpsManager$OpEventProxyInfo;
    if-nez v0, :cond_0

    .line 4929
    const/4 v1, 0x0

    return-object v1

    .line 4932
    :cond_0
    invoke-virtual {v0}, Landroid/app/AppOpsManager$OpEventProxyInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist getProxyUid()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4888
    const/16 v0, 0x1f

    invoke-virtual {p0, v0}, Landroid/app/AppOpsManager$OpEntry;->getLastProxyInfo(I)Landroid/app/AppOpsManager$OpEventProxyInfo;

    move-result-object v0

    .line 4889
    .local v0, "proxy":Landroid/app/AppOpsManager$OpEventProxyInfo;
    if-nez v0, :cond_0

    .line 4890
    const/4 v1, -0x1

    return v1

    .line 4893
    :cond_0
    invoke-virtual {v0}, Landroid/app/AppOpsManager$OpEventProxyInfo;->getUid()I

    move-result v1

    return v1
.end method

.method public whitelist getProxyUid(II)I
    .locals 2
    .param p1, "uidState"    # I
    .param p2, "flags"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4901
    invoke-virtual {p0, p1, p1, p2}, Landroid/app/AppOpsManager$OpEntry;->getLastProxyInfo(III)Landroid/app/AppOpsManager$OpEventProxyInfo;

    move-result-object v0

    .line 4902
    .local v0, "proxy":Landroid/app/AppOpsManager$OpEventProxyInfo;
    if-nez v0, :cond_0

    .line 4903
    const/4 v1, -0x1

    return v1

    .line 4906
    :cond_0
    invoke-virtual {v0}, Landroid/app/AppOpsManager$OpEventProxyInfo;->getUid()I

    move-result v1

    return v1
.end method

.method public greylist-max-r getRejectTime()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4682
    const/16 v0, 0x1f

    invoke-virtual {p0, v0}, Landroid/app/AppOpsManager$OpEntry;->getLastRejectTime(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public greylist-max-r getTime()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4567
    const/16 v0, 0x1f

    invoke-virtual {p0, v0}, Landroid/app/AppOpsManager$OpEntry;->getLastAccessTime(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist isRunning()Z
    .locals 3

    .line 4792
    iget-object v0, p0, Landroid/app/AppOpsManager$OpEntry;->mAttributedOpEntries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager$AttributedOpEntry;

    .line 4793
    .local v1, "opAttributionEntry":Landroid/app/AppOpsManager$AttributedOpEntry;
    invoke-virtual {v1}, Landroid/app/AppOpsManager$AttributedOpEntry;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4794
    const/4 v0, 0x1

    return v0

    .line 4796
    .end local v1    # "opAttributionEntry":Landroid/app/AppOpsManager$AttributedOpEntry;
    :cond_0
    goto :goto_0

    .line 4798
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 5084
    iget v0, p0, Landroid/app/AppOpsManager$OpEntry;->mOp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5085
    iget v0, p0, Landroid/app/AppOpsManager$OpEntry;->mMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5086
    iget-object v0, p0, Landroid/app/AppOpsManager$OpEntry;->mAttributedOpEntries:Ljava/util/Map;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 5087
    return-void
.end method
