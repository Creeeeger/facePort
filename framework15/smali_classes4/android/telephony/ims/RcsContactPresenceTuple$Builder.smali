.class public final Landroid/telephony/ims/RcsContactPresenceTuple$Builder;
.super Ljava/lang/Object;
.source "RcsContactPresenceTuple.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/RcsContactPresenceTuple;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist mPresenceTuple:Landroid/telephony/ims/RcsContactPresenceTuple;


# direct methods
.method public constructor whitelist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/telephony/ims/RcsContactPresenceTuple;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Landroid/telephony/ims/RcsContactPresenceTuple;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/telephony/ims/RcsContactPresenceTuple-IA;)V

    iput-object v0, p0, Landroid/telephony/ims/RcsContactPresenceTuple$Builder;->mPresenceTuple:Landroid/telephony/ims/RcsContactPresenceTuple;

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/telephony/ims/RcsContactPresenceTuple;
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/RcsContactPresenceTuple$Builder;->mPresenceTuple:Landroid/telephony/ims/RcsContactPresenceTuple;

    return-object v0
.end method

.method public whitelist setContactUri(Landroid/net/Uri;)Landroid/telephony/ims/RcsContactPresenceTuple$Builder;
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/RcsContactPresenceTuple$Builder;->mPresenceTuple:Landroid/telephony/ims/RcsContactPresenceTuple;

    invoke-static {v0, p1}, Landroid/telephony/ims/RcsContactPresenceTuple;->-$$Nest$fputmContactUri(Landroid/telephony/ims/RcsContactPresenceTuple;Landroid/net/Uri;)V

    return-object p0
.end method

.method public whitelist setServiceCapabilities(Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities;)Landroid/telephony/ims/RcsContactPresenceTuple$Builder;
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/RcsContactPresenceTuple$Builder;->mPresenceTuple:Landroid/telephony/ims/RcsContactPresenceTuple;

    invoke-static {v0, p1}, Landroid/telephony/ims/RcsContactPresenceTuple;->-$$Nest$fputmServiceCapabilities(Landroid/telephony/ims/RcsContactPresenceTuple;Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities;)V

    return-object p0
.end method

.method public whitelist setServiceDescription(Ljava/lang/String;)Landroid/telephony/ims/RcsContactPresenceTuple$Builder;
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/RcsContactPresenceTuple$Builder;->mPresenceTuple:Landroid/telephony/ims/RcsContactPresenceTuple;

    invoke-static {v0, p1}, Landroid/telephony/ims/RcsContactPresenceTuple;->-$$Nest$fputmServiceDescription(Landroid/telephony/ims/RcsContactPresenceTuple;Ljava/lang/String;)V

    return-object p0
.end method

.method public whitelist setTime(Ljava/time/Instant;)Landroid/telephony/ims/RcsContactPresenceTuple$Builder;
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/RcsContactPresenceTuple$Builder;->mPresenceTuple:Landroid/telephony/ims/RcsContactPresenceTuple;

    invoke-static {v0, p1}, Landroid/telephony/ims/RcsContactPresenceTuple;->-$$Nest$fputmTimestamp(Landroid/telephony/ims/RcsContactPresenceTuple;Ljava/time/Instant;)V

    return-object p0
.end method
