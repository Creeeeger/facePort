.class public final synthetic Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$$ExternalSyntheticLambda17;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$$ExternalSyntheticLambda17;->f$0:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    iput p2, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$$ExternalSyntheticLambda17;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$$ExternalSyntheticLambda17;->f$0:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    iget p0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$$ExternalSyntheticLambda17;->f$1:I

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsNowBarExpanded:Z

    if-nez v1, :cond_1

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->updateBgBlur(Z)V

    :cond_1
    return-void
.end method
