.class public final Lcom/android/settings/accounts/ProviderEntry;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final name:Ljava/lang/CharSequence;

.field public final type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/settings/accounts/ProviderEntry;->name:Ljava/lang/CharSequence;

    iput-object p1, p0, Lcom/android/settings/accounts/ProviderEntry;->type:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 3

    check-cast p1, Lcom/android/settings/accounts/ProviderEntry;

    iget-object v0, p0, Lcom/android/settings/accounts/ProviderEntry;->type:Ljava/lang/String;

    const-string v1, "com.osp.app.signin"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, -0x1

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p1, Lcom/android/settings/accounts/ProviderEntry;->type:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    :goto_0
    move v2, v1

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/android/settings/accounts/ProviderEntry;->name:Ljava/lang/CharSequence;

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    iget-object p1, p1, Lcom/android/settings/accounts/ProviderEntry;->name:Ljava/lang/CharSequence;

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {p0, p1}, Lcom/android/internal/util/CharSequences;->compareToIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v2

    :goto_1
    return v2
.end method
