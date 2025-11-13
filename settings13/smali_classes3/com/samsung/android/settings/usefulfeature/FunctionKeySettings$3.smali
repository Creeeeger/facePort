.class Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings$3;
.super Ljava/lang/Object;
.source "FunctionKeySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->sideKeyDoublePressEnablePopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;

.field final synthetic val$attTvModePwrKey:Z


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;Z)V
    .locals 0

    .line 526
    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;

    iput-boolean p2, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings$3;->val$attTvModePwrKey:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 528
    iget-boolean p1, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings$3;->val$attTvModePwrKey:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 529
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;

    invoke-static {p1}, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->access$000(Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;)Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "pwrkey_owner_status"

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 531
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;

    invoke-static {p1}, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->access$100(Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;)Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "lcd_curtain"

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 533
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->-$$Nest$msetFuncKeyDoublePress(Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;Z)V

    return-void
.end method
