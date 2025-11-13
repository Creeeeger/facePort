.class public final Landroid/service/chooser/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Landroid/service/chooser/FeatureFlags; = null

.field public static final blacklist FLAG_CHOOSER_ALBUM_TEXT:Ljava/lang/String; = "android.service.chooser.chooser_album_text"

.field public static final blacklist FLAG_CHOOSER_PAYLOAD_TOGGLING:Ljava/lang/String; = "android.service.chooser.chooser_payload_toggling"

.field public static final blacklist FLAG_ENABLE_CHOOSER_RESULT:Ljava/lang/String; = "android.service.chooser.enable_chooser_result"

.field public static final blacklist FLAG_ENABLE_SHARESHEET_METADATA_EXTRA:Ljava/lang/String; = "android.service.chooser.enable_sharesheet_metadata_extra"

.field public static final blacklist FLAG_FIX_RESOLVER_MEMORY_LEAK:Ljava/lang/String; = "android.service.chooser.fix_resolver_memory_leak"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/service/chooser/FeatureFlagsImpl;

    invoke-direct {v0}, Landroid/service/chooser/FeatureFlagsImpl;-><init>()V

    sput-object v0, Landroid/service/chooser/Flags;->FEATURE_FLAGS:Landroid/service/chooser/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist chooserAlbumText()Z
    .locals 1

    sget-object v0, Landroid/service/chooser/Flags;->FEATURE_FLAGS:Landroid/service/chooser/FeatureFlags;

    invoke-interface {v0}, Landroid/service/chooser/FeatureFlags;->chooserAlbumText()Z

    move-result v0

    return v0
.end method

.method public static greylist chooserPayloadToggling()Z
    .locals 1

    sget-object v0, Landroid/service/chooser/Flags;->FEATURE_FLAGS:Landroid/service/chooser/FeatureFlags;

    invoke-interface {v0}, Landroid/service/chooser/FeatureFlags;->chooserPayloadToggling()Z

    move-result v0

    return v0
.end method

.method public static greylist enableChooserResult()Z
    .locals 1

    sget-object v0, Landroid/service/chooser/Flags;->FEATURE_FLAGS:Landroid/service/chooser/FeatureFlags;

    invoke-interface {v0}, Landroid/service/chooser/FeatureFlags;->enableChooserResult()Z

    move-result v0

    return v0
.end method

.method public static greylist enableSharesheetMetadataExtra()Z
    .locals 1

    sget-object v0, Landroid/service/chooser/Flags;->FEATURE_FLAGS:Landroid/service/chooser/FeatureFlags;

    invoke-interface {v0}, Landroid/service/chooser/FeatureFlags;->enableSharesheetMetadataExtra()Z

    move-result v0

    return v0
.end method

.method public static greylist fixResolverMemoryLeak()Z
    .locals 1

    sget-object v0, Landroid/service/chooser/Flags;->FEATURE_FLAGS:Landroid/service/chooser/FeatureFlags;

    invoke-interface {v0}, Landroid/service/chooser/FeatureFlags;->fixResolverMemoryLeak()Z

    move-result v0

    return v0
.end method
