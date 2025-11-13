.class public final Landroid/telephony/ims/ImsSsInfo$Builder;
.super Ljava/lang/Object;
.source "ImsSsInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/ImsSsInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist mImsSsInfo:Landroid/telephony/ims/ImsSsInfo;


# direct methods
.method public constructor whitelist <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/telephony/ims/ImsSsInfo;

    invoke-direct {v0}, Landroid/telephony/ims/ImsSsInfo;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/ImsSsInfo$Builder;->mImsSsInfo:Landroid/telephony/ims/ImsSsInfo;

    iget-object v0, p0, Landroid/telephony/ims/ImsSsInfo$Builder;->mImsSsInfo:Landroid/telephony/ims/ImsSsInfo;

    iput p1, v0, Landroid/telephony/ims/ImsSsInfo;->mStatus:I

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/telephony/ims/ImsSsInfo;
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/ImsSsInfo$Builder;->mImsSsInfo:Landroid/telephony/ims/ImsSsInfo;

    return-object v0
.end method

.method public whitelist setClirInterrogationStatus(I)Landroid/telephony/ims/ImsSsInfo$Builder;
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/ImsSsInfo$Builder;->mImsSsInfo:Landroid/telephony/ims/ImsSsInfo;

    invoke-static {v0, p1}, Landroid/telephony/ims/ImsSsInfo;->-$$Nest$fputmClirInterrogationStatus(Landroid/telephony/ims/ImsSsInfo;I)V

    return-object p0
.end method

.method public whitelist setClirOutgoingState(I)Landroid/telephony/ims/ImsSsInfo$Builder;
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/ImsSsInfo$Builder;->mImsSsInfo:Landroid/telephony/ims/ImsSsInfo;

    invoke-static {v0, p1}, Landroid/telephony/ims/ImsSsInfo;->-$$Nest$fputmClirOutgoingState(Landroid/telephony/ims/ImsSsInfo;I)V

    return-object p0
.end method

.method public whitelist setIncomingCommunicationBarringNumber(Ljava/lang/String;)Landroid/telephony/ims/ImsSsInfo$Builder;
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/ImsSsInfo$Builder;->mImsSsInfo:Landroid/telephony/ims/ImsSsInfo;

    iput-object p1, v0, Landroid/telephony/ims/ImsSsInfo;->mIcbNum:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist setProvisionStatus(I)Landroid/telephony/ims/ImsSsInfo$Builder;
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/ImsSsInfo$Builder;->mImsSsInfo:Landroid/telephony/ims/ImsSsInfo;

    iput p1, v0, Landroid/telephony/ims/ImsSsInfo;->mProvisionStatus:I

    return-object p0
.end method

.method public blacklist setServiceClass(I)Landroid/telephony/ims/ImsSsInfo$Builder;
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/ImsSsInfo$Builder;->mImsSsInfo:Landroid/telephony/ims/ImsSsInfo;

    invoke-static {v0, p1}, Landroid/telephony/ims/ImsSsInfo;->-$$Nest$fputmServiceClass(Landroid/telephony/ims/ImsSsInfo;I)V

    return-object p0
.end method
