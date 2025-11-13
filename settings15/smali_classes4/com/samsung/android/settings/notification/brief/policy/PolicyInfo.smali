.class public final Lcom/samsung/android/settings/notification/brief/policy/PolicyInfo;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final category:I

.field public final color:I

.field public final defaultOn:Z

.field public final item:Ljava/lang/String;

.field public final priority:I

.field public final range:I

.field public final versionCode:I


# direct methods
.method public constructor <init>(IIIILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p5, p0, Lcom/samsung/android/settings/notification/brief/policy/PolicyInfo;->item:Ljava/lang/String;

    iput p1, p0, Lcom/samsung/android/settings/notification/brief/policy/PolicyInfo;->category:I

    iput p2, p0, Lcom/samsung/android/settings/notification/brief/policy/PolicyInfo;->range:I

    iput p3, p0, Lcom/samsung/android/settings/notification/brief/policy/PolicyInfo;->color:I

    iput p4, p0, Lcom/samsung/android/settings/notification/brief/policy/PolicyInfo;->versionCode:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/settings/notification/brief/policy/PolicyInfo;->priority:I

    iput-boolean p1, p0, Lcom/samsung/android/settings/notification/brief/policy/PolicyInfo;->defaultOn:Z

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/settings/notification/brief/policy/PolicyInfo;->item:Ljava/lang/String;

    const/16 p2, 0xa

    iput p2, p0, Lcom/samsung/android/settings/notification/brief/policy/PolicyInfo;->category:I

    const/4 p2, 0x1

    iput p2, p0, Lcom/samsung/android/settings/notification/brief/policy/PolicyInfo;->priority:I

    iput-boolean p3, p0, Lcom/samsung/android/settings/notification/brief/policy/PolicyInfo;->defaultOn:Z

    iput p1, p0, Lcom/samsung/android/settings/notification/brief/policy/PolicyInfo;->color:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/settings/notification/brief/policy/PolicyInfo;->range:I

    iput p1, p0, Lcom/samsung/android/settings/notification/brief/policy/PolicyInfo;->versionCode:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/notification/brief/policy/PolicyInfo;->item:Ljava/lang/String;

    const/16 p1, 0xb

    iput p1, p0, Lcom/samsung/android/settings/notification/brief/policy/PolicyInfo;->category:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/settings/notification/brief/policy/PolicyInfo;->range:I

    iput p1, p0, Lcom/samsung/android/settings/notification/brief/policy/PolicyInfo;->color:I

    iput p1, p0, Lcom/samsung/android/settings/notification/brief/policy/PolicyInfo;->versionCode:I

    iput p1, p0, Lcom/samsung/android/settings/notification/brief/policy/PolicyInfo;->priority:I

    iput-boolean p1, p0, Lcom/samsung/android/settings/notification/brief/policy/PolicyInfo;->defaultOn:Z

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "item = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/notification/brief/policy/PolicyInfo;->item:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", category = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/settings/notification/brief/policy/PolicyInfo;->category:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", range = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/settings/notification/brief/policy/PolicyInfo;->range:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", versionCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/settings/notification/brief/policy/PolicyInfo;->versionCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", color = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/settings/notification/brief/policy/PolicyInfo;->color:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", priority = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/settings/notification/brief/policy/PolicyInfo;->priority:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", defaultOn = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/samsung/android/settings/notification/brief/policy/PolicyInfo;->defaultOn:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
