.class public final Lcom/android/systemui/communal/domain/model/CommunalContentModel$Tutorial;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/communal/domain/model/CommunalContentModel;


# instance fields
.field public final key:Ljava/lang/String;

.field public final size:Lcom/android/systemui/communal/shared/model/CommunalContentSize;


# direct methods
.method public constructor <init>(ILcom/android/systemui/communal/shared/model/CommunalContentSize;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/communal/domain/model/CommunalContentModel$Tutorial;->size:Lcom/android/systemui/communal/shared/model/CommunalContentSize;

    sget-object p2, Lcom/android/systemui/communal/domain/model/CommunalContentModel$KEY;->Companion:Lcom/android/systemui/communal/domain/model/CommunalContentModel$KEY$Companion;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "tutorial_"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/communal/domain/model/CommunalContentModel$Tutorial;->key:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/communal/domain/model/CommunalContentModel$Tutorial;->key:Ljava/lang/String;

    return-object p0
.end method

.method public final getSize()Lcom/android/systemui/communal/shared/model/CommunalContentSize;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/communal/domain/model/CommunalContentModel$Tutorial;->size:Lcom/android/systemui/communal/shared/model/CommunalContentSize;

    return-object p0
.end method
