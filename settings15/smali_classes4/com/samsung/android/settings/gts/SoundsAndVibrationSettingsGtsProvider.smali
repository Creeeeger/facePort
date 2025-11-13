.class public Lcom/samsung/android/settings/gts/SoundsAndVibrationSettingsGtsProvider;
.super Lcom/samsung/android/settings/gts/SettingsGtsProvider;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final synthetic $r8$clinit:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/gtscell/GtsCellProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public final getGroups()Ljava/util/List;
    .locals 1

    invoke-static {}, Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;->values()[Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/samsung/android/settings/gts/SoundsAndVibrationSettingsGtsProvider$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method
