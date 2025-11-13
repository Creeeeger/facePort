.class public final Lcom/android/systemui/classifier/FalsingClassifier$Result;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mConfidence:D

.field public final mContext:Ljava/lang/String;

.field public final mFalsed:Z

.field public final mReason:Ljava/lang/String;


# direct methods
.method private constructor <init>(ZDLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/systemui/classifier/FalsingClassifier$Result;->mFalsed:Z

    iput-wide p2, p0, Lcom/android/systemui/classifier/FalsingClassifier$Result;->mConfidence:D

    iput-object p4, p0, Lcom/android/systemui/classifier/FalsingClassifier$Result;->mContext:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/systemui/classifier/FalsingClassifier$Result;->mReason:Ljava/lang/String;

    return-void
.end method

.method public static falsed(DLjava/lang/String;Ljava/lang/String;)Lcom/android/systemui/classifier/FalsingClassifier$Result;
    .locals 7

    new-instance v6, Lcom/android/systemui/classifier/FalsingClassifier$Result;

    const/4 v1, 0x1

    move-object v0, v6

    move-wide v2, p0

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/classifier/FalsingClassifier$Result;-><init>(ZDLjava/lang/String;Ljava/lang/String;)V

    return-object v6
.end method

.method public static passed(D)Lcom/android/systemui/classifier/FalsingClassifier$Result;
    .locals 7

    new-instance v6, Lcom/android/systemui/classifier/FalsingClassifier$Result;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    move-object v0, v6

    move-wide v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/classifier/FalsingClassifier$Result;-><init>(ZDLjava/lang/String;Ljava/lang/String;)V

    return-object v6
.end method


# virtual methods
.method public final getReason()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{context="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/classifier/FalsingClassifier$Result;->mContext:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingClassifier$Result;->mReason:Ljava/lang/String;

    const-string/jumbo v1, "}"

    invoke-static {v0, p0, v1}, Landroidx/activity/ComponentActivity$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
