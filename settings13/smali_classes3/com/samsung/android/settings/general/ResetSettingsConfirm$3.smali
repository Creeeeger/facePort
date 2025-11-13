.class Lcom/samsung/android/settings/general/ResetSettingsConfirm$3;
.super Ljava/lang/Object;
.source "ResetSettingsConfirm.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/general/ResetSettingsConfirm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/general/ResetSettingsConfirm;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/general/ResetSettingsConfirm;)V
    .locals 0

    .line 198
    iput-object p1, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm$3;->this$0:Lcom/samsung/android/settings/general/ResetSettingsConfirm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 200
    iget-object p1, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm$3;->this$0:Lcom/samsung/android/settings/general/ResetSettingsConfirm;

    invoke-static {p1}, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->-$$Nest$fgetmIsAccReset(Lcom/samsung/android/settings/general/ResetSettingsConfirm;)Z

    move-result p1

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_0

    .line 201
    iget-object p1, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm$3;->this$0:Lcom/samsung/android/settings/general/ResetSettingsConfirm;

    invoke-virtual {p1}, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->getMetricsCategory()I

    move-result p1

    const/16 v2, 0x123b

    invoke-static {p1, v2, v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    goto :goto_0

    .line 203
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm$3;->this$0:Lcom/samsung/android/settings/general/ResetSettingsConfirm;

    invoke-virtual {p1}, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->getMetricsCategory()I

    move-result p1

    const/16 v2, 0x1236

    invoke-static {p1, v2, v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    .line 205
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm$3;->this$0:Lcom/samsung/android/settings/general/ResetSettingsConfirm;

    invoke-static {p0}, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->-$$Nest$mrequestSoftReset(Lcom/samsung/android/settings/general/ResetSettingsConfirm;)V

    return-void
.end method
