.class final enum Lcom/samsung/android/settings/theftprotection/utils/NecessaryElementChecker$Sequence$1;
.super Lcom/samsung/android/settings/theftprotection/utils/NecessaryElementChecker$Sequence;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/theftprotection/utils/NecessaryElementChecker$Sequence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "OFF_LOCATION"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final check(Landroid/content/Context;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "location_mode"

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final resolveCondition(Landroid/app/Activity;)Z
    .locals 0

    new-instance p0, Lcom/android/settings/location/LocationEnabler;

    invoke-direct {p0, p1}, Lcom/android/settings/location/LocationEnabler;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/settings/location/LocationEnabler;->setLocationEnabled(Z)V

    return p1
.end method
