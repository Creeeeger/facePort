.class public interface abstract Lokhttp3/CookieJar;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final NO_COOKIES:Lokhttp3/CookieJar$Companion$NoCookies;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lokhttp3/CookieJar$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lokhttp3/CookieJar$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v0, Lokhttp3/CookieJar$Companion$NoCookies;

    invoke-direct {v0}, Lokhttp3/CookieJar$Companion$NoCookies;-><init>()V

    sput-object v0, Lokhttp3/CookieJar;->NO_COOKIES:Lokhttp3/CookieJar$Companion$NoCookies;

    return-void
.end method
