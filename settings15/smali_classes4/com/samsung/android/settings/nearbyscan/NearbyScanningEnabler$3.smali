.class public final Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$3;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$3;->this$0:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    iget-object p0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$3;->this$0:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

    iget-object p1, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mContext:Landroid/content/Context;

    const-string v0, "NearbyScanningEnabler"

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const-string p0, "OnPreferenceChangeListener, context is null"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    instance-of p1, p2, Ljava/lang/Boolean;

    if-eqz p1, :cond_5

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string/jumbo p2, "on"

    goto :goto_0

    :cond_1
    const-string/jumbo p2, "off"

    :goto_0
    const-string v2, "BLEM_100"

    const-string v3, "BLEM_0101"

    invoke-static {v2, v3, p2}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningUtil;->getDBInt(Landroid/content/ContentResolver;)I

    move-result p2

    const/4 v2, 0x2

    if-ne p2, v2, :cond_2

    if-eqz p1, :cond_4

    :cond_2
    iget-object p2, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningUtil;->isBeaconManagerInstall(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_3

    iget-object p1, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mContext:Landroid/content/Context;

    const-string p2, "Not Installed BeaconManager"

    const/4 v2, 0x1

    invoke-static {p1, p2, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    move p1, v1

    :cond_3
    const-string p2, "OnPreferenceChangeListener : "

    invoke-static {p2, v0, p1}, Lcom/android/settings/AirplaneModeEnabler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object p2, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mContext:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningUtil;->setDBInt(Landroid/content/Context;I)V

    iget-object p0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningUtil;->settingslogging(Landroid/content/Context;)V

    :cond_4
    return v1

    :cond_5
    const-string p0, "OnPreferenceChangeListener, instance not Boolean"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method
