.class public final Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSetupWizardActivity$6;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSetupWizardActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSetupWizardActivity;I)V
    .locals 0

    iput p2, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSetupWizardActivity$6;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSetupWizardActivity$6;->this$0:Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSetupWizardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    const-string p1, "isChildAccount"

    iget v0, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSetupWizardActivity$6;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSetupWizardActivity$6;->this$0:Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSetupWizardActivity;

    iget-boolean v1, v1, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSetupWizardActivity;->mIsChildAccount:Z

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSetupWizardActivity$6;->this$0:Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSetupWizardActivity;

    const/4 v1, 0x7

    invoke-virtual {p1, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSetupWizardActivity$6;->this$0:Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSetupWizardActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSetupWizardActivity$6;->this$0:Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSetupWizardActivity;

    sget v1, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSetupWizardActivity;->$r8$clinit:I

    invoke-virtual {v0}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->isScrollBottomReached()Z

    move-result v0

    const-string v1, "AI001"

    const-string v2, "AI005"

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSetupWizardActivity$6;->this$0:Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSetupWizardActivity;

    iget-object v3, v0, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->mPrimaryButton:Lcom/google/android/setupcompat/template/FooterButton;

    iget-object v3, v3, Lcom/google/android/setupcompat/template/FooterButton;->text:Ljava/lang/CharSequence;

    const v4, 0x7f1424ab

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/lang/CharSequence;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSetupWizardActivity$6;->this$0:Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSetupWizardActivity;

    iget-object p1, p1, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->mRootLayout:Lcom/google/android/setupdesign/GlifLayout;

    invoke-virtual {p1}, Lcom/google/android/setupdesign/GlifLayout;->getScrollView()Landroid/widget/ScrollView;

    move-result-object p1

    if-eqz p1, :cond_0

    const/16 v0, 0x82

    invoke-virtual {p1, v0}, Landroid/widget/ScrollView;->pageScroll(I)Z

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSetupWizardActivity$6;->this$0:Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSetupWizardActivity;

    iget-boolean p0, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSetupWizardActivity;->isFOTASetUpWizard:Z

    if-eqz p0, :cond_1

    const-string p0, "AI0026"

    invoke-static {v2, p0}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string p0, "AI0024"

    invoke-static {v1, p0}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSetupWizardActivity$6;->this$0:Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSetupWizardActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "ai_info_confirmed"

    const/4 v4, 0x1

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSetupWizardActivity$6;->this$0:Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSetupWizardActivity;

    iget-boolean v3, v3, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSetupWizardActivity;->mIsChildAccount:Z

    invoke-virtual {v0, p1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSetupWizardActivity$6;->this$0:Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSetupWizardActivity;

    const/4 v3, -0x1

    invoke-virtual {p1, v3, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSetupWizardActivity$6;->this$0:Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSetupWizardActivity;

    iget-boolean p1, p1, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSetupWizardActivity;->isFOTASetUpWizard:Z

    if-eqz p1, :cond_3

    const-string p1, "AI0027"

    invoke-static {v2, p1}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string p1, "AI0025"

    invoke-static {v1, p1}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSetupWizardActivity$6;->this$0:Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSetupWizardActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
