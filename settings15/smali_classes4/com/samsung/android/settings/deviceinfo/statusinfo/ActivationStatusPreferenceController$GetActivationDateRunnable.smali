.class public final Lcom/samsung/android/settings/deviceinfo/statusinfo/ActivationStatusPreferenceController$GetActivationDateRunnable;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/deviceinfo/statusinfo/ActivationStatusPreferenceController;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/deviceinfo/statusinfo/ActivationStatusPreferenceController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/ActivationStatusPreferenceController$GetActivationDateRunnable;->this$0:Lcom/samsung/android/settings/deviceinfo/statusinfo/ActivationStatusPreferenceController;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/ActivationStatusPreferenceController$GetActivationDateRunnable;->this$0:Lcom/samsung/android/settings/deviceinfo/statusinfo/ActivationStatusPreferenceController;

    invoke-static {v0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/ActivationStatusPreferenceController;->-$$Nest$mgetActivationDateFromServer(Lcom/samsung/android/settings/deviceinfo/statusinfo/ActivationStatusPreferenceController;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "response: "

    const-string v2, "ActivationStatusPreferenceController"

    invoke-static {v1, v0, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "date"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/ActivationStatusPreferenceController$GetActivationDateRunnable;->this$0:Lcom/samsung/android/settings/deviceinfo/statusinfo/ActivationStatusPreferenceController;

    invoke-static {v0, v1}, Lcom/samsung/android/settings/deviceinfo/statusinfo/ActivationStatusPreferenceController;->-$$Nest$mparseActivationDate(Lcom/samsung/android/settings/deviceinfo/statusinfo/ActivationStatusPreferenceController;Lorg/json/JSONObject;)V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    const-string v0, "code"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/ActivationStatusPreferenceController$GetActivationDateRunnable;->this$0:Lcom/samsung/android/settings/deviceinfo/statusinfo/ActivationStatusPreferenceController;

    invoke-static {v0, v1}, Lcom/samsung/android/settings/deviceinfo/statusinfo/ActivationStatusPreferenceController;->-$$Nest$mshowErrorMessage(Lcom/samsung/android/settings/deviceinfo/statusinfo/ActivationStatusPreferenceController;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "update Exception e: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/ActivationStatusPreferenceController$GetActivationDateRunnable;->this$0:Lcom/samsung/android/settings/deviceinfo/statusinfo/ActivationStatusPreferenceController;

    invoke-static {v0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/ActivationStatusPreferenceController;->access$000(Lcom/samsung/android/settings/deviceinfo/statusinfo/ActivationStatusPreferenceController;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    new-instance v0, Lcom/samsung/android/settings/deviceinfo/statusinfo/ActivationStatusPreferenceController$GetActivationDateRunnable$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/ActivationStatusPreferenceController$GetActivationDateRunnable$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/deviceinfo/statusinfo/ActivationStatusPreferenceController$GetActivationDateRunnable;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    :cond_3
    :goto_1
    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/ActivationStatusPreferenceController$GetActivationDateRunnable;->this$0:Lcom/samsung/android/settings/deviceinfo/statusinfo/ActivationStatusPreferenceController;

    invoke-static {p0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/ActivationStatusPreferenceController;->-$$Nest$fputisClicked(Lcom/samsung/android/settings/deviceinfo/statusinfo/ActivationStatusPreferenceController;)V

    return-void
.end method
