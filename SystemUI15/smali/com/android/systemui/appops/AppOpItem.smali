.class public final Lcom/android/systemui/appops/AppOpItem;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mAttributionTag:Ljava/lang/String;

.field public final mCode:I

.field public mIsDisabled:Z

.field public final mPackageName:Ljava/lang/String;

.field public final mState:Ljava/lang/StringBuilder;

.field public final mTimeStartedElapsed:J

.field public final mUid:I


# direct methods
.method public constructor <init>(IILjava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/appops/AppOpItem;->mCode:I

    iput p2, p0, Lcom/android/systemui/appops/AppOpItem;->mUid:I

    iput-object p3, p0, Lcom/android/systemui/appops/AppOpItem;->mPackageName:Ljava/lang/String;

    iput-wide p4, p0, Lcom/android/systemui/appops/AppOpItem;->mTimeStartedElapsed:J

    const-string p4, ""

    iput-object p4, p0, Lcom/android/systemui/appops/AppOpItem;->mAttributionTag:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "AppOpItem(Op code="

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", UID="

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", Package name="

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", Paused="

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iput-object p4, p0, Lcom/android/systemui/appops/AppOpItem;->mState:Ljava/lang/StringBuilder;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;JLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/appops/AppOpItem;->mCode:I

    iput p2, p0, Lcom/android/systemui/appops/AppOpItem;->mUid:I

    iput-object p3, p0, Lcom/android/systemui/appops/AppOpItem;->mPackageName:Ljava/lang/String;

    iput-wide p4, p0, Lcom/android/systemui/appops/AppOpItem;->mTimeStartedElapsed:J

    iput-object p6, p0, Lcom/android/systemui/appops/AppOpItem;->mAttributionTag:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "AppOpItem(Op code="

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", UID="

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", AttributionTag="

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", Package name="

    const-string p2, ", Paused="

    invoke-static {p4, p6, p1, p3, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p4, p0, Lcom/android/systemui/appops/AppOpItem;->mState:Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/appops/AppOpItem;->mIsDisabled:Z

    iget-object p0, p0, Lcom/android/systemui/appops/AppOpItem;->mState:Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-static {p0, v0, v1}, Landroidx/appcompat/app/AppCompatDelegateImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
