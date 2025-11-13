.class public Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterImpl;
.super Lcom/samsung/android/camera/filter/SemFilter;
.source "SemFilterManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/filter/SemFilterManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SemFilterImpl"
.end annotation


# instance fields
.field private blacklist mFilterIdentifier:Ljava/lang/String;

.field private blacklist mFilterIdentifierIdx:I


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v4, p5

    move v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/camera/filter/SemFilter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterImpl;->mFilterIdentifier:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterImpl;->mFilterIdentifierIdx:I

    iput p3, p0, Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterImpl;->mFilterIdentifierIdx:I

    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v4, p5

    move v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/camera/filter/SemFilter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterImpl;->mFilterIdentifier:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterImpl;->mFilterIdentifierIdx:I

    iput-object p3, p0, Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterImpl;->mFilterIdentifier:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public blacklist getFilterIdentifier()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterImpl;->mFilterIdentifierIdx:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterImpl;->mFilterIdentifier:Ljava/lang/String;

    return-object v0

    :cond_0
    iget v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterImpl;->mFilterIdentifierIdx:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getFilterIdentifierIdx()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterImpl;->mFilterIdentifierIdx:I

    return v0
.end method
