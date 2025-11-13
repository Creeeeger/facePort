.class public Landroid/telephony/ims/RcsConfig$Characteristic;
.super Ljava/lang/Object;
.source "RcsConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/RcsConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Characteristic"
.end annotation


# instance fields
.field private final blacklist mParent:Landroid/telephony/ims/RcsConfig$Characteristic;

.field private final blacklist mParms:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mSubs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/telephony/ims/RcsConfig$Characteristic;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mType:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mgetParent(Landroid/telephony/ims/RcsConfig$Characteristic;)Landroid/telephony/ims/RcsConfig$Characteristic;
    .locals 0

    invoke-direct {p0}, Landroid/telephony/ims/RcsConfig$Characteristic;->getParent()Landroid/telephony/ims/RcsConfig$Characteristic;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetParmValue(Landroid/telephony/ims/RcsConfig$Characteristic;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/ims/RcsConfig$Characteristic;->getParmValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetParms(Landroid/telephony/ims/RcsConfig$Characteristic;)Ljava/util/Map;
    .locals 0

    invoke-direct {p0}, Landroid/telephony/ims/RcsConfig$Characteristic;->getParms()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetSubByType(Landroid/telephony/ims/RcsConfig$Characteristic;Ljava/lang/String;)Landroid/telephony/ims/RcsConfig$Characteristic;
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/ims/RcsConfig$Characteristic;->getSubByType(Ljava/lang/String;)Landroid/telephony/ims/RcsConfig$Characteristic;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetSubs(Landroid/telephony/ims/RcsConfig$Characteristic;)Ljava/util/Set;
    .locals 0

    invoke-direct {p0}, Landroid/telephony/ims/RcsConfig$Characteristic;->getSubs()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method private constructor blacklist <init>(Ljava/lang/String;Landroid/telephony/ims/RcsConfig$Characteristic;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/RcsConfig$Characteristic;->mParms:Ljava/util/Map;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/RcsConfig$Characteristic;->mSubs:Ljava/util/Set;

    iput-object p1, p0, Landroid/telephony/ims/RcsConfig$Characteristic;->mType:Ljava/lang/String;

    iput-object p2, p0, Landroid/telephony/ims/RcsConfig$Characteristic;->mParent:Landroid/telephony/ims/RcsConfig$Characteristic;

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;Landroid/telephony/ims/RcsConfig$Characteristic;Landroid/telephony/ims/RcsConfig$Characteristic-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/telephony/ims/RcsConfig$Characteristic;-><init>(Ljava/lang/String;Landroid/telephony/ims/RcsConfig$Characteristic;)V

    return-void
.end method

.method private blacklist getParent()Landroid/telephony/ims/RcsConfig$Characteristic;
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/RcsConfig$Characteristic;->mParent:Landroid/telephony/ims/RcsConfig$Characteristic;

    return-object v0
.end method

.method private blacklist getParmValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Landroid/telephony/ims/RcsConfig$Characteristic;->mParms:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v1, p0, Landroid/telephony/ims/RcsConfig$Characteristic;->mSubs:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/RcsConfig$Characteristic;

    invoke-direct {v2, p1}, Landroid/telephony/ims/RcsConfig$Characteristic;->getParmValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method private blacklist getParms()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/RcsConfig$Characteristic;->mParms:Ljava/util/Map;

    return-object v0
.end method

.method private blacklist getSubByType(Ljava/lang/String;)Landroid/telephony/ims/RcsConfig$Characteristic;
    .locals 3

    iget-object v0, p0, Landroid/telephony/ims/RcsConfig$Characteristic;->mType:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Landroid/telephony/ims/RcsConfig$Characteristic;->mSubs:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/RcsConfig$Characteristic;

    invoke-direct {v2, p1}, Landroid/telephony/ims/RcsConfig$Characteristic;->getSubByType(Ljava/lang/String;)Landroid/telephony/ims/RcsConfig$Characteristic;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    goto :goto_0

    :cond_2
    :goto_1
    return-object v0
.end method

.method private blacklist getSubs()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/telephony/ims/RcsConfig$Characteristic;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/RcsConfig$Characteristic;->mSubs:Ljava/util/Set;

    return-object v0
.end method

.method private blacklist getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/RcsConfig$Characteristic;->mType:Ljava/lang/String;

    return-object v0
.end method

.method private blacklist hasSubByType(Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Landroid/telephony/ims/RcsConfig$Characteristic;->getSubByType(Ljava/lang/String;)Landroid/telephony/ims/RcsConfig$Characteristic;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Landroid/telephony/ims/RcsConfig$Characteristic;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/telephony/ims/RcsConfig$Characteristic;

    iget-object v2, p0, Landroid/telephony/ims/RcsConfig$Characteristic;->mType:Ljava/lang/String;

    iget-object v3, v0, Landroid/telephony/ims/RcsConfig$Characteristic;->mType:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/telephony/ims/RcsConfig$Characteristic;->mParms:Ljava/util/Map;

    iget-object v3, v0, Landroid/telephony/ims/RcsConfig$Characteristic;->mParms:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/telephony/ims/RcsConfig$Characteristic;->mSubs:Ljava/util/Set;

    iget-object v3, v0, Landroid/telephony/ims/RcsConfig$Characteristic;->mSubs:Ljava/util/Set;

    invoke-interface {v2, v3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    :goto_0
    return v1
.end method

.method blacklist hasParm(Ljava/lang/String;)Z
    .locals 4

    iget-object v0, p0, Landroid/telephony/ims/RcsConfig$Characteristic;->mParms:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroid/telephony/ims/RcsConfig$Characteristic;->mSubs:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/RcsConfig$Characteristic;

    invoke-virtual {v2, p1}, Landroid/telephony/ims/RcsConfig$Characteristic;->hasParm(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v1

    :cond_1
    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    iget-object v0, p0, Landroid/telephony/ims/RcsConfig$Characteristic;->mType:Ljava/lang/String;

    iget-object v1, p0, Landroid/telephony/ims/RcsConfig$Characteristic;->mParms:Ljava/util/Map;

    iget-object v2, p0, Landroid/telephony/ims/RcsConfig$Characteristic;->mSubs:Ljava/util/Set;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/ims/RcsConfig$Characteristic;->mType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/telephony/ims/RcsConfig;->-$$Nest$sfgetDBG()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/telephony/ims/RcsConfig$Characteristic;->mParms:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p0, Landroid/telephony/ims/RcsConfig$Characteristic;->mSubs:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/RcsConfig$Characteristic;

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/telephony/ims/RcsConfig$Characteristic;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\n\t"

    invoke-virtual {v4, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
