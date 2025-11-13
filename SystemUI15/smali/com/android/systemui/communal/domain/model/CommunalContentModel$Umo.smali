.class public final Lcom/android/systemui/communal/domain/model/CommunalContentModel$Umo;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/communal/domain/model/CommunalContentModel$Ongoing;


# instance fields
.field public final createdTimestampMillis:J

.field public final key:Ljava/lang/String;

.field public size:Lcom/android/systemui/communal/shared/model/CommunalContentSize;


# direct methods
.method public constructor <init>(JLcom/android/systemui/communal/shared/model/CommunalContentSize;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/systemui/communal/domain/model/CommunalContentModel$Umo;->createdTimestampMillis:J

    iput-object p3, p0, Lcom/android/systemui/communal/domain/model/CommunalContentModel$Umo;->size:Lcom/android/systemui/communal/shared/model/CommunalContentSize;

    sget-object p1, Lcom/android/systemui/communal/domain/model/CommunalContentModel$KEY;->Companion:Lcom/android/systemui/communal/domain/model/CommunalContentModel$KEY$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo p1, "umo"

    iput-object p1, p0, Lcom/android/systemui/communal/domain/model/CommunalContentModel$Umo;->key:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(JLcom/android/systemui/communal/shared/model/CommunalContentSize;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    sget-object p3, Lcom/android/systemui/communal/shared/model/CommunalContentSize;->HALF:Lcom/android/systemui/communal/shared/model/CommunalContentSize;

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/communal/domain/model/CommunalContentModel$Umo;-><init>(JLcom/android/systemui/communal/shared/model/CommunalContentSize;)V

    return-void
.end method


# virtual methods
.method public final getCreatedTimestampMillis()J
    .locals 2

    iget-wide v0, p0, Lcom/android/systemui/communal/domain/model/CommunalContentModel$Umo;->createdTimestampMillis:J

    return-wide v0
.end method

.method public final getKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/communal/domain/model/CommunalContentModel$Umo;->key:Ljava/lang/String;

    return-object p0
.end method

.method public final getSize()Lcom/android/systemui/communal/shared/model/CommunalContentSize;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/communal/domain/model/CommunalContentModel$Umo;->size:Lcom/android/systemui/communal/shared/model/CommunalContentSize;

    return-object p0
.end method

.method public final setSize(Lcom/android/systemui/communal/shared/model/CommunalContentSize;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/communal/domain/model/CommunalContentModel$Umo;->size:Lcom/android/systemui/communal/shared/model/CommunalContentSize;

    return-void
.end method
