.class public final Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;

.field public final synthetic val$isSetDark:Z

.field public final synthetic val$uiModeManager:Landroid/app/UiModeManager;

.field public final synthetic val$value:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;Landroid/app/UiModeManager;ZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController$1;->this$0:Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;

    iput-object p2, p0, Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController$1;->val$uiModeManager:Landroid/app/UiModeManager;

    iput-boolean p3, p0, Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController$1;->val$isSetDark:Z

    iput p4, p0, Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController$1;->val$value:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController$1;->this$0:Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;

    invoke-static {v0}, Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;->-$$Nest$misDarkModeScheduled(Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController$1;->val$uiModeManager:Landroid/app/UiModeManager;

    iget-boolean v1, p0, Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController$1;->val$isSetDark:Z

    invoke-virtual {v0, v1}, Landroid/app/UiModeManager;->setNightModeActivated(Z)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController$1;->this$0:Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;

    iget-boolean v1, p0, Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController$1;->val$isSetDark:Z

    invoke-static {v0, v1}, Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;->-$$Nest$mloggingIfNeed(Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;I)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController$1;->val$uiModeManager:Landroid/app/UiModeManager;

    iget v1, p0, Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController$1;->val$value:I

    invoke-virtual {v0, v1}, Landroid/app/UiModeManager;->setNightMode(I)V

    :goto_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController$1;->val$isSetDark:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController$1;->this$0:Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;

    invoke-static {v0}, Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;->-$$Nest$misDarkModeScheduled(Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController$1;->this$0:Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;

    invoke-static {v0}, Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;->access$000(Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;)Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController$1;->this$0:Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;

    invoke-static {p0}, Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;->access$100(Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;)Landroid/content/Context;

    move-result-object p0

    const v1, 0x7f1425cc

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_1
    return-void
.end method
