.class public interface abstract Lokhttp3/Authenticator;
.super Ljava/lang/Object;
.source "Authenticator.java"


# static fields
.field public static final NONE:Lokhttp3/Authenticator;


# direct methods
.method public static synthetic $r8$lambda$esJoevooYalsFzydukZpZJT5arU(Lokhttp3/Route;Lokhttp3/Response;)Lokhttp3/Request;
    .locals 0

    invoke-static {p0, p1}, Lokhttp3/Authenticator;->lambda$static$0(Lokhttp3/Route;Lokhttp3/Response;)Lokhttp3/Request;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 100
    new-instance v0, Lokhttp3/Authenticator$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lokhttp3/Authenticator$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lokhttp3/Authenticator;->NONE:Lokhttp3/Authenticator;

    return-void
.end method

.method private static synthetic lambda$static$0(Lokhttp3/Route;Lokhttp3/Response;)Lokhttp3/Request;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public abstract authenticate(Lokhttp3/Route;Lokhttp3/Response;)Lokhttp3/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
