.class public final Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSetupWizardActivity$2;
.super Landroid/text/style/ClickableSpan;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSetupWizardActivity;

.field public final synthetic val$typeFace:Landroid/graphics/Typeface;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSetupWizardActivity;Landroid/graphics/Typeface;I)V
    .locals 0

    iput p3, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSetupWizardActivity$2;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSetupWizardActivity$2;->this$0:Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSetupWizardActivity;

    iput-object p2, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSetupWizardActivity$2;->val$typeFace:Landroid/graphics/Typeface;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget p1, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSetupWizardActivity$2;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSetupWizardActivity$2;->this$0:Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSetupWizardActivity;

    const/4 p1, 0x4

    invoke-static {p0, p1}, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSetupWizardActivity;->-$$Nest$mstartLaunchURI(Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSetupWizardActivity;I)V

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSetupWizardActivity$2;->this$0:Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSetupWizardActivity;

    const/4 p1, 0x3

    invoke-static {p0, p1}, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSetupWizardActivity;->-$$Nest$mstartLaunchURI(Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSetupWizardActivity;I)V

    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSetupWizardActivity$2;->this$0:Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSetupWizardActivity;

    const/4 p1, 0x2

    invoke-static {p0, p1}, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSetupWizardActivity;->-$$Nest$mstartLaunchURI(Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSetupWizardActivity;I)V

    return-void

    :pswitch_2
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSetupWizardActivity$2;->this$0:Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSetupWizardActivity;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSetupWizardActivity;->-$$Nest$mstartLaunchURI(Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSetupWizardActivity;I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSetupWizardActivity$2;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSetupWizardActivity$2;->val$typeFace:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSetupWizardActivity$2;->this$0:Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSetupWizardActivity;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f06061c

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/text/TextPaint;->setColor(I)V

    return-void

    :pswitch_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSetupWizardActivity$2;->val$typeFace:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSetupWizardActivity$2;->this$0:Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSetupWizardActivity;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f06061c

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/text/TextPaint;->setColor(I)V

    return-void

    :pswitch_1
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSetupWizardActivity$2;->val$typeFace:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSetupWizardActivity$2;->this$0:Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSetupWizardActivity;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f06061c

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/text/TextPaint;->setColor(I)V

    return-void

    :pswitch_2
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSetupWizardActivity$2;->val$typeFace:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSetupWizardActivity$2;->this$0:Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSetupWizardActivity;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f06061c

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/text/TextPaint;->setColor(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
