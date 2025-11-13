.class public Lgov/nist/javax/sip/header/SubscriptionState;
.super Lgov/nist/javax/sip/header/ParametersHeader;
.source "SubscriptionState.java"


# static fields
.field private static final serialVersionUID:J = -0x5c9e37cd95983a79L


# instance fields
.field protected expires:I

.field protected reasonCode:Ljava/lang/String;

.field protected retryAfter:I

.field protected state:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Subscription-State"

    .line 59
    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/ParametersHeader;-><init>(Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 60
    iput v0, p0, Lgov/nist/javax/sip/header/SubscriptionState;->expires:I

    .line 61
    iput v0, p0, Lgov/nist/javax/sip/header/SubscriptionState;->retryAfter:I

    return-void
.end method


# virtual methods
.method public encodeBody()Ljava/lang/String;
    .locals 1

    .line 167
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/SubscriptionState;->encodeBody(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected encodeBody(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 2

    .line 171
    iget-object v0, p0, Lgov/nist/javax/sip/header/SubscriptionState;->state:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 172
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 173
    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/header/SubscriptionState;->reasonCode:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, ";reason="

    .line 174
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lgov/nist/javax/sip/header/SubscriptionState;->reasonCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 175
    :cond_1
    iget v0, p0, Lgov/nist/javax/sip/header/SubscriptionState;->expires:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    const-string v0, ";expires="

    .line 176
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v0, p0, Lgov/nist/javax/sip/header/SubscriptionState;->expires:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 177
    :cond_2
    iget v0, p0, Lgov/nist/javax/sip/header/SubscriptionState;->retryAfter:I

    if-eq v0, v1, :cond_3

    const-string v0, ";retry-after="

    .line 178
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v0, p0, Lgov/nist/javax/sip/header/SubscriptionState;->retryAfter:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 180
    :cond_3
    iget-object v0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v0}, Lgov/nist/core/NameValueList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, ";"

    .line 181
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 182
    iget-object p0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {p0, p1}, Lgov/nist/core/NameValueList;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    :cond_4
    return-object p1
.end method

.method public setExpires(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    if-ltz p1, :cond_0

    .line 76
    iput p1, p0, Lgov/nist/javax/sip/header/SubscriptionState;->expires:I

    return-void

    .line 73
    :cond_0
    new-instance p0, Ljavax/sip/InvalidArgumentException;

    const-string p1, "JAIN-SIP Exception, SubscriptionState, setExpires(), the expires parameter is  < 0"

    invoke-direct {p0, p1}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setReasonCode(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 136
    iput-object p1, p0, Lgov/nist/javax/sip/header/SubscriptionState;->reasonCode:Ljava/lang/String;

    return-void

    .line 133
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "JAIN-SIP Exception, SubscriptionState, setReasonCode(), the reasonCode parameter is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setRetryAfter(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    if-lez p1, :cond_0

    .line 101
    iput p1, p0, Lgov/nist/javax/sip/header/SubscriptionState;->retryAfter:I

    return-void

    .line 98
    :cond_0
    new-instance p0, Ljavax/sip/InvalidArgumentException;

    const-string p1, "JAIN-SIP Exception, SubscriptionState, setRetryAfter(), the retryAfter parameter is <=0"

    invoke-direct {p0, p1}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setState(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 160
    iput-object p1, p0, Lgov/nist/javax/sip/header/SubscriptionState;->state:Ljava/lang/String;

    return-void

    .line 157
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "JAIN-SIP Exception, SubscriptionState, setState(), the state parameter is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
