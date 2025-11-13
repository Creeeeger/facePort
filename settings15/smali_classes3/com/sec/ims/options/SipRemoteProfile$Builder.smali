.class public Lcom/sec/ims/options/SipRemoteProfile$Builder;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/options/SipRemoteProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mProfile:Lcom/sec/ims/options/SipRemoteProfile;


# direct methods
.method public constructor <init>(Lcom/sec/ims/options/SipRemoteProfile;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sec/ims/options/SipRemoteProfile;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/ims/options/SipRemoteProfile;-><init>(I)V

    iput-object v0, p0, Lcom/sec/ims/options/SipRemoteProfile$Builder;->mProfile:Lcom/sec/ims/options/SipRemoteProfile;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    invoke-static {p1}, Lcom/sec/ims/options/SipRemoteProfile;->access$000(Lcom/sec/ims/options/SipRemoteProfile;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/ims/options/SipRemoteProfile;

    iput-object p1, p0, Lcom/sec/ims/options/SipRemoteProfile$Builder;->mProfile:Lcom/sec/ims/options/SipRemoteProfile;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string/jumbo v0, "should not occur"

    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sec/ims/options/SipRemoteProfile;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/ims/options/SipRemoteProfile;-><init>(I)V

    iput-object v0, p0, Lcom/sec/ims/options/SipRemoteProfile$Builder;->mProfile:Lcom/sec/ims/options/SipRemoteProfile;

    if-eqz p1, :cond_0

    invoke-static {v0, p1}, Lcom/sec/ims/options/SipRemoteProfile;->-$$Nest$fputmProfileName(Lcom/sec/ims/options/SipRemoteProfile;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string/jumbo p1, "uriString cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public build()Lcom/sec/ims/options/SipRemoteProfile;
    .locals 0

    iget-object p0, p0, Lcom/sec/ims/options/SipRemoteProfile$Builder;->mProfile:Lcom/sec/ims/options/SipRemoteProfile;

    return-object p0
.end method

.method public setProfileName(Ljava/lang/String;)Lcom/sec/ims/options/SipRemoteProfile$Builder;
    .locals 1

    iget-object v0, p0, Lcom/sec/ims/options/SipRemoteProfile$Builder;->mProfile:Lcom/sec/ims/options/SipRemoteProfile;

    invoke-static {v0, p1}, Lcom/sec/ims/options/SipRemoteProfile;->-$$Nest$fputmProfileName(Lcom/sec/ims/options/SipRemoteProfile;Ljava/lang/String;)V

    return-object p0
.end method
