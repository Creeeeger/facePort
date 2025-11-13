.class Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$6;
.super Ljava/lang/Object;
.source "SecVolumeLimiterSettings.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;)V
    .locals 0

    .line 619
    iput-object p1, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$6;->this$0:Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 623
    iget-object p1, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$6;->this$0:Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;)Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$6;->this$0:Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->-$$Nest$fgetmOrientation(Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;)I

    move-result p1

    iget-object p2, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$6;->this$0:Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;

    invoke-static {p2}, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget p2, p2, Landroid/content/res/Configuration;->orientation:I

    if-eq p1, p2, :cond_1

    .line 624
    iget-object p1, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$6;->this$0:Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->-$$Nest$fgetmDialog(Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;)Landroid/app/AlertDialog;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$6;->this$0:Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->-$$Nest$fgetmDialog(Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;)Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 625
    iget-object p1, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$6;->this$0:Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->-$$Nest$msetAnchorView(Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;)V

    .line 627
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$6;->this$0:Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-static {p0, p1}, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->-$$Nest$fputmOrientation(Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;I)V

    :cond_1
    return-void
.end method
