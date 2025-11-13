.class public final Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$2;->this$0:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$2;->this$0:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

    iget-object v0, v0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mContext:Landroid/content/Context;

    const-string v1, "NearbyScanningEnabler"

    if-nez v0, :cond_0

    const-string p0, "OnSwitchChangeListener, context is null"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningUtil;->getDBInt(Landroid/content/ContentResolver;)I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz p2, :cond_1

    const-string/jumbo v2, "on"

    goto :goto_0

    :cond_1
    const-string/jumbo v2, "off"

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$2;->this$0:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "BLEM_100"

    const-string v4, "BLEM_0101"

    invoke-static {v3, v4, v2}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    if-eqz p2, :cond_5

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$2;->this$0:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

    iget-object v0, v0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningUtil;->isBeaconManagerInstall(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object p2, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$2;->this$0:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

    iget-object p2, p2, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mContext:Landroid/content/Context;

    const-string v0, "Not Installed BeaconManager"

    const/4 v2, 0x1

    invoke-static {p2, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    const/4 p2, 0x0

    :cond_4
    const-string v0, "OnSwitchChangeListener : "

    invoke-static {v0, v1, p2}, Lcom/android/settings/AirplaneModeEnabler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$2;->this$0:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

    iget-object v0, v0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningUtil;->setDBInt(Landroid/content/Context;I)V

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$2;->this$0:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

    iget-object p0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningUtil;->settingslogging(Landroid/content/Context;)V

    :cond_5
    return-void
.end method
