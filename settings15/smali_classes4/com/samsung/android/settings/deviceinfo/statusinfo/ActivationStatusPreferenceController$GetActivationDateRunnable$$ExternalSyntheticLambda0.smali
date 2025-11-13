.class public final synthetic Lcom/samsung/android/settings/deviceinfo/statusinfo/ActivationStatusPreferenceController$GetActivationDateRunnable$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/deviceinfo/statusinfo/ActivationStatusPreferenceController$GetActivationDateRunnable;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/deviceinfo/statusinfo/ActivationStatusPreferenceController$GetActivationDateRunnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/ActivationStatusPreferenceController$GetActivationDateRunnable$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/deviceinfo/statusinfo/ActivationStatusPreferenceController$GetActivationDateRunnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/ActivationStatusPreferenceController$GetActivationDateRunnable$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/deviceinfo/statusinfo/ActivationStatusPreferenceController$GetActivationDateRunnable;

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/ActivationStatusPreferenceController$GetActivationDateRunnable;->this$0:Lcom/samsung/android/settings/deviceinfo/statusinfo/ActivationStatusPreferenceController;

    invoke-static {v0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/ActivationStatusPreferenceController;->-$$Nest$fgetisClicked(Lcom/samsung/android/settings/deviceinfo/statusinfo/ActivationStatusPreferenceController;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/ActivationStatusPreferenceController$GetActivationDateRunnable;->this$0:Lcom/samsung/android/settings/deviceinfo/statusinfo/ActivationStatusPreferenceController;

    invoke-static {v0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/ActivationStatusPreferenceController;->access$100(Lcom/samsung/android/settings/deviceinfo/statusinfo/ActivationStatusPreferenceController;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/ActivationStatusPreferenceController$GetActivationDateRunnable;->this$0:Lcom/samsung/android/settings/deviceinfo/statusinfo/ActivationStatusPreferenceController;

    invoke-static {v1}, Lcom/samsung/android/settings/deviceinfo/statusinfo/ActivationStatusPreferenceController;->access$200(Lcom/samsung/android/settings/deviceinfo/statusinfo/ActivationStatusPreferenceController;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f140257

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/ActivationStatusPreferenceController$GetActivationDateRunnable;->this$0:Lcom/samsung/android/settings/deviceinfo/statusinfo/ActivationStatusPreferenceController;

    invoke-static {v0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/ActivationStatusPreferenceController;->-$$Nest$fgetmPreference(Lcom/samsung/android/settings/deviceinfo/statusinfo/ActivationStatusPreferenceController;)Lcom/samsung/android/settings/deviceinfo/statusinfo/ActivationPreference;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/ActivationStatusPreferenceController$GetActivationDateRunnable;->this$0:Lcom/samsung/android/settings/deviceinfo/statusinfo/ActivationStatusPreferenceController;

    invoke-static {v0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/ActivationStatusPreferenceController;->-$$Nest$fgetmPreference(Lcom/samsung/android/settings/deviceinfo/statusinfo/ActivationStatusPreferenceController;)Lcom/samsung/android/settings/deviceinfo/statusinfo/ActivationPreference;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/ActivationStatusPreferenceController$GetActivationDateRunnable;->this$0:Lcom/samsung/android/settings/deviceinfo/statusinfo/ActivationStatusPreferenceController;

    invoke-static {p0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/ActivationStatusPreferenceController;->access$300(Lcom/samsung/android/settings/deviceinfo/statusinfo/ActivationStatusPreferenceController;)Landroid/content/Context;

    move-result-object p0

    const v1, 0x7f140256

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/ActivationPreference;->makeSummary(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
