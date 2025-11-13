.class public final Lcom/samsung/android/sdk/moneta/memory/option/wrapper/v1/query/ActivityQueryOptionWrapperV1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/sdk/moneta/memory/option/wrapper/v1/query/ActivityQueryOptionWrapperV1;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/samsung/android/sdk/moneta/memory/option/wrapper/v1/query/ActivityQueryOptionWrapperV1$Companion;


# instance fields
.field private final activityType:Lcom/samsung/android/sdk/moneta/memory/entity/activity/ActivityType;

.field private final contentFill:Z

.field private final endTimestamp:Ljava/lang/Long;

.field private final engramId:Ljava/lang/String;

.field private final limit:I

.field private final offset:I

.field private final queryType:I

.field private final startTimestamp:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/sdk/moneta/memory/option/wrapper/v1/query/ActivityQueryOptionWrapperV1$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/moneta/memory/option/wrapper/v1/query/ActivityQueryOptionWrapperV1$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/sdk/moneta/memory/option/wrapper/v1/query/ActivityQueryOptionWrapperV1;->Companion:Lcom/samsung/android/sdk/moneta/memory/option/wrapper/v1/query/ActivityQueryOptionWrapperV1$Companion;

    new-instance v0, Lcom/samsung/android/sdk/moneta/memory/option/wrapper/v1/query/ActivityQueryOptionWrapperV1$Creator;

    invoke-direct {v0}, Lcom/samsung/android/sdk/moneta/memory/option/wrapper/v1/query/ActivityQueryOptionWrapperV1$Creator;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/moneta/memory/option/wrapper/v1/query/ActivityQueryOptionWrapperV1;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 11

    const/16 v9, 0xff

    const/4 v10, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lcom/samsung/android/sdk/moneta/memory/option/wrapper/v1/query/ActivityQueryOptionWrapperV1;-><init>(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;IILcom/samsung/android/sdk/moneta/memory/entity/activity/ActivityType;IZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;IILcom/samsung/android/sdk/moneta/memory/entity/activity/ActivityType;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/moneta/memory/option/wrapper/v1/query/ActivityQueryOptionWrapperV1;->startTimestamp:Ljava/lang/Long;

    iput-object p2, p0, Lcom/samsung/android/sdk/moneta/memory/option/wrapper/v1/query/ActivityQueryOptionWrapperV1;->endTimestamp:Ljava/lang/Long;

    iput-object p3, p0, Lcom/samsung/android/sdk/moneta/memory/option/wrapper/v1/query/ActivityQueryOptionWrapperV1;->engramId:Ljava/lang/String;

    iput p4, p0, Lcom/samsung/android/sdk/moneta/memory/option/wrapper/v1/query/ActivityQueryOptionWrapperV1;->limit:I

    iput p5, p0, Lcom/samsung/android/sdk/moneta/memory/option/wrapper/v1/query/ActivityQueryOptionWrapperV1;->offset:I

    iput-object p6, p0, Lcom/samsung/android/sdk/moneta/memory/option/wrapper/v1/query/ActivityQueryOptionWrapperV1;->activityType:Lcom/samsung/android/sdk/moneta/memory/entity/activity/ActivityType;

    iput p7, p0, Lcom/samsung/android/sdk/moneta/memory/option/wrapper/v1/query/ActivityQueryOptionWrapperV1;->queryType:I

    iput-boolean p8, p0, Lcom/samsung/android/sdk/moneta/memory/option/wrapper/v1/query/ActivityQueryOptionWrapperV1;->contentFill:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;IILcom/samsung/android/sdk/moneta/memory/entity/activity/ActivityType;IZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p10, p9, 0x1

    const/4 v0, 0x0

    if-eqz p10, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p10, p9, 0x2

    if-eqz p10, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p10, p9, 0x4

    if-eqz p10, :cond_2

    move-object p3, v0

    :cond_2
    and-int/lit8 p10, p9, 0x8

    if-eqz p10, :cond_3

    const/16 p4, 0x64

    :cond_3
    and-int/lit8 p10, p9, 0x10

    if-eqz p10, :cond_4

    const/4 p5, 0x0

    :cond_4
    and-int/lit8 p10, p9, 0x20

    if-eqz p10, :cond_5

    move-object p6, v0

    :cond_5
    and-int/lit8 p10, p9, 0x40

    if-eqz p10, :cond_6

    sget-object p7, Lcom/samsung/android/sdk/moneta/memory/option/ActivityQueryType;->BETWEEN_TIMESTAMP:Lcom/samsung/android/sdk/moneta/memory/option/ActivityQueryType;

    invoke-virtual {p7}, Lcom/samsung/android/sdk/moneta/memory/option/ActivityQueryType;->getValue()I

    move-result p7

    :cond_6
    and-int/lit16 p9, p9, 0x80

    if-eqz p9, :cond_7

    const/4 p8, 0x1

    :cond_7
    invoke-direct/range {p0 .. p8}, Lcom/samsung/android/sdk/moneta/memory/option/wrapper/v1/query/ActivityQueryOptionWrapperV1;-><init>(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;IILcom/samsung/android/sdk/moneta/memory/entity/activity/ActivityType;IZ)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getActivityType()Lcom/samsung/android/sdk/moneta/memory/entity/activity/ActivityType;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/moneta/memory/option/wrapper/v1/query/ActivityQueryOptionWrapperV1;->activityType:Lcom/samsung/android/sdk/moneta/memory/entity/activity/ActivityType;

    return-object p0
.end method

.method public final getContentFill()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/sdk/moneta/memory/option/wrapper/v1/query/ActivityQueryOptionWrapperV1;->contentFill:Z

    return p0
.end method

.method public final getEndTimestamp()Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/moneta/memory/option/wrapper/v1/query/ActivityQueryOptionWrapperV1;->endTimestamp:Ljava/lang/Long;

    return-object p0
.end method

.method public final getEngramId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/moneta/memory/option/wrapper/v1/query/ActivityQueryOptionWrapperV1;->engramId:Ljava/lang/String;

    return-object p0
.end method

.method public final getLimit()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/sdk/moneta/memory/option/wrapper/v1/query/ActivityQueryOptionWrapperV1;->limit:I

    return p0
.end method

.method public final getOffset()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/sdk/moneta/memory/option/wrapper/v1/query/ActivityQueryOptionWrapperV1;->offset:I

    return p0
.end method

.method public final getQueryType()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/sdk/moneta/memory/option/wrapper/v1/query/ActivityQueryOptionWrapperV1;->queryType:I

    return p0
.end method

.method public final getStartTimestamp()Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/moneta/memory/option/wrapper/v1/query/ActivityQueryOptionWrapperV1;->startTimestamp:Ljava/lang/Long;

    return-object p0
.end method

.method public final toOption()Lcom/samsung/android/sdk/moneta/memory/option/ActivityQueryOption;
    .locals 20

    move-object/from16 v0, p0

    new-instance v9, Lcom/samsung/android/sdk/moneta/memory/option/ActivityQueryOption$WrapBuilder;

    iget-object v1, v0, Lcom/samsung/android/sdk/moneta/memory/option/wrapper/v1/query/ActivityQueryOptionWrapperV1;->startTimestamp:Ljava/lang/Long;

    iget-object v2, v0, Lcom/samsung/android/sdk/moneta/memory/option/wrapper/v1/query/ActivityQueryOptionWrapperV1;->endTimestamp:Ljava/lang/Long;

    iget-object v3, v0, Lcom/samsung/android/sdk/moneta/memory/option/wrapper/v1/query/ActivityQueryOptionWrapperV1;->engramId:Ljava/lang/String;

    iget v4, v0, Lcom/samsung/android/sdk/moneta/memory/option/wrapper/v1/query/ActivityQueryOptionWrapperV1;->limit:I

    iget v5, v0, Lcom/samsung/android/sdk/moneta/memory/option/wrapper/v1/query/ActivityQueryOptionWrapperV1;->offset:I

    iget-object v6, v0, Lcom/samsung/android/sdk/moneta/memory/option/wrapper/v1/query/ActivityQueryOptionWrapperV1;->activityType:Lcom/samsung/android/sdk/moneta/memory/entity/activity/ActivityType;

    sget-object v7, Lcom/samsung/android/sdk/moneta/memory/option/ActivityQueryType;->Companion:Lcom/samsung/android/sdk/moneta/memory/option/ActivityQueryType$Companion;

    iget v8, v0, Lcom/samsung/android/sdk/moneta/memory/option/wrapper/v1/query/ActivityQueryOptionWrapperV1;->queryType:I

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/samsung/android/sdk/moneta/memory/option/ActivityQueryType;->getEntries()Lkotlin/enums/EnumEntries;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    move-object v11, v10

    check-cast v11, Lcom/samsung/android/sdk/moneta/memory/option/ActivityQueryType;

    invoke-virtual {v11}, Lcom/samsung/android/sdk/moneta/memory/option/ActivityQueryType;->getValue()I

    move-result v11

    if-ne v11, v8, :cond_0

    goto :goto_0

    :cond_1
    const/4 v10, 0x0

    :goto_0
    check-cast v10, Lcom/samsung/android/sdk/moneta/memory/option/ActivityQueryType;

    if-nez v10, :cond_2

    sget-object v7, Lcom/samsung/android/sdk/moneta/memory/option/ActivityQueryType;->BETWEEN_TIMESTAMP:Lcom/samsung/android/sdk/moneta/memory/option/ActivityQueryType;

    goto :goto_1

    :cond_2
    move-object v7, v10

    :goto_1
    iget-boolean v8, v0, Lcom/samsung/android/sdk/moneta/memory/option/wrapper/v1/query/ActivityQueryOptionWrapperV1;->contentFill:Z

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/sdk/moneta/memory/option/ActivityQueryOption$WrapBuilder;-><init>(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;IILcom/samsung/android/sdk/moneta/memory/entity/activity/ActivityType;Lcom/samsung/android/sdk/moneta/memory/option/ActivityQueryType;Z)V

    new-instance v0, Lcom/samsung/android/sdk/moneta/memory/option/ActivityQueryOption;

    iget-boolean v1, v9, Lcom/samsung/android/sdk/moneta/memory/option/ActivityQueryOption$WrapBuilder;->contentFill:Z

    iget-object v11, v9, Lcom/samsung/android/sdk/moneta/memory/option/ActivityQueryOption$WrapBuilder;->startTimestamp:Ljava/lang/Long;

    iget-object v12, v9, Lcom/samsung/android/sdk/moneta/memory/option/ActivityQueryOption$WrapBuilder;->endTimestamp:Ljava/lang/Long;

    iget-object v13, v9, Lcom/samsung/android/sdk/moneta/memory/option/ActivityQueryOption$WrapBuilder;->engramId:Ljava/lang/String;

    iget v14, v9, Lcom/samsung/android/sdk/moneta/memory/option/ActivityQueryOption$WrapBuilder;->limit:I

    iget v15, v9, Lcom/samsung/android/sdk/moneta/memory/option/ActivityQueryOption$WrapBuilder;->offset:I

    iget-object v2, v9, Lcom/samsung/android/sdk/moneta/memory/option/ActivityQueryOption$WrapBuilder;->activityType:Lcom/samsung/android/sdk/moneta/memory/entity/activity/ActivityType;

    iget-object v3, v9, Lcom/samsung/android/sdk/moneta/memory/option/ActivityQueryOption$WrapBuilder;->queryType:Lcom/samsung/android/sdk/moneta/memory/option/ActivityQueryType;

    const/16 v19, 0x0

    move-object v10, v0

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move/from16 v18, v1

    invoke-direct/range {v10 .. v19}, Lcom/samsung/android/sdk/moneta/memory/option/ActivityQueryOption;-><init>(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;IILcom/samsung/android/sdk/moneta/memory/entity/activity/ActivityType;Lcom/samsung/android/sdk/moneta/memory/option/ActivityQueryType;ZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object p2, p0, Lcom/samsung/android/sdk/moneta/memory/option/wrapper/v1/query/ActivityQueryOptionWrapperV1;->startTimestamp:Ljava/lang/Long;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    invoke-static {p1, v0, p2}, Lcom/samsung/android/sdk/moneta/basicdomain/entity/Person$$ExternalSyntheticOutline0;->m(Landroid/os/Parcel;ILjava/lang/Long;)V

    :goto_0
    iget-object p2, p0, Lcom/samsung/android/sdk/moneta/memory/option/wrapper/v1/query/ActivityQueryOptionWrapperV1;->endTimestamp:Ljava/lang/Long;

    if-nez p2, :cond_1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :cond_1
    invoke-static {p1, v0, p2}, Lcom/samsung/android/sdk/moneta/basicdomain/entity/Person$$ExternalSyntheticOutline0;->m(Landroid/os/Parcel;ILjava/lang/Long;)V

    :goto_1
    iget-object p2, p0, Lcom/samsung/android/sdk/moneta/memory/option/wrapper/v1/query/ActivityQueryOptionWrapperV1;->engramId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/samsung/android/sdk/moneta/memory/option/wrapper/v1/query/ActivityQueryOptionWrapperV1;->limit:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/samsung/android/sdk/moneta/memory/option/wrapper/v1/query/ActivityQueryOptionWrapperV1;->offset:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/samsung/android/sdk/moneta/memory/option/wrapper/v1/query/ActivityQueryOptionWrapperV1;->activityType:Lcom/samsung/android/sdk/moneta/memory/entity/activity/ActivityType;

    if-nez p2, :cond_2

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    :cond_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_2
    iget p2, p0, Lcom/samsung/android/sdk/moneta/memory/option/wrapper/v1/query/ActivityQueryOptionWrapperV1;->queryType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p0, p0, Lcom/samsung/android/sdk/moneta/memory/option/wrapper/v1/query/ActivityQueryOptionWrapperV1;->contentFill:Z

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
