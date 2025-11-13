.class public final Landroid/app/admin/ManagedSubscriptionsPolicy;
.super Ljava/lang/Object;
.source "ManagedSubscriptionsPolicy.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/admin/ManagedSubscriptionsPolicy$ManagedSubscriptionsPolicyType;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/admin/ManagedSubscriptionsPolicy;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist KEY_POLICY_TYPE:Ljava/lang/String; = "policy_type"

.field private static final blacklist TAG:Ljava/lang/String; = "ManagedSubscriptionsPolicy"

.field public static final whitelist TYPE_ALL_MANAGED_SUBSCRIPTIONS:I = 0x1

.field public static final whitelist TYPE_ALL_PERSONAL_SUBSCRIPTIONS:I


# instance fields
.field private final blacklist mPolicyType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/app/admin/ManagedSubscriptionsPolicy$1;

    invoke-direct {v0}, Landroid/app/admin/ManagedSubscriptionsPolicy$1;-><init>()V

    sput-object v0, Landroid/app/admin/ManagedSubscriptionsPolicy;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid policy type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iput p1, p0, Landroid/app/admin/ManagedSubscriptionsPolicy;->mPolicyType:I

    return-void
.end method

.method public static blacklist readFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/app/admin/ManagedSubscriptionsPolicy;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Landroid/app/admin/ManagedSubscriptionsPolicy;

    const-string/jumbo v2, "policy_type"

    const/4 v3, -0x1

    invoke-interface {p0, v0, v2, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/app/admin/ManagedSubscriptionsPolicy;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    return-object v0

    :catch_0
    move-exception v1

    const-string v2, "ManagedSubscriptionsPolicy"

    const-string v3, "Load xml failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

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

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroid/app/admin/ManagedSubscriptionsPolicy;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Landroid/app/admin/ManagedSubscriptionsPolicy;

    iget v3, p0, Landroid/app/admin/ManagedSubscriptionsPolicy;->mPolicyType:I

    iget v4, v1, Landroid/app/admin/ManagedSubscriptionsPolicy;->mPolicyType:I

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public whitelist getPolicyType()I
    .locals 1

    iget v0, p0, Landroid/app/admin/ManagedSubscriptionsPolicy;->mPolicyType:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 1

    iget v0, p0, Landroid/app/admin/ManagedSubscriptionsPolicy;->mPolicyType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v0, "policy_type"

    iget v1, p0, Landroid/app/admin/ManagedSubscriptionsPolicy;->mPolicyType:I

    const/4 v2, 0x0

    invoke-interface {p1, v2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    iget v0, p0, Landroid/app/admin/ManagedSubscriptionsPolicy;->mPolicyType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "ManagedSubscriptionsPolicy (type: %d)"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/app/admin/ManagedSubscriptionsPolicy;->mPolicyType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
