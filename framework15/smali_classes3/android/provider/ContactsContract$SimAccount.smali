.class public final Landroid/provider/ContactsContract$SimAccount;
.super Ljava/lang/Object;
.source "ContactsContract.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/ContactsContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SimAccount"
.end annotation


# static fields
.field public static final whitelist ADN_EF_TYPE:I = 0x1

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/provider/ContactsContract$SimAccount;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist FDN_EF_TYPE:I = 0x2

.field public static final whitelist SDN_EF_TYPE:I = 0x3

.field public static final whitelist UNKNOWN_EF_TYPE:I


# instance fields
.field private final blacklist mAccountName:Ljava/lang/String;

.field private final blacklist mAccountType:Ljava/lang/String;

.field private final blacklist mEfType:I

.field private final blacklist mSimSlotIndex:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/provider/ContactsContract$SimAccount$1;

    invoke-direct {v0}, Landroid/provider/ContactsContract$SimAccount$1;-><init>()V

    sput-object v0, Landroid/provider/ContactsContract$SimAccount;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/provider/ContactsContract$SimAccount;->mAccountName:Ljava/lang/String;

    iput-object p2, p0, Landroid/provider/ContactsContract$SimAccount;->mAccountType:Ljava/lang/String;

    iput p3, p0, Landroid/provider/ContactsContract$SimAccount;->mSimSlotIndex:I

    iput p4, p0, Landroid/provider/ContactsContract$SimAccount;->mEfType:I

    return-void
.end method

.method public static blacklist getValidEfTypes()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, p0, :cond_1

    return v1

    :cond_1
    :try_start_0
    move-object v2, p1

    check-cast v2, Landroid/provider/ContactsContract$SimAccount;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    iget v3, p0, Landroid/provider/ContactsContract$SimAccount;->mSimSlotIndex:I

    iget v4, v2, Landroid/provider/ContactsContract$SimAccount;->mSimSlotIndex:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/provider/ContactsContract$SimAccount;->mEfType:I

    iget v4, v2, Landroid/provider/ContactsContract$SimAccount;->mEfType:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/provider/ContactsContract$SimAccount;->mAccountName:Ljava/lang/String;

    iget-object v4, v2, Landroid/provider/ContactsContract$SimAccount;->mAccountName:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/provider/ContactsContract$SimAccount;->mAccountType:Ljava/lang/String;

    iget-object v4, v2, Landroid/provider/ContactsContract$SimAccount;->mAccountType:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    nop

    :goto_0
    return v0

    :catch_0
    move-exception v1

    return v0
.end method

.method public whitelist getAccountName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/provider/ContactsContract$SimAccount;->mAccountName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getAccountType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/provider/ContactsContract$SimAccount;->mAccountType:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getEfType()I
    .locals 1

    iget v0, p0, Landroid/provider/ContactsContract$SimAccount;->mEfType:I

    return v0
.end method

.method public whitelist getSimSlotIndex()I
    .locals 1

    iget v0, p0, Landroid/provider/ContactsContract$SimAccount;->mSimSlotIndex:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 4

    iget-object v0, p0, Landroid/provider/ContactsContract$SimAccount;->mAccountName:Ljava/lang/String;

    iget-object v1, p0, Landroid/provider/ContactsContract$SimAccount;->mAccountType:Ljava/lang/String;

    iget v2, p0, Landroid/provider/ContactsContract$SimAccount;->mSimSlotIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Landroid/provider/ContactsContract$SimAccount;->mEfType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/provider/ContactsContract$SimAccount;->mAccountName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/provider/ContactsContract$SimAccount;->mAccountType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/provider/ContactsContract$SimAccount;->mSimSlotIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/provider/ContactsContract$SimAccount;->mEfType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
