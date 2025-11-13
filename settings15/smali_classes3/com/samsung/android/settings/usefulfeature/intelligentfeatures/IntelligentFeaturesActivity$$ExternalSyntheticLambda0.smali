.class public final synthetic Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesActivity$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesActivity$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesActivity;

    sget p1, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesActivity;->$r8$clinit:I

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "intelligent_features_info_confirmed"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    const-string p1, "AI008"

    const-string v0, "AI0033"

    invoke-static {p1, v0}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
