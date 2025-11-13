.class Landroid/security/identity/PersonalizationData$NamespaceData;
.super Ljava/lang/Object;
.source "PersonalizationData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/identity/PersonalizationData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NamespaceData"
.end annotation


# instance fields
.field private blacklist mEntries:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Landroid/security/identity/PersonalizationData$EntryData;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mNamespace:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmEntries(Landroid/security/identity/PersonalizationData$NamespaceData;)Ljava/util/LinkedHashMap;
    .locals 0

    iget-object p0, p0, Landroid/security/identity/PersonalizationData$NamespaceData;->mEntries:Ljava/util/LinkedHashMap;

    return-object p0
.end method

.method private constructor blacklist <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Landroid/security/identity/PersonalizationData$NamespaceData;->mEntries:Ljava/util/LinkedHashMap;

    iput-object p1, p0, Landroid/security/identity/PersonalizationData$NamespaceData;->mNamespace:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;Landroid/security/identity/PersonalizationData$NamespaceData-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/security/identity/PersonalizationData$NamespaceData;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method blacklist getAccessControlProfileIds(Ljava/lang/String;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection<",
            "Landroid/security/identity/AccessControlProfileId;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/security/identity/PersonalizationData$NamespaceData;->mEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/security/identity/PersonalizationData$EntryData;

    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/security/identity/PersonalizationData$EntryData;->mAccessControlProfileIds:Ljava/util/Collection;

    return-object v1

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method blacklist getEntryNames()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/security/identity/PersonalizationData$NamespaceData;->mEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method blacklist getEntryValue(Ljava/lang/String;)[B
    .locals 2

    iget-object v0, p0, Landroid/security/identity/PersonalizationData$NamespaceData;->mEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/security/identity/PersonalizationData$EntryData;

    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/security/identity/PersonalizationData$EntryData;->mValue:[B

    return-object v1

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method blacklist getNamespaceName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/security/identity/PersonalizationData$NamespaceData;->mNamespace:Ljava/lang/String;

    return-object v0
.end method
