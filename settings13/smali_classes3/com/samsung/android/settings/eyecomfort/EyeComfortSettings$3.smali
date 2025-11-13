.class Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$3;
.super Ljava/lang/Object;
.source "EyeComfortSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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

    .line 623
    iput-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$3;->this$0:Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;

    iput p2, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$3;->val$anchor:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3

    .line 627
    iget p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$3;->val$anchor:I

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 628
    iget-object p0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$3;->this$0:Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->-$$Nest$fgetmSwitchBar(Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;)Lcom/android/settings/widget/SettingsMainSwitchBar;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 630
    iget-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$3;->this$0:Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->access$000(Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;)Landroid/content/ContentResolver;

    move-result-object p1

    const-string v2, "blue_light_filter_type"

    invoke-static {p1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v1, :cond_1

    .line 632
    iget-object p0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$3;->this$0:Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->access$100(Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;)Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    :goto_0
    return-void
.end method
