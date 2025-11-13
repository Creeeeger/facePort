.class Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$5;
.super Ljava/lang/Object;
.source "EyeComfortSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->showLocationOnDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;

.field final synthetic val$anchor:I


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;I)V
    .locals 0

    .line 590
    iput-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$5;->this$0:Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;

    iput p2, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$5;->val$anchor:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 594
    iget p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$5;->val$anchor:I

    const/4 p2, 0x0

    if-nez p1, :cond_0

    .line 595
    iget-object p0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$5;->this$0:Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->-$$Nest$fgetmSwitchBar(Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;)Lcom/android/settings/widget/SettingsMainSwitchBar;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 597
    iget-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$5;->this$0:Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->access$700(Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;)Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "blue_light_filter_type"

    invoke-static {p1, v1, p2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v0, :cond_1

    .line 599
    iget-object p0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$5;->this$0:Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->access$800(Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;)Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    :goto_0
    return-void
.end method
