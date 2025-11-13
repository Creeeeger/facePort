.class public abstract Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessorKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final ART_URIS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "android.media.metadata.ART_URI"

    const-string v1, "android.media.metadata.DISPLAY_ICON_URI"

    const-string v2, "android.media.metadata.ALBUM_ART_URI"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessorKt;->ART_URIS:[Ljava/lang/String;

    return-void
.end method
