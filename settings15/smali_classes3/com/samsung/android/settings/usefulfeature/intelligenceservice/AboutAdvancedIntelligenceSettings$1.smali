.class public final Lcom/samsung/android/settings/usefulfeature/intelligenceservice/AboutAdvancedIntelligenceSettings$1;
.super Landroid/text/style/ClickableSpan;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/usefulfeature/intelligenceservice/AboutAdvancedIntelligenceSettings;

.field public final synthetic val$typeFace:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/usefulfeature/intelligenceservice/AboutAdvancedIntelligenceSettings;Landroid/graphics/Typeface;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/AboutAdvancedIntelligenceSettings$1;->this$0:Lcom/samsung/android/settings/usefulfeature/intelligenceservice/AboutAdvancedIntelligenceSettings;

    iput-object p2, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/AboutAdvancedIntelligenceSettings$1;->val$typeFace:Landroid/graphics/Typeface;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    :try_start_0
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/AboutAdvancedIntelligenceSettings$1;->this$0:Lcom/samsung/android/settings/usefulfeature/intelligenceservice/AboutAdvancedIntelligenceSettings;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->getSamsungAccountTermsURI(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/AboutAdvancedIntelligenceSettings$1;->this$0:Lcom/samsung/android/settings/usefulfeature/intelligenceservice/AboutAdvancedIntelligenceSettings;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "ActivityNotFoundException : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AboutAdvancedIntelligenceSettings"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public final updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/AboutAdvancedIntelligenceSettings$1;->val$typeFace:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/AboutAdvancedIntelligenceSettings$1;->this$0:Lcom/samsung/android/settings/usefulfeature/intelligenceservice/AboutAdvancedIntelligenceSettings;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f060619

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/text/TextPaint;->setColor(I)V

    return-void
.end method
