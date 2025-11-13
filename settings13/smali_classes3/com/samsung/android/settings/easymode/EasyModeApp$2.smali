.class Lcom/samsung/android/settings/easymode/EasyModeApp$2;
.super Ljava/lang/Object;
.source "EasyModeApp.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/easymode/EasyModeApp;->showExclusiveDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/easymode/EasyModeApp;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/easymode/EasyModeApp;)V
    .locals 0

    .line 546
    iput-object p1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp$2;->this$0:Lcom/samsung/android/settings/easymode/EasyModeApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 549
    iget-object p0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp$2;->this$0:Lcom/samsung/android/settings/easymode/EasyModeApp;

    invoke-static {p0}, Lcom/samsung/android/settings/easymode/EasyModeApp;->-$$Nest$fgetmEasyModeUtils(Lcom/samsung/android/settings/easymode/EasyModeApp;)Lcom/samsung/android/settings/easymode/EasyModeUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/settings/easymode/EasyModeUtils;->isHighContrastKeyboardOn()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/samsung/android/settings/easymode/EasyModeApp;->-$$Nest$mupdateHighContrastKeyboard(Lcom/samsung/android/settings/easymode/EasyModeApp;Z)V

    return-void
.end method
