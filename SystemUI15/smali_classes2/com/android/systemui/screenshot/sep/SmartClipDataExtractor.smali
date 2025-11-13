.class public final Lcom/android/systemui/screenshot/sep/SmartClipDataExtractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final mWhiteWebAppList:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "com.sec.android.app.sbrowser"

    const-string v1, "com.sec.android.app.sbrowser.beta"

    const-string v2, "com.android.chrome"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/screenshot/sep/SmartClipDataExtractor;->mWhiteWebAppList:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
