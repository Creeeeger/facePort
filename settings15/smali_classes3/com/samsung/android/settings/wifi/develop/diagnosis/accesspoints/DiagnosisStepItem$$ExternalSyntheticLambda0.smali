.class public final synthetic Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisStepItem$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisStepItem;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisStepItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisStepItem$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisStepItem;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisStepItem$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisStepItem;

    iget-boolean p1, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisStepItem;->isSummaryVisible:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisStepItem;->isSummaryVisible:Z

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisStepItem;->mSummary:Landroid/widget/TextView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisStepItem;->isSummaryVisible:Z

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisStepItem;->mSummary:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method
