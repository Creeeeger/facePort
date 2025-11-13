.class Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$3;
.super Ljava/lang/Object;
.source "NearbyScanningEnabler.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


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

    .line 91
    iput-object p1, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$3;->this$0:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    .line 95
    iget-object p1, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$3;->this$0:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

    invoke-static {p1}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;)Landroid/content/Context;

    move-result-object p1

    const-string v0, "NearbyScanningEnabler"

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const-string p0, "OnPreferenceChangeListener, context is null"

    .line 96
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 102
    :cond_0
    instance-of p1, p2, Ljava/lang/Boolean;

    if-eqz p1, :cond_5

    .line 103
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p2, "on"

    goto :goto_0

    :cond_1
    const-string p2, "off"

    .line 105
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$3;->this$0:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

    const-string v3, "BLEM_100"

    const-string v4, "BLEM_0101"

    invoke-static {v2, v3, v4, p2}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->-$$Nest$msendSALogging(Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    iget-object p2, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$3;->this$0:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

    invoke-static {p2}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningUtil;->getDBInt(Landroid/content/ContentResolver;)I

    move-result p2

    const/4 v2, 0x2

    if-ne p2, v2, :cond_2

    if-eqz p1, :cond_4

    .line 114
    :cond_2
    iget-object p2, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$3;->this$0:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

    invoke-static {p2}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningUtil;->isBeaconManagerInstall(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 116
    iget-object p1, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$3;->this$0:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

    invoke-static {p1}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;)Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x1

    const-string v2, "Not Installed BeaconManager"

    invoke-static {p1, v2, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 117
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    move p1, v1

    .line 119
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnPreferenceChangeListener : "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object p2, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$3;->this$0:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

    invoke-static {p2}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningUtil;->setDBInt(Landroid/content/Context;I)V

    .line 121
    iget-object p0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$3;->this$0:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

    invoke-static {p0}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningUtil;->settingslogging(Landroid/content/Context;)Z

    :cond_4
    return v1

    :cond_5
    const-string p0, "OnPreferenceChangeListener, instance not Boolean"

    .line 107
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method
