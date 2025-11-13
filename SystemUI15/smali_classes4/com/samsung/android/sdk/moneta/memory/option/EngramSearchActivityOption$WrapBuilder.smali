.class public final Lcom/samsung/android/sdk/moneta/memory/option/EngramSearchActivityOption$WrapBuilder;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final activityType:Lcom/samsung/android/sdk/moneta/memory/entity/activity/ActivityType;

.field public final contentFill:Z

.field public final keywords:Ljava/lang/String;

.field public final limit:I

.field public final offset:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IILcom/samsung/android/sdk/moneta/memory/entity/activity/ActivityType;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/moneta/memory/option/EngramSearchActivityOption$WrapBuilder;->keywords:Ljava/lang/String;

    iput p2, p0, Lcom/samsung/android/sdk/moneta/memory/option/EngramSearchActivityOption$WrapBuilder;->limit:I

    iput p3, p0, Lcom/samsung/android/sdk/moneta/memory/option/EngramSearchActivityOption$WrapBuilder;->offset:I

    iput-object p4, p0, Lcom/samsung/android/sdk/moneta/memory/option/EngramSearchActivityOption$WrapBuilder;->activityType:Lcom/samsung/android/sdk/moneta/memory/entity/activity/ActivityType;

    iput-boolean p5, p0, Lcom/samsung/android/sdk/moneta/memory/option/EngramSearchActivityOption$WrapBuilder;->contentFill:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;IILcom/samsung/android/sdk/moneta/memory/entity/activity/ActivityType;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_0

    const/16 p2, 0x14

    :cond_0
    move v2, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_1

    const/4 p3, 0x0

    :cond_1
    move v3, p3

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/sdk/moneta/memory/option/EngramSearchActivityOption$WrapBuilder;-><init>(Ljava/lang/String;IILcom/samsung/android/sdk/moneta/memory/entity/activity/ActivityType;Z)V

    return-void
.end method
