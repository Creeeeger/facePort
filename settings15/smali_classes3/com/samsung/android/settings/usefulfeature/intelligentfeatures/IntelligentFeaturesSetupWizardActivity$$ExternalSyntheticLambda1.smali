.class public final synthetic Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesSetupWizardActivity$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesSetupWizardActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesSetupWizardActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesSetupWizardActivity$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesSetupWizardActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesSetupWizardActivity$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesSetupWizardActivity;

    sget v0, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesSetupWizardActivity;->$r8$clinit:I

    invoke-virtual {p0}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->isScrollBottomReached()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f1424ac

    goto :goto_0

    :cond_0
    const v0, 0x7f1424ab

    :goto_0
    invoke-virtual {p0, v0}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->setPrimaryActionButtonText(I)V

    return-void
.end method
