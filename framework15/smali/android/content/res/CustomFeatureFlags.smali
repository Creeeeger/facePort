.class public Landroid/content/res/CustomFeatureFlags;
.super Ljava/lang/Object;
.source "CustomFeatureFlags.java"

# interfaces
.implements Landroid/content/res/FeatureFlags;


# instance fields
.field private blacklist mGetValueImpl:Ljava/util/function/BiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Landroid/content/res/FeatureFlags;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist mReadOnlyFlagsSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Ljava/util/function/BiPredicate;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Landroid/content/res/FeatureFlags;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    const-string v6, "android.content.res.register_resource_paths"

    const-string v7, ""

    const-string v1, "android.content.res.asset_file_descriptor_frro"

    const-string v2, "android.content.res.default_locale"

    const-string v3, "android.content.res.font_scale_converter_public"

    const-string v4, "android.content.res.manifest_flagging"

    const-string v5, "android.content.res.nine_patch_frro"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/content/res/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    iput-object p1, p0, Landroid/content/res/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    return-void
.end method

.method private blacklist isOptimizationEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public greylist assetFileDescriptorFrro()Z
    .locals 2

    new-instance v0, Landroid/content/res/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/content/res/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "android.content.res.asset_file_descriptor_frro"

    invoke-virtual {p0, v1, v0}, Landroid/content/res/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist defaultLocale()Z
    .locals 2

    new-instance v0, Landroid/content/res/CustomFeatureFlags$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Landroid/content/res/CustomFeatureFlags$$ExternalSyntheticLambda2;-><init>()V

    const-string v1, "android.content.res.default_locale"

    invoke-virtual {p0, v1, v0}, Landroid/content/res/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist fontScaleConverterPublic()Z
    .locals 2

    new-instance v0, Landroid/content/res/CustomFeatureFlags$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Landroid/content/res/CustomFeatureFlags$$ExternalSyntheticLambda4;-><init>()V

    const-string v1, "android.content.res.font_scale_converter_public"

    invoke-virtual {p0, v1, v0}, Landroid/content/res/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist getFlagNames()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v4, "android.content.res.nine_patch_frro"

    const-string v5, "android.content.res.register_resource_paths"

    const-string v0, "android.content.res.asset_file_descriptor_frro"

    const-string v1, "android.content.res.default_locale"

    const-string v2, "android.content.res.font_scale_converter_public"

    const-string v3, "android.content.res.manifest_flagging"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Landroid/content/res/FeatureFlags;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Landroid/content/res/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist isFlagReadOnlyOptimized(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Landroid/content/res/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/content/res/CustomFeatureFlags;->isOptimizationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public greylist manifestFlagging()Z
    .locals 2

    new-instance v0, Landroid/content/res/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/content/res/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "android.content.res.manifest_flagging"

    invoke-virtual {p0, v1, v0}, Landroid/content/res/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist ninePatchFrro()Z
    .locals 2

    new-instance v0, Landroid/content/res/CustomFeatureFlags$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Landroid/content/res/CustomFeatureFlags$$ExternalSyntheticLambda3;-><init>()V

    const-string v1, "android.content.res.nine_patch_frro"

    invoke-virtual {p0, v1, v0}, Landroid/content/res/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist registerResourcePaths()Z
    .locals 2

    new-instance v0, Landroid/content/res/CustomFeatureFlags$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Landroid/content/res/CustomFeatureFlags$$ExternalSyntheticLambda5;-><init>()V

    const-string v1, "android.content.res.register_resource_paths"

    invoke-virtual {p0, v1, v0}, Landroid/content/res/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method
