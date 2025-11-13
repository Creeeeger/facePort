.class Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$1;
.super Ljava/lang/Object;
.source "ZenModeScheduleRuleSettings.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->onCreateInternal()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$1;->this$0:Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    if-nez p2, :cond_0

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onFocusChange : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "ZenModeSettings"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$1;->this$0:Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;

    invoke-static {p0, p1}, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->-$$Nest$mhideSoftKeyboard(Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;Landroid/view/View;)V

    :cond_0
    return-void
.end method
