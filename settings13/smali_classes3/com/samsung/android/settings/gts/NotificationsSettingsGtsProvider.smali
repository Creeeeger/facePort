.class public Lcom/samsung/android/settings/gts/NotificationsSettingsGtsProvider;
.super Lcom/samsung/android/settings/gts/SettingsGtsProvider;
.source "NotificationsSettingsGtsProvider.java"


# direct methods
.method public static synthetic $r8$lambda$ryorup0nlfb2ZXvfM4WvFU3Bi3A(Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;)Z
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/settings/gts/NotificationsSettingsGtsProvider;->lambda$getGroups$0(Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/samsung/android/settings/gts/SettingsGtsProvider;-><init>()V

    return-void
.end method

.method private static synthetic lambda$getGroups$0(Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;)Z
    .locals 1

    .line 12
    invoke-virtual {p0}, Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;->getGroupName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.samsung.android.settings.gts.category.NOTIFICATIONS"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method protected getGroups()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;",
            ">;"
        }
    .end annotation

    .line 11
    invoke-static {}, Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;->values()[Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/samsung/android/settings/gts/NotificationsSettingsGtsProvider$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/samsung/android/settings/gts/NotificationsSettingsGtsProvider$$ExternalSyntheticLambda0;-><init>()V

    .line 12
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 13
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method
