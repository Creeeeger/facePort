.class public final Lcom/samsung/android/sdk/moneta/event/entity/event/Event;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/sdk/moneta/event/entity/event/Event;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final eventCategory:Lcom/samsung/android/sdk/moneta/event/entity/event/EventCategory;

.field private final id:Ljava/lang/Long;

.field private final what:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/moneta/event/entity/event/What;",
            ">;"
        }
    .end annotation
.end field

.field private final when:Lcom/samsung/android/sdk/moneta/event/entity/event/When;

.field private final where:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/moneta/event/entity/event/Where;",
            ">;"
        }
    .end annotation
.end field

.field private final who:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/moneta/event/entity/event/Who;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/moneta/event/entity/event/Event$Creator;

    invoke-direct {v0}, Lcom/samsung/android/sdk/moneta/event/entity/event/Event$Creator;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/moneta/event/entity/event/Event;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Lcom/samsung/android/sdk/moneta/event/entity/event/When;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/samsung/android/sdk/moneta/event/entity/event/EventCategory;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Lcom/samsung/android/sdk/moneta/event/entity/event/When;",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/moneta/event/entity/event/What;",
            ">;",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/moneta/event/entity/event/Where;",
            ">;",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/moneta/event/entity/event/Who;",
            ">;",
            "Lcom/samsung/android/sdk/moneta/event/entity/event/EventCategory;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/moneta/event/entity/event/Event;->id:Ljava/lang/Long;

    iput-object p2, p0, Lcom/samsung/android/sdk/moneta/event/entity/event/Event;->when:Lcom/samsung/android/sdk/moneta/event/entity/event/When;

    iput-object p3, p0, Lcom/samsung/android/sdk/moneta/event/entity/event/Event;->what:Ljava/util/List;

    iput-object p4, p0, Lcom/samsung/android/sdk/moneta/event/entity/event/Event;->where:Ljava/util/List;

    iput-object p5, p0, Lcom/samsung/android/sdk/moneta/event/entity/event/Event;->who:Ljava/util/List;

    iput-object p6, p0, Lcom/samsung/android/sdk/moneta/event/entity/event/Event;->eventCategory:Lcom/samsung/android/sdk/moneta/event/entity/event/EventCategory;

    return-void
.end method

.method public static synthetic copy$default(Lcom/samsung/android/sdk/moneta/event/entity/event/Event;Ljava/lang/Long;Lcom/samsung/android/sdk/moneta/event/entity/event/When;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/samsung/android/sdk/moneta/event/entity/event/EventCategory;ILjava/lang/Object;)Lcom/samsung/android/sdk/moneta/event/entity/event/Event;
    .locals 4

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    iget-object p1, p0, Lcom/samsung/android/sdk/moneta/event/entity/event/Event;->id:Ljava/lang/Long;

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    iget-object p2, p0, Lcom/samsung/android/sdk/moneta/event/entity/event/Event;->when:Lcom/samsung/android/sdk/moneta/event/entity/event/When;

    :cond_1
    move-object p8, p2

    and-int/lit8 p2, p7, 0x4

    if-eqz p2, :cond_2

    iget-object p3, p0, Lcom/samsung/android/sdk/moneta/event/entity/event/Event;->what:Ljava/util/List;

    :cond_2
    move-object v0, p3

    and-int/lit8 p2, p7, 0x8

    if-eqz p2, :cond_3

    iget-object p4, p0, Lcom/samsung/android/sdk/moneta/event/entity/event/Event;->where:Ljava/util/List;

    :cond_3
    move-object v1, p4

    and-int/lit8 p2, p7, 0x10

    if-eqz p2, :cond_4

    iget-object p5, p0, Lcom/samsung/android/sdk/moneta/event/entity/event/Event;->who:Ljava/util/List;

    :cond_4
    move-object v2, p5

    and-int/lit8 p2, p7, 0x20

    if-eqz p2, :cond_5

    iget-object p6, p0, Lcom/samsung/android/sdk/moneta/event/entity/event/Event;->eventCategory:Lcom/samsung/android/sdk/moneta/event/entity/event/EventCategory;

    :cond_5
    move-object v3, p6

    move-object p2, p0

    move-object p3, p1

    move-object p4, p8

    move-object p5, v0

    move-object p6, v1

    move-object p7, v2

    move-object p8, v3

    invoke-virtual/range {p2 .. p8}, Lcom/samsung/android/sdk/moneta/event/entity/event/Event;->copy(Ljava/lang/Long;Lcom/samsung/android/sdk/moneta/event/entity/event/When;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/samsung/android/sdk/moneta/event/entity/event/EventCategory;)Lcom/samsung/android/sdk/moneta/event/entity/event/Event;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/moneta/event/entity/event/Event;->id:Ljava/lang/Long;

    return-object p0
.end method

.method public final component2()Lcom/samsung/android/sdk/moneta/event/entity/event/When;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/moneta/event/entity/event/Event;->when:Lcom/samsung/android/sdk/moneta/event/entity/event/When;

    return-object p0
.end method

.method public final component3()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/moneta/event/entity/event/What;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/moneta/event/entity/event/Event;->what:Ljava/util/List;

    return-object p0
.end method

.method public final component4()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/moneta/event/entity/event/Where;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/moneta/event/entity/event/Event;->where:Ljava/util/List;

    return-object p0
.end method

.method public final component5()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/moneta/event/entity/event/Who;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/moneta/event/entity/event/Event;->who:Ljava/util/List;

    return-object p0
.end method

.method public final component6()Lcom/samsung/android/sdk/moneta/event/entity/event/EventCategory;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/moneta/event/entity/event/Event;->eventCategory:Lcom/samsung/android/sdk/moneta/event/entity/event/EventCategory;

    return-object p0
.end method

.method public final copy(Ljava/lang/Long;Lcom/samsung/android/sdk/moneta/event/entity/event/When;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/samsung/android/sdk/moneta/event/entity/event/EventCategory;)Lcom/samsung/android/sdk/moneta/event/entity/event/Event;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Lcom/samsung/android/sdk/moneta/event/entity/event/When;",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/moneta/event/entity/event/What;",
            ">;",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/moneta/event/entity/event/Where;",
            ">;",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/moneta/event/entity/event/Who;",
            ">;",
            "Lcom/samsung/android/sdk/moneta/event/entity/event/EventCategory;",
            ")",
            "Lcom/samsung/android/sdk/moneta/event/entity/event/Event;"
        }
    .end annotation

    new-instance p0, Lcom/samsung/android/sdk/moneta/event/entity/event/Event;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/sdk/moneta/event/entity/event/Event;-><init>(Ljava/lang/Long;Lcom/samsung/android/sdk/moneta/event/entity/event/When;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/samsung/android/sdk/moneta/event/entity/event/EventCategory;)V

    return-object p0
.end method

.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/samsung/android/sdk/moneta/event/entity/event/Event;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/samsung/android/sdk/moneta/event/entity/event/Event;

    iget-object v1, p0, Lcom/samsung/android/sdk/moneta/event/entity/event/Event;->id:Ljava/lang/Long;

    iget-object v3, p1, Lcom/samsung/android/sdk/moneta/event/entity/event/Event;->id:Ljava/lang/Long;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/sdk/moneta/event/entity/event/Event;->when:Lcom/samsung/android/sdk/moneta/event/entity/event/When;

    iget-object v3, p1, Lcom/samsung/android/sdk/moneta/event/entity/event/Event;->when:Lcom/samsung/android/sdk/moneta/event/entity/event/When;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/sdk/moneta/event/entity/event/Event;->what:Ljava/util/List;

    iget-object v3, p1, Lcom/samsung/android/sdk/moneta/event/entity/event/Event;->what:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/sdk/moneta/event/entity/event/Event;->where:Ljava/util/List;

    iget-object v3, p1, Lcom/samsung/android/sdk/moneta/event/entity/event/Event;->where:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/sdk/moneta/event/entity/event/Event;->who:Ljava/util/List;

    iget-object v3, p1, Lcom/samsung/android/sdk/moneta/event/entity/event/Event;->who:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object p0, p0, Lcom/samsung/android/sdk/moneta/event/entity/event/Event;->eventCategory:Lcom/samsung/android/sdk/moneta/event/entity/event/EventCategory;

    iget-object p1, p1, Lcom/samsung/android/sdk/moneta/event/entity/event/Event;->eventCategory:Lcom/samsung/android/sdk/moneta/event/entity/event/EventCategory;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final getEventCategory()Lcom/samsung/android/sdk/moneta/event/entity/event/EventCategory;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/moneta/event/entity/event/Event;->eventCategory:Lcom/samsung/android/sdk/moneta/event/entity/event/EventCategory;

    return-object p0
.end method

.method public final getId()Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/moneta/event/entity/event/Event;->id:Ljava/lang/Long;

    return-object p0
.end method

.method public final getWhat()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/moneta/event/entity/event/What;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/moneta/event/entity/event/Event;->what:Ljava/util/List;

    return-object p0
.end method

.method public final getWhen()Lcom/samsung/android/sdk/moneta/event/entity/event/When;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/moneta/event/entity/event/Event;->when:Lcom/samsung/android/sdk/moneta/event/entity/event/When;

    return-object p0
.end method

.method public final getWhere()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/moneta/event/entity/event/Where;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/moneta/event/entity/event/Event;->where:Ljava/util/List;

    return-object p0
.end method

.method public final getWho()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/moneta/event/entity/event/Who;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/moneta/event/entity/event/Event;->who:Ljava/util/List;

    return-object p0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/sdk/moneta/event/entity/event/Event;->id:Ljava/lang/Long;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x1f

    mul-int/2addr v0, v2

    iget-object v3, p0, Lcom/samsung/android/sdk/moneta/event/entity/event/Event;->when:Lcom/samsung/android/sdk/moneta/event/entity/event/When;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/moneta/event/entity/event/When;->hashCode()I

    move-result v3

    add-int/2addr v3, v0

    mul-int/2addr v3, v2

    iget-object v0, p0, Lcom/samsung/android/sdk/moneta/event/entity/event/Event;->what:Ljava/util/List;

    invoke-static {v0, v3, v2}, Landroidx/compose/animation/graphics/vector/PropertyValuesHolder2D$$ExternalSyntheticOutline0;->m(Ljava/util/List;II)I

    move-result v0

    iget-object v3, p0, Lcom/samsung/android/sdk/moneta/event/entity/event/Event;->where:Ljava/util/List;

    invoke-static {v3, v0, v2}, Landroidx/compose/animation/graphics/vector/PropertyValuesHolder2D$$ExternalSyntheticOutline0;->m(Ljava/util/List;II)I

    move-result v0

    iget-object v3, p0, Lcom/samsung/android/sdk/moneta/event/entity/event/Event;->who:Ljava/util/List;

    invoke-static {v3, v0, v2}, Landroidx/compose/animation/graphics/vector/PropertyValuesHolder2D$$ExternalSyntheticOutline0;->m(Ljava/util/List;II)I

    move-result v0

    iget-object p0, p0, Lcom/samsung/android/sdk/moneta/event/entity/event/Event;->eventCategory:Lcom/samsung/android/sdk/moneta/event/entity/event/EventCategory;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/sdk/moneta/event/entity/event/EventCategory;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Event(id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/moneta/event/entity/event/Event;->id:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", when="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/sdk/moneta/event/entity/event/Event;->when:Lcom/samsung/android/sdk/moneta/event/entity/event/When;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", what="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/sdk/moneta/event/entity/event/Event;->what:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", where="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/sdk/moneta/event/entity/event/Event;->where:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", who="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/sdk/moneta/event/entity/event/Event;->who:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", eventCategory="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/sdk/moneta/event/entity/event/Event;->eventCategory:Lcom/samsung/android/sdk/moneta/event/entity/event/EventCategory;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/sdk/moneta/event/entity/event/Event;->id:Ljava/lang/Long;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    invoke-static {p1, v1, v0}, Lcom/samsung/android/sdk/moneta/basicdomain/entity/Person$$ExternalSyntheticOutline0;->m(Landroid/os/Parcel;ILjava/lang/Long;)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/sdk/moneta/event/entity/event/Event;->when:Lcom/samsung/android/sdk/moneta/event/entity/event/When;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/moneta/event/entity/event/When;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/moneta/event/entity/event/Event;->what:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/samsung/android/knox/container/KnoxConfigurationType$$ExternalSyntheticOutline0;->m(Landroid/os/Parcel;Ljava/util/List;)Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/sdk/moneta/event/entity/event/What;

    invoke-virtual {v3, p1, p2}, Lcom/samsung/android/sdk/moneta/event/entity/event/What;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/moneta/event/entity/event/Event;->where:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/samsung/android/knox/container/KnoxConfigurationType$$ExternalSyntheticOutline0;->m(Landroid/os/Parcel;Ljava/util/List;)Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/sdk/moneta/event/entity/event/Where;

    invoke-virtual {v3, p1, p2}, Lcom/samsung/android/sdk/moneta/event/entity/event/Where;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/sdk/moneta/event/entity/event/Event;->who:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/samsung/android/knox/container/KnoxConfigurationType$$ExternalSyntheticOutline0;->m(Landroid/os/Parcel;Ljava/util/List;)Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/sdk/moneta/event/entity/event/Who;

    invoke-virtual {v3, p1, p2}, Lcom/samsung/android/sdk/moneta/event/entity/event/Who;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3

    :cond_3
    iget-object p0, p0, Lcom/samsung/android/sdk/moneta/event/entity/event/Event;->eventCategory:Lcom/samsung/android/sdk/moneta/event/entity/event/EventCategory;

    if-nez p0, :cond_4

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4

    :cond_4
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/sdk/moneta/event/entity/event/EventCategory;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_4
    return-void
.end method
