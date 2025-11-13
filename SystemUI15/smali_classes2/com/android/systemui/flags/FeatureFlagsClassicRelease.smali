.class public final Lcom/android/systemui/flags/FeatureFlagsClassicRelease;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/flags/FeatureFlagsClassic;


# instance fields
.field public final mBooleanCache:Ljava/util/Map;

.field public final mIntCache:Ljava/util/Map;

.field public final mResources:Landroid/content/res/Resources;

.field public final mRestarter:Lcom/android/systemui/flags/Restarter;

.field public final mServerFlagReader:Lcom/android/systemui/flags/ServerFlagReader;

.field public final mStringCache:Ljava/util/Map;

.field public final mSystemProperties:Lcom/android/systemui/flags/SystemPropertiesHelper;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lcom/android/systemui/flags/SystemPropertiesHelper;Lcom/android/systemui/flags/ServerFlagReader;Ljava/util/Map;Lcom/android/systemui/flags/Restarter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Lcom/android/systemui/flags/SystemPropertiesHelper;",
            "Lcom/android/systemui/flags/ServerFlagReader;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/flags/Flag;",
            ">;",
            "Lcom/android/systemui/flags/Restarter;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    iput-object p4, p0, Lcom/android/systemui/flags/FeatureFlagsClassicRelease;->mBooleanCache:Ljava/util/Map;

    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    iput-object p4, p0, Lcom/android/systemui/flags/FeatureFlagsClassicRelease;->mStringCache:Ljava/util/Map;

    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    iput-object p4, p0, Lcom/android/systemui/flags/FeatureFlagsClassicRelease;->mIntCache:Ljava/util/Map;

    new-instance p4, Lcom/android/systemui/flags/FeatureFlagsClassicRelease$1;

    invoke-direct {p4, p0}, Lcom/android/systemui/flags/FeatureFlagsClassicRelease$1;-><init>(Lcom/android/systemui/flags/FeatureFlagsClassicRelease;)V

    iput-object p1, p0, Lcom/android/systemui/flags/FeatureFlagsClassicRelease;->mResources:Landroid/content/res/Resources;

    iput-object p2, p0, Lcom/android/systemui/flags/FeatureFlagsClassicRelease;->mSystemProperties:Lcom/android/systemui/flags/SystemPropertiesHelper;

    iput-object p3, p0, Lcom/android/systemui/flags/FeatureFlagsClassicRelease;->mServerFlagReader:Lcom/android/systemui/flags/ServerFlagReader;

    iput-object p5, p0, Lcom/android/systemui/flags/FeatureFlagsClassicRelease;->mRestarter:Lcom/android/systemui/flags/Restarter;

    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7

    const-string p2, "can override: false"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget-object p2, Lcom/android/systemui/flags/FlagsFactory;->INSTANCE:Lcom/android/systemui/flags/FlagsFactory;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p2, Lcom/android/systemui/flags/FlagsFactory;->flagMap:Ljava/util/Map;

    sget-object v0, Lcom/android/systemui/flags/Flags;->NULL_FLAG:Lcom/android/systemui/flags/UnreleasedFlag;

    iget-object v0, v0, Lcom/android/systemui/flags/UnreleasedFlag;->name:Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    const-string v0, "Booleans: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    check-cast p2, Ljava/util/LinkedHashMap;

    invoke-virtual {p2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "  "

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/flags/Flag;

    instance-of v3, v1, Lcom/android/systemui/flags/BooleanFlag;

    if-eqz v3, :cond_0

    instance-of v3, v1, Lcom/android/systemui/flags/ResourceBooleanFlag;

    if-eqz v3, :cond_0

    instance-of v4, v1, Lcom/android/systemui/flags/SysPropBooleanFlag;

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/android/systemui/flags/FeatureFlagsClassicRelease;->mBooleanCache:Ljava/util/Map;

    invoke-interface {v1}, Lcom/android/systemui/flags/Flag;->getName()Ljava/lang/String;

    move-result-object v6

    check-cast v5, Ljava/util/HashMap;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    if-eqz v4, :cond_2

    move-object v3, v1

    check-cast v3, Lcom/android/systemui/flags/SysPropBooleanFlag;

    iget-object v4, p0, Lcom/android/systemui/flags/FeatureFlagsClassicRelease;->mSystemProperties:Lcom/android/systemui/flags/SystemPropertiesHelper;

    iget-object v5, v3, Lcom/android/systemui/flags/SysPropBooleanFlag;->name:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v3, v3, Lcom/android/systemui/flags/SysPropBooleanFlag;->default:Z

    invoke-static {v5, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    goto :goto_1

    :cond_2
    if-eqz v3, :cond_3

    move-object v3, v1

    check-cast v3, Lcom/android/systemui/flags/ResourceBooleanFlag;

    iget-object v4, p0, Lcom/android/systemui/flags/FeatureFlagsClassicRelease;->mResources:Landroid/content/res/Resources;

    iget v3, v3, Lcom/android/systemui/flags/ResourceBooleanFlag;->resourceId:I

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    goto :goto_1

    :cond_3
    instance-of v3, v1, Lcom/android/systemui/flags/BooleanFlag;

    if-eqz v3, :cond_4

    move-object v3, v1

    check-cast v3, Lcom/android/systemui/flags/BooleanFlag;

    iget-boolean v3, v3, Lcom/android/systemui/flags/BooleanFlag;->default:Z

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/android/systemui/flags/Flag;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/flags/FeatureFlagsClassicRelease;->mBooleanCache:Ljava/util/Map;

    invoke-interface {v1}, Lcom/android/systemui/flags/Flag;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    const-string v0, "Strings: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_6
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/flags/Flag;

    instance-of v1, v0, Lcom/android/systemui/flags/StringFlag;

    if-eqz v1, :cond_6

    instance-of v1, v0, Lcom/android/systemui/flags/ResourceStringFlag;

    if-nez v1, :cond_7

    goto :goto_2

    :cond_7
    iget-object v3, p0, Lcom/android/systemui/flags/FeatureFlagsClassicRelease;->mBooleanCache:Ljava/util/Map;

    move-object v4, v0

    check-cast v4, Lcom/android/systemui/flags/StringFlag;

    iget-object v5, v4, Lcom/android/systemui/flags/StringFlag;->name:Ljava/lang/String;

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    if-eqz v1, :cond_8

    check-cast v0, Lcom/android/systemui/flags/ResourceStringFlag;

    iget-object v1, p0, Lcom/android/systemui/flags/FeatureFlagsClassicRelease;->mResources:Landroid/content/res/Resources;

    iget v0, v0, Lcom/android/systemui/flags/ResourceStringFlag;->resourceId:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_8
    instance-of v1, v0, Lcom/android/systemui/flags/StringFlag;

    if-eqz v1, :cond_9

    check-cast v0, Lcom/android/systemui/flags/StringFlag;

    iget-object v0, v0, Lcom/android/systemui/flags/StringFlag;->default:Ljava/lang/String;

    goto :goto_3

    :cond_9
    const-string v0, ""

    :goto_3
    iget-object v1, p0, Lcom/android/systemui/flags/FeatureFlagsClassicRelease;->mStringCache:Ljava/util/Map;

    iget-object v3, v4, Lcom/android/systemui/flags/StringFlag;->name:Ljava/lang/String;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v4, Lcom/android/systemui/flags/StringFlag;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": [length="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] \""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    :cond_a
    return-void
.end method

.method public final isEnabled(Lcom/android/systemui/flags/ReleasedFlag;)Z
    .locals 3

    iget-object v0, p1, Lcom/android/systemui/flags/ReleasedFlag;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/flags/FeatureFlagsClassicRelease;->mServerFlagReader:Lcom/android/systemui/flags/ServerFlagReader;

    iget-object p1, p1, Lcom/android/systemui/flags/ReleasedFlag;->namespace:Ljava/lang/String;

    check-cast v1, Lcom/android/systemui/flags/ServerFlagReaderImpl;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v1, v1, Lcom/android/systemui/flags/ServerFlagReaderImpl;->deviceConfig:Lcom/android/systemui/util/DeviceConfigProxy;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Lcom/android/systemui/util/DeviceConfigProxy;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/flags/FeatureFlagsClassicRelease;->isEnabledInternal(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public final isEnabled(Lcom/android/systemui/flags/ResourceBooleanFlag;)Z
    .locals 2

    iget-object v0, p1, Lcom/android/systemui/flags/ResourceBooleanFlag;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/flags/FeatureFlagsClassicRelease;->mResources:Landroid/content/res/Resources;

    iget p1, p1, Lcom/android/systemui/flags/ResourceBooleanFlag;->resourceId:I

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/flags/FeatureFlagsClassicRelease;->isEnabledInternal(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public final isEnabledInternal(Ljava/lang/String;Z)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/flags/FeatureFlagsClassicRelease;->mBooleanCache:Ljava/util/Map;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/flags/FeatureFlagsClassicRelease;->mBooleanCache:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/flags/FeatureFlagsClassicRelease;->mBooleanCache:Ljava/util/Map;

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method
