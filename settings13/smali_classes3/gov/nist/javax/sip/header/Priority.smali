.class public Lgov/nist/javax/sip/header/Priority;
.super Lgov/nist/javax/sip/header/SIPHeader;
.source "Priority.java"


# static fields
.field private static final serialVersionUID:J = 0x3541b15bf9044cbaL


# instance fields
.field protected priority:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Priority"

    .line 72
    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public encodeBody()Ljava/lang/String;
    .locals 0

    .line 80
    iget-object p0, p0, Lgov/nist/javax/sip/header/Priority;->priority:Ljava/lang/String;

    return-object p0
.end method

.method public setPriority(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 100
    iput-object p1, p0, Lgov/nist/javax/sip/header/Priority;->priority:Ljava/lang/String;

    return-void

    .line 97
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "JAIN-SIP Exception,Priority, setPriority(), the priority parameter is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
