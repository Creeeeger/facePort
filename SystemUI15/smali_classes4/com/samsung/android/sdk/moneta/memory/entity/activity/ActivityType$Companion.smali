.class public final Lcom/samsung/android/sdk/moneta/memory/entity/activity/ActivityType$Companion;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/moneta/memory/entity/activity/ActivityType$Companion;-><init>()V

    return-void
.end method

.method public static fromInt(Ljava/lang/Integer;)Lcom/samsung/android/sdk/moneta/memory/entity/activity/ActivityType;
    .locals 4

    invoke-static {}, Lcom/samsung/android/sdk/moneta/memory/entity/activity/ActivityType;->getEntries()Lkotlin/enums/EnumEntries;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/samsung/android/sdk/moneta/memory/entity/activity/ActivityType;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/moneta/memory/entity/activity/ActivityType;->getValue()I

    move-result v2

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    check-cast v1, Lcom/samsung/android/sdk/moneta/memory/entity/activity/ActivityType;

    return-object v1
.end method
