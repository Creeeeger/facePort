.class public Lcom/samsung/android/settings/notification/brief/policy/PolicyInfo;
.super Ljava/lang/Object;
.source "PolicyInfo.java"


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

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/samsung/android/settings/notification/brief/policy/PolicyInfo;->item:Ljava/lang/String;

    .line 31
    iput p2, p0, Lcom/samsung/android/settings/notification/brief/policy/PolicyInfo;->category:I

    const/4 p1, 0x0

    .line 32
    iput p1, p0, Lcom/samsung/android/settings/notification/brief/policy/PolicyInfo;->range:I

    .line 33
    iput p1, p0, Lcom/samsung/android/settings/notification/brief/policy/PolicyInfo;->color:I

    .line 34
    iput p1, p0, Lcom/samsung/android/settings/notification/brief/policy/PolicyInfo;->versionCode:I

    .line 35
    iput p1, p0, Lcom/samsung/android/settings/notification/brief/policy/PolicyInfo;->priority:I

    .line 36
    iput-boolean p1, p0, Lcom/samsung/android/settings/notification/brief/policy/PolicyInfo;->defaultOn:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIII)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/samsung/android/settings/notification/brief/policy/PolicyInfo;->item:Ljava/lang/String;

    .line 41
    iput p2, p0, Lcom/samsung/android/settings/notification/brief/policy/PolicyInfo;->category:I

    .line 42
    iput p3, p0, Lcom/samsung/android/settings/notification/brief/policy/PolicyInfo;->range:I

    .line 43
    iput p4, p0, Lcom/samsung/android/settings/notification/brief/policy/PolicyInfo;->color:I

    .line 44
    iput p5, p0, Lcom/samsung/android/settings/notification/brief/policy/PolicyInfo;->versionCode:I

    const/4 p1, 0x0

    .line 45
    iput p1, p0, Lcom/samsung/android/settings/notification/brief/policy/PolicyInfo;->priority:I

    .line 46
    iput-boolean p1, p0, Lcom/samsung/android/settings/notification/brief/policy/PolicyInfo;->defaultOn:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIZI)V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/samsung/android/settings/notification/brief/policy/PolicyInfo;->item:Ljava/lang/String;

    .line 51
    iput p2, p0, Lcom/samsung/android/settings/notification/brief/policy/PolicyInfo;->category:I

    .line 52
    iput p3, p0, Lcom/samsung/android/settings/notification/brief/policy/PolicyInfo;->priority:I

    .line 53
    iput-boolean p4, p0, Lcom/samsung/android/settings/notification/brief/policy/PolicyInfo;->defaultOn:Z

    .line 54
    iput p5, p0, Lcom/samsung/android/settings/notification/brief/policy/PolicyInfo;->color:I

    const/4 p1, 0x0

    .line 55
    iput p1, p0, Lcom/samsung/android/settings/notification/brief/policy/PolicyInfo;->range:I

    .line 56
    iput p1, p0, Lcom/samsung/android/settings/notification/brief/policy/PolicyInfo;->versionCode:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "item = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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
