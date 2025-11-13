.class public final synthetic Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceActivity;I)V
    .locals 0

    iput p2, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceActivity$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceActivity$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    const-string p1, "AI0003"

    const-string v0, "AI002"

    const/4 v1, -0x1

    const/4 v2, 0x1

    const-string v3, "ai_info_confirmed"

    iget v4, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceActivity$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceActivity$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceActivity;

    packed-switch v4, :pswitch_data_0

    sget v4, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceActivity;->$r8$clinit:I

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setResult(I)V

    invoke-static {v0, p1}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :pswitch_0
    sget v4, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceActivity;->$r8$clinit:I

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setResult(I)V

    invoke-static {v0, p1}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :pswitch_1
    sget p1, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceActivity;->$r8$clinit:I

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
