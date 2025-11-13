.class public final Lcom/android/systemui/communal/domain/model/CommunalContentModel$Smartspace;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/communal/domain/model/CommunalContentModel$Ongoing;


# instance fields
.field public final createdTimestampMillis:J

.field public final key:Ljava/lang/String;

.field public final remoteViews:Landroid/widget/RemoteViews;

.field public size:Lcom/android/systemui/communal/shared/model/CommunalContentSize;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/widget/RemoteViews;JLcom/android/systemui/communal/shared/model/CommunalContentSize;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/communal/domain/model/CommunalContentModel$Smartspace;->remoteViews:Landroid/widget/RemoteViews;

    iput-wide p3, p0, Lcom/android/systemui/communal/domain/model/CommunalContentModel$Smartspace;->createdTimestampMillis:J

    iput-object p5, p0, Lcom/android/systemui/communal/domain/model/CommunalContentModel$Smartspace;->size:Lcom/android/systemui/communal/shared/model/CommunalContentSize;

    sget-object p2, Lcom/android/systemui/communal/domain/model/CommunalContentModel$KEY;->Companion:Lcom/android/systemui/communal/domain/model/CommunalContentModel$KEY$Companion;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p2, "smartspace_"

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/communal/domain/model/CommunalContentModel$Smartspace;->key:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Landroid/widget/RemoteViews;JLcom/android/systemui/communal/shared/model/CommunalContentSize;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p6, p6, 0x8

    if-eqz p6, :cond_0

    sget-object p5, Lcom/android/systemui/communal/shared/model/CommunalContentSize;->HALF:Lcom/android/systemui/communal/shared/model/CommunalContentSize;

    :cond_0
    move-object v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/communal/domain/model/CommunalContentModel$Smartspace;-><init>(Ljava/lang/String;Landroid/widget/RemoteViews;JLcom/android/systemui/communal/shared/model/CommunalContentSize;)V

    return-void
.end method


# virtual methods
.method public final getCreatedTimestampMillis()J
    .locals 2

    iget-wide v0, p0, Lcom/android/systemui/communal/domain/model/CommunalContentModel$Smartspace;->createdTimestampMillis:J

    return-wide v0
.end method

.method public final getKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/communal/domain/model/CommunalContentModel$Smartspace;->key:Ljava/lang/String;

    return-object p0
.end method

.method public final getSize()Lcom/android/systemui/communal/shared/model/CommunalContentSize;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/communal/domain/model/CommunalContentModel$Smartspace;->size:Lcom/android/systemui/communal/shared/model/CommunalContentSize;

    return-object p0
.end method

.method public final setSize(Lcom/android/systemui/communal/shared/model/CommunalContentSize;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/communal/domain/model/CommunalContentModel$Smartspace;->size:Lcom/android/systemui/communal/shared/model/CommunalContentSize;

    return-void
.end method
