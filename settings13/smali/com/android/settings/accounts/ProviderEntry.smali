.class public Lcom/android/settings/accounts/ProviderEntry;
.super Ljava/lang/Object;
.source "ProviderEntry.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/settings/accounts/ProviderEntry;",
        ">;"
    }
.end annotation


# instance fields
.field private final name:Ljava/lang/CharSequence;

.field private final type:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/android/settings/accounts/ProviderEntry;->name:Ljava/lang/CharSequence;

    .line 30
    iput-object p2, p0, Lcom/android/settings/accounts/ProviderEntry;->type:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/settings/accounts/ProviderEntry;)I
    .locals 3

    .line 36
    iget-object v0, p0, Lcom/android/settings/accounts/ProviderEntry;->type:Ljava/lang/String;

    const-string v1, "com.osp.app.signin"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, -0x1

    if-eqz v0, :cond_0

    return v2

    .line 39
    :cond_0
    iget-object v0, p1, Lcom/android/settings/accounts/ProviderEntry;->type:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    return v1

    .line 44
    :cond_1
    iget-object p0, p0, Lcom/android/settings/accounts/ProviderEntry;->name:Ljava/lang/CharSequence;

    if-nez p0, :cond_2

    return v2

    .line 47
    :cond_2
    iget-object p1, p1, Lcom/android/settings/accounts/ProviderEntry;->name:Ljava/lang/CharSequence;

    if-nez p1, :cond_3

    return v1

    .line 50
    :cond_3
    invoke-static {p0, p1}, Lcom/android/internal/util/CharSequences;->compareToIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 24
    check-cast p1, Lcom/android/settings/accounts/ProviderEntry;

    invoke-virtual {p0, p1}, Lcom/android/settings/accounts/ProviderEntry;->compareTo(Lcom/android/settings/accounts/ProviderEntry;)I

    move-result p0

    return p0
.end method

.method public getName()Ljava/lang/CharSequence;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/android/settings/accounts/ProviderEntry;->name:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getType()Ljava/lang/String;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/android/settings/accounts/ProviderEntry;->type:Ljava/lang/String;

    return-object p0
.end method
