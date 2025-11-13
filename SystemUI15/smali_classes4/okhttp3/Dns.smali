.class public interface abstract Lokhttp3/Dns;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final SYSTEM:Lokhttp3/Dns$Companion$DnsSystem;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lokhttp3/Dns$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lokhttp3/Dns$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v0, Lokhttp3/Dns$Companion$DnsSystem;

    invoke-direct {v0}, Lokhttp3/Dns$Companion$DnsSystem;-><init>()V

    sput-object v0, Lokhttp3/Dns;->SYSTEM:Lokhttp3/Dns$Companion$DnsSystem;

    return-void
.end method
