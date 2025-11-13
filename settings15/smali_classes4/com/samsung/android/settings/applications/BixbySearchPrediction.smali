.class public abstract Lcom/samsung/android/settings/applications/BixbySearchPrediction;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final BIXBYSEARCH_PROVIDER_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "content"

    const-string v1, "com.samsung.android.scs.ai.search"

    const-string/jumbo v2, "v1"

    const-string v3, "application"

    invoke-static {v0, v1, v2, v3}, Landroidx/picker/features/search/InitialSearchUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/applications/BixbySearchPrediction;->BIXBYSEARCH_PROVIDER_URI:Landroid/net/Uri;

    return-void
.end method
