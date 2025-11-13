.class public final Landroid/telephony/ims/PublishAttributes$Builder;
.super Ljava/lang/Object;
.source "PublishAttributes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/PublishAttributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAttributes:Landroid/telephony/ims/PublishAttributes;


# direct methods
.method public constructor blacklist <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/telephony/ims/PublishAttributes;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/telephony/ims/PublishAttributes;-><init>(ILandroid/telephony/ims/PublishAttributes-IA;)V

    iput-object v0, p0, Landroid/telephony/ims/PublishAttributes$Builder;->mAttributes:Landroid/telephony/ims/PublishAttributes;

    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/telephony/ims/PublishAttributes;
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/PublishAttributes$Builder;->mAttributes:Landroid/telephony/ims/PublishAttributes;

    return-object v0
.end method

.method public blacklist setPresenceTuples(Ljava/util/List;)Landroid/telephony/ims/PublishAttributes$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/ims/RcsContactPresenceTuple;",
            ">;)",
            "Landroid/telephony/ims/PublishAttributes$Builder;"
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/PublishAttributes$Builder;->mAttributes:Landroid/telephony/ims/PublishAttributes;

    invoke-static {v0, p1}, Landroid/telephony/ims/PublishAttributes;->-$$Nest$fputmPresenceTuples(Landroid/telephony/ims/PublishAttributes;Ljava/util/List;)V

    return-object p0
.end method

.method public blacklist setSipDetails(Landroid/telephony/ims/SipDetails;)Landroid/telephony/ims/PublishAttributes$Builder;
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/PublishAttributes$Builder;->mAttributes:Landroid/telephony/ims/PublishAttributes;

    invoke-static {v0, p1}, Landroid/telephony/ims/PublishAttributes;->-$$Nest$fputmSipDetails(Landroid/telephony/ims/PublishAttributes;Landroid/telephony/ims/SipDetails;)V

    return-object p0
.end method
