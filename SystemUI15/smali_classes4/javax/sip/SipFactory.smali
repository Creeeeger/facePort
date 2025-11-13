.class public final Ljavax/sip/SipFactory;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static sSipFactory:Ljavax/sip/SipFactory;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Ljavax/sip/SipFactory;
    .locals 2

    const-class v0, Ljavax/sip/SipFactory;

    monitor-enter v0

    :try_start_0
    sget-object v1, Ljavax/sip/SipFactory;->sSipFactory:Ljavax/sip/SipFactory;

    if-nez v1, :cond_0

    new-instance v1, Ljavax/sip/SipFactory;

    invoke-direct {v1}, Ljavax/sip/SipFactory;-><init>()V

    sput-object v1, Ljavax/sip/SipFactory;->sSipFactory:Ljavax/sip/SipFactory;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Ljavax/sip/SipFactory;->sSipFactory:Ljavax/sip/SipFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0

    throw v1
.end method
