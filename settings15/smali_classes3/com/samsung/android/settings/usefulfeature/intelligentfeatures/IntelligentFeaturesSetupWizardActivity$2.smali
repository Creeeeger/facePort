.class public final Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesSetupWizardActivity$2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesSetupWizardActivity;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesSetupWizardActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesSetupWizardActivity$2;->this$0:Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesSetupWizardActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesSetupWizardActivity$2;->this$0:Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesSetupWizardActivity;

    sget v0, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesSetupWizardActivity;->$r8$clinit:I

    invoke-virtual {p1}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->isScrollBottomReached()Z

    move-result p1

    const-string v0, "AI006"

    const-string v1, "AI007"

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesSetupWizardActivity$2;->this$0:Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesSetupWizardActivity;

    iget-object v2, p1, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->mPrimaryButton:Lcom/google/android/setupcompat/template/FooterButton;

    iget-object v2, v2, Lcom/google/android/setupcompat/template/FooterButton;->text:Ljava/lang/CharSequence;

    const v3, 0x7f1424ab

    invoke-virtual {p1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/lang/CharSequence;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesSetupWizardActivity$2;->this$0:Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesSetupWizardActivity;

    iget-object p1, p1, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->mRootLayout:Lcom/google/android/setupdesign/GlifLayout;

    invoke-virtual {p1}, Lcom/google/android/setupdesign/GlifLayout;->getScrollView()Landroid/widget/ScrollView;

    move-result-object p1

    if-eqz p1, :cond_0

    const/16 v2, 0x82

    invoke-virtual {p1, v2}, Landroid/widget/ScrollView;->pageScroll(I)Z

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesSetupWizardActivity$2;->this$0:Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesSetupWizardActivity;

    iget-boolean p0, p0, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesSetupWizardActivity;->isFOTASetUpWizard:Z

    if-eqz p0, :cond_1

    const-string p0, "AI0030"

    invoke-static {v1, p0}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string p0, "AI0028"

    invoke-static {v0, p0}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesSetupWizardActivity$2;->this$0:Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesSetupWizardActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v2, "intelligent_features_info_confirmed"

    const/4 v3, 0x1

    invoke-static {p1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesSetupWizardActivity$2;->this$0:Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesSetupWizardActivity;

    iget-boolean v2, v2, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesSetupWizardActivity;->mIsChildAccount:Z

    const-string v3, "isChildAccount"

    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesSetupWizardActivity$2;->this$0:Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesSetupWizardActivity;

    const/4 v3, -0x1

    invoke-virtual {v2, v3, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesSetupWizardActivity$2;->this$0:Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesSetupWizardActivity;

    iget-boolean p1, p1, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesSetupWizardActivity;->isFOTASetUpWizard:Z

    if-eqz p1, :cond_3

    const-string p1, "AI0031"

    invoke-static {v1, p1}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string p1, "AI0029"

    invoke-static {v0, p1}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesSetupWizardActivity$2;->this$0:Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesSetupWizardActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_1
    return-void
.end method
