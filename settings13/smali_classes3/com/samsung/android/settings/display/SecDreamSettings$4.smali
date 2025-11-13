.class Lcom/samsung/android/settings/display/SecDreamSettings$4;
.super Ljava/lang/Object;
.source "SecDreamSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/display/SecDreamSettings;->createWhenToDreamDialog()Landroid/app/Dialog;
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

    .line 269
    iput-object p1, p0, Lcom/samsung/android/settings/display/SecDreamSettings$4;->this$0:Lcom/samsung/android/settings/display/SecDreamSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    .line 271
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDreamSettings$4;->this$0:Lcom/samsung/android/settings/display/SecDreamSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecDreamSettings;->-$$Nest$fgetmBackend(Lcom/samsung/android/settings/display/SecDreamSettings;)Lcom/android/settingslib/dream/DreamBackend;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz p2, :cond_1

    if-ne p2, v2, :cond_0

    goto :goto_0

    :cond_0
    move v4, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v4, v3

    :goto_1
    invoke-virtual {v0, v4}, Lcom/android/settingslib/dream/DreamBackend;->setActivatedOnDock(Z)V

    .line 272
    iget-object p0, p0, Lcom/samsung/android/settings/display/SecDreamSettings$4;->this$0:Lcom/samsung/android/settings/display/SecDreamSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/display/SecDreamSettings;->-$$Nest$fgetmBackend(Lcom/samsung/android/settings/display/SecDreamSettings;)Lcom/android/settingslib/dream/DreamBackend;

    move-result-object p0

    if-eq p2, v3, :cond_2

    if-ne p2, v2, :cond_3

    :cond_2
    move v1, v3

    :cond_3
    invoke-virtual {p0, v1}, Lcom/android/settingslib/dream/DreamBackend;->setActivatedOnSleep(Z)V

    .line 273
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    const/16 p0, 0x2f

    .line 275
    invoke-static {}, Lcom/samsung/android/settings/display/SecDreamSettings;->-$$Nest$sfgetSCREEN_SAVER_SELECT_WHEN_TO_USE_RADIO_BUTTON()I

    move-result p1

    int-to-long v0, p2

    invoke-static {p0, p1, v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    return-void
.end method
