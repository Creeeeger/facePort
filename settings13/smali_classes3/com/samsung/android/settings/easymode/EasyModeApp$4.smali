.class Lcom/samsung/android/settings/easymode/EasyModeApp$4;
.super Ljava/lang/Object;
.source "EasyModeApp.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

    .line 536
    iput-object p1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp$4;->this$0:Lcom/samsung/android/settings/easymode/EasyModeApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 538
    iget-object p1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp$4;->this$0:Lcom/samsung/android/settings/easymode/EasyModeApp;

    invoke-static {p1}, Lcom/samsung/android/settings/easymode/EasyModeApp;->-$$Nest$fgetmEasyModeUtils(Lcom/samsung/android/settings/easymode/EasyModeApp;)Lcom/samsung/android/settings/easymode/EasyModeUtils;

    move-result-object p1

    const-string p2, "1"

    invoke-virtual {p1, p2}, Lcom/samsung/android/settings/easymode/EasyModeUtils;->putValueToKeyboard(Ljava/lang/String;)V

    .line 539
    iget-object p0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp$4;->this$0:Lcom/samsung/android/settings/easymode/EasyModeApp;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/samsung/android/settings/easymode/EasyModeApp;->-$$Nest$mupdateHighContrastKeyboard(Lcom/samsung/android/settings/easymode/EasyModeApp;Z)V

    return-void
.end method
