.class Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$2$2;
.super Ljava/lang/Object;
.source "FlexModeSettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$2;->onBindViewHolder(Landroidx/apppickerview/widget/AppPickerView$ViewHolder;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$2;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$2;)V
    .locals 0

    .line 378
    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$2$2;->this$1:Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 381
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$2$2;->this$1:Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$2;

    iget-object p1, p1, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$2;->this$0:Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;->access$000(Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;)Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "show_setting_icon"

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 382
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$2$2;->this$1:Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$2;

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$2;->this$0:Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;->getMetricsCategory()I

    move-result p0

    const p1, 0x10ba4

    invoke-static {p0, p1, p2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIZ)V

    return-void
.end method
