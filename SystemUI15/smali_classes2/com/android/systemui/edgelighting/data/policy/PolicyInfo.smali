.class public final Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final category:I

.field public final color:I

.field public final defaultOn:Z

.field public final item:Ljava/lang/String;

.field public final priority:I

.field public final range:I

.field public final versionCode:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;->item:Ljava/lang/String;

    iput p2, p0, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;->category:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;->range:I

    iput p1, p0, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;->color:I

    iput p1, p0, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;->versionCode:I

    iput p1, p0, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;->priority:I

    iput-boolean p1, p0, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;->defaultOn:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;->item:Ljava/lang/String;

    iput p2, p0, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;->category:I

    iput p3, p0, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;->range:I

    iput p4, p0, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;->color:I

    iput p5, p0, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;->versionCode:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;->priority:I

    iput-boolean p1, p0, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;->defaultOn:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;->item:Ljava/lang/String;

    iput p2, p0, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;->category:I

    iput p3, p0, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;->priority:I

    iput-boolean p4, p0, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;->defaultOn:Z

    iput p5, p0, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;->color:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;->range:I

    iput p1, p0, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;->versionCode:I

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "item = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;->item:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", category = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;->category:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", range = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;->range:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", versionCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;->versionCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", color = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;->color:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", priority = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;->priority:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", defaultOn = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;->defaultOn:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
