.class Landroid/webkit/FindAddress$ZipRange;
.super Ljava/lang/Object;
.source "FindAddress.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/FindAddress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ZipRange"
.end annotation


# instance fields
.field blacklist mException1:I

.field blacklist mException2:I

.field blacklist mHigh:I

.field blacklist mLow:I


# direct methods
.method constructor blacklist <init>(IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/webkit/FindAddress$ZipRange;->mLow:I

    iput p2, p0, Landroid/webkit/FindAddress$ZipRange;->mHigh:I

    iput p3, p0, Landroid/webkit/FindAddress$ZipRange;->mException1:I

    iput p3, p0, Landroid/webkit/FindAddress$ZipRange;->mException2:I

    return-void
.end method


# virtual methods
.method blacklist matches(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget v2, p0, Landroid/webkit/FindAddress$ZipRange;->mLow:I

    if-gt v2, v0, :cond_0

    iget v2, p0, Landroid/webkit/FindAddress$ZipRange;->mHigh:I

    if-le v0, v2, :cond_1

    :cond_0
    iget v2, p0, Landroid/webkit/FindAddress$ZipRange;->mException1:I

    if-eq v0, v2, :cond_1

    iget v2, p0, Landroid/webkit/FindAddress$ZipRange;->mException2:I

    if-ne v0, v2, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method
