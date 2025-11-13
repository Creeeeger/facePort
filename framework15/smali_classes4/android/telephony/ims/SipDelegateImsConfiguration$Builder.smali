.class public final Landroid/telephony/ims/SipDelegateImsConfiguration$Builder;
.super Ljava/lang/Object;
.source "SipDelegateImsConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/SipDelegateImsConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist mBundle:Landroid/os/PersistableBundle;

.field private final blacklist mVersion:J


# direct methods
.method public constructor greylist <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    int-to-long v0, p1

    iput-wide v0, p0, Landroid/telephony/ims/SipDelegateImsConfiguration$Builder;->mVersion:J

    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/SipDelegateImsConfiguration$Builder;->mBundle:Landroid/os/PersistableBundle;

    return-void
.end method

.method public constructor greylist <init>(Landroid/telephony/ims/SipDelegateImsConfiguration;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/telephony/ims/SipDelegateImsConfiguration;->getVersion()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/telephony/ims/SipDelegateImsConfiguration$Builder;->mVersion:J

    invoke-virtual {p1}, Landroid/telephony/ims/SipDelegateImsConfiguration;->copyBundle()Landroid/os/PersistableBundle;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ims/SipDelegateImsConfiguration$Builder;->mBundle:Landroid/os/PersistableBundle;

    return-void
.end method


# virtual methods
.method public greylist addBoolean(Ljava/lang/String;Z)Landroid/telephony/ims/SipDelegateImsConfiguration$Builder;
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/SipDelegateImsConfiguration$Builder;->mBundle:Landroid/os/PersistableBundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p0
.end method

.method public greylist addInt(Ljava/lang/String;I)Landroid/telephony/ims/SipDelegateImsConfiguration$Builder;
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/SipDelegateImsConfiguration$Builder;->mBundle:Landroid/os/PersistableBundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    return-object p0
.end method

.method public greylist addString(Ljava/lang/String;Ljava/lang/String;)Landroid/telephony/ims/SipDelegateImsConfiguration$Builder;
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/SipDelegateImsConfiguration$Builder;->mBundle:Landroid/os/PersistableBundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public greylist build()Landroid/telephony/ims/SipDelegateImsConfiguration;
    .locals 5

    new-instance v0, Landroid/telephony/ims/SipDelegateImsConfiguration;

    iget-wide v1, p0, Landroid/telephony/ims/SipDelegateImsConfiguration$Builder;->mVersion:J

    iget-object v3, p0, Landroid/telephony/ims/SipDelegateImsConfiguration$Builder;->mBundle:Landroid/os/PersistableBundle;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/telephony/ims/SipDelegateImsConfiguration;-><init>(JLandroid/os/PersistableBundle;Landroid/telephony/ims/SipDelegateImsConfiguration-IA;)V

    return-object v0
.end method
