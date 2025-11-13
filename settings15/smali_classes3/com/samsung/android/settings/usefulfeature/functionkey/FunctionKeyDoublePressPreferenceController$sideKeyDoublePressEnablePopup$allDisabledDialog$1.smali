.class public final Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyDoublePressPreferenceController$sideKeyDoublePressEnablePopup$allDisabledDialog$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic $attTvModePwrKey:Z

.field public final synthetic this$0:Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyDoublePressPreferenceController;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyDoublePressPreferenceController;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyDoublePressPreferenceController$sideKeyDoublePressEnablePopup$allDisabledDialog$1;->$attTvModePwrKey:Z

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyDoublePressPreferenceController$sideKeyDoublePressEnablePopup$allDisabledDialog$1;->this$0:Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyDoublePressPreferenceController;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-boolean p1, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyDoublePressPreferenceController$sideKeyDoublePressEnablePopup$allDisabledDialog$1;->$attTvModePwrKey:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyDoublePressPreferenceController$sideKeyDoublePressEnablePopup$allDisabledDialog$1;->this$0:Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyDoublePressPreferenceController;

    invoke-static {p1}, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyDoublePressPreferenceController;->access$getMContext$p$s1962198178(Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyDoublePressPreferenceController;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "pwrkey_owner_status"

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyDoublePressPreferenceController$sideKeyDoublePressEnablePopup$allDisabledDialog$1;->this$0:Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyDoublePressPreferenceController;

    invoke-static {p1}, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyDoublePressPreferenceController;->access$getMContext$p$s1962198178(Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyDoublePressPreferenceController;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "lcd_curtain"

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_0
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyDoublePressPreferenceController$sideKeyDoublePressEnablePopup$allDisabledDialog$1;->this$0:Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyDoublePressPreferenceController;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyDoublePressPreferenceController;->access$setFuncKeyDoublePress(Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyDoublePressPreferenceController;Z)V

    return-void
.end method
