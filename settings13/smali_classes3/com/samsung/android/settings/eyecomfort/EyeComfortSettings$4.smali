.class Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$4;
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

    .line 604
    iput-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$4;->this$0:Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;

    iput p2, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$4;->val$anchor:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 608
    iget-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$4;->this$0:Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->access$200(Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;)Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "location_mode"

    const/4 v0, 0x3

    invoke-static {p1, p2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 609
    iget p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$4;->val$anchor:I

    const/4 p2, 0x2

    const-wide/16 v0, 0x1

    if-ne p1, p2, :cond_0

    .line 610
    iget-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$4;->this$0:Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->access$300(Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;)Landroid/content/ContentResolver;

    move-result-object p1

    const-string v2, "blue_light_filter_type"

    invoke-static {p1, v2, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 611
    iget-object p0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$4;->this$0:Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;

    invoke-virtual {p0}, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->getMetricsCategory()I

    move-result p0

    const/16 p1, 0x1081

    invoke-static {p0, p1, v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    .line 613
    iget-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$4;->this$0:Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->access$400(Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;)Landroid/content/ContentResolver;

    move-result-object p1

    const-string v2, "blue_light_filter_scheduled"

    invoke-static {p1, v2, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 614
    iget-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$4;->this$0:Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->access$500(Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;)Landroid/content/ContentResolver;

    move-result-object p1

    const/4 p2, 0x0

    const-string v2, "blue_light_filter_adaptive_mode"

    invoke-static {p1, v2, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 615
    iget-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$4;->this$0:Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;

    invoke-virtual {p1}, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->getMetricsCategory()I

    move-result p1

    const/16 p2, 0x1cf3

    invoke-static {p1, p2, v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    .line 616
    iget-object p0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$4;->this$0:Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;

    invoke-virtual {p0}, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->getMetricsCategory()I

    move-result p0

    const p1, 0x9d08

    const-wide/16 v0, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    goto :goto_0

    .line 618
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$4;->this$0:Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->access$600(Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;)Landroid/content/ContentResolver;

    move-result-object p1

    const-string v2, "blue_light_filter"

    invoke-static {p1, v2, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 619
    iget-object p0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$4;->this$0:Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;

    invoke-virtual {p0}, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->getMetricsCategory()I

    move-result p0

    const/16 p1, 0x1cf2

    invoke-static {p0, p1, v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    :goto_0
    return-void
.end method
