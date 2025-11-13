.class public final Lcom/samsung/android/sdk/moneta/memory/option/wrapper/v1/query/EngramQueryOptionWrapperV1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/sdk/moneta/memory/option/wrapper/v1/query/EngramQueryOptionWrapperV1;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/samsung/android/sdk/moneta/memory/option/wrapper/v1/query/EngramQueryOptionWrapperV1$Companion;


# instance fields
.field private final contentFill:Z

.field private final contentId:Ljava/lang/String;

.field private final endTimestamp:Ljava/lang/Long;

.field private final engramId:Ljava/lang/String;

.field private final excludeActivityTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final excludeTags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final includeActivityTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final includeTags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final latitude:Ljava/lang/Double;

.field private final limit:I

.field private final longitude:Ljava/lang/Double;

.field private final offset:I

.field private final queryType:I

.field private final radius:Ljava/lang/Double;

.field private final startTimestamp:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/sdk/moneta/memory/option/wrapper/v1/query/EngramQueryOptionWrapperV1$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/moneta/memory/option/wrapper/v1/query/EngramQueryOptionWrapperV1$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/sdk/moneta/memory/option/wrapper/v1/query/EngramQueryOptionWrapperV1;->Companion:Lcom/samsung/android/sdk/moneta/memory/option/wrapper/v1/query/EngramQueryOptionWrapperV1$Companion;

    new-instance v0, Lcom/samsung/android/sdk/moneta/memory/option/wrapper/v1/query/EngramQueryOptionWrapperV1$Creator;

    invoke-direct {v0}, Lcom/samsung/android/sdk/moneta/memory/option/wrapper/v1/query/EngramQueryOptionWrapperV1$Creator;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/moneta/memory/option/wrapper/v1/query/EngramQueryOptionWrapperV1;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 18

    move-object/from16 v0, p0

    const/16 v16, 0x7fff

    const/16 v17, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct/range {v0 .. v17}, Lcom/samsung/android/sdk/moneta/memory/option/wrapper/v1/query/EngramQueryOptionWrapperV1;-><init>(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;ILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;IILjava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;ILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;IILjava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;II",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/moneta/memory/option/wrapper/v1/query/EngramQueryOptionWrapperV1;->startTimestamp:Ljava/lang/Long;

    iput-object p2, p0, Lcom/samsung/android/sdk/moneta/memory/option/wrapper/v1/query/EngramQueryOptionWrapperV1;->endTimestamp:Ljava/lang/Long;

    iput-object p3, p0, Lcom/samsung/android/sdk/moneta/memory/option/wrapper/v1/query/EngramQueryOptionWrapperV1;->contentId:Ljava/lang/String;

    iput p4, p0, Lcom/samsung/android/sdk/moneta/memory/option/wrapper/v1/query/EngramQueryOptionWrapperV1;->queryType:I

    iput-object p5, p0, Lcom/samsung/android/sdk/moneta/memory/option/wrapper/v1/query/EngramQueryOptionWrapperV1;->includeTags:Ljava/util/List;

    iput-object p6, p0, Lcom/samsung/android/sdk/moneta/memory/option/wrapper/v1/query/EngramQueryOptionWrapperV1;->excludeTags:Ljava/util/List;

    iput-object p7, p0, Lcom/samsung/android/sdk/moneta/memory/option/wrapper/v1/query/EngramQueryOptionWrapperV1;->includeActivityTypes:Ljava/util/List;

    iput-object p8, p0, Lcom/samsung/android/sdk/moneta/memory/option/wrapper/v1/query/EngramQueryOptionWrapperV1;->excludeActivityTypes:Ljava/util/List;

    iput p9, p0, Lcom/samsung/android/sdk/moneta/memory/option/wrapper/v1/query/EngramQueryOptionWrapperV1;->limit:I

    iput p10, p0, Lcom/samsung/android/sdk/moneta/memory/option/wrapper/v1/query/EngramQueryOptionWrapperV1;->offset:I

    iput-object p11, p0, Lcom/samsung/android/sdk/moneta/memory/option/wrapper/v1/query/EngramQueryOptionWrapperV1;->engramId:Ljava/lang/String;

    iput-object p12, p0, Lcom/samsung/android/sdk/moneta/memory/option/wrapper/v1/query/EngramQueryOptionWrapperV1;->latitude:Ljava/lang/Double;

    iput-object p13, p0, Lcom/samsung/android/sdk/moneta/memory/option/wrapper/v1/query/EngramQueryOptionWrapperV1;->longitude:Ljava/lang/Double;

    iput-object p14, p0, Lcom/samsung/android/sdk/moneta/memory/option/wrapper/v1/query/EngramQueryOptionWrapperV1;->radius:Ljava/lang/Double;

    iput-boolean p15, p0, Lcom/samsung/android/sdk/moneta/memory/option/wrapper/v1/query/EngramQueryOptionWrapperV1;->contentFill:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;ILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;IILjava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 16

    move/from16 v0, p16

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    move-object/from16 v1, p1

    :goto_0
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v0, 0x4

    if-eqz v4, :cond_2

    const/4 v4, 0x0

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v0, 0x8

    if-eqz v5, :cond_3

    sget-object v5, Lcom/samsung/android/sdk/moneta/memory/option/EngramQueryType;->BETWEEN_TIMESTAMP:Lcom/samsung/android/sdk/moneta/memory/option/EngramQueryType;

    invoke-virtual {v5}, Lcom/samsung/android/sdk/moneta/memory/option/EngramQueryType;->getValue()I

    move-result v5

    goto :goto_3

    :cond_3
    move/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v0, 0x10

    if-eqz v6, :cond_4

    const/4 v6, 0x0

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v0, 0x20

    if-eqz v7, :cond_5

    const/4 v7, 0x0

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v0, 0x40

    if-eqz v8, :cond_6

    const/4 v8, 0x0

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v0, 0x80

    if-eqz v9, :cond_7

    const/4 v9, 0x0

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v0, 0x100

    if-eqz v10, :cond_8

    const/16 v10, 0x14

    goto :goto_8

    :cond_8
    move/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v0, 0x200

    const/4 v12, 0x0

    if-eqz v11, :cond_9

    move v11, v12

    goto :goto_9

    :cond_9
    move/from16 v11, p10

    :goto_9
    and-int/lit16 v13, v0, 0x400

    if-eqz v13, :cond_a

    const/4 v13, 0x0

    goto :goto_a

    :cond_a
    move-object/from16 v13, p11

    :goto_a
    and-int/lit16 v14, v0, 0x800

    if-eqz v14, :cond_b

    const/4 v14, 0x0

    goto :goto_b

    :cond_b
    move-object/from16 v14, p12

    :goto_b
    and-int/lit16 v15, v0, 0x1000

    if-eqz v15, :cond_c

    const/4 v15, 0x0

    goto :goto_c

    :cond_c
    move-object/from16 v15, p13

    :goto_c
    and-int/lit16 v2, v0, 0x2000

    if-eqz v2, :cond_d

    const/4 v2, 0x0

    goto :goto_d

    :cond_d
    move-object/from16 v2, p14

    :goto_d
    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_e

    goto :goto_e

    :cond_e
    move/from16 v12, p15

    :goto_e
    move-object/from16 p1, v1

    move-object/from16 p2, v3

    move-object/from16 p3, v4

    move/from16 p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move/from16 p9, v10

    move/from16 p10, v11

    move-object/from16 p11, v13

    move-object/from16 p12, v14

    move-object/from16 p13, v15

    move-object/from16 p14, v2

    move/from16 p15, v12

    invoke-direct/range {p0 .. p15}, Lcom/samsung/android/sdk/moneta/memory/option/wrapper/v1/query/EngramQueryOptionWrapperV1;-><init>(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;ILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;IILjava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Z)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getContentFill()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/sdk/moneta/memory/option/wrapper/v1/query/EngramQueryOptionWrapperV1;->contentFill:Z

    return p0
.end method

.method public final getContentId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/moneta/memory/option/wrapper/v1/query/EngramQueryOptionWrapperV1;->contentId:Ljava/lang/String;

    return-object p0
.end method

.method public final getEndTimestamp()Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/moneta/memory/option/wrapper/v1/query/EngramQueryOptionWrapperV1;->endTimestamp:Ljava/lang/Long;

    return-object p0
.end method

.method public final getEngramId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/moneta/memory/option/wrapper/v1/query/EngramQueryOptionWrapperV1;->engramId:Ljava/lang/String;

    return-object p0
.end method

.method public final getExcludeActivityTypes()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/moneta/memory/option/wrapper/v1/query/EngramQueryOptionWrapperV1;->excludeActivityTypes:Ljava/util/List;

    return-object p0
.end method

.method public final getExcludeTags()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/moneta/memory/option/wrapper/v1/query/EngramQueryOptionWrapperV1;->excludeTags:Ljava/util/List;

    return-object p0
.end method

.method public final getIncludeActivityTypes()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/moneta/memory/option/wrapper/v1/query/EngramQueryOptionWrapperV1;->includeActivityTypes:Ljava/util/List;

    return-object p0
.end method

.method public final getIncludeTags()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/moneta/memory/option/wrapper/v1/query/EngramQueryOptionWrapperV1;->includeTags:Ljava/util/List;

    return-object p0
.end method

.method public final getLatitude()Ljava/lang/Double;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/moneta/memory/option/wrapper/v1/query/EngramQueryOptionWrapperV1;->latitude:Ljava/lang/Double;

    return-object p0
.end method

.method public final getLimit()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/sdk/moneta/memory/option/wrapper/v1/query/EngramQueryOptionWrapperV1;->limit:I

    return p0
.end method

.method public final getLongitude()Ljava/lang/Double;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/moneta/memory/option/wrapper/v1/query/EngramQueryOptionWrapperV1;->longitude:Ljava/lang/Double;

    return-object p0
.end method

.method public final getOffset()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/sdk/moneta/memory/option/wrapper/v1/query/EngramQueryOptionWrapperV1;->offset:I

    return p0
.end method

.method public final getQueryType()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/sdk/moneta/memory/option/wrapper/v1/query/EngramQueryOptionWrapperV1;->queryType:I

    return p0
.end method

.method public final getRadius()Ljava/lang/Double;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/moneta/memory/option/wrapper/v1/query/EngramQueryOptionWrapperV1;->radius:Ljava/lang/Double;

    return-object p0
.end method

.method public final getStartTimestamp()Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/moneta/memory/option/wrapper/v1/query/EngramQueryOptionWrapperV1;->startTimestamp:Ljava/lang/Long;

    return-object p0
.end method

.method public final toOption()Lcom/samsung/android/sdk/moneta/memory/option/EngramQueryOption;
    .locals 34

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/sdk/moneta/memory/option/wrapper/v1/query/EngramQueryOptionWrapperV1;->startTimestamp:Ljava/lang/Long;

    iget-object v2, v0, Lcom/samsung/android/sdk/moneta/memory/option/wrapper/v1/query/EngramQueryOptionWrapperV1;->endTimestamp:Ljava/lang/Long;

    iget-object v3, v0, Lcom/samsung/android/sdk/moneta/memory/option/wrapper/v1/query/EngramQueryOptionWrapperV1;->contentId:Ljava/lang/String;

    sget-object v4, Lcom/samsung/android/sdk/moneta/memory/option/EngramQueryType;->Companion:Lcom/samsung/android/sdk/moneta/memory/option/EngramQueryType$Companion;

    iget v5, v0, Lcom/samsung/android/sdk/moneta/memory/option/wrapper/v1/query/EngramQueryOptionWrapperV1;->queryType:I

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/samsung/android/sdk/moneta/memory/option/EngramQueryType;->getEntries()Lkotlin/enums/EnumEntries;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v8, v6

    check-cast v8, Lcom/samsung/android/sdk/moneta/memory/option/EngramQueryType;

    invoke-virtual {v8}, Lcom/samsung/android/sdk/moneta/memory/option/EngramQueryType;->getValue()I

    move-result v8

    if-ne v8, v5, :cond_0

    goto :goto_0

    :cond_1
    move-object v6, v7

    :goto_0
    check-cast v6, Lcom/samsung/android/sdk/moneta/memory/option/EngramQueryType;

    if-nez v6, :cond_2

    sget-object v4, Lcom/samsung/android/sdk/moneta/memory/option/EngramQueryType;->BETWEEN_TIMESTAMP:Lcom/samsung/android/sdk/moneta/memory/option/EngramQueryType;

    goto :goto_1

    :cond_2
    move-object v4, v6

    :goto_1
    iget-object v5, v0, Lcom/samsung/android/sdk/moneta/memory/option/wrapper/v1/query/EngramQueryOptionWrapperV1;->includeTags:Ljava/util/List;

    iget-object v6, v0, Lcom/samsung/android/sdk/moneta/memory/option/wrapper/v1/query/EngramQueryOptionWrapperV1;->excludeTags:Ljava/util/List;

    iget-object v8, v0, Lcom/samsung/android/sdk/moneta/memory/option/wrapper/v1/query/EngramQueryOptionWrapperV1;->includeActivityTypes:Ljava/util/List;

    const/16 v9, 0xa

    if-eqz v8, :cond_3

    check-cast v8, Ljava/lang/Iterable;

    new-instance v10, Ljava/util/ArrayList;

    invoke-static {v8, v9}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->intValue()I

    move-result v11

    sget-object v12, Lcom/samsung/android/sdk/moneta/memory/entity/activity/ActivityType;->Companion:Lcom/samsung/android/sdk/moneta/memory/entity/activity/ActivityType$Companion;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v11}, Lcom/samsung/android/sdk/moneta/memory/entity/activity/ActivityType$Companion;->fromInt(Ljava/lang/Integer;)Lcom/samsung/android/sdk/moneta/memory/entity/activity/ActivityType;

    move-result-object v11

    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    move-object v10, v7

    :cond_4
    iget-object v8, v0, Lcom/samsung/android/sdk/moneta/memory/option/wrapper/v1/query/EngramQueryOptionWrapperV1;->excludeActivityTypes:Ljava/util/List;

    if-eqz v8, :cond_5

    check-cast v8, Ljava/lang/Iterable;

    new-instance v7, Ljava/util/ArrayList;

    invoke-static {v8, v9}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v9

    invoke-direct {v7, v9}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v9

    sget-object v11, Lcom/samsung/android/sdk/moneta/memory/entity/activity/ActivityType;->Companion:Lcom/samsung/android/sdk/moneta/memory/entity/activity/ActivityType$Companion;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v9}, Lcom/samsung/android/sdk/moneta/memory/entity/activity/ActivityType$Companion;->fromInt(Ljava/lang/Integer;)Lcom/samsung/android/sdk/moneta/memory/entity/activity/ActivityType;

    move-result-object v9

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    move-object v8, v7

    iget v9, v0, Lcom/samsung/android/sdk/moneta/memory/option/wrapper/v1/query/EngramQueryOptionWrapperV1;->limit:I

    iget v11, v0, Lcom/samsung/android/sdk/moneta/memory/option/wrapper/v1/query/EngramQueryOptionWrapperV1;->offset:I

    iget-object v12, v0, Lcom/samsung/android/sdk/moneta/memory/option/wrapper/v1/query/EngramQueryOptionWrapperV1;->engramId:Ljava/lang/String;

    iget-object v13, v0, Lcom/samsung/android/sdk/moneta/memory/option/wrapper/v1/query/EngramQueryOptionWrapperV1;->latitude:Ljava/lang/Double;

    iget-object v14, v0, Lcom/samsung/android/sdk/moneta/memory/option/wrapper/v1/query/EngramQueryOptionWrapperV1;->longitude:Ljava/lang/Double;

    iget-object v15, v0, Lcom/samsung/android/sdk/moneta/memory/option/wrapper/v1/query/EngramQueryOptionWrapperV1;->radius:Ljava/lang/Double;

    iget-boolean v7, v0, Lcom/samsung/android/sdk/moneta/memory/option/wrapper/v1/query/EngramQueryOptionWrapperV1;->contentFill:Z

    new-instance v0, Lcom/samsung/android/sdk/moneta/memory/option/EngramQueryOption$WrapBuilder;

    move-object/from16 p0, v0

    move/from16 v16, v7

    move-object v7, v10

    move v10, v11

    move-object v11, v12

    move-object v12, v13

    move-object v13, v14

    move-object v14, v15

    move/from16 v15, v16

    invoke-direct/range {v0 .. v15}, Lcom/samsung/android/sdk/moneta/memory/option/EngramQueryOption$WrapBuilder;-><init>(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Lcom/samsung/android/sdk/moneta/memory/option/EngramQueryType;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;IILjava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Z)V

    new-instance v0, Lcom/samsung/android/sdk/moneta/memory/option/EngramQueryOption;

    move-object/from16 v17, v0

    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/samsung/android/sdk/moneta/memory/option/EngramQueryOption$WrapBuilder;->includeTags:Ljava/util/List;

    move-object/from16 v22, v2

    iget-object v2, v1, Lcom/samsung/android/sdk/moneta/memory/option/EngramQueryOption$WrapBuilder;->excludeTags:Ljava/util/List;

    move-object/from16 v23, v2

    iget-object v2, v1, Lcom/samsung/android/sdk/moneta/memory/option/EngramQueryOption$WrapBuilder;->includeActivityTypes:Ljava/util/List;

    move-object/from16 v24, v2

    iget-object v2, v1, Lcom/samsung/android/sdk/moneta/memory/option/EngramQueryOption$WrapBuilder;->excludeActivityTypes:Ljava/util/List;

    move-object/from16 v25, v2

    iget-boolean v2, v1, Lcom/samsung/android/sdk/moneta/memory/option/EngramQueryOption$WrapBuilder;->contentFill:Z

    move/from16 v32, v2

    iget-object v2, v1, Lcom/samsung/android/sdk/moneta/memory/option/EngramQueryOption$WrapBuilder;->startTimestamp:Ljava/lang/Long;

    move-object/from16 v18, v2

    iget-object v2, v1, Lcom/samsung/android/sdk/moneta/memory/option/EngramQueryOption$WrapBuilder;->endTimestamp:Ljava/lang/Long;

    move-object/from16 v19, v2

    iget-object v2, v1, Lcom/samsung/android/sdk/moneta/memory/option/EngramQueryOption$WrapBuilder;->contentId:Ljava/lang/String;

    move-object/from16 v20, v2

    iget-object v2, v1, Lcom/samsung/android/sdk/moneta/memory/option/EngramQueryOption$WrapBuilder;->queryType:Lcom/samsung/android/sdk/moneta/memory/option/EngramQueryType;

    move-object/from16 v21, v2

    iget v2, v1, Lcom/samsung/android/sdk/moneta/memory/option/EngramQueryOption$WrapBuilder;->limit:I

    move/from16 v26, v2

    iget v2, v1, Lcom/samsung/android/sdk/moneta/memory/option/EngramQueryOption$WrapBuilder;->offset:I

    move/from16 v27, v2

    iget-object v2, v1, Lcom/samsung/android/sdk/moneta/memory/option/EngramQueryOption$WrapBuilder;->engramId:Ljava/lang/String;

    move-object/from16 v28, v2

    iget-object v2, v1, Lcom/samsung/android/sdk/moneta/memory/option/EngramQueryOption$WrapBuilder;->latitude:Ljava/lang/Double;

    move-object/from16 v29, v2

    const/16 v33, 0x0

    iget-object v2, v1, Lcom/samsung/android/sdk/moneta/memory/option/EngramQueryOption$WrapBuilder;->longitude:Ljava/lang/Double;

    move-object/from16 v30, v2

    iget-object v1, v1, Lcom/samsung/android/sdk/moneta/memory/option/EngramQueryOption$WrapBuilder;->radius:Ljava/lang/Double;

    move-object/from16 v31, v1

    invoke-direct/range {v17 .. v33}, Lcom/samsung/android/sdk/moneta/memory/option/EngramQueryOption;-><init>(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Lcom/samsung/android/sdk/moneta/memory/option/EngramQueryType;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;IILjava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;ZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    iget-object p2, p0, Lcom/samsung/android/sdk/moneta/memory/option/wrapper/v1/query/EngramQueryOptionWrapperV1;->startTimestamp:Ljava/lang/Long;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    invoke-static {p1, v0, p2}, Lcom/samsung/android/sdk/moneta/basicdomain/entity/Person$$ExternalSyntheticOutline0;->m(Landroid/os/Parcel;ILjava/lang/Long;)V

    :goto_0
    iget-object p2, p0, Lcom/samsung/android/sdk/moneta/memory/option/wrapper/v1/query/EngramQueryOptionWrapperV1;->endTimestamp:Ljava/lang/Long;

    if-nez p2, :cond_1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :cond_1
    invoke-static {p1, v0, p2}, Lcom/samsung/android/sdk/moneta/basicdomain/entity/Person$$ExternalSyntheticOutline0;->m(Landroid/os/Parcel;ILjava/lang/Long;)V

    :goto_1
    iget-object p2, p0, Lcom/samsung/android/sdk/moneta/memory/option/wrapper/v1/query/EngramQueryOptionWrapperV1;->contentId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/samsung/android/sdk/moneta/memory/option/wrapper/v1/query/EngramQueryOptionWrapperV1;->queryType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/samsung/android/sdk/moneta/memory/option/wrapper/v1/query/EngramQueryOptionWrapperV1;->includeTags:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object p2, p0, Lcom/samsung/android/sdk/moneta/memory/option/wrapper/v1/query/EngramQueryOptionWrapperV1;->excludeTags:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object p2, p0, Lcom/samsung/android/sdk/moneta/memory/option/wrapper/v1/query/EngramQueryOptionWrapperV1;->includeActivityTypes:Ljava/util/List;

    if-nez p2, :cond_2

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    :cond_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    :cond_3
    :goto_3
    iget-object p2, p0, Lcom/samsung/android/sdk/moneta/memory/option/wrapper/v1/query/EngramQueryOptionWrapperV1;->excludeActivityTypes:Ljava/util/List;

    if-nez p2, :cond_4

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5

    :cond_4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4

    :cond_5
    :goto_5
    iget p2, p0, Lcom/samsung/android/sdk/moneta/memory/option/wrapper/v1/query/EngramQueryOptionWrapperV1;->limit:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/samsung/android/sdk/moneta/memory/option/wrapper/v1/query/EngramQueryOptionWrapperV1;->offset:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/samsung/android/sdk/moneta/memory/option/wrapper/v1/query/EngramQueryOptionWrapperV1;->engramId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/sdk/moneta/memory/option/wrapper/v1/query/EngramQueryOptionWrapperV1;->latitude:Ljava/lang/Double;

    if-nez p2, :cond_6

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6

    :cond_6
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeDouble(D)V

    :goto_6
    iget-object p2, p0, Lcom/samsung/android/sdk/moneta/memory/option/wrapper/v1/query/EngramQueryOptionWrapperV1;->longitude:Ljava/lang/Double;

    if-nez p2, :cond_7

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_7

    :cond_7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeDouble(D)V

    :goto_7
    iget-object p2, p0, Lcom/samsung/android/sdk/moneta/memory/option/wrapper/v1/query/EngramQueryOptionWrapperV1;->radius:Ljava/lang/Double;

    if-nez p2, :cond_8

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    :cond_8
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    :goto_8
    iget-boolean p0, p0, Lcom/samsung/android/sdk/moneta/memory/option/wrapper/v1/query/EngramQueryOptionWrapperV1;->contentFill:Z

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
