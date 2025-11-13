.class public Landroidx/slice/SliceItemHolder;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/versionedparcelable/VersionedParcelable;


# static fields
.field public static final sHandler:Landroidx/slice/compat/SliceProviderCompat$2;

.field public static final sSerializeLock:Ljava/lang/Object;


# instance fields
.field public mBundle:Landroid/os/Bundle;

.field public mInt:I

.field public mLong:J

.field public mParcelable:Landroid/os/Parcelable;

.field public final mPool:Landroidx/slice/SliceItemHolder$SliceItemPool;

.field public mStr:Ljava/lang/String;

.field public mVersionedParcelable:Landroidx/versionedparcelable/VersionedParcelable;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroidx/slice/SliceItemHolder$SliceItemPool;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/slice/SliceItemHolder;->mVersionedParcelable:Landroidx/versionedparcelable/VersionedParcelable;

    iput-object v0, p0, Landroidx/slice/SliceItemHolder;->mParcelable:Landroid/os/Parcelable;

    iput-object v0, p0, Landroidx/slice/SliceItemHolder;->mStr:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Landroidx/slice/SliceItemHolder;->mInt:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroidx/slice/SliceItemHolder;->mLong:J

    iput-object v0, p0, Landroidx/slice/SliceItemHolder;->mBundle:Landroid/os/Bundle;

    iput-object p1, p0, Landroidx/slice/SliceItemHolder;->mPool:Landroidx/slice/SliceItemHolder$SliceItemPool;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/slice/SliceItemHolder;->mVersionedParcelable:Landroidx/versionedparcelable/VersionedParcelable;

    iput-object v0, p0, Landroidx/slice/SliceItemHolder;->mParcelable:Landroid/os/Parcelable;

    iput-object v0, p0, Landroidx/slice/SliceItemHolder;->mStr:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Landroidx/slice/SliceItemHolder;->mInt:I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroidx/slice/SliceItemHolder;->mLong:J

    iput-object v0, p0, Landroidx/slice/SliceItemHolder;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v2, "slice"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x7

    goto :goto_0

    :sswitch_1
    const-string v2, "input"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x6

    goto :goto_0

    :sswitch_2
    const-string v2, "image"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x5

    goto :goto_0

    :sswitch_3
    const-string/jumbo v2, "text"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x4

    goto :goto_0

    :sswitch_4
    const-string v2, "long"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_5
    const-string v2, "int"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_6
    const-string v2, "bundle"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_7
    const-string v2, "action"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    move v0, v1

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    check-cast p2, Landroid/os/Parcelable;

    iput-object p2, p0, Landroidx/slice/SliceItemHolder;->mParcelable:Landroid/os/Parcelable;

    goto :goto_3

    :pswitch_1
    check-cast p2, Landroidx/versionedparcelable/VersionedParcelable;

    iput-object p2, p0, Landroidx/slice/SliceItemHolder;->mVersionedParcelable:Landroidx/versionedparcelable/VersionedParcelable;

    goto :goto_3

    :pswitch_2
    instance-of p1, p2, Landroid/text/Spanned;

    if-eqz p1, :cond_8

    check-cast p2, Landroid/text/Spanned;

    invoke-static {p2, v1}, Landroid/text/Html;->toHtml(Landroid/text/Spanned;I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_8
    move-object p1, p2

    check-cast p1, Ljava/lang/String;

    :goto_1
    iput-object p1, p0, Landroidx/slice/SliceItemHolder;->mStr:Ljava/lang/String;

    goto :goto_3

    :pswitch_3
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/slice/SliceItemHolder;->mLong:J

    goto :goto_3

    :pswitch_4
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Landroidx/slice/SliceItemHolder;->mInt:I

    goto :goto_3

    :pswitch_5
    check-cast p2, Landroid/os/Bundle;

    iput-object p2, p0, Landroidx/slice/SliceItemHolder;->mBundle:Landroid/os/Bundle;

    goto :goto_3

    :pswitch_6
    check-cast p2, Landroidx/core/util/Pair;

    iget-object p1, p2, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    instance-of v0, p1, Landroid/app/PendingIntent;

    if-eqz v0, :cond_9

    check-cast p1, Landroid/os/Parcelable;

    iput-object p1, p0, Landroidx/slice/SliceItemHolder;->mParcelable:Landroid/os/Parcelable;

    goto :goto_2

    :cond_9
    if-eqz p3, :cond_b

    :goto_2
    iget-object p1, p2, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Landroidx/versionedparcelable/VersionedParcelable;

    iput-object p1, p0, Landroidx/slice/SliceItemHolder;->mVersionedParcelable:Landroidx/versionedparcelable/VersionedParcelable;

    :goto_3
    sget-object p1, Landroidx/slice/SliceItemHolder;->sHandler:Landroidx/slice/compat/SliceProviderCompat$2;

    if-eqz p1, :cond_a

    invoke-virtual {p1, p0}, Landroidx/slice/compat/SliceProviderCompat$2;->handle(Landroidx/slice/SliceItemHolder;)V

    :cond_a
    return-void

    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot write callback to parcel"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x54d081ca -> :sswitch_7
        -0x5220cf7e -> :sswitch_6
        0x197ef -> :sswitch_5
        0x32c67c -> :sswitch_4
        0x36452d -> :sswitch_3
        0x5faa95b -> :sswitch_2
        0x5fb57ca -> :sswitch_1
        0x6873d92 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
