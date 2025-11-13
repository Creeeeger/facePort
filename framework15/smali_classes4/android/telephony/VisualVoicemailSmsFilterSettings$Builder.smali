.class public Landroid/telephony/VisualVoicemailSmsFilterSettings$Builder;
.super Ljava/lang/Object;
.source "VisualVoicemailSmsFilterSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/VisualVoicemailSmsFilterSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private greylist-max-o mClientPrefix:Ljava/lang/String;

.field private greylist-max-o mDestinationPort:I

.field private greylist-max-o mOriginatingNumbers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mPackageName:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmClientPrefix(Landroid/telephony/VisualVoicemailSmsFilterSettings$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/telephony/VisualVoicemailSmsFilterSettings$Builder;->mClientPrefix:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDestinationPort(Landroid/telephony/VisualVoicemailSmsFilterSettings$Builder;)I
    .locals 0

    iget p0, p0, Landroid/telephony/VisualVoicemailSmsFilterSettings$Builder;->mDestinationPort:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOriginatingNumbers(Landroid/telephony/VisualVoicemailSmsFilterSettings$Builder;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroid/telephony/VisualVoicemailSmsFilterSettings$Builder;->mOriginatingNumbers:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPackageName(Landroid/telephony/VisualVoicemailSmsFilterSettings$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/telephony/VisualVoicemailSmsFilterSettings$Builder;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public constructor whitelist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "//VVM"

    iput-object v0, p0, Landroid/telephony/VisualVoicemailSmsFilterSettings$Builder;->mClientPrefix:Ljava/lang/String;

    sget-object v0, Landroid/telephony/VisualVoicemailSmsFilterSettings;->DEFAULT_ORIGINATING_NUMBERS:Ljava/util/List;

    iput-object v0, p0, Landroid/telephony/VisualVoicemailSmsFilterSettings$Builder;->mOriginatingNumbers:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Landroid/telephony/VisualVoicemailSmsFilterSettings$Builder;->mDestinationPort:I

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/telephony/VisualVoicemailSmsFilterSettings;
    .locals 2

    new-instance v0, Landroid/telephony/VisualVoicemailSmsFilterSettings;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/telephony/VisualVoicemailSmsFilterSettings;-><init>(Landroid/telephony/VisualVoicemailSmsFilterSettings$Builder;Landroid/telephony/VisualVoicemailSmsFilterSettings-IA;)V

    return-object v0
.end method

.method public whitelist setClientPrefix(Ljava/lang/String;)Landroid/telephony/VisualVoicemailSmsFilterSettings$Builder;
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x100

    if-gt v0, v1, :cond_0

    iput-object p1, p0, Landroid/telephony/VisualVoicemailSmsFilterSettings$Builder;->mClientPrefix:Ljava/lang/String;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Client prefix cannot be greater than 256 characters"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Client prefix cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setDestinationPort(I)Landroid/telephony/VisualVoicemailSmsFilterSettings$Builder;
    .locals 0

    iput p1, p0, Landroid/telephony/VisualVoicemailSmsFilterSettings$Builder;->mDestinationPort:I

    return-object p0
.end method

.method public whitelist setOriginatingNumbers(Ljava/util/List;)Landroid/telephony/VisualVoicemailSmsFilterSettings$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/telephony/VisualVoicemailSmsFilterSettings$Builder;"
        }
    .end annotation

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x64

    if-gt v0, v1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x100

    if-gt v2, v3, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Numbers within the originatingNumbers list cannot be greater than256 characters"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_1
    goto :goto_0

    :cond_2
    iput-object p1, p0, Landroid/telephony/VisualVoicemailSmsFilterSettings$Builder;->mOriginatingNumbers:Ljava/util/List;

    return-object p0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The originatingNumbers list size cannot be greater than 256 elements"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Originating numbers cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o setPackageName(Ljava/lang/String;)Landroid/telephony/VisualVoicemailSmsFilterSettings$Builder;
    .locals 0

    iput-object p1, p0, Landroid/telephony/VisualVoicemailSmsFilterSettings$Builder;->mPackageName:Ljava/lang/String;

    return-object p0
.end method
