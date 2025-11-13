.class Lcom/android/settings/datetime/DateTimeSettings$1;
.super Ljava/lang/Object;
.source "DateTimeSettings.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/datetime/DateTimeSettings;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/datetime/DateTimeSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/datetime/DateTimeSettings;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/android/settings/datetime/DateTimeSettings$1;->this$0:Lcom/android/settings/datetime/DateTimeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 162
    iget-object p1, p0, Lcom/android/settings/datetime/DateTimeSettings$1;->this$0:Lcom/android/settings/datetime/DateTimeSettings;

    invoke-static {p1}, Lcom/android/settings/datetime/DateTimeSettings;->-$$Nest$fgetmActivity(Lcom/android/settings/datetime/DateTimeSettings;)Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/datetime/DateTimeSettings$1;->this$0:Lcom/android/settings/datetime/DateTimeSettings;

    invoke-static {p1}, Lcom/android/settings/datetime/DateTimeSettings;->-$$Nest$fgetmOrientation(Lcom/android/settings/datetime/DateTimeSettings;)I

    move-result p1

    iget-object p2, p0, Lcom/android/settings/datetime/DateTimeSettings$1;->this$0:Lcom/android/settings/datetime/DateTimeSettings;

    invoke-static {p2}, Lcom/android/settings/datetime/DateTimeSettings;->-$$Nest$fgetmActivity(Lcom/android/settings/datetime/DateTimeSettings;)Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget p2, p2, Landroid/content/res/Configuration;->orientation:I

    if-eq p1, p2, :cond_1

    .line 163
    iget-object p1, p0, Lcom/android/settings/datetime/DateTimeSettings$1;->this$0:Lcom/android/settings/datetime/DateTimeSettings;

    invoke-static {p1}, Lcom/android/settings/datetime/DateTimeSettings;->-$$Nest$fgetmDialogOpen(Lcom/android/settings/datetime/DateTimeSettings;)Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/datetime/DateTimeSettings$1;->this$0:Lcom/android/settings/datetime/DateTimeSettings;

    invoke-static {p1}, Lcom/android/settings/datetime/DateTimeSettings;->-$$Nest$fgetmDialogOpen(Lcom/android/settings/datetime/DateTimeSettings;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 164
    iget-object p1, p0, Lcom/android/settings/datetime/DateTimeSettings$1;->this$0:Lcom/android/settings/datetime/DateTimeSettings;

    invoke-static {p1}, Lcom/android/settings/datetime/DateTimeSettings;->-$$Nest$fgetmDialogOpen(Lcom/android/settings/datetime/DateTimeSettings;)Landroid/app/Dialog;

    move-result-object p2

    invoke-static {}, Lcom/android/settings/datetime/DateTimeSettings;->-$$Nest$sfgetkeyShowingPreference()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/android/settings/datetime/DateTimeSettings;->setDialogLocation(Landroid/app/Dialog;Ljava/lang/String;)V

    .line 166
    :cond_0
    iget-object p0, p0, Lcom/android/settings/datetime/DateTimeSettings$1;->this$0:Lcom/android/settings/datetime/DateTimeSettings;

    invoke-static {p0}, Lcom/android/settings/datetime/DateTimeSettings;->-$$Nest$fgetmActivity(Lcom/android/settings/datetime/DateTimeSettings;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-static {p0, p1}, Lcom/android/settings/datetime/DateTimeSettings;->-$$Nest$fputmOrientation(Lcom/android/settings/datetime/DateTimeSettings;I)V

    :cond_1
    return-void
.end method
