.class public final Lokhttp3/internal/platform/ConscryptPlatform$DisabledHostnameVerifier;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lorg/conscrypt/ConscryptHostnameVerifier;


# static fields
.field public static final INSTANCE:Lokhttp3/internal/platform/ConscryptPlatform$DisabledHostnameVerifier;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lokhttp3/internal/platform/ConscryptPlatform$DisabledHostnameVerifier;

    invoke-direct {v0}, Lokhttp3/internal/platform/ConscryptPlatform$DisabledHostnameVerifier;-><init>()V

    sput-object v0, Lokhttp3/internal/platform/ConscryptPlatform$DisabledHostnameVerifier;->INSTANCE:Lokhttp3/internal/platform/ConscryptPlatform$DisabledHostnameVerifier;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
