.class public final Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceActivity$2;
.super Landroidx/activity/OnBackPressedCallback;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceActivity;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceActivity$2;->this$0:Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Landroidx/activity/OnBackPressedCallback;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public final handleOnBackPressed()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceActivity$2;->this$0:Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0, v1}, Landroidx/activity/OnBackPressedCallback;->setEnabled(Z)V

    const-string p0, "AI002"

    const-string v1, "AI0002"

    invoke-static {p0, v1}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/activity/OnBackPressedDispatcher;->onBackPressed()V

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_1
    :goto_0
    return-void
.end method
