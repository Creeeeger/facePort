.class public Lcom/android/internal/os/PowerStats$Descriptor;
.super Ljava/lang/Object;
.source "PowerStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/PowerStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Descriptor"
.end annotation


# static fields
.field public static final blacklist EXTRA_DEVICE_STATS_FORMAT:Ljava/lang/String; = "format-device"

.field public static final blacklist EXTRA_STATE_STATS_FORMAT:Ljava/lang/String; = "format-state"

.field public static final blacklist EXTRA_UID_STATS_FORMAT:Ljava/lang/String; = "format-uid"

.field private static final blacklist XML_ATTR_ID:Ljava/lang/String; = "id"

.field private static final blacklist XML_ATTR_NAME:Ljava/lang/String; = "name"

.field private static final blacklist XML_ATTR_STATE_KEY:Ljava/lang/String; = "key"

.field private static final blacklist XML_ATTR_STATE_LABEL:Ljava/lang/String; = "label"

.field private static final blacklist XML_ATTR_STATE_STATS_ARRAY_LENGTH:Ljava/lang/String; = "state-stats-array-length"

.field private static final blacklist XML_ATTR_STATS_ARRAY_LENGTH:Ljava/lang/String; = "stats-array-length"

.field private static final blacklist XML_ATTR_UID_STATS_ARRAY_LENGTH:Ljava/lang/String; = "uid-stats-array-length"

.field public static final blacklist XML_TAG_DESCRIPTOR:Ljava/lang/String; = "descriptor"

.field private static final blacklist XML_TAG_EXTRAS:Ljava/lang/String; = "extras"

.field private static final blacklist XML_TAG_STATE:Ljava/lang/String; = "state"


# instance fields
.field public final blacklist extras:Landroid/os/PersistableBundle;

.field private blacklist mDeviceStatsFormatter:Lcom/android/internal/os/PowerStats$PowerStatsFormatter;

.field private blacklist mStateStatsFormatter:Lcom/android/internal/os/PowerStats$PowerStatsFormatter;

.field private blacklist mUidStatsFormatter:Lcom/android/internal/os/PowerStats$PowerStatsFormatter;

.field public final blacklist name:Ljava/lang/String;

.field public final blacklist powerComponentId:I

.field public final blacklist stateLabels:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final blacklist stateStatsArrayLength:I

.field public final blacklist statsArrayLength:I

.field public final blacklist uidStatsArrayLength:I


# direct methods
.method public constructor blacklist <init>(IILandroid/util/SparseArray;IILandroid/os/PersistableBundle;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;II",
            "Landroid/os/PersistableBundle;",
            ")V"
        }
    .end annotation

    invoke-static {p1}, Landroid/os/BatteryConsumer;->powerComponentIdToString(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move v1, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/os/PowerStats$Descriptor;-><init>(ILjava/lang/String;ILandroid/util/SparseArray;IILandroid/os/PersistableBundle;)V

    return-void
.end method

.method public constructor blacklist <init>(ILjava/lang/String;ILandroid/util/SparseArray;IILandroid/os/PersistableBundle;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "I",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;II",
            "Landroid/os/PersistableBundle;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcom/android/internal/os/PowerStats;->MAX_STATS_ARRAY_LENGTH:I

    if-gt p3, v0, :cond_3

    sget v0, Lcom/android/internal/os/PowerStats;->MAX_STATE_STATS_ARRAY_LENGTH:I

    if-gt p5, v0, :cond_2

    sget v0, Lcom/android/internal/os/PowerStats;->MAX_UID_STATS_ARRAY_LENGTH:I

    if-gt p6, v0, :cond_1

    iput p1, p0, Lcom/android/internal/os/PowerStats$Descriptor;->powerComponentId:I

    iput-object p2, p0, Lcom/android/internal/os/PowerStats$Descriptor;->name:Ljava/lang/String;

    iput p3, p0, Lcom/android/internal/os/PowerStats$Descriptor;->statsArrayLength:I

    if-eqz p4, :cond_0

    move-object v0, p4

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    :goto_0
    iput-object v0, p0, Lcom/android/internal/os/PowerStats$Descriptor;->stateLabels:Landroid/util/SparseArray;

    iput p5, p0, Lcom/android/internal/os/PowerStats$Descriptor;->stateStatsArrayLength:I

    iput p6, p0, Lcom/android/internal/os/PowerStats$Descriptor;->uidStatsArrayLength:I

    iput-object p7, p0, Lcom/android/internal/os/PowerStats$Descriptor;->extras:Landroid/os/PersistableBundle;

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "uidStatsArrayLength is too high. Max = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/internal/os/PowerStats;->MAX_UID_STATS_ARRAY_LENGTH:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stateStatsArrayLength is too high. Max = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/internal/os/PowerStats;->MAX_STATE_STATS_ARRAY_LENGTH:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "statsArrayLength is too high. Max = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/internal/os/PowerStats;->MAX_STATS_ARRAY_LENGTH:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist createFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Lcom/android/internal/os/PowerStats$Descriptor;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {p0 .. p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getEventType()I

    move-result v8

    move v13, v5

    move v14, v6

    move-object v15, v7

    move v12, v8

    :goto_0
    const/4 v5, -0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eq v12, v6, :cond_3

    const/4 v8, 0x3

    const-string v9, "descriptor"

    if-ne v12, v8, :cond_0

    invoke-interface/range {p0 .. p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    :cond_0
    const/4 v8, 0x2

    if-ne v12, v8, :cond_2

    invoke-interface/range {p0 .. p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v11

    sparse-switch v11, :sswitch_data_0

    :cond_1
    goto :goto_1

    :sswitch_0
    const-string/jumbo v8, "state"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    move v5, v6

    goto :goto_1

    :sswitch_1
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v5, 0x0

    goto :goto_1

    :sswitch_2
    const-string v6, "extras"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v5, v8

    :goto_1
    packed-switch v5, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    invoke-static/range {p0 .. p0}, Landroid/os/PersistableBundle;->restoreFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/os/PersistableBundle;

    move-result-object v5

    move-object v15, v5

    goto :goto_2

    :pswitch_1
    const-string/jumbo v5, "key"

    invoke-interface {v0, v7, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    const-string/jumbo v6, "label"

    invoke-interface {v0, v7, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2

    :pswitch_2
    const-string/jumbo v5, "id"

    invoke-interface {v0, v7, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v5, "name"

    invoke-interface {v0, v7, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, "stats-array-length"

    invoke-interface {v0, v7, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v5, "state-stats-array-length"

    invoke-interface {v0, v7, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    const-string/jumbo v6, "uid-stats-array-length"

    invoke-interface {v0, v7, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    move v13, v5

    move v14, v6

    :cond_2
    :goto_2
    invoke-interface/range {p0 .. p0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v12

    goto/16 :goto_0

    :cond_3
    if-ne v1, v5, :cond_4

    return-object v7

    :cond_4
    const/16 v5, 0x3e8

    if-lt v1, v5, :cond_5

    new-instance v16, Lcom/android/internal/os/PowerStats$Descriptor;

    move-object/from16 v5, v16

    move v6, v1

    move-object v7, v2

    move v8, v3

    move-object v9, v4

    move v10, v13

    move v11, v14

    move/from16 v17, v12

    move-object v12, v15

    invoke-direct/range {v5 .. v12}, Lcom/android/internal/os/PowerStats$Descriptor;-><init>(ILjava/lang/String;ILandroid/util/SparseArray;IILandroid/os/PersistableBundle;)V

    return-object v16

    :cond_5
    move/from16 v17, v12

    const/16 v5, 0x13

    if-ge v1, v5, :cond_6

    new-instance v12, Lcom/android/internal/os/PowerStats$Descriptor;

    move-object v5, v12

    move v6, v1

    move v7, v3

    move-object v8, v4

    move v9, v13

    move v10, v14

    move-object v11, v15

    invoke-direct/range {v5 .. v11}, Lcom/android/internal/os/PowerStats$Descriptor;-><init>(IILandroid/util/SparseArray;IILandroid/os/PersistableBundle;)V

    return-object v12

    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unrecognized power component: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "PowerStats"

    invoke-static {v6, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v7

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4cd5119d -> :sswitch_2
        -0x2c9b2c91 -> :sswitch_1
        0x68ac491 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist readSummaryFromParcel(Landroid/os/Parcel;)Lcom/android/internal/os/PowerStats$Descriptor;
    .locals 19

    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    and-int/lit16 v1, v0, 0xff

    invoke-static {}, Lcom/android/internal/os/PowerStats;->-$$Nest$sfgetPARCEL_FORMAT_VERSION_SHIFT()I

    move-result v2

    ushr-int/2addr v1, v2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot read PowerStats from Parcel - the parcel format version has changed from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PowerStats"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return-object v2

    :cond_0
    const v2, 0xff00

    and-int/2addr v2, v0

    invoke-static {}, Lcom/android/internal/os/PowerStats;->-$$Nest$sfgetSTATS_ARRAY_LENGTH_SHIFT()I

    move-result v3

    ushr-int/2addr v2, v3

    const/high16 v3, 0xff0000

    and-int/2addr v3, v0

    invoke-static {}, Lcom/android/internal/os/PowerStats;->-$$Nest$sfgetSTATE_STATS_ARRAY_LENGTH_SHIFT()I

    move-result v4

    ushr-int/2addr v3, v4

    const/high16 v4, -0x1000000

    and-int/2addr v4, v0

    invoke-static {}, Lcom/android/internal/os/PowerStats;->-$$Nest$sfgetUID_STATS_ARRAY_LENGTH_SHIFT()I

    move-result v5

    ushr-int v12, v4, v5

    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v15

    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4, v15}, Landroid/util/SparseArray;-><init>(I)V

    move-object v11, v4

    move v4, v15

    :goto_0
    if-lez v4, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readPersistableBundle()Landroid/os/PersistableBundle;

    move-result-object v16

    new-instance v17, Lcom/android/internal/os/PowerStats$Descriptor;

    move-object/from16 v4, v17

    move v5, v13

    move-object v6, v14

    move v7, v2

    move-object v8, v11

    move v9, v3

    move v10, v12

    move-object/from16 v18, v11

    move-object/from16 v11, v16

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/os/PowerStats$Descriptor;-><init>(ILjava/lang/String;ILandroid/util/SparseArray;IILandroid/os/PersistableBundle;)V

    return-object v17
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/internal/os/PowerStats$Descriptor;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/android/internal/os/PowerStats$Descriptor;

    iget v3, p0, Lcom/android/internal/os/PowerStats$Descriptor;->powerComponentId:I

    iget v4, v1, Lcom/android/internal/os/PowerStats$Descriptor;->powerComponentId:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Lcom/android/internal/os/PowerStats$Descriptor;->statsArrayLength:I

    iget v4, v1, Lcom/android/internal/os/PowerStats$Descriptor;->statsArrayLength:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/android/internal/os/PowerStats$Descriptor;->stateLabels:Landroid/util/SparseArray;

    iget-object v4, v1, Lcom/android/internal/os/PowerStats$Descriptor;->stateLabels:Landroid/util/SparseArray;

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->contentEquals(Landroid/util/SparseArray;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/android/internal/os/PowerStats$Descriptor;->stateStatsArrayLength:I

    iget v4, v1, Lcom/android/internal/os/PowerStats$Descriptor;->stateStatsArrayLength:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Lcom/android/internal/os/PowerStats$Descriptor;->uidStatsArrayLength:I

    iget v4, v1, Lcom/android/internal/os/PowerStats$Descriptor;->uidStatsArrayLength:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/android/internal/os/PowerStats$Descriptor;->name:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/internal/os/PowerStats$Descriptor;->name:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/os/PowerStats$Descriptor;->extras:Landroid/os/PersistableBundle;

    invoke-virtual {v3}, Landroid/os/PersistableBundle;->size()I

    move-result v3

    iget-object v4, v1, Lcom/android/internal/os/PowerStats$Descriptor;->extras:Landroid/os/PersistableBundle;

    invoke-virtual {v4}, Landroid/os/PersistableBundle;->size()I

    move-result v4

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/android/internal/os/PowerStats$Descriptor;->extras:Landroid/os/PersistableBundle;

    iget-object v4, v1, Lcom/android/internal/os/PowerStats$Descriptor;->extras:Landroid/os/PersistableBundle;

    invoke-static {v3, v4}, Landroid/os/Bundle;->kindofEquals(Landroid/os/BaseBundle;Landroid/os/BaseBundle;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public blacklist getDeviceStatsFormatter()Lcom/android/internal/os/PowerStats$PowerStatsFormatter;
    .locals 3

    iget-object v0, p0, Lcom/android/internal/os/PowerStats$Descriptor;->mDeviceStatsFormatter:Lcom/android/internal/os/PowerStats$PowerStatsFormatter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/internal/os/PowerStats$PowerStatsFormatter;

    iget-object v1, p0, Lcom/android/internal/os/PowerStats$Descriptor;->extras:Landroid/os/PersistableBundle;

    const-string/jumbo v2, "format-device"

    invoke-virtual {v1, v2}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/os/PowerStats$PowerStatsFormatter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/os/PowerStats$Descriptor;->mDeviceStatsFormatter:Lcom/android/internal/os/PowerStats$PowerStatsFormatter;

    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/PowerStats$Descriptor;->mDeviceStatsFormatter:Lcom/android/internal/os/PowerStats$PowerStatsFormatter;

    return-object v0
.end method

.method public blacklist getStateLabel(I)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/internal/os/PowerStats$Descriptor;->stateLabels:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/internal/os/PowerStats$Descriptor;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public blacklist getStateStatsFormatter()Lcom/android/internal/os/PowerStats$PowerStatsFormatter;
    .locals 3

    iget-object v0, p0, Lcom/android/internal/os/PowerStats$Descriptor;->mStateStatsFormatter:Lcom/android/internal/os/PowerStats$PowerStatsFormatter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/internal/os/PowerStats$PowerStatsFormatter;

    iget-object v1, p0, Lcom/android/internal/os/PowerStats$Descriptor;->extras:Landroid/os/PersistableBundle;

    const-string/jumbo v2, "format-state"

    invoke-virtual {v1, v2}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/os/PowerStats$PowerStatsFormatter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/os/PowerStats$Descriptor;->mStateStatsFormatter:Lcom/android/internal/os/PowerStats$PowerStatsFormatter;

    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/PowerStats$Descriptor;->mStateStatsFormatter:Lcom/android/internal/os/PowerStats$PowerStatsFormatter;

    return-object v0
.end method

.method public blacklist getUidStatsFormatter()Lcom/android/internal/os/PowerStats$PowerStatsFormatter;
    .locals 3

    iget-object v0, p0, Lcom/android/internal/os/PowerStats$Descriptor;->mUidStatsFormatter:Lcom/android/internal/os/PowerStats$PowerStatsFormatter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/internal/os/PowerStats$PowerStatsFormatter;

    iget-object v1, p0, Lcom/android/internal/os/PowerStats$Descriptor;->extras:Landroid/os/PersistableBundle;

    const-string/jumbo v2, "format-uid"

    invoke-virtual {v1, v2}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/os/PowerStats$PowerStatsFormatter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/os/PowerStats$Descriptor;->mUidStatsFormatter:Lcom/android/internal/os/PowerStats$PowerStatsFormatter;

    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/PowerStats$Descriptor;->mUidStatsFormatter:Lcom/android/internal/os/PowerStats$PowerStatsFormatter;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 1

    iget v0, p0, Lcom/android/internal/os/PowerStats$Descriptor;->powerComponentId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/internal/os/PowerStats$Descriptor;->extras:Landroid/os/PersistableBundle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/os/PowerStats$Descriptor;->extras:Landroid/os/PersistableBundle;

    invoke-virtual {v0}, Landroid/os/PersistableBundle;->size()I

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PowerStats.Descriptor{powerComponentId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/os/PowerStats$Descriptor;->powerComponentId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/os/PowerStats$Descriptor;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", statsArrayLength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/os/PowerStats$Descriptor;->statsArrayLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", stateStatsArrayLength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/os/PowerStats$Descriptor;->stateStatsArrayLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", stateLabels="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/os/PowerStats$Descriptor;->stateLabels:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uidStatsArrayLength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/os/PowerStats$Descriptor;->uidStatsArrayLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", extras="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/os/PowerStats$Descriptor;->extras:Landroid/os/PersistableBundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist writeSummaryToParcel(Landroid/os/Parcel;)V
    .locals 4

    const/4 v0, 0x2

    invoke-static {}, Lcom/android/internal/os/PowerStats;->-$$Nest$sfgetPARCEL_FORMAT_VERSION_SHIFT()I

    move-result v1

    shl-int/2addr v0, v1

    and-int/lit16 v0, v0, 0xff

    iget v1, p0, Lcom/android/internal/os/PowerStats$Descriptor;->statsArrayLength:I

    invoke-static {}, Lcom/android/internal/os/PowerStats;->-$$Nest$sfgetSTATS_ARRAY_LENGTH_SHIFT()I

    move-result v2

    shl-int/2addr v1, v2

    const v2, 0xff00

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    iget v1, p0, Lcom/android/internal/os/PowerStats$Descriptor;->stateStatsArrayLength:I

    invoke-static {}, Lcom/android/internal/os/PowerStats;->-$$Nest$sfgetSTATE_STATS_ARRAY_LENGTH_SHIFT()I

    move-result v2

    shl-int/2addr v1, v2

    const/high16 v2, 0xff0000

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    iget v1, p0, Lcom/android/internal/os/PowerStats$Descriptor;->uidStatsArrayLength:I

    invoke-static {}, Lcom/android/internal/os/PowerStats;->-$$Nest$sfgetUID_STATS_ARRAY_LENGTH_SHIFT()I

    move-result v2

    shl-int/2addr v1, v2

    const/high16 v2, -0x1000000

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Lcom/android/internal/os/PowerStats$Descriptor;->powerComponentId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Lcom/android/internal/os/PowerStats$Descriptor;->name:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/os/PowerStats$Descriptor;->stateLabels:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/os/PowerStats$Descriptor;->stateLabels:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v3, p0, Lcom/android/internal/os/PowerStats$Descriptor;->stateLabels:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v3, p0, Lcom/android/internal/os/PowerStats$Descriptor;->stateLabels:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/internal/os/PowerStats$Descriptor;->extras:Landroid/os/PersistableBundle;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/os/PersistableBundle;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method

.method public blacklist writeXml(Lcom/android/modules/utils/TypedXmlSerializer;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "extras"

    const/4 v1, 0x0

    const-string v2, "descriptor"

    invoke-interface {p1, v1, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v3, "id"

    iget v4, p0, Lcom/android/internal/os/PowerStats$Descriptor;->powerComponentId:I

    invoke-interface {p1, v1, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v3, "name"

    iget-object v4, p0, Lcom/android/internal/os/PowerStats$Descriptor;->name:Ljava/lang/String;

    invoke-interface {p1, v1, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v3, "stats-array-length"

    iget v4, p0, Lcom/android/internal/os/PowerStats$Descriptor;->statsArrayLength:I

    invoke-interface {p1, v1, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v3, "state-stats-array-length"

    iget v4, p0, Lcom/android/internal/os/PowerStats$Descriptor;->stateStatsArrayLength:I

    invoke-interface {p1, v1, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v3, "uid-stats-array-length"

    iget v4, p0, Lcom/android/internal/os/PowerStats$Descriptor;->uidStatsArrayLength:I

    invoke-interface {p1, v1, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v3, p0, Lcom/android/internal/os/PowerStats$Descriptor;->stateLabels:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_0
    if-ltz v3, :cond_0

    const-string/jumbo v4, "state"

    invoke-interface {p1, v1, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v5, p0, Lcom/android/internal/os/PowerStats$Descriptor;->stateLabels:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    const-string/jumbo v6, "key"

    invoke-interface {p1, v1, v6, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v5, p0, Lcom/android/internal/os/PowerStats$Descriptor;->stateLabels:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string/jumbo v6, "label"

    invoke-interface {p1, v1, v6, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p1, v1, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-interface {p1, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v3, p0, Lcom/android/internal/os/PowerStats$Descriptor;->extras:Landroid/os/PersistableBundle;

    invoke-virtual {v3, p1}, Landroid/os/PersistableBundle;->saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V

    invoke-interface {p1, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    invoke-interface {p1, v1, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
