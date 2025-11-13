.class public Landroid/app/GrammaticalInflectionManager;
.super Ljava/lang/Object;
.source "GrammaticalInflectionManager.java"


# static fields
.field public static final blacklist VALID_GRAMMATICAL_GENDER_VALUES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mService:Landroid/app/IGrammaticalInflectionManager;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 5

    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Landroid/app/GrammaticalInflectionManager;->VALID_GRAMMATICAL_GENDER_VALUES:Ljava/util/Set;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/app/IGrammaticalInflectionManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/GrammaticalInflectionManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/app/GrammaticalInflectionManager;->mService:Landroid/app/IGrammaticalInflectionManager;

    return-void
.end method


# virtual methods
.method public whitelist getApplicationGrammaticalGender()I
    .locals 1

    iget-object v0, p0, Landroid/app/GrammaticalInflectionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getGrammaticalGender()I

    move-result v0

    return v0
.end method

.method public whitelist getSystemGrammaticalGender()I
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/app/GrammaticalInflectionManager;->mService:Landroid/app/IGrammaticalInflectionManager;

    iget-object v1, p0, Landroid/app/GrammaticalInflectionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v1

    iget-object v2, p0, Landroid/app/GrammaticalInflectionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/app/IGrammaticalInflectionManager;->getSystemGrammaticalGender(Landroid/content/AttributionSource;I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist peekSystemGrammaticalGenderByUserId(I)I
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/app/GrammaticalInflectionManager;->mService:Landroid/app/IGrammaticalInflectionManager;

    iget-object v1, p0, Landroid/app/GrammaticalInflectionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/app/IGrammaticalInflectionManager;->peekSystemGrammaticalGenderByUserId(Landroid/content/AttributionSource;I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setRequestedApplicationGrammaticalGender(I)V
    .locals 3

    sget-object v0, Landroid/app/GrammaticalInflectionManager;->VALID_GRAMMATICAL_GENDER_VALUES:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/app/GrammaticalInflectionManager;->mService:Landroid/app/IGrammaticalInflectionManager;

    iget-object v1, p0, Landroid/app/GrammaticalInflectionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/app/GrammaticalInflectionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-interface {v0, v1, v2, p1}, Landroid/app/IGrammaticalInflectionManager;->setRequestedApplicationGrammaticalGender(Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown grammatical gender"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setSystemWideGrammaticalGender(I)V
    .locals 2

    sget-object v0, Landroid/app/GrammaticalInflectionManager;->VALID_GRAMMATICAL_GENDER_VALUES:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/app/GrammaticalInflectionManager;->mService:Landroid/app/IGrammaticalInflectionManager;

    iget-object v1, p0, Landroid/app/GrammaticalInflectionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/app/IGrammaticalInflectionManager;->setSystemWideGrammaticalGender(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown grammatical gender"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
