.class Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController$1;
.super Ljava/lang/Object;
.source "SecDarkModePreferenceController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;->setSelectedValue(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;

.field final synthetic val$isSetDark:Z

.field final synthetic val$uiModeManager:Landroid/app/UiModeManager;

.field final synthetic val$value:I


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;Landroid/app/UiModeManager;ZI)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController$1;->this$0:Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;

    iput-object p2, p0, Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController$1;->val$uiModeManager:Landroid/app/UiModeManager;

    iput-boolean p3, p0, Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController$1;->val$isSetDark:Z

    iput p4, p0, Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController$1;->val$value:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController$1;->this$0:Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;

    invoke-static {v0}, Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;->-$$Nest$misDarkModeScheduled(Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController$1;->val$uiModeManager:Landroid/app/UiModeManager;

    iget-boolean p0, p0, Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController$1;->val$isSetDark:Z

    invoke-virtual {v0, p0}, Landroid/app/UiModeManager;->setNightModeActivated(Z)Z

    goto :goto_0

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController$1;->this$0:Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;

    iget-boolean v1, p0, Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController$1;->val$isSetDark:Z

    invoke-static {v0, v1}, Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;->-$$Nest$mloggingIfNeed(Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;I)V

    .line 93
    iget-object v0, p0, Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController$1;->val$uiModeManager:Landroid/app/UiModeManager;

    iget p0, p0, Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController$1;->val$value:I

    invoke-virtual {v0, p0}, Landroid/app/UiModeManager;->setNightMode(I)V

    :goto_0
    return-void
.end method
