.class public Lcom/samsung/android/sume/core/controller/UniImgp;
.super Ljava/lang/Object;
.source "UniImgp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sume/core/controller/UniImgp$Option;,
        Lcom/samsung/android/sume/core/controller/UniImgp$OptionType;,
        Lcom/samsung/android/sume/core/controller/UniImgp$QualityMetricType;,
        Lcom/samsung/android/sume/core/controller/UniImgp$InterpolationType;
    }
.end annotation


# static fields
.field public static final blacklist INTER_AREA:I = 0x3

.field public static final blacklist INTER_CUBIC:I = 0x2

.field public static final blacklist INTER_LANCZOS4:I = 0x4

.field public static final blacklist INTER_LINEAR:I = 0x1

.field public static final blacklist INTER_LINEAR_EXACT:I = 0x5

.field public static final blacklist INTER_MAX:I = 0x7

.field public static final blacklist INTER_NEAREST:I = 0x0

.field public static final blacklist OPTION_IMGP_TYPE:I = 0x7da

.field public static final blacklist OPTION_IMGP_TYPE_NAME:I = 0x7db

.field public static final blacklist OPTION_LATEST_PLUGIN_ORDER:I = 0x7d1

.field public static final blacklist OPTION_PLUGIN_ORDER:I = 0x7d2

.field public static final blacklist OPTION_USE_PERSISTENT_FORMAT:I = 0x7d0

.field public static final blacklist PSNR:I = 0x0

.field public static final blacklist SSIM:I = 0x1

.field private static volatile blacklist globalStore:Lcom/samsung/android/sume/core/plugin/PluginStore;


# instance fields
.field private final blacklist factory:Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory;

.field private blacklist option:Lcom/samsung/android/sume/core/controller/UniImgp$Option;


# direct methods
.method private constructor blacklist <init>()V
    .locals 2

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sume/core/controller/UniImgp;->option:Lcom/samsung/android/sume/core/controller/UniImgp$Option;

    .line 156
    new-instance v0, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$Builder;

    invoke-direct {v0}, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$Builder;-><init>()V

    .line 157
    invoke-static {}, Lcom/samsung/android/sume/core/controller/UniImgp;->getGlobalStore()Lcom/samsung/android/sume/core/plugin/PluginStore;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$Builder;->addPluginStore(Lcom/samsung/android/sume/core/plugin/PluginStore;)Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$Builder;

    move-result-object v0

    .line 158
    invoke-virtual {v0}, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$Builder;->addDefaultCreators()Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$Builder;

    move-result-object v0

    .line 159
    invoke-virtual {v0}, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$Builder;->build()Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sume/core/controller/UniImgp;->factory:Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory;

    .line 160
    return-void
.end method

.method private constructor blacklist <init>(Lcom/samsung/android/sume/core/controller/UniImgp$Option;)V
    .locals 3
    .param p1, "option"    # Lcom/samsung/android/sume/core/controller/UniImgp$Option;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "option"
        }
    .end annotation

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sume/core/controller/UniImgp;->option:Lcom/samsung/android/sume/core/controller/UniImgp$Option;

    .line 163
    new-instance v0, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$Builder;

    invoke-direct {v0}, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$Builder;-><init>()V

    .line 164
    .local v0, "builder":Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$Builder;
    invoke-virtual {p1}, Lcom/samsung/android/sume/core/controller/UniImgp$Option;->getPluginStore()Lcom/samsung/android/sume/core/plugin/PluginStore;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/sume/core/controller/UniImgp;->getGlobalStore()Lcom/samsung/android/sume/core/plugin/PluginStore;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sume/core/plugin/PluginStore;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$Builder;->addPluginStore(Lcom/samsung/android/sume/core/plugin/PluginStore;)Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$Builder;

    move-result-object v1

    .line 165
    invoke-virtual {v1}, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$Builder;->addDefaultCreators()Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$Builder;

    .line 171
    iput-object p1, p0, Lcom/samsung/android/sume/core/controller/UniImgp;->option:Lcom/samsung/android/sume/core/controller/UniImgp$Option;

    .line 172
    invoke-virtual {v0}, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$Builder;->build()Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/sume/core/controller/UniImgp;->factory:Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory;

    .line 173
    return-void
.end method

.method private blacklist configDescriptorByOption(Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;)V
    .locals 1
    .param p1, "descriptor"    # Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "descriptor"
        }
    .end annotation

    .line 176
    iget-object v0, p0, Lcom/samsung/android/sume/core/controller/UniImgp;->option:Lcom/samsung/android/sume/core/controller/UniImgp$Option;

    if-eqz v0, :cond_0

    .line 177
    invoke-virtual {v0}, Lcom/samsung/android/sume/core/controller/UniImgp$Option;->isUsePersistentFormat()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;->setUsePersistentFormat(Z)V

    .line 178
    iget-object v0, p0, Lcom/samsung/android/sume/core/controller/UniImgp;->option:Lcom/samsung/android/sume/core/controller/UniImgp$Option;

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/controller/UniImgp$Option;->isLatestPluginsOrder()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;->setLatestPluginsOrder(Z)V

    .line 180
    :cond_0
    return-void
.end method

.method public static blacklist getGlobalStore()Lcom/samsung/android/sume/core/plugin/PluginStore;
    .locals 5

    .line 140
    sget-object v0, Lcom/samsung/android/sume/core/controller/UniImgp;->globalStore:Lcom/samsung/android/sume/core/plugin/PluginStore;

    if-nez v0, :cond_1

    .line 141
    const-class v0, Lcom/samsung/android/sume/core/plugin/PluginStore;

    monitor-enter v0

    .line 142
    :try_start_0
    sget-object v1, Lcom/samsung/android/sume/core/controller/UniImgp;->globalStore:Lcom/samsung/android/sume/core/plugin/PluginStore;

    if-nez v1, :cond_0

    .line 144
    invoke-static {}, Lcom/samsung/android/sume/core/plugin/PluginStore;->of()Lcom/samsung/android/sume/core/plugin/PluginStore;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/sume/core/controller/UniImgp;->globalStore:Lcom/samsung/android/sume/core/plugin/PluginStore;

    .line 145
    sget-object v1, Lcom/samsung/android/sume/core/controller/UniImgp;->globalStore:Lcom/samsung/android/sume/core/plugin/PluginStore;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/samsung/android/sume/core/plugin/Plugin;

    const/4 v3, 0x0

    new-instance v4, Lcom/samsung/android/sume/core/plugin/SimgpPlugin;

    invoke-direct {v4}, Lcom/samsung/android/sume/core/plugin/SimgpPlugin;-><init>()V

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/samsung/android/sume/core/plugin/PluginStore;->add([Lcom/samsung/android/sume/core/plugin/Plugin;)Lcom/samsung/android/sume/core/plugin/PluginStore;

    .line 147
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 149
    :cond_1
    :goto_0
    sget-object v0, Lcom/samsung/android/sume/core/controller/UniImgp;->globalStore:Lcom/samsung/android/sume/core/plugin/PluginStore;

    return-object v0
.end method

.method public static blacklist of()Lcom/samsung/android/sume/core/controller/UniImgp;
    .locals 1

    .line 190
    new-instance v0, Lcom/samsung/android/sume/core/controller/UniImgp;

    invoke-direct {v0}, Lcom/samsung/android/sume/core/controller/UniImgp;-><init>()V

    return-object v0
.end method

.method public static blacklist of(Lcom/samsung/android/sume/core/controller/UniImgp$Option;)Lcom/samsung/android/sume/core/controller/UniImgp;
    .locals 1
    .param p0, "option"    # Lcom/samsung/android/sume/core/controller/UniImgp$Option;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "option"
        }
    .end annotation

    .line 193
    new-instance v0, Lcom/samsung/android/sume/core/controller/UniImgp;

    invoke-direct {v0, p0}, Lcom/samsung/android/sume/core/controller/UniImgp;-><init>(Lcom/samsung/android/sume/core/controller/UniImgp$Option;)V

    return-object v0
.end method

.method public static blacklist ofCrop()Lcom/samsung/android/sume/core/functional/ImgProcessor;
    .locals 2

    .line 212
    new-instance v0, Lcom/samsung/android/sume/core/controller/UniImgp;

    invoke-direct {v0}, Lcom/samsung/android/sume/core/controller/UniImgp;-><init>()V

    sget-object v1, Lcom/samsung/android/sume/core/types/ImgpType;->CROP:Lcom/samsung/android/sume/core/types/ImgpType;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sume/core/controller/UniImgp;->newProcessor(Lcom/samsung/android/sume/core/types/ImgpType;)Lcom/samsung/android/sume/core/functional/ImgProcessor;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist ofCrop(Lcom/samsung/android/sume/core/controller/UniImgp$Option;)Lcom/samsung/android/sume/core/functional/ImgProcessor;
    .locals 2
    .param p0, "option"    # Lcom/samsung/android/sume/core/controller/UniImgp$Option;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "option"
        }
    .end annotation

    .line 213
    new-instance v0, Lcom/samsung/android/sume/core/controller/UniImgp;

    invoke-direct {v0, p0}, Lcom/samsung/android/sume/core/controller/UniImgp;-><init>(Lcom/samsung/android/sume/core/controller/UniImgp$Option;)V

    sget-object v1, Lcom/samsung/android/sume/core/types/ImgpType;->CROP:Lcom/samsung/android/sume/core/types/ImgpType;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sume/core/controller/UniImgp;->newProcessor(Lcom/samsung/android/sume/core/types/ImgpType;)Lcom/samsung/android/sume/core/functional/ImgProcessor;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist ofCvtColor()Lcom/samsung/android/sume/core/functional/ImgProcessor;
    .locals 2

    .line 203
    new-instance v0, Lcom/samsung/android/sume/core/controller/UniImgp;

    invoke-direct {v0}, Lcom/samsung/android/sume/core/controller/UniImgp;-><init>()V

    sget-object v1, Lcom/samsung/android/sume/core/types/ImgpType;->CVT_COLOR:Lcom/samsung/android/sume/core/types/ImgpType;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sume/core/controller/UniImgp;->newProcessor(Lcom/samsung/android/sume/core/types/ImgpType;)Lcom/samsung/android/sume/core/functional/ImgProcessor;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist ofCvtColor(Lcom/samsung/android/sume/core/controller/UniImgp$Option;)Lcom/samsung/android/sume/core/functional/ImgProcessor;
    .locals 2
    .param p0, "option"    # Lcom/samsung/android/sume/core/controller/UniImgp$Option;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "option"
        }
    .end annotation

    .line 204
    new-instance v0, Lcom/samsung/android/sume/core/controller/UniImgp;

    invoke-direct {v0, p0}, Lcom/samsung/android/sume/core/controller/UniImgp;-><init>(Lcom/samsung/android/sume/core/controller/UniImgp$Option;)V

    sget-object v1, Lcom/samsung/android/sume/core/types/ImgpType;->CVT_COLOR:Lcom/samsung/android/sume/core/types/ImgpType;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sume/core/controller/UniImgp;->newProcessor(Lcom/samsung/android/sume/core/types/ImgpType;)Lcom/samsung/android/sume/core/functional/ImgProcessor;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist ofCvtData()Lcom/samsung/android/sume/core/functional/ImgProcessor;
    .locals 2

    .line 206
    new-instance v0, Lcom/samsung/android/sume/core/controller/UniImgp;

    invoke-direct {v0}, Lcom/samsung/android/sume/core/controller/UniImgp;-><init>()V

    sget-object v1, Lcom/samsung/android/sume/core/types/ImgpType;->CVT_DATA:Lcom/samsung/android/sume/core/types/ImgpType;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sume/core/controller/UniImgp;->newProcessor(Lcom/samsung/android/sume/core/types/ImgpType;)Lcom/samsung/android/sume/core/functional/ImgProcessor;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist ofCvtData(Lcom/samsung/android/sume/core/controller/UniImgp$Option;)Lcom/samsung/android/sume/core/functional/ImgProcessor;
    .locals 2
    .param p0, "option"    # Lcom/samsung/android/sume/core/controller/UniImgp$Option;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "option"
        }
    .end annotation

    .line 207
    new-instance v0, Lcom/samsung/android/sume/core/controller/UniImgp;

    invoke-direct {v0, p0}, Lcom/samsung/android/sume/core/controller/UniImgp;-><init>(Lcom/samsung/android/sume/core/controller/UniImgp$Option;)V

    sget-object v1, Lcom/samsung/android/sume/core/types/ImgpType;->CVT_DATA:Lcom/samsung/android/sume/core/types/ImgpType;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sume/core/controller/UniImgp;->newProcessor(Lcom/samsung/android/sume/core/types/ImgpType;)Lcom/samsung/android/sume/core/functional/ImgProcessor;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist ofMerge()Lcom/samsung/android/sume/core/functional/ImgProcessor;
    .locals 2

    .line 218
    new-instance v0, Lcom/samsung/android/sume/core/controller/UniImgp;

    invoke-direct {v0}, Lcom/samsung/android/sume/core/controller/UniImgp;-><init>()V

    sget-object v1, Lcom/samsung/android/sume/core/types/ImgpType;->MERGE:Lcom/samsung/android/sume/core/types/ImgpType;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sume/core/controller/UniImgp;->newProcessor(Lcom/samsung/android/sume/core/types/ImgpType;)Lcom/samsung/android/sume/core/functional/ImgProcessor;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist ofMerge(Lcom/samsung/android/sume/core/controller/UniImgp$Option;)Lcom/samsung/android/sume/core/functional/ImgProcessor;
    .locals 2
    .param p0, "option"    # Lcom/samsung/android/sume/core/controller/UniImgp$Option;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "option"
        }
    .end annotation

    .line 219
    new-instance v0, Lcom/samsung/android/sume/core/controller/UniImgp;

    invoke-direct {v0, p0}, Lcom/samsung/android/sume/core/controller/UniImgp;-><init>(Lcom/samsung/android/sume/core/controller/UniImgp$Option;)V

    sget-object v1, Lcom/samsung/android/sume/core/types/ImgpType;->MERGE:Lcom/samsung/android/sume/core/types/ImgpType;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sume/core/controller/UniImgp;->newProcessor(Lcom/samsung/android/sume/core/types/ImgpType;)Lcom/samsung/android/sume/core/functional/ImgProcessor;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist ofQuality()Lcom/samsung/android/sume/core/functional/ImgProcessor;
    .locals 2

    .line 224
    new-instance v0, Lcom/samsung/android/sume/core/controller/UniImgp;

    invoke-direct {v0}, Lcom/samsung/android/sume/core/controller/UniImgp;-><init>()V

    sget-object v1, Lcom/samsung/android/sume/core/types/ImgpType;->QUALITY:Lcom/samsung/android/sume/core/types/ImgpType;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sume/core/controller/UniImgp;->newProcessor(Lcom/samsung/android/sume/core/types/ImgpType;)Lcom/samsung/android/sume/core/functional/ImgProcessor;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist ofQuality(Lcom/samsung/android/sume/core/controller/UniImgp$Option;)Lcom/samsung/android/sume/core/functional/ImgProcessor;
    .locals 2
    .param p0, "option"    # Lcom/samsung/android/sume/core/controller/UniImgp$Option;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "option"
        }
    .end annotation

    .line 225
    new-instance v0, Lcom/samsung/android/sume/core/controller/UniImgp;

    invoke-direct {v0, p0}, Lcom/samsung/android/sume/core/controller/UniImgp;-><init>(Lcom/samsung/android/sume/core/controller/UniImgp$Option;)V

    sget-object v1, Lcom/samsung/android/sume/core/types/ImgpType;->QUALITY:Lcom/samsung/android/sume/core/types/ImgpType;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sume/core/controller/UniImgp;->newProcessor(Lcom/samsung/android/sume/core/types/ImgpType;)Lcom/samsung/android/sume/core/functional/ImgProcessor;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist ofResize()Lcom/samsung/android/sume/core/functional/ImgProcessor;
    .locals 2

    .line 197
    new-instance v0, Lcom/samsung/android/sume/core/controller/UniImgp;

    invoke-direct {v0}, Lcom/samsung/android/sume/core/controller/UniImgp;-><init>()V

    sget-object v1, Lcom/samsung/android/sume/core/types/ImgpType;->RESIZE:Lcom/samsung/android/sume/core/types/ImgpType;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sume/core/controller/UniImgp;->newProcessor(Lcom/samsung/android/sume/core/types/ImgpType;)Lcom/samsung/android/sume/core/functional/ImgProcessor;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist ofResize(Lcom/samsung/android/sume/core/controller/UniImgp$Option;)Lcom/samsung/android/sume/core/functional/ImgProcessor;
    .locals 2
    .param p0, "option"    # Lcom/samsung/android/sume/core/controller/UniImgp$Option;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "option"
        }
    .end annotation

    .line 200
    new-instance v0, Lcom/samsung/android/sume/core/controller/UniImgp;

    invoke-direct {v0, p0}, Lcom/samsung/android/sume/core/controller/UniImgp;-><init>(Lcom/samsung/android/sume/core/controller/UniImgp$Option;)V

    sget-object v1, Lcom/samsung/android/sume/core/types/ImgpType;->RESIZE:Lcom/samsung/android/sume/core/types/ImgpType;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sume/core/controller/UniImgp;->newProcessor(Lcom/samsung/android/sume/core/types/ImgpType;)Lcom/samsung/android/sume/core/functional/ImgProcessor;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist ofRotate()Lcom/samsung/android/sume/core/functional/ImgProcessor;
    .locals 2

    .line 209
    new-instance v0, Lcom/samsung/android/sume/core/controller/UniImgp;

    invoke-direct {v0}, Lcom/samsung/android/sume/core/controller/UniImgp;-><init>()V

    sget-object v1, Lcom/samsung/android/sume/core/types/ImgpType;->ROTATE:Lcom/samsung/android/sume/core/types/ImgpType;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sume/core/controller/UniImgp;->newProcessor(Lcom/samsung/android/sume/core/types/ImgpType;)Lcom/samsung/android/sume/core/functional/ImgProcessor;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist ofRotate(Lcom/samsung/android/sume/core/controller/UniImgp$Option;)Lcom/samsung/android/sume/core/functional/ImgProcessor;
    .locals 2
    .param p0, "option"    # Lcom/samsung/android/sume/core/controller/UniImgp$Option;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "option"
        }
    .end annotation

    .line 210
    new-instance v0, Lcom/samsung/android/sume/core/controller/UniImgp;

    invoke-direct {v0, p0}, Lcom/samsung/android/sume/core/controller/UniImgp;-><init>(Lcom/samsung/android/sume/core/controller/UniImgp$Option;)V

    sget-object v1, Lcom/samsung/android/sume/core/types/ImgpType;->ROTATE:Lcom/samsung/android/sume/core/types/ImgpType;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sume/core/controller/UniImgp;->newProcessor(Lcom/samsung/android/sume/core/types/ImgpType;)Lcom/samsung/android/sume/core/functional/ImgProcessor;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist ofSplit()Lcom/samsung/android/sume/core/functional/ImgProcessor;
    .locals 2

    .line 215
    new-instance v0, Lcom/samsung/android/sume/core/controller/UniImgp;

    invoke-direct {v0}, Lcom/samsung/android/sume/core/controller/UniImgp;-><init>()V

    sget-object v1, Lcom/samsung/android/sume/core/types/ImgpType;->SPLIT:Lcom/samsung/android/sume/core/types/ImgpType;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sume/core/controller/UniImgp;->newProcessor(Lcom/samsung/android/sume/core/types/ImgpType;)Lcom/samsung/android/sume/core/functional/ImgProcessor;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist ofSplit(Lcom/samsung/android/sume/core/controller/UniImgp$Option;)Lcom/samsung/android/sume/core/functional/ImgProcessor;
    .locals 2
    .param p0, "option"    # Lcom/samsung/android/sume/core/controller/UniImgp$Option;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "option"
        }
    .end annotation

    .line 216
    new-instance v0, Lcom/samsung/android/sume/core/controller/UniImgp;

    invoke-direct {v0, p0}, Lcom/samsung/android/sume/core/controller/UniImgp;-><init>(Lcom/samsung/android/sume/core/controller/UniImgp$Option;)V

    sget-object v1, Lcom/samsung/android/sume/core/types/ImgpType;->SPLIT:Lcom/samsung/android/sume/core/types/ImgpType;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sume/core/controller/UniImgp;->newProcessor(Lcom/samsung/android/sume/core/types/ImgpType;)Lcom/samsung/android/sume/core/functional/ImgProcessor;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist ofUnified()Lcom/samsung/android/sume/core/functional/ImgProcessor;
    .locals 2

    .line 221
    new-instance v0, Lcom/samsung/android/sume/core/controller/UniImgp;

    invoke-direct {v0}, Lcom/samsung/android/sume/core/controller/UniImgp;-><init>()V

    sget-object v1, Lcom/samsung/android/sume/core/types/ImgpType;->ANY:Lcom/samsung/android/sume/core/types/ImgpType;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sume/core/controller/UniImgp;->newProcessor(Lcom/samsung/android/sume/core/types/ImgpType;)Lcom/samsung/android/sume/core/functional/ImgProcessor;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist ofUnified(Lcom/samsung/android/sume/core/controller/UniImgp$Option;)Lcom/samsung/android/sume/core/functional/ImgProcessor;
    .locals 2
    .param p0, "option"    # Lcom/samsung/android/sume/core/controller/UniImgp$Option;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "option"
        }
    .end annotation

    .line 222
    new-instance v0, Lcom/samsung/android/sume/core/controller/UniImgp;

    invoke-direct {v0, p0}, Lcom/samsung/android/sume/core/controller/UniImgp;-><init>(Lcom/samsung/android/sume/core/controller/UniImgp$Option;)V

    sget-object v1, Lcom/samsung/android/sume/core/types/ImgpType;->ANY:Lcom/samsung/android/sume/core/types/ImgpType;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sume/core/controller/UniImgp;->newProcessor(Lcom/samsung/android/sume/core/types/ImgpType;)Lcom/samsung/android/sume/core/functional/ImgProcessor;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public blacklist newProcessor(Lcom/samsung/android/sume/core/types/ImgpType;)Lcom/samsung/android/sume/core/functional/ImgProcessor;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/samsung/android/sume/core/types/ImgpType;",
            ">(TT;)",
            "Lcom/samsung/android/sume/core/functional/ImgProcessor;"
        }
    .end annotation

    .line 183
    .local p1, "type":Lcom/samsung/android/sume/core/types/ImgpType;, "TT;"
    new-instance v0, Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;

    invoke-direct {v0, p1}, Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;-><init>(Lcom/samsung/android/sume/core/types/ImgpType;)V

    .line 184
    .local v0, "descriptor":Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;
    invoke-direct {p0, v0}, Lcom/samsung/android/sume/core/controller/UniImgp;->configDescriptorByOption(Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;)V

    .line 185
    new-instance v1, Lcom/samsung/android/sume/core/controller/ImgpFilterAdapter;

    iget-object v2, p0, Lcom/samsung/android/sume/core/controller/UniImgp;->factory:Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory;

    invoke-virtual {v2, v0}, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory;->newFilter(Lcom/samsung/android/sume/core/descriptor/MFDescriptor;)Lcom/samsung/android/sume/core/filter/MediaFilter;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sume/core/filter/ImgpFilter;

    invoke-direct {v1, v2}, Lcom/samsung/android/sume/core/controller/ImgpFilterAdapter;-><init>(Lcom/samsung/android/sume/core/filter/ImgpFilter;)V

    return-object v1
.end method
