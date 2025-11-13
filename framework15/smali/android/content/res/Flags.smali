.class public final Landroid/content/res/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Landroid/content/res/FeatureFlags; = null

.field public static final blacklist FLAG_ASSET_FILE_DESCRIPTOR_FRRO:Ljava/lang/String; = "android.content.res.asset_file_descriptor_frro"

.field public static final blacklist FLAG_DEFAULT_LOCALE:Ljava/lang/String; = "android.content.res.default_locale"

.field public static final blacklist FLAG_FONT_SCALE_CONVERTER_PUBLIC:Ljava/lang/String; = "android.content.res.font_scale_converter_public"

.field public static final blacklist FLAG_MANIFEST_FLAGGING:Ljava/lang/String; = "android.content.res.manifest_flagging"

.field public static final blacklist FLAG_NINE_PATCH_FRRO:Ljava/lang/String; = "android.content.res.nine_patch_frro"

.field public static final blacklist FLAG_REGISTER_RESOURCE_PATHS:Ljava/lang/String; = "android.content.res.register_resource_paths"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/content/res/FeatureFlagsImpl;

    invoke-direct {v0}, Landroid/content/res/FeatureFlagsImpl;-><init>()V

    sput-object v0, Landroid/content/res/Flags;->FEATURE_FLAGS:Landroid/content/res/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist assetFileDescriptorFrro()Z
    .locals 1

    sget-object v0, Landroid/content/res/Flags;->FEATURE_FLAGS:Landroid/content/res/FeatureFlags;

    invoke-interface {v0}, Landroid/content/res/FeatureFlags;->assetFileDescriptorFrro()Z

    move-result v0

    return v0
.end method

.method public static greylist defaultLocale()Z
    .locals 1

    sget-object v0, Landroid/content/res/Flags;->FEATURE_FLAGS:Landroid/content/res/FeatureFlags;

    invoke-interface {v0}, Landroid/content/res/FeatureFlags;->defaultLocale()Z

    move-result v0

    return v0
.end method

.method public static greylist fontScaleConverterPublic()Z
    .locals 1

    sget-object v0, Landroid/content/res/Flags;->FEATURE_FLAGS:Landroid/content/res/FeatureFlags;

    invoke-interface {v0}, Landroid/content/res/FeatureFlags;->fontScaleConverterPublic()Z

    move-result v0

    return v0
.end method

.method public static greylist manifestFlagging()Z
    .locals 1

    sget-object v0, Landroid/content/res/Flags;->FEATURE_FLAGS:Landroid/content/res/FeatureFlags;

    invoke-interface {v0}, Landroid/content/res/FeatureFlags;->manifestFlagging()Z

    move-result v0

    return v0
.end method

.method public static greylist ninePatchFrro()Z
    .locals 1

    sget-object v0, Landroid/content/res/Flags;->FEATURE_FLAGS:Landroid/content/res/FeatureFlags;

    invoke-interface {v0}, Landroid/content/res/FeatureFlags;->ninePatchFrro()Z

    move-result v0

    return v0
.end method

.method public static greylist registerResourcePaths()Z
    .locals 1

    sget-object v0, Landroid/content/res/Flags;->FEATURE_FLAGS:Landroid/content/res/FeatureFlags;

    invoke-interface {v0}, Landroid/content/res/FeatureFlags;->registerResourcePaths()Z

    move-result v0

    return v0
.end method
