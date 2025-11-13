.class public final Landroid/content/integrity/AtomicFormula$BooleanAtomicFormula;
.super Landroid/content/integrity/AtomicFormula;
.source "AtomicFormula.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/integrity/AtomicFormula;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BooleanAtomicFormula"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/integrity/AtomicFormula$BooleanAtomicFormula;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mValue:Ljava/lang/Boolean;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/content/integrity/AtomicFormula$BooleanAtomicFormula$1;

    invoke-direct {v0}, Landroid/content/integrity/AtomicFormula$BooleanAtomicFormula$1;-><init>()V

    sput-object v0, Landroid/content/integrity/AtomicFormula$BooleanAtomicFormula;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(I)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/content/integrity/AtomicFormula;-><init>(I)V

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {p1}, Landroid/content/integrity/AtomicFormula$BooleanAtomicFormula;->keyToString(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Key %s cannot be used with BooleanAtomicFormula"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/integrity/AtomicFormula$BooleanAtomicFormula;->mValue:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor blacklist <init>(IZ)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/content/integrity/AtomicFormula;-><init>(I)V

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {p1}, Landroid/content/integrity/AtomicFormula$BooleanAtomicFormula;->keyToString(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Key %s cannot be used with BooleanAtomicFormula"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/content/integrity/AtomicFormula$BooleanAtomicFormula;->mValue:Ljava/lang/Boolean;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/content/integrity/AtomicFormula;-><init>(I)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/content/integrity/AtomicFormula$BooleanAtomicFormula;->mValue:Ljava/lang/Boolean;

    return-void
.end method

.method private static blacklist getBooleanMetadataValue(Landroid/content/integrity/AppInstallMetadata;I)Z
    .locals 3

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected key in BooleanAtomicFormula: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-virtual {p0}, Landroid/content/integrity/AppInstallMetadata;->isStampTrusted()Z

    move-result v0

    return v0

    :pswitch_1
    invoke-virtual {p0}, Landroid/content/integrity/AppInstallMetadata;->isPreInstalled()Z

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/content/integrity/AtomicFormula$BooleanAtomicFormula;

    invoke-virtual {p0}, Landroid/content/integrity/AtomicFormula$BooleanAtomicFormula;->getKey()I

    move-result v3

    invoke-virtual {v2}, Landroid/content/integrity/AtomicFormula$BooleanAtomicFormula;->getKey()I

    move-result v4

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/content/integrity/AtomicFormula$BooleanAtomicFormula;->mValue:Ljava/lang/Boolean;

    iget-object v4, v2, Landroid/content/integrity/AtomicFormula$BooleanAtomicFormula;->mValue:Ljava/lang/Boolean;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public blacklist getTag()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public blacklist getValue()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Landroid/content/integrity/AtomicFormula$BooleanAtomicFormula;->mValue:Ljava/lang/Boolean;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 2

    invoke-virtual {p0}, Landroid/content/integrity/AtomicFormula$BooleanAtomicFormula;->getKey()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/content/integrity/AtomicFormula$BooleanAtomicFormula;->mValue:Ljava/lang/Boolean;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist isAppCertificateFormula()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isAppCertificateLineageFormula()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isInstallerFormula()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist matches(Landroid/content/integrity/AppInstallMetadata;)Z
    .locals 3

    iget-object v0, p0, Landroid/content/integrity/AtomicFormula$BooleanAtomicFormula;->mValue:Ljava/lang/Boolean;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/content/integrity/AtomicFormula$BooleanAtomicFormula;->getKey()I

    move-result v0

    invoke-static {p1, v0}, Landroid/content/integrity/AtomicFormula$BooleanAtomicFormula;->getBooleanMetadataValue(Landroid/content/integrity/AppInstallMetadata;I)Z

    move-result v0

    iget-object v2, p0, Landroid/content/integrity/AtomicFormula$BooleanAtomicFormula;->mValue:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Landroid/content/integrity/AtomicFormula$BooleanAtomicFormula;->mValue:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/integrity/AtomicFormula$BooleanAtomicFormula;->getKey()I

    move-result v0

    invoke-static {v0}, Landroid/content/integrity/AtomicFormula$BooleanAtomicFormula;->keyToString(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "(%s)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/integrity/AtomicFormula$BooleanAtomicFormula;->getKey()I

    move-result v0

    invoke-static {v0}, Landroid/content/integrity/AtomicFormula$BooleanAtomicFormula;->keyToString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Landroid/content/integrity/AtomicFormula$BooleanAtomicFormula;->operatorToString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/content/integrity/AtomicFormula$BooleanAtomicFormula;->mValue:Ljava/lang/Boolean;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "(%s %s %s)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object v0, p0, Landroid/content/integrity/AtomicFormula$BooleanAtomicFormula;->mValue:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/integrity/AtomicFormula$BooleanAtomicFormula;->getKey()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/content/integrity/AtomicFormula$BooleanAtomicFormula;->mValue:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot write an empty BooleanAtomicFormula."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
