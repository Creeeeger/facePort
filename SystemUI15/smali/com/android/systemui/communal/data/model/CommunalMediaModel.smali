.class public final Lcom/android/systemui/communal/data/model/CommunalMediaModel;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/log/table/Diffable;


# static fields
.field public static final Companion:Lcom/android/systemui/communal/data/model/CommunalMediaModel$Companion;

.field public static final INACTIVE:Lcom/android/systemui/communal/data/model/CommunalMediaModel;


# instance fields
.field public final createdTimestampMillis:J

.field public final hasActiveMediaOrRecommendation:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/android/systemui/communal/data/model/CommunalMediaModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/communal/data/model/CommunalMediaModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/communal/data/model/CommunalMediaModel;->Companion:Lcom/android/systemui/communal/data/model/CommunalMediaModel$Companion;

    new-instance v0, Lcom/android/systemui/communal/data/model/CommunalMediaModel;

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/communal/data/model/CommunalMediaModel;-><init>(ZJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/communal/data/model/CommunalMediaModel;->INACTIVE:Lcom/android/systemui/communal/data/model/CommunalMediaModel;

    return-void
.end method

.method public constructor <init>(ZJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/systemui/communal/data/model/CommunalMediaModel;->hasActiveMediaOrRecommendation:Z

    iput-wide p2, p0, Lcom/android/systemui/communal/data/model/CommunalMediaModel;->createdTimestampMillis:J

    return-void
.end method

.method public synthetic constructor <init>(ZJILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const-wide/16 p2, 0x0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/communal/data/model/CommunalMediaModel;-><init>(ZJ)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/communal/data/model/CommunalMediaModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/communal/data/model/CommunalMediaModel;

    iget-boolean v1, p1, Lcom/android/systemui/communal/data/model/CommunalMediaModel;->hasActiveMediaOrRecommendation:Z

    iget-boolean v3, p0, Lcom/android/systemui/communal/data/model/CommunalMediaModel;->hasActiveMediaOrRecommendation:Z

    if-eq v3, v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/android/systemui/communal/data/model/CommunalMediaModel;->createdTimestampMillis:J

    iget-wide p0, p1, Lcom/android/systemui/communal/data/model/CommunalMediaModel;->createdTimestampMillis:J

    cmp-long p0, v3, p0

    if-eqz p0, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/communal/data/model/CommunalMediaModel;->hasActiveMediaOrRecommendation:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/android/systemui/communal/data/model/CommunalMediaModel;->createdTimestampMillis:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final logDiffs(Ljava/lang/Object;Lcom/android/systemui/log/table/TableLogBuffer$TableRowLoggerImpl;)V
    .locals 2

    check-cast p1, Lcom/android/systemui/communal/data/model/CommunalMediaModel;

    iget-boolean v0, p1, Lcom/android/systemui/communal/data/model/CommunalMediaModel;->hasActiveMediaOrRecommendation:Z

    iget-boolean v1, p0, Lcom/android/systemui/communal/data/model/CommunalMediaModel;->hasActiveMediaOrRecommendation:Z

    if-eq v1, v0, :cond_0

    const-string v0, "isMediaActive"

    invoke-virtual {p2, v0, v1}, Lcom/android/systemui/log/table/TableLogBuffer$TableRowLoggerImpl;->logChange(Ljava/lang/String;Z)V

    :cond_0
    iget-wide v0, p0, Lcom/android/systemui/communal/data/model/CommunalMediaModel;->createdTimestampMillis:J

    iget-wide p0, p1, Lcom/android/systemui/communal/data/model/CommunalMediaModel;->createdTimestampMillis:J

    cmp-long p0, v0, p0

    if-eqz p0, :cond_1

    const-string p0, "mediaCreationTimestamp"

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Lcom/android/systemui/log/table/TableLogBuffer$TableRowLoggerImpl;->logChange(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CommunalMediaModel(hasActiveMediaOrRecommendation="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/systemui/communal/data/model/CommunalMediaModel;->hasActiveMediaOrRecommendation:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", createdTimestampMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/systemui/communal/data/model/CommunalMediaModel;->createdTimestampMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
