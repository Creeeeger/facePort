.class public final Lokhttp3/CipherSuite;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final Companion:Lokhttp3/CipherSuite$Companion;

.field public static final INSTANCES:Ljava/util/Map;

.field public static final ORDER_BY_NAME:Lokhttp3/CipherSuite$Companion$ORDER_BY_NAME$1;

.field public static final TLS_AES_128_GCM_SHA256:Lokhttp3/CipherSuite;

.field public static final TLS_AES_256_GCM_SHA384:Lokhttp3/CipherSuite;

.field public static final TLS_CHACHA20_POLY1305_SHA256:Lokhttp3/CipherSuite;

.field public static final TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256:Lokhttp3/CipherSuite;

.field public static final TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384:Lokhttp3/CipherSuite;

.field public static final TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256:Lokhttp3/CipherSuite;

.field public static final TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA:Lokhttp3/CipherSuite;

.field public static final TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256:Lokhttp3/CipherSuite;

.field public static final TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA:Lokhttp3/CipherSuite;

.field public static final TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384:Lokhttp3/CipherSuite;

.field public static final TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256:Lokhttp3/CipherSuite;

.field public static final TLS_RSA_WITH_3DES_EDE_CBC_SHA:Lokhttp3/CipherSuite;

.field public static final TLS_RSA_WITH_AES_128_CBC_SHA:Lokhttp3/CipherSuite;

.field public static final TLS_RSA_WITH_AES_128_GCM_SHA256:Lokhttp3/CipherSuite;

.field public static final TLS_RSA_WITH_AES_256_CBC_SHA:Lokhttp3/CipherSuite;

.field public static final TLS_RSA_WITH_AES_256_GCM_SHA384:Lokhttp3/CipherSuite;


# instance fields
.field public final javaName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lokhttp3/CipherSuite$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lokhttp3/CipherSuite$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lokhttp3/CipherSuite;->Companion:Lokhttp3/CipherSuite$Companion;

    new-instance v1, Lokhttp3/CipherSuite$Companion$ORDER_BY_NAME$1;

    invoke-direct {v1}, Lokhttp3/CipherSuite$Companion$ORDER_BY_NAME$1;-><init>()V

    sput-object v1, Lokhttp3/CipherSuite;->ORDER_BY_NAME:Lokhttp3/CipherSuite$Companion$ORDER_BY_NAME$1;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v1, Lokhttp3/CipherSuite;->INSTANCES:Ljava/util/Map;

    const-string v1, "SSL_RSA_WITH_NULL_MD5"

    invoke-static {v0, v1}, Lokhttp3/CipherSuite$Companion;->access$init(Lokhttp3/CipherSuite$Companion;Ljava/lang/String;)Lokhttp3/CipherSuite;

    const-string v1, "SSL_RSA_WITH_NULL_SHA"

    invoke-static {v0, v1}, Lokhttp3/CipherSuite$Companion;->access$init(Lokhttp3/CipherSuite$Companion;Ljava/lang/String;)Lokhttp3/CipherSuite;

    const-string v1, "SSL_RSA_EXPORT_WITH_RC4_40_MD5"

    invoke-static {v0, v1}, Lokhttp3/CipherSuite$Companion;->access$init(Lokhttp3/CipherSuite$Companion;Ljava/lang/String;)Lokhttp3/CipherSuite;

    const-string v1, "SSL_RSA_WITH_RC4_128_MD5"

    invoke-static {v0, v1}, Lokhttp3/CipherSuite$Companion;->access$init(Lokhttp3/CipherSuite$Companion;Ljava/lang/String;)Lokhttp3/CipherSuite;

    const-string v1, "SSL_RSA_WITH_RC4_128_SHA"

    invoke-static {v0, v1}, Lokhttp3/CipherSuite$Companion;->access$init(Lokhttp3/CipherSuite$Companion;Ljava/lang/String;)Lokhttp3/CipherSuite;

    const-string v1, "SSL_RSA_EXPORT_WITH_DES40_CBC_SHA"

    invoke-static {v0, v1}, Lokhttp3/CipherSuite$Companion;->access$init(Lokhttp3/CipherSuite$Companion;Ljava/lang/String;)Lokhttp3/CipherSuite;

    const-string v1, "SSL_RSA_WITH_DES_CBC_SHA"

    invoke-static {v0, v1}, Lokhttp3/CipherSuite$Companion;->access$init(Lokhttp3/CipherSuite$Companion;Ljava/lang/String;)Lokhttp3/CipherSuite;

    const-string v1, "SSL_RSA_WITH_3DES_EDE_CBC_SHA"

    invoke-static {v0, v1}, Lokhttp3/CipherSuite$Companion;->access$init(Lokhttp3/CipherSuite$Companion;Ljava/lang/String;)Lokhttp3/CipherSuite;

    move-result-object v1

    sput-object v1, Lokhttp3/CipherSuite;->TLS_RSA_WITH_3DES_EDE_CBC_SHA:Lokhttp3/CipherSuite;

    const-string v1, "SSL_DHE_DSS_EXPORT_WITH_DES40_CBC_SHA"

    invoke-static {v0, v1}, Lokhttp3/CipherSuite$Companion;->access$init(Lokhttp3/CipherSuite$Companion;Ljava/lang/String;)Lokhttp3/CipherSuite;

    const-string v1, "SSL_DHE_DSS_WITH_DES_CBC_SHA"

    invoke-static {v0, v1}, Lokhttp3/CipherSuite$Companion;->access$init(Lokhttp3/CipherSuite$Companion;Ljava/lang/String;)Lokhttp3/CipherSuite;

    const-string v1, "SSL_DHE_DSS_WITH_3DES_EDE_CBC_SHA"

    invoke-static {v0, v1}, Lokhttp3/CipherSuite$Companion;->access$init(Lokhttp3/CipherSuite$Companion;Ljava/lang/String;)Lokhttp3/CipherSuite;

    const-string v1, "SSL_DHE_RSA_EXPORT_WITH_DES40_CBC_SHA"

    invoke-static {v0, v1}, Lokhttp3/CipherSuite$Companion;->access$init(Lokhttp3/CipherSuite$Companion;Ljava/lang/String;)Lokhttp3/CipherSuite;

    const-string v1, "SSL_DHE_RSA_WITH_DES_CBC_SHA"

    invoke-static {v0, v1}, Lokhttp3/CipherSuite$Companion;->access$init(Lokhttp3/CipherSuite$Companion;Ljava/lang/String;)Lokhttp3/CipherSuite;

    const-string v1, "SSL_DHE_RSA_WITH_3DES_EDE_CBC_SHA"

    invoke-static {v0, v1}, Lokhttp3/CipherSuite$Companion;->access$init(Lokhttp3/CipherSuite$Companion;Ljava/lang/String;)Lokhttp3/CipherSuite;

    const-string v1, "SSL_DH_anon_EXPORT_WITH_RC4_40_MD5"

    invoke-static {v0, v1}, Lokhttp3/CipherSuite$Companion;->access$init(Lokhttp3/CipherSuite$Companion;Ljava/lang/String;)Lokhttp3/CipherSuite;

    const-string v1, "SSL_DH_anon_WITH_RC4_128_MD5"

    invoke-static {v0, v1}, Lokhttp3/CipherSuite$Companion;->access$init(Lokhttp3/CipherSuite$Companion;Ljava/lang/String;)Lokhttp3/CipherSuite;

    const-string v1, "SSL_DH_anon_EXPORT_WITH_DES40_CBC_SHA"

    invoke-static {v0, v1}, Lokhttp3/CipherSuite$Companion;->access$init(Lokhttp3/CipherSuite$Companion;Ljava/lang/String;)Lokhttp3/CipherSuite;

    const-string v1, "SSL_DH_anon_WITH_DES_CBC_SHA"

    invoke-static {v0, v1}, Lokhttp3/CipherSuite$Companion;->access$init(Lokhttp3/CipherSuite$Companion;Ljava/lang/String;)Lokhttp3/CipherSuite;

    const-string v1, "SSL_DH_anon_WITH_3DES_EDE_CBC_SHA"

    invoke-static {v0, v1}, Lokhttp3/CipherSuite$Companion;->access$init(Lokhttp3/CipherSuite$Companion;Ljava/lang/String;)Lokhttp3/CipherSuite;

    const-string v1, "TLS_KRB5_WITH_DES_CBC_SHA"

    invoke-static {v0, v1}, Lokhttp3/CipherSuite$Companion;->access$init(Lokhttp3/CipherSuite$Companion;Ljava/lang/String;)Lokhttp3/CipherSuite;

    const-string v1, "TLS_KRB5_WITH_3DES_EDE_CBC_SHA"

    invoke-static {v0, v1}, Lokhttp3/CipherSuite$Companion;->access$init(Lokhttp3/CipherSuite$Companion;Ljava/lang/String;)Lokhttp3/CipherSuite;

    const-string v1, "TLS_KRB5_WITH_RC4_128_SHA"

    invoke-static {v0, v1}, Lokhttp3/CipherSuite$Companion;->access$init(Lokhttp3/CipherSuite$Companion;Ljava/lang/String;)Lokhttp3/CipherSuite;

    const-string v1, "TLS_KRB5_WITH_DES_CBC_MD5"

    invoke-static {v0, v1}, Lokhttp3/CipherSuite$Companion;->access$init(Lokhttp3/CipherSuite$Companion;Ljava/lang/String;)Lokhttp3/CipherSuite;

    const-string v1, "TLS_KRB5_WITH_3DES_EDE_CBC_MD5"

    invoke-static {v0, v1}, Lokhttp3/CipherSuite$Companion;->access$init(Lokhttp3/CipherSuite$Companion;Ljava/lang/String;)Lokhttp3/CipherSuite;

    const-string v1, "TLS_KRB5_WITH_RC4_128_MD5"

    invoke-static {v0, v1}, Lokhttp3/CipherSuite$Companion;->access$init(Lokhttp3/CipherSuite$Companion;Ljava/lang/String;)Lokhttp3/CipherSuite;

    const-string v1, "TLS_KRB5_EXPORT_WITH_DES_CBC_40_SHA"

    invoke-static {v0, v1}, Lokhttp3/CipherSuite$Companion;->access$init(Lokhttp3/CipherSuite$Companion;Ljava/lang/String;)Lokhttp3/CipherSuite;

    const-string v1, "TLS_KRB5_EXPORT_WITH_RC4_40_SHA"

    invoke-static {v0, v1}, Lokhttp3/CipherSuite$Companion;->access$init(Lokhttp3/CipherSuite$Companion;Ljava/lang/String;)Lokhttp3/CipherSuite;

    const-string v1, "TLS_KRB5_EXPORT_WITH_DES_CBC_40_MD5"

    invoke-static {v0, v1}, Lokhttp3/CipherSuite$Companion;->access$init(Lokhttp3/CipherSuite$Companion;Ljava/lang/String;)Lokhttp3/CipherSuite;

    const-string v1, "TLS_KRB5_EXPORT_WITH_RC4_40_MD5"

    invoke-static {v0, v1}, Lokhttp3/CipherSuite$Companion;->access$init(Lokhttp3/CipherSuite$Companion;Ljava/lang/String;)Lokhttp3/CipherSuite;

    const-string v1, "TLS_RSA_WITH_AES_128_CBC_SHA"

    invoke-static {v0, v1}, Lokhttp3/CipherSuite$Companion;->access$init(Lokhttp3/CipherSuite$Companion;Ljava/lang/String;)Lokhttp3/CipherSuite;

    move-result-object v1

    sput-object v1, Lokhttp3/CipherSuite;->TLS_RSA_WITH_AES_128_CBC_SHA:Lokhttp3/CipherSuite;

    const-string v1, "TLS_DHE_DSS_WITH_AES_128_CBC_SHA"

    invoke-static {v0, v1}, Lokhttp3/CipherSuite$Companion;->access$init(Lokhttp3/CipherSuite$Companion;Ljava/lang/String;)Lokhttp3/CipherSuite;

    const-string v1, "TLS_DHE_RSA_WITH_AES_128_CBC_SHA"

    invoke-static {v0, v1}, Lokhttp3/CipherSuite$Companion;->access$init(Lokhttp3/CipherSuite$Companion;Ljava/lang/String;)Lokhttp3/CipherSuite;

    const-string v1, "TLS_DH_anon_WITH_AES_128_CBC_SHA"

    invoke-static {v0, v1}, Lokhttp3/CipherSuite$Companion;->access$init(Lokhttp3/CipherSuite$Companion;Ljava/lang/String;)Lokhttp3/CipherSuite;

    const-string v1, "TLS_RSA_WITH_AES_256_CBC_SHA"

    invoke-static {v0, v1}, Lokhttp3/CipherSuite$Companion;->access$init(Lokhttp3/CipherSuite$Companion;Ljava/lang/String;)Lokhttp3/CipherSuite;

    move-result-object v1

    sput-object v1, Lokhttp3/CipherSuite;->TLS_RSA_WITH_AES_256_CBC_SHA:Lokhttp3/CipherSuite;

    const-string v1, "TLS_DHE_DSS_WITH_AES_256_CBC_SHA"

    invoke-static {v0, v1}, Lokhttp3/CipherSuite$Companion;->access$init(Lokhttp3/CipherSuite$Companion;Ljava/lang/String;)Lokhttp3/CipherSuite;

    const-string v1, "TLS_DHE_RSA_WITH_AES_256_CBC_SHA"

    invoke-static {v0, v1}, Lokhttp3/CipherSuite$Companion;->access$init(Lokhttp3/CipherSuite$Companion;Ljava/lang/String;)Lokhttp3/CipherSuite;

    const-string v1, "TLS_DH_anon_WITH_AES_256_CBC_SHA"

    invoke-static {v0, v1}, Lokhttp3/CipherSuite$Companion;->access$init(Lokhttp3/CipherSuite$Companion;Ljava/lang/String;)Lokhttp3/CipherSuite;

    const-string v1, "TLS_RSA_WITH_NULL_SHA256"

    invoke-static {v0, v1}, Lokhttp3/CipherSuite$Companion;->access$init(Lokhttp3/CipherSuite$Companion;Ljava/lang/String;)Lokhttp3/CipherSuite;

    const-string v1, "TLS_RSA_WITH_AES_128_CBC_SHA256"

    invoke-static {v0, v1}, Lokhttp3/CipherSuite$Companion;->access$init(Lokhttp3/CipherSuite$Companion;Ljava/lang/String;)Lokhttp3/CipherSuite;

    const-string v1, "TLS_RSA_WITH_AES_256_CBC_SHA256"

    invoke-static {v0, v1}, Lokhttp3/CipherSuite$Companion;->access$init(Lokhttp3/CipherSuite$Companion;Ljava/lang/String;)Lokhttp3/CipherSuite;

    const-string v1, "TLS_DHE_DSS_WITH_AES_128_CBC_SHA256"

    invoke-static {v0, v1}, Lokhttp3/CipherSuite$Companion;->access$init(Lokhttp3/CipherSuite$Companion;Ljava/lang/String;)Lokhttp3/CipherSuite;

    const-string v1, "TLS_RSA_WITH_CAMELLIA_128_CBC_SHA"

    invoke-static {v0, v1}, Lokhttp3/CipherSuite$Companion;->access$init(Lokhttp3/CipherSuite$Companion;Ljava/lang/String;)Lokhttp3/CipherSuite;

    const-string v1, "TLS_DHE_DSS_WITH_CAMELLIA_128_CBC_SHA"

    invoke-static {v0, v1}, Lokhttp3/CipherSuite$Companion;->access$init(Lokhttp3/CipherSuite$Companion;Ljava/lang/String;)Lokhttp3/CipherSuite;

    const-string v1, "TLS_DHE_RSA_WITH_CAMELLIA_128_CBC_SHA"

    invoke-static {v0, v1}, Lokhttp3/CipherSuite$Companion;->access$init(Lokhttp3/CipherSuite$Companion;Ljava/lang/String;)Lokhttp3/CipherSuite;

    const-string v1, "TLS_DHE_RSA_WITH_AES_128_CBC_SHA256"

    invoke-static {v0, v1}, Lokhttp3/CipherSuite$Companion;->access$init(Lokhttp3/CipherSuite$Companion;Ljava/lang/String;)Lokhttp3/CipherSuite;

    const-string v1, "TLS_DHE_DSS_WITH_AES_256_CBC_SHA256"

    invoke-static {v0, v1}, Lokhttp3/CipherSuite$Companion;->access$init(Lokhttp3/CipherSuite$Companion;Ljava/lang/String;)Lokhttp3/CipherSuite;

    const-string v1, "TLS_DHE_RSA_WITH_AES_256_CBC_SHA256"

    invoke-static {v0, v1}, Lokhttp3/CipherSuite$Companion;->access$init(Lokhttp3/CipherSuite$Companion;Ljava/lang/String;)Lokhttp3/CipherSuite;

    const-string v1, "TLS_DH_anon_WITH_AES_128_CBC_SHA256"

    invoke-static {v0, v1}, Lokhttp3/CipherSuite$Companion;->access$init(Lokhttp3/CipherSuite$Companion;Ljava/lang/String;)Lokhttp3/CipherSuite;

    const-string v1, "TLS_DH_anon_WITH_AES_256_CBC_SHA256"

    invoke-static {v0, v1}, Lokhttp3/CipherSuite$Companion;->access$init(Lokhttp3/CipherSuite$Companion;Ljava/lang/String;)Lokhttp3/CipherSuite;

    const-string v1, "TLS_RSA_WITH_CAMELLIA_256_CBC_SHA"

    invoke-static {v0, v1}, Lokhttp3/CipherSuite$Companion;->access$init(Lokhttp3/CipherSuite$Companion;Ljava/lang/String;)Lokhttp3/CipherSuite;

    const-string v1, "TLS_DHE_DSS_WITH_CAMELLIA_256_CBC_SHA"

    invoke-static {v0, v1}, Lokhttp3/CipherSuite$Companion;->access$init(Lokhttp3/CipherSuite$Companion;Ljava/lang/String;)Lokhttp3/CipherSuite;

    const-string v1, "TLS_DHE_RSA_WITH_CAMELLIA_256_CBC_SHA"

    invoke-static {v0, v1}, Lokhttp3/CipherSuite$Companion;->access$init(Lokhttp3/CipherSuite$Companion;Ljava/lang/String;)Lokhttp3/CipherSuite;

    const-string v1, "TLS_PSK_WITH_RC4_128_SHA"

    invoke-static {v0, v1}, Lokhttp3/CipherSuite$Companion;->access$init(Lokhttp3/CipherSuite$Companion;Ljava/lang/String;)Lokhttp3/CipherSuite;

    const-string v1, "TLS_PSK_WITH_3DES_EDE_CBC_SHA"

    invoke-static {v0, v1}, Lokhttp3/CipherSuite$Companion;->access$init(Lokhttp3/CipherSuite$Companion;Ljava/lang/String;)Lokhttp3/CipherSuite;

    const-string v1, "TLS_PSK_WITH_AES_128_CBC_SHA"

    invoke-static {v0, v1}, Lokhttp3/CipherSuite$Companion;->access$init(Lokhttp3/CipherSuite$Companion;Ljava/lang/String;)Lokhttp3/CipherSuite;

    const-string v1, "TLS_PSK_WITH_AES_256_CBC_SHA"

    invoke-static {v0, v1}, Lokhttp3/CipherSuite$Companion;->access$init(Lokhttp3/CipherSuite$Companion;Ljava/lang/String;)Lokhttp3/CipherSuite;

    const-string v1, "TLS_RSA_WITH_SEED_CBC_SHA"

    invoke-static {v0, v1}, Lokhttp3/CipherSuite$Companion;->access$init(Lokhttp3/CipherSuite$Companion;Ljava/lang/String;)Lokhttp3/CipherSuite;

    const-string v1, "TLS_RSA_WITH_AES_128_GCM_SHA256"

    invoke-static {v0, v1}, Lokhttp3/CipherSuite$Companion;->access$init(Lokhttp3/CipherSuite$Companion;Ljava/lang/String;)Lokhttp3/CipherSuite;

    move-result-object v1

    sput-object v1, Lokhttp3/CipherSuite;->TLS_RSA_WITH_AES_128_GCM_SHA256:Lokhttp3/CipherSuite;

    const-string v1, "TLS_RSA_WITH_AES_256_GCM_SHA384"

    invoke-static {v0, v1}, Lokhttp3/CipherSuite$Companion;->access$init(Lokhttp3/CipherSuite$Companion;Ljava/lang/String;)Lokhttp3/CipherSuite;

    move-result-object v1

    sput-object v1, Lokhttp3/CipherSuite;->TLS_RSA_WITH_AES_256_GCM_SHA384:Lokhttp3/CipherSuite;

    const-string v1, "TLS_DHE_RSA_WITH_AES_128_GCM_SHA256"

    invoke-static {v0, v1}, Lokhttp3/CipherSuite$Companion;->access$init(Lokhttp3/CipherSuite$Companion;Ljava/lang/String;)Lokhttp3/CipherSuite;

    const-string v1, "TLS_DHE_RSA_WITH_AES_256_GCM_SHA384"

    invoke-static {v0, v1}, Lokhttp3/CipherSuite$Companion;->access$init(Lokhttp3/CipherSuite$Companion;Ljava/lang/String;)Lokhttp3/CipherSuite;

    const-string v1, "TLS_DHE_DSS_WITH_AES_128_GCM_SHA256"

    invoke-static {v0, v1}, Lokhttp3/CipherSuite$Companion;->access$init(Lokhttp3/CipherSuite$Companion;Ljava/lang/String;)Lokhttp3/CipherSuite;

    const-string v1, "TLS_DHE_DSS_WITH_AES_256_GCM_SHA384"

    invoke-static {v0, v1}, Lokhttp3/CipherSuite$Companion;->access$init(Lokhttp3/CipherSuite$Companion;Ljava/lang/String;)Lokhttp3/CipherSuite;

    const-string v1, "TLS_DH_anon_WITH_AES_128_GCM_SHA256"

    invoke-static {v0, v1}, Lokhttp3/CipherSuite$Companion;->access$init(Lokhttp3/CipherSuite$Companion;Ljava/lang/String;)Lokhttp3/CipherSuite;

    const-string v1, "TLS_DH_anon_WITH_AES_256_GCM_SHA384"

    invoke-static {v0, v1}, Lokhttp3/CipherSuite$Companion;->access$init(Lokhttp3/CipherSuite$Companion;Ljava/lang/String;)Lokhttp3/CipherSuite;

    const-string v1, "TLS_EMPTY_RENEGOTIATION_INFO_SCSV"

    invoke-static {v0, v1}, Lokhttp3/CipherSuite$Companion;->access$init(Lokhttp3/CipherSuite$Companion;Ljava/lang/String;)Lokhttp3/CipherSuite;

    const-string v1, "TLS_FALLBACK_SCSV"

    invoke-static {v0, v1}, Lokhttp3/CipherSuite$Companion;->access$init(Lokhttp3/CipherSuite$Companion;Ljava/lang/String;)Lokhttp3/CipherSuite;

    const-string v1, "TLS_ECDH_ECDSA_WITH_NULL_SHA"

    invoke-static {v0, v1}, Lokhttp3/CipherSuite$Companion;->access$init(Lokhttp3/CipherSuite$Companion;Ljava/lang/String;)Lokhttp3/CipherSuite;

    const-string v1, "TLS_ECDH_ECDSA_WITH_RC4_128_SHA"

    invoke-static {v0, v1}, Lokhttp3/CipherSuite$Companion;->access$init(Lokhttp3/CipherSuite$Companion;Ljava/lang/String;)Lokhttp3/CipherSuite;

    const-string v1, "TLS_ECDH_ECDSA_WITH_3DES_EDE_CBC_SHA"

    invoke-static {v0, v1}, Lokhttp3/CipherSuite$Companion;->access$init(Lokhttp3/CipherSuite$Companion;Ljava/lang/String;)Lokhttp3/CipherSuite;

    const-string v1, "TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA"

    invoke-static {v0, v1}, Lokhttp3/CipherSuite$Companion;->access$init(Lokhttp3/CipherSuite$Companion;Ljava/lang/String;)Lokhttp3/CipherSuite;

    const-string v1, "TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA"

    invoke-static {v0, v1}, Lokhttp3/CipherSuite$Companion;->access$init(Lokhttp3/CipherSuite$Companion;Ljava/lang/String;)Lokhttp3/CipherSuite;

    const-string v1, "TLS_ECDHE_ECDSA_WITH_NULL_SHA"

    invoke-static {v0, v1}, Lokhttp3/CipherSuite$Companion;->access$init(Lokhttp3/CipherSuite$Companion;Ljava/lang/String;)Lokhttp3/CipherSuite;

    const-string v1, "TLS_ECDHE_ECDSA_WITH_RC4_128_SHA"

    invoke-static {v0, v1}, Lokhttp3/CipherSuite$Companion;->access$init(Lokhttp3/CipherSuite$Companion;Ljava/lang/String;)Lokhttp3/CipherSuite;

    const-string v1, "TLS_ECDHE_ECDSA_WITH_3DES_EDE_CBC_SHA"

    invoke-static {v0, v1}, Lokhttp3/CipherSuite$Companion;->access$init(Lokhttp3/CipherSuite$Companion;Ljava/lang/String;)Lokhttp3/CipherSuite;

    const-string v1, "TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA"

    invoke-static {v0, v1}, Lokhttp3/CipherSuite$Companion;->access$init(Lokhttp3/CipherSuite$Companion;Ljava/lang/String;)Lokhttp3/CipherSuite;

    const-string v1, "TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA"

    invoke-static {v0, v1}, Lokhttp3/CipherSuite$Companion;->access$init(Lokhttp3/CipherSuite$Companion;Ljava/lang/String;)Lokhttp3/CipherSuite;

    const-string v1, "TLS_ECDH_RSA_WITH_NULL_SHA"

    invoke-static {v0, v1}, Lokhttp3/CipherSuite$Companion;->access$init(Lokhttp3/CipherSuite$Companion;Ljava/lang/String;)Lokhttp3/CipherSuite;

    const-string v1, "TLS_ECDH_RSA_WITH_RC4_128_SHA"

    invoke-static {v0, v1}, Lokhttp3/CipherSuite$Companion;->access$init(Lokhttp3/CipherSuite$Companion;Ljava/lang/String;)Lokhttp3/CipherSuite;

    const-string v1, "TLS_ECDH_RSA_WITH_3DES_EDE_CBC_SHA"

    invoke-static {v0, v1}, Lokhttp3/CipherSuite$Companion;->access$init(Lokhttp3/CipherSuite$Companion;Ljava/lang/String;)Lokhttp3/CipherSuite;

    const-string v1, "TLS_ECDH_RSA_WITH_AES_128_CBC_SHA"

    invoke-static {v0, v1}, Lokhttp3/CipherSuite$Companion;->access$init(Lokhttp3/CipherSuite$Companion;Ljava/lang/String;)Lokhttp3/CipherSuite;

    const-string v1, "TLS_ECDH_RSA_WITH_AES_256_CBC_SHA"

    invoke-static {v0, v1}, Lokhttp3/CipherSuite$Companion;->access$init(Lokhttp3/CipherSuite$Companion;Ljava/lang/String;)Lokhttp3/CipherSuite;

    const-string v1, "TLS_ECDHE_RSA_WITH_NULL_SHA"

    invoke-static {v0, v1}, Lokhttp3/CipherSuite$Companion;->access$init(Lokhttp3/CipherSuite$Companion;Ljava/lang/String;)Lokhttp3/CipherSuite;

    const-string v1, "TLS_ECDHE_RSA_WITH_RC4_128_SHA"

    invoke-static {v0, v1}, Lokhttp3/CipherSuite$Companion;->access$init(Lokhttp3/CipherSuite$Companion;Ljava/lang/String;)Lokhttp3/CipherSuite;

    const-string v1, "TLS_ECDHE_RSA_WITH_3DES_EDE_CBC_SHA"

    invoke-static {v0, v1}, Lokhttp3/CipherSuite$Companion;->access$init(Lokhttp3/CipherSuite$Companion;Ljava/lang/String;)Lokhttp3/CipherSuite;

    const-string v1, "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA"

    invoke-static {v0, v1}, Lokhttp3/CipherSuite$Companion;->access$init(Lokhttp3/CipherSuite$Companion;Ljava/lang/String;)Lokhttp3/CipherSuite;

    move-result-object v1

    sput-object v1, Lokhttp3/CipherSuite;->TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA:Lokhttp3/CipherSuite;

    const-string v1, "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA"

    invoke-static {v0, v1}, Lokhttp3/CipherSuite$Companion;->access$init(Lokhttp3/CipherSuite$Companion;Ljava/lang/String;)Lokhttp3/CipherSuite;

    move-result-object v1

    sput-object v1, Lokhttp3/CipherSuite;->TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA:Lokhttp3/CipherSuite;

    const-string v1, "TLS_ECDH_anon_WITH_NULL_SHA"

    invoke-static {v0, v1}, Lokhttp3/CipherSuite$Companion;->access$init(Lokhttp3/CipherSuite$Companion;Ljava/lang/String;)Lokhttp3/CipherSuite;

    const-string v1, "TLS_ECDH_anon_WITH_RC4_128_SHA"

    invoke-static {v0, v1}, Lokhttp3/CipherSuite$Companion;->access$init(Lokhttp3/CipherSuite$Companion;Ljava/lang/String;)Lokhttp3/CipherSuite;

    const-string v1, "TLS_ECDH_anon_WITH_3DES_EDE_CBC_SHA"

    invoke-static {v0, v1}, Lokhttp3/CipherSuite$Companion;->access$init(Lokhttp3/CipherSuite$Companion;Ljava/lang/String;)Lokhttp3/CipherSuite;

    const-string v1, "TLS_ECDH_anon_WITH_AES_128_CBC_SHA"

    invoke-static {v0, v1}, Lokhttp3/CipherSuite$Companion;->access$init(Lokhttp3/CipherSuite$Companion;Ljava/lang/String;)Lokhttp3/CipherSuite;

    const-string v1, "TLS_ECDH_anon_WITH_AES_256_CBC_SHA"

    invoke-static {v0, v1}, Lokhttp3/CipherSuite$Companion;->access$init(Lokhttp3/CipherSuite$Companion;Ljava/lang/String;)Lokhttp3/CipherSuite;

    const-string v1, "TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256"

    invoke-static {v0, v1}, Lokhttp3/CipherSuite$Companion;->access$init(Lokhttp3/CipherSuite$Companion;Ljava/lang/String;)Lokhttp3/CipherSuite;

    const-string v1, "TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA384"

    invoke-static {v0, v1}, Lokhttp3/CipherSuite$Companion;->access$init(Lokhttp3/CipherSuite$Companion;Ljava/lang/String;)Lokhttp3/CipherSuite;

    const-string v1, "TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA256"

    invoke-static {v0, v1}, Lokhttp3/CipherSuite$Companion;->access$init(Lokhttp3/CipherSuite$Companion;Ljava/lang/String;)Lokhttp3/CipherSuite;

    const-string v1, "TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA384"

    invoke-static {v0, v1}, Lokhttp3/CipherSuite$Companion;->access$init(Lokhttp3/CipherSuite$Companion;Ljava/lang/String;)Lokhttp3/CipherSuite;

    const-string v1, "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256"

    invoke-static {v0, v1}, Lokhttp3/CipherSuite$Companion;->access$init(Lokhttp3/CipherSuite$Companion;Ljava/lang/String;)Lokhttp3/CipherSuite;

    const-string v1, "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384"

    invoke-static {v0, v1}, Lokhttp3/CipherSuite$Companion;->access$init(Lokhttp3/CipherSuite$Companion;Ljava/lang/String;)Lokhttp3/CipherSuite;

    const-string v1, "TLS_ECDH_RSA_WITH_AES_128_CBC_SHA256"

    invoke-static {v0, v1}, Lokhttp3/CipherSuite$Companion;->access$init(Lokhttp3/CipherSuite$Companion;Ljava/lang/String;)Lokhttp3/CipherSuite;

    const-string v1, "TLS_ECDH_RSA_WITH_AES_256_CBC_SHA384"

    invoke-static {v0, v1}, Lokhttp3/CipherSuite$Companion;->access$init(Lokhttp3/CipherSuite$Companion;Ljava/lang/String;)Lokhttp3/CipherSuite;

    const-string v1, "TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256"

    invoke-static {v0, v1}, Lokhttp3/CipherSuite$Companion;->access$init(Lokhttp3/CipherSuite$Companion;Ljava/lang/String;)Lokhttp3/CipherSuite;

    move-result-object v1

    sput-object v1, Lokhttp3/CipherSuite;->TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256:Lokhttp3/CipherSuite;

    const-string v1, "TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384"

    invoke-static {v0, v1}, Lokhttp3/CipherSuite$Companion;->access$init(Lokhttp3/CipherSuite$Companion;Ljava/lang/String;)Lokhttp3/CipherSuite;

    move-result-object v1

    sput-object v1, Lokhttp3/CipherSuite;->TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384:Lokhttp3/CipherSuite;

    const-string v1, "TLS_ECDH_ECDSA_WITH_AES_128_GCM_SHA256"

    invoke-static {v0, v1}, Lokhttp3/CipherSuite$Companion;->access$init(Lokhttp3/CipherSuite$Companion;Ljava/lang/String;)Lokhttp3/CipherSuite;

    const-string v1, "TLS_ECDH_ECDSA_WITH_AES_256_GCM_SHA384"

    invoke-static {v0, v1}, Lokhttp3/CipherSuite$Companion;->access$init(Lokhttp3/CipherSuite$Companion;Ljava/lang/String;)Lokhttp3/CipherSuite;

    const-string v1, "TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256"

    invoke-static {v0, v1}, Lokhttp3/CipherSuite$Companion;->access$init(Lokhttp3/CipherSuite$Companion;Ljava/lang/String;)Lokhttp3/CipherSuite;

    move-result-object v1

    sput-object v1, Lokhttp3/CipherSuite;->TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256:Lokhttp3/CipherSuite;

    const-string v1, "TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384"

    invoke-static {v0, v1}, Lokhttp3/CipherSuite$Companion;->access$init(Lokhttp3/CipherSuite$Companion;Ljava/lang/String;)Lokhttp3/CipherSuite;

    move-result-object v1

    sput-object v1, Lokhttp3/CipherSuite;->TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384:Lokhttp3/CipherSuite;

    const-string v1, "TLS_ECDH_RSA_WITH_AES_128_GCM_SHA256"

    invoke-static {v0, v1}, Lokhttp3/CipherSuite$Companion;->access$init(Lokhttp3/CipherSuite$Companion;Ljava/lang/String;)Lokhttp3/CipherSuite;

    const-string v1, "TLS_ECDH_RSA_WITH_AES_256_GCM_SHA384"

    invoke-static {v0, v1}, Lokhttp3/CipherSuite$Companion;->access$init(Lokhttp3/CipherSuite$Companion;Ljava/lang/String;)Lokhttp3/CipherSuite;

    const-string v1, "TLS_ECDHE_PSK_WITH_AES_128_CBC_SHA"

    invoke-static {v0, v1}, Lokhttp3/CipherSuite$Companion;->access$init(Lokhttp3/CipherSuite$Companion;Ljava/lang/String;)Lokhttp3/CipherSuite;

    const-string v1, "TLS_ECDHE_PSK_WITH_AES_256_CBC_SHA"

    invoke-static {v0, v1}, Lokhttp3/CipherSuite$Companion;->access$init(Lokhttp3/CipherSuite$Companion;Ljava/lang/String;)Lokhttp3/CipherSuite;

    const-string v1, "TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256"

    invoke-static {v0, v1}, Lokhttp3/CipherSuite$Companion;->access$init(Lokhttp3/CipherSuite$Companion;Ljava/lang/String;)Lokhttp3/CipherSuite;

    move-result-object v1

    sput-object v1, Lokhttp3/CipherSuite;->TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256:Lokhttp3/CipherSuite;

    const-string v1, "TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256"

    invoke-static {v0, v1}, Lokhttp3/CipherSuite$Companion;->access$init(Lokhttp3/CipherSuite$Companion;Ljava/lang/String;)Lokhttp3/CipherSuite;

    move-result-object v1

    sput-object v1, Lokhttp3/CipherSuite;->TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256:Lokhttp3/CipherSuite;

    const-string v1, "TLS_DHE_RSA_WITH_CHACHA20_POLY1305_SHA256"

    invoke-static {v0, v1}, Lokhttp3/CipherSuite$Companion;->access$init(Lokhttp3/CipherSuite$Companion;Ljava/lang/String;)Lokhttp3/CipherSuite;

    const-string v1, "TLS_ECDHE_PSK_WITH_CHACHA20_POLY1305_SHA256"

    invoke-static {v0, v1}, Lokhttp3/CipherSuite$Companion;->access$init(Lokhttp3/CipherSuite$Companion;Ljava/lang/String;)Lokhttp3/CipherSuite;

    const-string v1, "TLS_AES_128_GCM_SHA256"

    invoke-static {v0, v1}, Lokhttp3/CipherSuite$Companion;->access$init(Lokhttp3/CipherSuite$Companion;Ljava/lang/String;)Lokhttp3/CipherSuite;

    move-result-object v1

    sput-object v1, Lokhttp3/CipherSuite;->TLS_AES_128_GCM_SHA256:Lokhttp3/CipherSuite;

    const-string v1, "TLS_AES_256_GCM_SHA384"

    invoke-static {v0, v1}, Lokhttp3/CipherSuite$Companion;->access$init(Lokhttp3/CipherSuite$Companion;Ljava/lang/String;)Lokhttp3/CipherSuite;

    move-result-object v1

    sput-object v1, Lokhttp3/CipherSuite;->TLS_AES_256_GCM_SHA384:Lokhttp3/CipherSuite;

    const-string v1, "TLS_CHACHA20_POLY1305_SHA256"

    invoke-static {v0, v1}, Lokhttp3/CipherSuite$Companion;->access$init(Lokhttp3/CipherSuite$Companion;Ljava/lang/String;)Lokhttp3/CipherSuite;

    move-result-object v1

    sput-object v1, Lokhttp3/CipherSuite;->TLS_CHACHA20_POLY1305_SHA256:Lokhttp3/CipherSuite;

    const-string v1, "TLS_AES_128_CCM_SHA256"

    invoke-static {v0, v1}, Lokhttp3/CipherSuite$Companion;->access$init(Lokhttp3/CipherSuite$Companion;Ljava/lang/String;)Lokhttp3/CipherSuite;

    const-string v1, "TLS_AES_128_CCM_8_SHA256"

    invoke-static {v0, v1}, Lokhttp3/CipherSuite$Companion;->access$init(Lokhttp3/CipherSuite$Companion;Ljava/lang/String;)Lokhttp3/CipherSuite;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp3/CipherSuite;->javaName:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lokhttp3/CipherSuite;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lokhttp3/CipherSuite;->javaName:Ljava/lang/String;

    return-object p0
.end method
