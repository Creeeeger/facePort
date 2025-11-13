.class Landroid/app/SemAppIconSolution$IconScale;
.super Ljava/lang/Object;
.source "SemAppIconSolution.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/SemAppIconSolution;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IconScale"
.end annotation


# instance fields
.field private blacklist mAlpha:I

.field private blacklist mIsCrop:Z

.field private blacklist mScale:F

.field final synthetic blacklist this$0:Landroid/app/SemAppIconSolution;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmScale(Landroid/app/SemAppIconSolution$IconScale;)F
    .locals 0

    iget p0, p0, Landroid/app/SemAppIconSolution$IconScale;->mScale:F

    return p0
.end method

.method public constructor blacklist <init>(Landroid/app/SemAppIconSolution;IFZ)V
    .locals 0
    .param p2, "alpha"    # I
    .param p3, "scale"    # F
    .param p4, "isCrop"    # Z

    .line 339
    iput-object p1, p0, Landroid/app/SemAppIconSolution$IconScale;->this$0:Landroid/app/SemAppIconSolution;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 340
    iput p2, p0, Landroid/app/SemAppIconSolution$IconScale;->mAlpha:I

    .line 341
    iput p3, p0, Landroid/app/SemAppIconSolution$IconScale;->mScale:F

    .line 342
    iput-boolean p4, p0, Landroid/app/SemAppIconSolution$IconScale;->mIsCrop:Z

    .line 343
    return-void
.end method


# virtual methods
.method public blacklist getAlpha()I
    .locals 1

    .line 345
    iget v0, p0, Landroid/app/SemAppIconSolution$IconScale;->mAlpha:I

    return v0
.end method

.method public blacklist getScale()F
    .locals 1

    .line 348
    iget v0, p0, Landroid/app/SemAppIconSolution$IconScale;->mScale:F

    return v0
.end method

.method public blacklist isCrop()Z
    .locals 1

    .line 351
    iget-boolean v0, p0, Landroid/app/SemAppIconSolution$IconScale;->mIsCrop:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 356
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IconScale[alpha="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/SemAppIconSolution$IconScale;->mAlpha:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", scale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/SemAppIconSolution$IconScale;->mScale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isCrop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/SemAppIconSolution$IconScale;->mIsCrop:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
