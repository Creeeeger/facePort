.class Lcom/samsung/android/settings/display/NewModePreview$6;
.super Ljava/lang/Object;
.source "NewModePreview.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/display/NewModePreview;->showBluelightfilterDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/NewModePreview;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/NewModePreview;)V
    .locals 0

    .line 902
    iput-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview$6;->this$0:Lcom/samsung/android/settings/display/NewModePreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 905
    iget-object p2, p0, Lcom/samsung/android/settings/display/NewModePreview$6;->this$0:Lcom/samsung/android/settings/display/NewModePreview;

    invoke-static {p2}, Lcom/samsung/android/settings/display/NewModePreview;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/display/NewModePreview;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v0, "blue_light_filter"

    const/4 v1, 0x0

    invoke-static {p2, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 907
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    .line 908
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.samsung.android.bluelightfilter"

    const-string v2, "com.samsung.android.bluelightfilter.BlueLightFilterService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v0, "BLUE_LIGHT_FILTER_SERVICE_TYPE"

    const/16 v1, 0x16

    .line 909
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 910
    iget-object p0, p0, Lcom/samsung/android/settings/display/NewModePreview$6;->this$0:Lcom/samsung/android/settings/display/NewModePreview;

    invoke-static {p0}, Lcom/samsung/android/settings/display/NewModePreview;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/display/NewModePreview;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 911
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
