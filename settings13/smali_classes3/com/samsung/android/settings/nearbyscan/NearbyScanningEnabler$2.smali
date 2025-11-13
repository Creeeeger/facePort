.class Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$2;
.super Ljava/lang/Object;
.source "NearbyScanningEnabler.java"

# interfaces
.implements Lcom/android/settingslib/widget/OnMainSwitchChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$2;->this$0:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 6

    .line 65
    iget-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$2;->this$0:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

    invoke-static {v0}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "NearbyScanningEnabler"

    if-nez v0, :cond_0

    const-string p0, "OnSwitchChangeListener, context is null"

    .line 66
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$2;->this$0:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

    invoke-static {v0}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningUtil;->getDBInt(Landroid/content/ContentResolver;)I

    move-result v0

    .line 70
    invoke-virtual {p1}, Landroid/widget/Switch;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz p2, :cond_1

    const-string v2, "on"

    goto :goto_0

    :cond_1
    const-string v2, "off"

    .line 72
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$2;->this$0:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

    const-string v4, "BLEM_100"

    const-string v5, "BLEM_0101"

    invoke-static {v3, v4, v5, v2}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->-$$Nest$msendSALogging(Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    if-eqz p2, :cond_5

    .line 76
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$2;->this$0:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

    invoke-static {v0}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningUtil;->isBeaconManagerInstall(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 p2, 0x0

    .line 78
    iget-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$2;->this$0:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

    invoke-static {v0}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;)Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x1

    const-string v3, "Not Installed BeaconManager"

    invoke-static {v0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 79
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 81
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnSwitchChangeListener : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$2;->this$0:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

    invoke-static {v0}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningUtil;->setDBInt(Landroid/content/Context;I)V

    .line 84
    invoke-virtual {p1}, Landroid/widget/Switch;->isPressed()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 85
    iget-object p0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$2;->this$0:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

    invoke-static {p0}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningUtil;->settingslogging(Landroid/content/Context;)Z

    :cond_5
    return-void
.end method
