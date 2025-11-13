.class Lcom/samsung/android/settings/display/SecDreamSettings$5;
.super Ljava/lang/Object;
.source "SecDreamSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/display/SecDreamSettings;->refreshFromBackend()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/SecDreamSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/SecDreamSettings;)V
    .locals 0

    .line 386
    iput-object p1, p0, Lcom/samsung/android/settings/display/SecDreamSettings$5;->this$0:Lcom/samsung/android/settings/display/SecDreamSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 389
    iget-object p1, p0, Lcom/samsung/android/settings/display/SecDreamSettings$5;->this$0:Lcom/samsung/android/settings/display/SecDreamSettings;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/samsung/android/settings/display/SecDreamSettings;->-$$Nest$fputmBlockListClickEvent(Lcom/samsung/android/settings/display/SecDreamSettings;Z)V

    .line 390
    iget-object p0, p0, Lcom/samsung/android/settings/display/SecDreamSettings$5;->this$0:Lcom/samsung/android/settings/display/SecDreamSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/display/SecDreamSettings;->-$$Nest$fgetmBackend(Lcom/samsung/android/settings/display/SecDreamSettings;)Lcom/android/settingslib/dream/DreamBackend;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settingslib/dream/DreamBackend;->startDreaming()V

    .line 391
    invoke-static {}, Lcom/samsung/android/settings/display/SecDreamSettings;->-$$Nest$sfgetSCREEN_SAVER_PREVIEW()I

    move-result p0

    const/16 p1, 0x2f

    invoke-static {p1, p0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    return-void
.end method
