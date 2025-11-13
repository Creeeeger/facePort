.class public Lcom/samsung/android/settings/galaxysystemupdate/apps/data/ApexPackageVo;
.super Ljava/lang/Object;
.source "ApexPackageVo.java"


# instance fields
.field private isFactory:Z

.field private isSelected:Z

.field private isStaged:Z

.field private lastModifiedDate:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field private version:J


# direct methods
.method public constructor <init>(Ljava/lang/String;JZZ)V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/data/ApexPackageVo;->isSelected:Z

    .line 13
    iput-object p1, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/data/ApexPackageVo;->packageName:Ljava/lang/String;

    .line 14
    iput-wide p2, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/data/ApexPackageVo;->version:J

    .line 15
    iput-boolean p4, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/data/ApexPackageVo;->isFactory:Z

    .line 16
    iput-boolean p5, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/data/ApexPackageVo;->isStaged:Z

    return-void
.end method


# virtual methods
.method public getLastModifiedDate()Ljava/lang/String;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/data/ApexPackageVo;->lastModifiedDate:Ljava/lang/String;

    return-object p0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/data/ApexPackageVo;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public getVersion()J
    .locals 2

    .line 24
    iget-wide v0, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/data/ApexPackageVo;->version:J

    return-wide v0
.end method

.method public isFactory()Z
    .locals 0

    .line 28
    iget-boolean p0, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/data/ApexPackageVo;->isFactory:Z

    return p0
.end method

.method public isSelected()Z
    .locals 0

    .line 36
    iget-boolean p0, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/data/ApexPackageVo;->isSelected:Z

    return p0
.end method

.method public isStaged()Z
    .locals 0

    .line 32
    iget-boolean p0, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/data/ApexPackageVo;->isStaged:Z

    return p0
.end method

.method public setLastModifiedDate(Ljava/lang/String;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/data/ApexPackageVo;->lastModifiedDate:Ljava/lang/String;

    return-void
.end method

.method public setSelected(Z)V
    .locals 0

    .line 48
    iput-boolean p1, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/data/ApexPackageVo;->isSelected:Z

    return-void
.end method
