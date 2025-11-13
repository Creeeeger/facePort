.class final Landroid/accounts/AccountManager$AccountKeyData;
.super Ljava/lang/Object;
.source "AccountManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accounts/AccountManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AccountKeyData"
.end annotation


# instance fields
.field public final blacklist account:Landroid/accounts/Account;

.field public final blacklist key:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/accounts/AccountManager$AccountKeyData;->account:Landroid/accounts/Account;

    iput-object p2, p0, Landroid/accounts/AccountManager$AccountKeyData;->key:Ljava/lang/String;

    return-void
.end method


# virtual methods
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
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v0

    :cond_2
    move-object v2, p1

    check-cast v2, Landroid/accounts/AccountManager$AccountKeyData;

    iget-object v3, v2, Landroid/accounts/AccountManager$AccountKeyData;->account:Landroid/accounts/Account;

    iget-object v4, p0, Landroid/accounts/AccountManager$AccountKeyData;->account:Landroid/accounts/Account;

    invoke-virtual {v3, v4}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, v2, Landroid/accounts/AccountManager$AccountKeyData;->key:Ljava/lang/String;

    iget-object v4, p0, Landroid/accounts/AccountManager$AccountKeyData;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v0, v1

    :cond_3
    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 2

    iget-object v0, p0, Landroid/accounts/AccountManager$AccountKeyData;->account:Landroid/accounts/Account;

    iget-object v1, p0, Landroid/accounts/AccountManager$AccountKeyData;->key:Ljava/lang/String;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
