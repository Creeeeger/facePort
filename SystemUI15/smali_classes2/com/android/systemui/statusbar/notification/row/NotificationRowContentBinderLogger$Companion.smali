.class public final Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger$Companion;
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

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger$Companion;-><init>()V

    return-void
.end method

.method public static flagToString(I)Ljava/lang/String;
    .locals 6

    if-nez p0, :cond_0

    const-string p0, "NONE"

    return-object p0

    :cond_0
    const/16 v0, 0xff

    if-ne p0, v0, :cond_1

    const-string p0, "ALL"

    return-object p0

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_2

    const-string v1, "CONTRACTED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_3

    const-string v1, "EXPANDED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_4

    const-string v1, "HEADS_UP"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    and-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_5

    const-string v1, "PUBLIC"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    and-int/lit8 v1, p0, 0x10

    if-eqz v1, :cond_6

    const-string v1, "SINGLE_LINE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    and-int/lit8 v1, p0, 0x20

    if-eqz v1, :cond_7

    const-string v1, "GROUP_SUMMARY_HEADER"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    and-int/lit8 p0, p0, 0x40

    if-eqz p0, :cond_8

    const-string p0, "LOW_PRIORITY_GROUP_SUMMARY_HEADER"

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string/jumbo v1, "|"

    const/4 v2, 0x0

    const/16 v5, 0x3e

    invoke-static/range {v0 .. v5}, Lkotlin/collections/CollectionsKt___CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
