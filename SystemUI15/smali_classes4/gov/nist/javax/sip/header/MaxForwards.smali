.class public Lgov/nist/javax/sip/header/MaxForwards;
.super Lgov/nist/javax/sip/header/SIPHeader;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljavax/sip/header/MaxForwardsHeader;


# static fields
.field private static final serialVersionUID:J = -0x2afa4eca0522fa07L


# instance fields
.field protected maxForwards:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Max-Forwards"

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    const-string v0, "Max-Forwards"

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/header/MaxForwards;->setMaxForwards(I)V

    return-void
.end method


# virtual methods
.method public final encodeBody()Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget p0, p0, Lgov/nist/javax/sip/header/MaxForwards;->maxForwards:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final encodeBody(Ljava/lang/StringBuffer;)V
    .locals 0

    iget p0, p0, Lgov/nist/javax/sip/header/MaxForwards;->maxForwards:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Ljavax/sip/header/MaxForwardsHeader;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Ljavax/sip/header/MaxForwardsHeader;

    iget p0, p0, Lgov/nist/javax/sip/header/MaxForwards;->maxForwards:I

    check-cast p1, Lgov/nist/javax/sip/header/MaxForwards;

    iget p1, p1, Lgov/nist/javax/sip/header/MaxForwards;->maxForwards:I

    if-ne p0, p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public final setMaxForwards(I)V
    .locals 1

    if-ltz p1, :cond_0

    const/16 v0, 0xff

    if-gt p1, v0, :cond_0

    iput p1, p0, Lgov/nist/javax/sip/header/MaxForwards;->maxForwards:I

    return-void

    :cond_0
    new-instance p0, Ljavax/sip/InvalidArgumentException;

    const-string v0, "bad max forwards value "

    invoke-static {p1, v0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
